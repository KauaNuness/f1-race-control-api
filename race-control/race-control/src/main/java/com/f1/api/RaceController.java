package com.f1.api;

import com.f1.api.dto.GridPositionDTO;
import com.f1.domain.Driver;
import com.f1.domain.DriverRaceState;
import com.f1.repository.DriverRepository;
import com.f1.service.RaceSimulationService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/race")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class RaceController {

    private final RaceSimulationService simulationService;
    private final DriverRepository driverRepository;

    @PostMapping("/lap")
    public List<GridPositionDTO> runLap() {
        List<DriverRaceState> states = simulationService.simulateLap();
        DriverRaceState leader = states.get(0);

        List<GridPositionDTO> grid = new ArrayList<>();
        int position = 1;

        for (DriverRaceState state : states) {
            String gap = String.format("+%.3fs", state.getTotalTime() - leader.getTotalTime());
            grid.add(new GridPositionDTO(
                    position++,
                    state.getDriver().getName(),
                    state.getDriver().getTeam(),
                    gap
            ));
        }
        return grid;
    }

    @RestController
    @RequestMapping("/drivers")
    public class DriverController {

        @GetMapping
        public List<Driver> listar() {
            return driverRepository.findAll();
        }
    }


}
