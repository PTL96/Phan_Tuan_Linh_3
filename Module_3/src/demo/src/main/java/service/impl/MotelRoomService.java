package service.impl;

import model.MotelRoom;
import repository.IMotelRoomRepository;
import repository.impl.MotelRoomRepository;
import service.IMotelRoomService;

import java.util.List;

public class MotelRoomService implements IMotelRoomService {
    private IMotelRoomRepository iMotelRoomRepository = new MotelRoomRepository();

        @Override
        public boolean addNew(MotelRoom motelRoom) {
            return iMotelRoomRepository.addNew(motelRoom);
        }

        @Override
        public boolean remove(int id) {
            return iMotelRoomRepository.remove(id);
        }

        @Override
        public boolean edit(int id, MotelRoom motelRoom) {
            return iMotelRoomRepository.edit(id, motelRoom);
        }

        @Override
        public MotelRoom findByID(int id) {
            return iMotelRoomRepository.findByID(id);
        }

        @Override
        public List<MotelRoom> searchByName(String name) {
            return iMotelRoomRepository.findAllRoom();
        }


    @Override
    public List<MotelRoom> findAllRoom() {
        return iMotelRoomRepository.findAllRoom();
    }
}