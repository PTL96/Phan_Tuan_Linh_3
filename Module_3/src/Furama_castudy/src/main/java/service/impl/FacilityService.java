package service.impl;

import model.Facility;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;
import service.IFacilityService;

import java.sql.SQLException;
import java.util.List;

public class FacilityService implements IFacilityService {
    private IFacilityRepository facilityRepository = new FacilityRepository();

    @Override
    public Facility selectFacility(int id) {

        return facilityRepository.selectFacility(id);
    }

    @Override
    public void insertFacility(Facility facility) {
        try {
            facilityRepository.insertFacility(facility);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void updateFacility(Facility book) {
        try {
            facilityRepository.updateFacility(book);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void deleteFacility(int id) {
        try {
            facilityRepository.deleteFacility(id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Facility> selectAllFacility() {
        return facilityRepository.selectAllFacility();
    }
}
