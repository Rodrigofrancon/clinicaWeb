package org.clinicaWeb.entities;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Table(name = "tb_medicos")

public class Medico {

    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;
    private String email;
    private String crm;

    @Column(name = "atende_convenio")
    private boolean atendeConvenio;

   @ManyToOne
   @JoinColumn(name = "id_especialidade")
    private Especialidade especialidade;

   @OneToMany(mappedBy = "medico")
   private List<Consulta> consultaList = new ArrayList<>();

    @Override
    public String toString() {
        return "Medico{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                ", email='" + email + '\'' +
                ", crm='" + crm + '\'' +
                ", atendeConvenio=" + atendeConvenio +
                ", especialidade=" + especialidade +
                '}';
    }
}
