package com.space4u.mpkgen.model;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

import javax.persistence.*;
import java.util.List;

@Slf4j
@Entity
@Table(name="servtype")
@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@ToString
public class ServType {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name="idservtype")
    @EqualsAndHashCode.Include
    private int idservtype;

    private String name;

    @OneToMany(mappedBy = "servtype", cascade = CascadeType.ALL)
    private List<Project> projects;

}
