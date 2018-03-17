package com.shoponlineproject;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class UserRepository {
    private static List<User> users = new ArrayList();

    public UserRepository() {
    }

    public static Optional<User> getUserByCredentials(String username, String password) {
        return users.stream().filter((u) -> {
            return u.getUserName().equals(username) && u.getPassword().equals(password);
        }).findFirst();
    }

    static {
        User user = new User("user", "user");
        User user1 = new User("admin", "admin");
        users.add(user);
        users.add(user1);
    }
}

