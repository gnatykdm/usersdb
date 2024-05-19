package com.beta.model.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@Table(name = "users")
public class UserEntity {
    @Id
    @NotNull
    @Column(name = "user_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long userId;

    @NotNull
    @Column(name = "user_name")
    @Size(min = 4, message = "Name must be at least 4 characters long")
    public String userName;

    @Email
    @NotNull
    @Column(name = "user_email")
    @Size(min = 4, message = "Email must be at least 4 characters long")
    public String userEmail;

    @NotNull
    @Column(name = "user_password")
    @Size(min = 4, message = "Password must be at least 4 characters long")
    public String userPassword;

    public UserEntity(String userName, String userEmail, String userPassword) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
    }
}
