package contollers;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

import models.User;

import org.apache.log4j.BasicConfigurator;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cache.ReadWriteCache.Item;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

public class DataAccessObject {

	private SessionFactory factory;

	Logger log= null;
	
	public DataAccessObject() {
		// TODO Auto-generated constructor stub
		BasicConfigurator.configure();
		factory = new Configuration().configure().buildSessionFactory();
	}

	public boolean validation(String email, String password) {
		Session session = factory.openSession();
		Transaction tx = null;

		try {
			//tx = session.beginTransaction();
			List users = session.createQuery("FROM Users").list();
			if(users==null)
				return false;
			for (Iterator iterator = users.iterator(); iterator.hasNext();) {
				User user = (User) iterator.next();
				if (email.equals(user.getEmail())
						&& password.equals(user.getPassword())) {
					return true;
				}
				//tx.commit();
			}

		} catch (HibernateException e) {
			//if (tx != null)
			//	tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		log.info("Wrong Email-Id or password");
		return false;
	}

	/*public Users getUserDetails(String email) {

		Session session = factory.openSession();
		Transaction tx = null;
		Logger log = null;
		try {
			//tx = session.beginTransaction();
			List users = session.createQuery("FROM Users").list();
			for (Iterator iterator = users.iterator(); iterator.hasNext();) {
				Users user = (Users) iterator.next();
				if (email.equals(user.getEmail())) {
					return user;
				}
			}
			//tx.commit();
		} catch (HibernateException e) {
			//if (tx != null)
			//	tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		//log.info("User does not exists!!!!");
		return null;
	}


public int addUser(int uid,String name,String email,String password,String contactNo,String address)
{
	Session session = factory.openSession();
    Transaction tx = null;
    Integer uID = null;
    try{
       tx = session.beginTransaction();
       Cart cart = new Cart();
       Users user = new Users(name, email, address,uid,cart);
       user.setPassword(password);
       user.setContactNo(contactNo);
       session.save(user); 
       tx.commit();
    }catch (HibernateException e) {
       if (tx!=null) tx.rollback();
       e.printStackTrace(); 
       return 0;
    }finally {
       session.close(); 
    }
	return 1;
	}

public List<Item> getProductList(){
	List<Item> items = new ArrayList<Item>();
	
	factory = new Configuration().configure().buildSessionFactory();

	Session session = factory.openSession();
	Transaction tx = null;

	try {
		//tx = session.beginTransaction();
		List item = session.createQuery("FROM Item").list();
		for (Iterator iterator = item.iterator(); iterator.hasNext();) {
			items.add((Item) iterator.next());
		//tx.commit();
		}

	} catch (HibernateException e) {
		//if (tx != null)
		//	tx.rollback();
		e.printStackTrace();
	} finally {
		session.close();
	}
	
	return items;
}

public Item getItem(String itemName){ 
	
	Item item=null;
	Session session = factory.openSession();
    Transaction tx = null;
    try{
       tx = session.beginTransaction();
       Criteria cr = session.createCriteria(Item.class);
       // Add restriction.
       cr.add(Restrictions.gt("modelName",itemName));
       List items = cr.list();

       for (Iterator iterator = items.iterator(); iterator.hasNext();){
          Item itemSearch = (Item) iterator.next(); 
          return itemSearch;
       }
       tx.commit();
    }catch (HibernateException e) {
       if (tx!=null) tx.rollback();
       e.printStackTrace(); 
    }finally {
       session.close(); 
    }
	
	log.info("Item not found");
	return null;
}*/
}


