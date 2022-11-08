package service;

import model.User;

import java.util.List;

public interface IUserService {
    User selectUser(int id);

    void insertUser(User newUser);

    boolean updateUser(User book);

    boolean deleteUser(int id);

    void insertUserStore(User newUser);

    List<User> finAll();

    User getUserById(int id);

    List<User> findAll();
}
