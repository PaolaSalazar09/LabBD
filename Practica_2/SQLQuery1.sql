use Practica2
create table Libros(
iIdLibro int Not null Primary Key,
vNombreLib varchar(50) Not null,
vAutor varchar(60) Not null,
vEditorial varchar(50) Not null,
vGenero varchar(50) Not null
)
create table Trabajador(
iIdTrabajador int Not null Primary Key,
vNombre varchar(35) Not null,
vApellidos varchar(100) Not null, 
dFechaingreso date Not null
)
create table Alumno(
iMatricula int Not null Primary Key,
vNombre varchar(35) Not null,
vApellido1 varchar(50) Not null, 
vApellido2 varchar(50) Not null,
vFacultad varchar(70) Not null,
vCarrera varchar(50) Not null,
vNombreCompleto AS (vNombre + '' + vApellido1 + ''+ vApellido2 + '')
)
create table Usexterno(
iIdUsexterno int Not null Primary Key,
vNombre varchar(35) Not null,
vApellido1 varchar(50) Not null, 
vApellido2 varchar(50) Not null,
vOcupacion varchar(50) Not null,
iNumero int Not null,
vNombreCompleto AS (vNombre + '' + vApellido1 + ''+ vApellido2 + '')
)
create table Prestamo(
iIdPrestamo int Not null Primary Key,
iIdAlumno int Not null,
iIdLibro int Not null,
dFechSalida date Not null,
dFechEntrega date Not null
)
Create Index
INDX_Alumno_Carrera on Alumno(vCarrera)
Create Index
INDX_Prestamo_Libro on Prestamo(iIdLibro)