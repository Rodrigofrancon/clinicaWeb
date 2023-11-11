package org.clinicaWeb;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import org.clinicaWeb.entities.Especialidade;

public class Main {
    public static void main(String[] args) {
        //Criação do Banco de Dados
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("ClinicaWeb");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        //
        Especialidade especialidade = entityManager.find(Especialidade.class, 3);
        System.out.println("Nome: " + especialidade.getNome());
        System.out.println("Descrição: " + especialidade.getDescricao());

        entityManager.close();
        entityManagerFactory.close();

    }
}