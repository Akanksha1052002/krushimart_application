package krushimart_application.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import krushimart_application.dto.Product;

import krushimart_application.dto.User;

public class KrushimartDao {

	EntityManagerFactory managerFactory=Persistence.createEntityManagerFactory("krushi");
	EntityManager manager=managerFactory.createEntityManager();
	EntityTransaction transaction=manager.getTransaction();
	
	public int farmerRegistration (User user)
	{
		int ct=0;
		transaction.begin();
		manager.persist(user);
		ct++;
		transaction.commit();
		return ct;
	}
	
	public void updateUser(User u)
	{
		User dbuser=manager.find(User.class, u.getId());
		if(dbuser!=null)
		{
			transaction.begin();
			manager.merge(u);
			
			transaction.commit();
		}
	}
	
	public int addProduct(Product product)
	{
		int ct=0;
		transaction.begin();
		manager.persist(product);
		ct++;
		transaction.commit();
		return ct;
	}
	
	public User userLogin(String email)
	{
	   Query query	=manager.createQuery("select u from User u where u.email=?1");
	   query.setParameter(1, email);
	   User user=(User) query.getSingleResult();
	   return user;
	}
	
	public List<Product> allProduct(int id)
	{
		 Query query	=manager.createQuery("select u from Product u where u.userId=?1");
		   query.setParameter(1, id);
		   
		 List<Product> list=query.getResultList();
		 return list;
		
	}
	
	public List<Product> productList()
	{
		 Query query	=manager.createQuery("select u from Product u ");
		  
		   
		 List<Product> list=query.getResultList();
		 return list;
	}

	public User findUser(int id)
	{
		User u=manager.find(User.class, id);
		return u;
	}
}


