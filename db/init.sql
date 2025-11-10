CREATE TABLE IF NOT EXISTS aula (
    id BIGSERIAL PRIMARY KEY,
    nombre VARCHAR(255),
    ubicacion VARCHAR(255),
    capacidad INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS prestamo (
    id BIGSERIAL PRIMARY KEY,
    aula_id BIGINT,
    estudiante_id BIGINT,
    fecha_prestamo TIMESTAMP WITHOUT TIME ZONE,
    fecha_devolucion TIMESTAMP WITHOUT TIME ZONE
);

-- Limpiar tablas antes de insertar para evitar duplicados en reinicios
TRUNCATE TABLE prestamo, aula RESTART IDENTITY CASCADE;

INSERT INTO aula (nombre, ubicacion, capacidad) VALUES ('Aula 101', 'Edificio A', 30);
INSERT INTO aula (nombre, ubicacion, capacidad) VALUES ('Aula 102', 'Edificio A', 25);
INSERT INTO aula (nombre, ubicacion, capacidad) VALUES ('Laboratorio de Computo 1', 'Edificio B', 20);
INSERT INTO aula (nombre, ubicacion, capacidad) VALUES ('Auditorio', 'Edificio C', 150);

INSERT INTO prestamo (aula_id, estudiante_id, fecha_prestamo, fecha_devolucion) VALUES (1, 1, '2025-11-10 08:00:00', '2025-11-10 10:00:00');
INSERT INTO prestamo (aula_id, estudiante_id, fecha_prestamo, fecha_devolucion) VALUES (2, 2, '2025-11-10 10:00:00', '2025-11-10 12:00:00');
INSERT INTO prestamo (aula_id, estudiante_id, fecha_prestamo, fecha_devolucion) VALUES (1, 1, '2025-11-11 08:00:00', '2025-11-11 10:00:00');
