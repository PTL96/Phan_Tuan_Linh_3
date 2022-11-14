package service;

import model.Room;

import java.util.List;

public interface IRoomService {

    List<Room> roomAllList();

    void add(Room room);

    boolean deleteRoom(int id);

    Room findById(int id);

    boolean edit(Room room);
}
