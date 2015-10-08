package com.sapient.model;


import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class Doctor implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private String specializaion;
	private String yrs_exp;
	private String email;
	private String hospital;
	private String contact_no;
	private String city;
	private String availability;

	public String getYrs_exp() {
		return yrs_exp;
	}

	public void setYrs_exp(String yrs_exp) {
		this.yrs_exp = yrs_exp;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHospital() {
		return hospital;
	}

	public void setHospital(String hospital) {
		this.hospital = hospital;
	}

	public String getContact_no() {
		return contact_no;
	}

	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public String getSpecializaion() {
		return specializaion;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSpecialization() {
		return specializaion;
	}

	public void setSpecializaion(String specializaion) {
		this.specializaion = specializaion;
	}

	public boolean validateLogin(String email, String password) {
		Context ctx = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ctx = new InitialContext();
			javax.sql.DataSource ds = (javax.sql.DataSource) ctx
					.lookup("java:comp/env/jdbc/DeepanshiDB");
			con = ds.getConnection();

			ps = con.prepareStatement("SELECT NAME,SPECIALIZATION, CITY, AVAILABILITY, CONTACT, EMAIL, HOSPITAL, YRS_EXP FROM DOCTOR WHERE EMAIL=? AND PASSWORD=?");
			ps.setString(1, email);
			ps.setString(2, password);
			rs = ps.executeQuery();

			if (rs.next()) {
				name = rs.getString(1);
				specializaion = rs.getString(2);
				city = rs.getString(3);
				availability = rs.getString(4);
				contact_no = rs.getString(5);
				this.email = rs.getString(6);
				hospital = rs.getString(7);
				yrs_exp = rs.getString(8);

				return true;
			}
			return false;
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ctx != null) {
					ctx.close();
				}
				if (con != null) {
					con.close();
				}
				if (ps != null) {
					ps.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (NamingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;

	}

}
