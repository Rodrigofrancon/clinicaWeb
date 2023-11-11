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
@Table(name = "tb_logins")

public class Login {

    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String usuario;
    private String senha;

    @ManyToMany
    @JoinTable(
            name = "tb_logins_autoridades",
            joinColumns = @JoinColumn(name = "id_login"),
            inverseJoinColumns = @JoinColumn(name = "id_autoridade")
    )
    private List<Autoridade> autoridadeList = new ArrayList<>();


    @Override
    public String toString() {
        return "Login{" +
                "id=" + id +
                ", usuario='" + usuario + '\'' +
                ", senha='" + senha + '\'' +
                '}';
    }
}

