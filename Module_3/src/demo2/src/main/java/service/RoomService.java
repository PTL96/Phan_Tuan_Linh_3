package service;

import model.Room;
import repository.IRoomRepository;
import repository.impl.RoomRepository;

import java.util.List;

public class RoomService implements IRoomService{

   IRoomRepository roomRepository = new RoomRepository();
    @Override
    public List<Room> roomAllList() {
        return roomRepository.roomAllList();
    }

    @Override
    public void add(Room room) {
        roomRepository.addRoom(room);
    }
    @Override
    public boolean deleteRoom(int id) {
        return roomRepository.deleteRoom(id);
    }

    @Override
    public Room findById(int id) {
        return roomRepository.findByID(id);
    }

    @Override
    public boolean edit(Room room) {
        roomRepository.edit(room);
        return false;
    }
}
