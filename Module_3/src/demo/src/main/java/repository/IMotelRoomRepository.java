package repository;

import model.MotelRoom;

import java.util.List;

public interface IMotelRoomRepository {
    List<MotelRoom> findAllRoom();

    boolean addNew(MotelRoom motelRoom);

    boolean remove(int id);

    boolean edit(int id, MotelRoom motelRoom);

    MotelRoom findByID(int id);

    List<MotelRoom> searchByName(String name);
}
