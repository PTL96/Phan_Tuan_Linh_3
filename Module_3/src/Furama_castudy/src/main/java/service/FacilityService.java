package service;

import model.Facility;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;

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

    }

    @Override
    public void deleteFacility(int id) {

    }

    @Override
    public List<Facility> selectAllFacility() {
        return facilityRepository.selectAllFacility();
    }
}
