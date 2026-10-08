CREATE DATABASE IF NOT EXISTS pos_system_durias;
USE pos_system_durias;

CREATE TABLE IF NOT EXISTS customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  created_at DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  full_name VARCHAR(100) NOT NULL,
  created_at DATETIME NOT NULL
);

INSERT INTO customers (full_name, email, phone, created_at) VALUES
('Randy Durias', 'RandyD@gmail.com', '09123456789', NOW()),
('Krizza Santos', 'Ksantos@gmail.com', '09234567890', NOW()),
('Michelle Marfil', 'MichelleMarfil@gmail.com', '09345678901', NOW()),
('Ashley Sarmiento', 'AshSar@gmail.com', '09456789012', NOW()),
('Carlo Domis', 'carloDoms@gmail.com', '09567890123', NOW());

INSERT INTO users (username, full_name, created_at) VALUES
('RanzelDurias', 'Ranzel Durias', NOW()),
('RaychelDurias', 'Raychel Durias', NOW()),
('KingJames', 'Lebron James', NOW()),
('ChefCurry', 'Stephen Curry', NOW()),
('Booj', 'Benedict Perez', NOW());
