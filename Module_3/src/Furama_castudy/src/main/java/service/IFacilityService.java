package service;

import model.Facility;

import java.util.List;

public interface IFacilityService {
    Facility selectFacility(int id);

    void insertFacility(Facility facility);

    void updateFacility(Facility book);

    void deleteFacility(int id);

    List<Facility> selectAllFacility();
}
