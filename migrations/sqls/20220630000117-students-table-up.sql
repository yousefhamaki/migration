CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE students (
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    username VARCHAR(50) NOT NULL,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    lead_id uuid REFERENCES leads(id)
);