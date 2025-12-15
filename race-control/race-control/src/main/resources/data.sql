-- =========================
-- DRIVERS (F1 2025 GRID)
-- =========================
INSERT INTO driver (id, name, team, skill) VALUES
-- Red Bull Racing
(1, 'Max Verstappen', 'Red Bull Racing', 2.0),
(2, 'Yuki Tsunoda', 'Red Bull Racing', 1.15),

-- Ferrari
(3, 'Lewis Hamilton', 'Ferrari', 1.30),
(4, 'Charles Leclerc', 'Ferrari', 1.40),

-- McLaren
(5, 'Lando Norris', 'McLaren', 1.55),
(6, 'Oscar Piastri', 'McLaren', 1.48),

-- Mercedes
(7, 'George Russell', 'Mercedes', 1.40),
(8, 'Andrea Kimi Antonelli', 'Mercedes', 1.35),

-- Aston Martin
(9, 'Fernando Alonso', 'Aston Martin', 1.35),
(10, 'Lance Stroll', 'Aston Martin', 1.10),

-- Alpine
(11, 'Pierre Gasly', 'Alpine', 1.25),
(12, 'Franco Colapinto', 'Alpine', 1.25),

-- Williams
(13, 'Alexander Albon', 'Williams', 1.25),
(14, 'Carlos Sainz', 'Williams', 1.30),

-- RB (ex-AlphaTauri)
(15, 'Liam Lawson', 'RB', 1.20),
(16, 'Isack Hadjar', 'RB', 1.15),

-- Kick Sauber
(17, 'Nico Hulkenberg', 'Kick Sauber', 1.20),
(18, 'Gabriel Bortoleto', 'Kick Sauber', 1.15),

-- Haas
(19, 'Esteban Ocon', 'Haas', 1.10),
(20, 'Oliver Bearman', 'Haas', 1.15);

-- =========================
-- DRIVER RACE STATE
-- =========================
INSERT INTO driver_race_state (
    driver_id,
    completed_laps,
    total_time,
    tyre,
    status
) VALUES
-- Red Bull
(1, 0, 0.0, 'SOFT', 'RUNNING'),
(2, 0, 0.0, 'MEDIUM', 'RUNNING'),

-- Ferrari
(3, 0, 0.0, 'SOFT', 'RUNNING'),
(4, 0, 0.0, 'SOFT', 'RUNNING'),

-- McLaren
(5, 0, 0.0, 'MEDIUM', 'RUNNING'),
(6, 0, 0.0, 'MEDIUM', 'RUNNING'),

-- Mercedes
(7, 0, 0.0, 'HARD', 'RUNNING'),
(8, 0, 0.0, 'HARD', 'RUNNING'),

-- Aston Martin
(9, 0, 0.0, 'MEDIUM', 'RUNNING'),
(10, 0, 0.0, 'SOFT', 'RUNNING'),

-- Alpine
(11, 0, 0.0, 'SOFT', 'RUNNING'),
(12, 0, 0.0, 'SOFT', 'RUNNING'),

-- Williams
(13, 0, 0.0, 'MEDIUM', 'RUNNING'),
(14, 0, 0.0, 'MEDIUM', 'RUNNING'),

-- RB
(15, 0, 0.0, 'HARD', 'RUNNING'),
(16, 0, 0.0, 'MEDIUM', 'RUNNING'),

-- Kick Sauber
(17, 0, 0.0, 'HARD', 'RUNNING'),
(18, 0, 0.0, 'MEDIUM', 'RUNNING'),

-- Haas
(19, 0, 0.0, 'SOFT', 'RUNNING'),
(20, 0, 0.0, 'MEDIUM', 'RUNNING');
