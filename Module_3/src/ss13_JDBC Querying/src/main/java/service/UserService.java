package service;

import model.User;
import repository.IUserRepository;
import repository.UserRepository;

import java.util.List;

public class UserService implements IUserService{
    private final String SEARCH = "select*from `user` where country = ?;";
    private final String SORT = "SELECT * FROM `user` ORDER BY `name`;";

    private IUserRepository userRepository = new UserRepository();

    @Override
    public List<User> finAll() {
        return userRepository.findAll();
    }



    @Override
    public User getUserById(int id) {
        return userRepository.getUserById(id);
    }

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public void insertUserStore(User user) {
        userRepository.insertUser(user);
    }



    @Override
    public User selectUser(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public void insertUser(User newUser) {
        userRepository.insertUser(newUser);
    }

    @Override
    public boolean updateUser(User book) {
        return userRepository.updateUser(book);
    }

    @Override
    public boolean deleteUser(int id) {
        return userRepository.deleteUser(id);
    }

}
