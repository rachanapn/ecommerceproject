
package com.ModelMadness.daoimpll;

import java.util.List;

//import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Transactional;

import com.ModelMadness.dao.UserDao;
import com.ModelMadness.model.User;




@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	// write user defined constructor with one parameter i.e., sessionFactory

	 public UserDaoImpl(SessionFactory sessionFactory) {
	 this.sessionFactory = sessionFactory;
	 }
	 public Session getSession(){
			return sessionFactory.getCurrentSession();
		}
	

	/**
	 * This save method create record in the User table. If the record is
	 * created successfully, it will return true else will return false
	 */

	public boolean insert(User user) {
		try {

			System.out.println("insert i scalled*******");
			// sessionFactory.getCurrentSession().save(user);
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
		
			session.save(user);
			tx.commit();
			session.flush();
			session.close();

		} catch (Exception e) {
			// if any excpetion comes during execute of try block, catch will
			// excute
			e.printStackTrace();
			// return false;
		}
		// return true;
		return true;
	}

	/**
	 * This update method update record in the User table. If the record is
	 * updated successfully, it will return true else will return false
	 */
	public boolean update(User user) {
		try {
			sessionFactory.getCurrentSession().update(user);
		} catch (Exception e) {
			// if any excpetion comes during execute of try block, catch will
			// excute
			e.printStackTrace();
			return false;
		}
		return true;
	}

	/**
	 * validate method will return true if the credetails are correct else will
	 * return false
	 */
	public boolean validate(String username, String password) {

		Query query = sessionFactory.getCurrentSession().createQuery("from User where id = ? and password = ?");
		query.setString(0, username); // actually the index will start from zero -
									// will get once exception.
		query.setString(1, password);
		// in the User table with this id and password there will one or zero
		// records will exist
		// i.e., uniqueResult
		// uniqueResult method will return object if a row exist, else it will
		// return null
		if (query.uniqueResult() == null) {
			// means no row exist i.e., invalid credentials
			return false;
		} else {
			// means row exist i.e., valid credentials
			return true;
		}

	}

	@SuppressWarnings("unchecked")
	public List<User> list() {

		
		
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}

	public User get(String userid) {

		// get method get the date from user table based on primary key i.e., id
		// and set it to User class
		// like select * from user where id = ?
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from User where  username=?");
		query.setString(0, userid);
		User user = (User) query.uniqueResult();
		tx.commit();
		session.flush();
		session.close();
		return user;

	}



	
	public int  saveOrUpdate(User user) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(user);
		
		} catch (Exception e) {
			// if any excpetion comes during execute of try block, catch will
			// excute
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

}
