package repository;

import model.Room;

import java.util.List;

public interface IRoomRepository {

    List<Room> roomAllList();

    void addRoom(Room room);

    boolean deleteRoom(int id);

    Room findByID(int id);

    List<Room> search(String name);

    boolean edit(Room room);
}
