package app.Controller;

import app.Domain.Role;
import app.Domain.User;
import app.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping
    public String userList(Model model){
        model.addAttribute("users",userService.findAll());
        return "userList";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("{user}")
    public String userEditForm(@PathVariable User user,Model model){
        model.addAttribute("user",user);
        model.addAttribute("roles", Role.values());
        return "userEdit";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping
    public String userSave(
            @RequestParam String firstName,
            @RequestParam String lastName,
            @RequestParam String sex,
            @RequestParam String username,
            @RequestParam String email,
            @RequestParam String password,
            @RequestParam Map<String, String> form,
            @RequestParam("userId") User user
    ){
        userService.saveUser(user,firstName,lastName,sex,username,email,password,form);
        return "redirect:/user";
    }

    @GetMapping("profile")
    public String getProfile(Model model, @AuthenticationPrincipal User user){
        model.addAttribute("username",user.getUsername());
        model.addAttribute("email",user.getEmail());
        model.addAttribute("firstName",user.getFirstName());
        model.addAttribute("lastName",user.getLastName());
        model.addAttribute("sex",user.getSex());

        return "profile";
    }

    @PostMapping("profile")
    public String updateProfile(@AuthenticationPrincipal User user,
                                @RequestParam String password,
                                @RequestParam String email,
                                @RequestParam String firstName,
                                @RequestParam String lastName,
                                @RequestParam String sex){
        userService.updateProfile(user, firstName,lastName,sex,email,password);

        return "redirect:/";
    }
}
