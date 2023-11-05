package com.example.dao_hibernate.repository;

import com.example.dao_hibernate.entity.Person;
import org.springframework.stereotype.Repository;
import jakarta.persistence.*;
import java.util.List;

@Repository
public class PersonRepository {
    @PersistenceContext
    private EntityManager entityManager;

    public List<Person> getPersonsByCity(String city) {
        String jpql = "SELECT p FROM Person p WHERE LOWER(p.cityOfLiving) = LOWER(:city)";
        return entityManager.createQuery(jpql, Person.class)
                .setParameter("city", city.toLowerCase())
                .getResultList();
    }
}
