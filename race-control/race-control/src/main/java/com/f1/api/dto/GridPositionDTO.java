package com.f1.api.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class GridPositionDTO {
    private int position;
    private String driver;
    private String team;
    private String gap;
}
