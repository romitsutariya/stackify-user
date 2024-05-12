package com.stackify.stackifyuser.service;

import com.stackify.stackifyuser.entity.User;
import com.stackify.stackifyuser.repository.UserRepository;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void saveUser(User user) {
        this.userRepository.save(user);
    }

    public List<User> getUsers(int pageNo, int pageSize) {
        PageRequest pageRequest = PageRequest.of(pageNo, pageSize);
        var pagingUser =userRepository.findAll(pageRequest);
        return pagingUser.getContent();
    }

    public User getUserById(Long id) {
        return this.userRepository.findById(id).orElse(null);
    }

    public void deleteUserById(Long id) {
        this.userRepository.deleteById(id);
    }

    public User getUserByUserName(String userName) {
        return this.userRepository.getUserByUsername(userName).orElse(null);
    }
}
