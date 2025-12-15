package com.f1.service;

import com.f1.domain.DriverRaceState;
import com.f1.domain.RaceStatus;
import com.f1.repository.DriverRaceStateRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;

@Service
@RequiredArgsConstructor
public class RaceSimulationService {

    private final DriverRaceStateRepository stateRepository;

    public List<DriverRaceState> simulateLap(){
        List<DriverRaceState> states = stateRepository.findAll();

        for (DriverRaceState state : states){
            if (state.getStatus() == RaceStatus.RUNNING){
                double lapTime = 80 + Math.random() * 3 - state.getDriver().getSkill();
                state.setCompletedLaps(state.getCompletedLaps() + 1);
                state.setTotalTime(state.getTotalTime() + lapTime);
            }
        }

        states.sort(
                Comparator
                        .comparing(DriverRaceState::getCompletedLaps).reversed()
                        .thenComparingDouble(DriverRaceState::getTotalTime)
        );

        return stateRepository.saveAll(states);

    }

}
