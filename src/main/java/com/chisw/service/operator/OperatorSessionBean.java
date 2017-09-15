package com.chisw.service.operator;

import javax.ejb.Stateless;

@Stateless
public class OperatorSessionBean implements OperatorSessionBeanLocal {
    private String username;
    private String password;
    private String email;
    private Integer age;

    public void updateUser() {
        this.username += "1";
        this.password += "1";
        this.email += "1";
        this.age += 1;
    }

    public OperatorSessionBean() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}
