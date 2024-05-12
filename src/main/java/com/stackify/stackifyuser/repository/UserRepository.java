package com.stackify.stackifyuser.repository;

import com.stackify.stackifyuser.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User,Long> {
    Optional<User> getUserByUsername(String username);
}
