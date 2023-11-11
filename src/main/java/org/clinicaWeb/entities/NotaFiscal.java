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
@Table(name = "tb_notas_fiscais")

public class NotaFiscal {

    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private BigDecimal valor;
    @Column(name = "data_emissao")
    private LocalDateTime dataemissao;

    @OneToOne
    @JoinColumn(name = "id_consulta")
    private Consulta consulta;

    @Override
    public String toString() {
        return "NotaFiscal{" +
                "id=" + id +
                ", valor=" + valor +
                ", dataemissao=" + dataemissao +
                ", consulta=" + consulta +
                '}';
    }
}
