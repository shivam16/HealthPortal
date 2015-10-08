package model;

import java.util.List;

import controllers.DataAccessObject;

public class PatientServices {
	private Long id;
	private String specialization;
	private String name;
	private String city;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getSpecialization() {
		return specialization;
	}

	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	
	
	public List retrieveDoctor(String spec)
	{
		DataAccessObject dao=new DataAccessObject();
		return dao.retrieval(spec);
	}

}
