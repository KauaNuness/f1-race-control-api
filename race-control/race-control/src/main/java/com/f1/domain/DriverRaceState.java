package com.f1.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class DriverRaceState {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(optional = false)
    private Driver driver;

    private int completedLaps;
    private double totalTime;

    @Enumerated(EnumType.STRING)
    private TyreType tyre;

    @Enumerated(EnumType.STRING)
    private RaceStatus status;
}
