package com.space4u.mpkgen.model;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "project")
@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idproject")
    @EqualsAndHashCode.Include
    private int idProject;

    private int nr_project;

    @ManyToOne
    @JoinColumn(name="building_id")
    private Building building;

    @ManyToOne
    @JoinColumn(name = "servtype_id" )
    private ServType servtype;

    private String tenant;
    private String date;
    private String floor;
    private String short_description;
    private String mpk;

}
