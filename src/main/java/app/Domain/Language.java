package app.Domain;

import org.springframework.security.core.GrantedAuthority;

public enum Language implements GrantedAuthority {
    JAVA, SQL, CPLUS, C;

    @Override
    public String getAuthority() {
        return name();
    }

}
