package model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import controllers.DataAccessObject;

public class User {

                private long id;
                
                @NotEmpty@Email
                private String email;
                
                @NotEmpty@Size(min=6, max=15)
                private String password;
                
                public long getId() {
                                return id;
                }
                public void setId(long id) {
                                this.id = id;
                }
                public String getEmail() {
                                return email;
                }
                public void setEmail(String email) {
                                this.email = email;
                }
                public String getPassword() {
                                return password;
                }
                public void setPassword(String password) {
                                this.password = password;
                }
                
                public boolean validateLogin(String email, String password){
                                DataAccessObject dao = new DataAccessObject();
                                return dao.validation(email, password);
                }
                
}
