package app.Domain;

import org.springframework.security.core.GrantedAuthority;

public enum Language implements GrantedAuthority {
    JAVA, SQL, C_PLUS, C;

    @Override
    public String getAuthority() {
        return name();
    }

}
