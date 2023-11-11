package org.clinicaWeb.entities;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Table(name = "tb_convenios")

public class Convenio {
    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;
    private String nome;
    private BigDecimal taxa;
    private String observacao;

    @OneToMany(mappedBy = "convenio")
    private List<Consulta> consultaList = new ArrayList<>();

    @Override
    public String toString() {
        return "Convenio{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                ", taxa=" + taxa +
                ", observacao='" + observacao + '\'' +
                '}';
    }
}
