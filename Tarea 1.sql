CREATE DATABASE IF NOT EXISTS TareaAleYSanchez; 
USE TareaAleYSanchez; 

CREATE TABLE TB_Cargos (
    id_cargos INT PRIMARY KEY,
    nombre_cargos VARCHAR(100)
);

CREATE TABLE Tb_Departamentos (
    Id_departamentos INT PRIMARY KEY,
    Nombre VARCHAR(100)
);

CREATE TABLE TB_Empleados (
    Id_empleado INT PRIMARY KEY,
    nombre_empleado VARCHAR(100),
    apellido_empleado VARCHAR(100),
    salario_empleado DECIMAL(10, 2),
    fecha_inicio_empleado DATE,
    id_cargos INT,
    id_departamento INT,
    FOREIGN KEY (id_cargos) REFERENCES TB_Cargos(id_cargos),
    FOREIGN KEY (id_departamento) REFERENCES Tb_Departamentos(Id_departamentos)
);


CREATE TABLE TbProyectos_trabajo (
    Id_Proyectos_trabajo INT PRIMARY KEY,
    Id_proyectos INT,
    Id_empleado INT,
    FOREIGN KEY (Id_proyectos) REFERENCES Tb_Proyectos(Id_proyectos),
    FOREIGN KEY (Id_empleado) REFERENCES TB_Empleados(Id_empleado)
);

CREATE TABLE Tb_Proyectos (
    Id_proyectos INT PRIMARY KEY,
    descripción_proyectos TEXT
);