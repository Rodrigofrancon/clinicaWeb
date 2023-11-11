package org.clinicaWeb.entities;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Table(name = "tb_consultas")

public class Consulta {
    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "data_cadastro")
    private LocalDateTime datacadastro;
    @Column(name = "data_atendimento")
    private LocalDateTime dataatendimento;
    private BigDecimal taxa;

    @ManyToOne
    @JoinColumn(name = "id_funcionario")
    private Funcionario funcionario;

    @ManyToOne
    @JoinColumn(name = "id_paciente")
    private Paciente paciente;

    @ManyToOne
    @JoinColumn(name = "id_medico")
    private Medico medico;

    @ManyToOne
    @JoinColumn(name = "id_convenio")
    private Convenio convenio;

    @OneToOne(mappedBy = "consulta")
    private NotaFiscal notaFiscal;

    @Override
    public String toString() {
        return "Consulta{" +
                "id=" + id +
                ", datacadastro=" + datacadastro +
                ", dataatendimento=" + dataatendimento +
                ", taxa=" + taxa +
                ", funcionario=" + funcionario +
                ", paciente=" + paciente +
                ", medico=" + medico +
                ", convenio=" + convenio +
                ", notaFiscal=" + notaFiscal +
                '}';
    }
}
