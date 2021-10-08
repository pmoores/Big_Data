-- 16.7.4 Create, Read, Update and Delete

-- CREATE tables and insert data
CREATE TABLE doctors (
 id INT PRIMARY KEY NOT NULL,
 speciality TEXT,
 taking_patients BOOLEAN
);
CREATE TABLE patients (
 id INT NOT NULL,
 doctor_id INT NOT NULL,
 health_status TEXT,
 PRIMARY KEY (id, doctor_id),
 FOREIGN KEY (doctor_id) REFERENCES doctors (id)
);

INSERT INTO doctors(id, speciality, taking_patients)
VALUES
(1, 'cardiology', TRUE),
(2, 'orthopedics', FALSE),
(3, 'pediatrics', TRUE);
INSERT INTO patients (id, doctor_id, health_status)
VALUES
(1, 2, 'healthy'),
(2, 3, 'sick'),
(3, 2, 'sick'),
(4, 1, 'healthy'),
(5, 1, 'sick');


-- READ data using SELECT statements
SELECT * FROM doctors;
SELECT * FROM patients;


-- UPDATE data
UPDATE doctors
SET taking_patients = FALSE
WHERE id = 1;
UPDATE patients
SET health_status = 'healthy'
WHERE id = 1;


-- DELETE data
DELETE FROM patients
WHERE id = 1;
