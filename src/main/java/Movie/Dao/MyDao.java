package Movie.Dao;


import java.util.List;

import org.springframework.stereotype.Component;

import Movie.entity.Movie;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.criteria.From;
@Component
public class MyDao {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Divya");
	EntityManager manager = emf.createEntityManager();
	EntityTransaction traction = manager.getTransaction();
	
	
	public void Save(Movie movie) {
	traction.begin();
	manager.persist(movie);
	traction.commit();
	}
		
	public List<Movie> fetch(){
		return manager.createQuery("select m from Movie m" , Movie.class).getResultList();
		
	}
	public Movie findById(int id) {
		return manager.find(Movie.class,id);
	}
	public void delete(int id) {
		traction.begin();
		manager.remove(findById(id));
		traction.commit();
		
	}
	
	
	public void update(Movie movie) {
		traction.begin();
		manager.merge(movie);
		traction.commit();
	}
	
	
}
