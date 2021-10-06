
 --EJercicio 2
 create table usuarios (
  nombre varchar(30),
  clave varchar(10)
 )

--ejercicio 3
insert into usuarios (nombre, clave) values ('Mariano','payaso')

 select * from usuarios;

 insert into usuarios (clave, nombre) values ('River','Juan')

 select * from usuarios

--ejercicio 4
create table libros(
  titulo varchar(20),
  autor varchar(15),
  editorial varchar(10),
  precio float,
  cantidad integer
 );

 exec sp_columns libros;

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('El aleph','Borges','Emece',25.50,100)
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Matematica estas ahi','Paenza','Siglo XXI',18.8,200)

 select * from libros;

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Alicia en el pais de las maravillas','Lewis Carroll','Atlantida',10,200)

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Alicia en el pais','Lewis Carroll','Atlantida',10,200)

 select * from libros

 --ejercicio 5

 exec sp_columns libros;

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('El aleph','Borges','Emece',25.50,100)
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Alicia en el pais de las maravillas','Lewis Carroll','Atlantida',10,200)
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Matematica estas ahi','Paenza','Siglo XXI',18.8,200)

 select * from libros

 select titulo,autor,editorial from libros

 select titulo,precio from libros

 select editorial,cantidad from libros

 --ejercicio 6 

 exec sp_columns usuarios;

 insert into usuarios (nombre, clave)
  values ('Marcelo','Boca')
 insert into usuarios (nombre, clave)
  values ('JuanPerez','Juancito')
 insert into usuarios (nombre, clave)
  values ('Susana','River')
 insert into usuarios (nombre, clave)
  values ('Luis','River');

 select *from usuarios
  where nombre='Leonardo'

 select nombre from usuarios
  where clave='River'

 select nombre from usuarios
  where clave='Santi'

  --ejercicio 7
insert into libros (titulo,autor,editorial,precio)
  values ('El aleph','Borges','Emece',24.50)
 insert into libros (titulo,autor,editorial,precio)
  values ('Martin Fierro','Jose Hernandez','Emece',16.00);
 insert into libros (titulo,autor,editorial,precio
  values ('Aprenda PHP','Mario Molina','Emece',35.40)
 insert into libros (titulo,autor,editorial,precio)
  values ('Cervantes y el quijote','Borges','Paidos',50.90)

 select * from libros
  where autor<>'Borges';

 select titulo,precio
  from libros
  where precio>20

 select * from libros
  where precio<=30;

--ejercicio 8
insert into usuarios (nombre,clave)
  values ('Marcelo','River')
 insert into usuarios (nombre,clave)
  values ('Susana','chapita')
 insert into usuarios (nombre,clave)
  values ('CarlosFuentes','Boca')
 insert into usuarios (nombre,clave)
  values ('FedericoLopez','Boca')

 select * from usuarios

 delete from usuarios
 where nombre='Marcelo'

 select * from usuarios

 delete from usuarios
 where nombre='Marcelo'

 select * from usuarios

 delete from usuarios
  where clave='Boca'

 select * from usuarios

 delete from usuarios

 select * from usuarios

 --ejercicio 9
 insert into usuarios (nombre,clave)
  values ('Marcelo','River')
 insert into usuarios (nombre,clave)
  values ('Susana','chapita')
 insert into usuarios (nombre,clave)
  values ('Carlosfuentes','Boca')
 insert into usuarios (nombre,clave)
  values ('Federicolopez','Boca')

 update usuarios set clave='RealMadrid'
 select * from usuarios

 update usuarios set clave='Boca'
  where nombre='Federicolopez'

 select * from usuarios;

 update usuarios set clave='payaso'
  where nombre='JuanaJuarez'

 select * from usuarios;

 update usuarios set nombre='Marceloduarte', clave='Marce'
  where nombre='Marcelo'

 select * from usuarios

 --ejercicio 10
 insert into libros (titulo,autor,editorial)
  values ('El aleph','Borges','Emece')

 select * from libros --mostramos los registros de libros
 select titulo, autor 
 /*mostramos títulos y
 nombres de los autores*/
 from libros

 --ejercicio 11 
 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',null)

 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais','Lewis Carroll',null,0)

 insert into libros (titulo,autor,editorial,precio)
  values(null,'Borges','Siglo XXI',25)

 exec sp_columns libros;

 insert into libros (titulo,autor,editorial,precio)
  values('Uno','Richard Bach','',18.50)
 insert into libros (titulo,autor,editorial,precio)
  values('','Richard Bach','Planeta',22)

 select * from libros

 select * from libros
  where precio is null

 select * from libros
  where precio=0;

 select * from libros
  where editorial is null

 select * from libros
  where editorial=''

 select * from libros
  where precio is not null

  --ejercicio 12
  if object_id('usuarios') is not null
  drop table usuarios;

 create table usuarios(
  nombre varchar(20),
  clave varchar(10),
  primary key(nombre)
 );

 exec sp_columns usuarios;

 insert into usuarios (nombre, clave)
  values ('juanperez','Boca');
 insert into usuarios (nombre, clave)
  values ('raulgarcia','River');

  --ejercicio 13
  if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  precio float
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',23);

 select * from libros;

 insert into libros (titulo,autor,editorial,precio)
  values('Uno','Richard Bach','Planeta',18);
 insert into libros (titulo,autor,editorial,precio)
  values('Aprenda PHP','Mario Molina','Siglo XXI',45.60);
 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais de maravillas','Lewis Carroll','Paidos',15.50);

 select * from libros;

 insert into libros (codigo,titulo,autor,editorial,precio)
  values(5,'Martin Fierro','Jose Hernandez','Paidos',25);

 update libros set codigo=9
  where titulo='Uno';

 exec sp_columns libros;

 delete from libros
  where autor='Lewis Carroll';

  insert into libros (titulo, autor, editorial, precio)
  values('Martin Fierro','Jose Hernandez','Paidos',25); 

  select * from libros;

--ejercicio 14
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity(100,2),
  titulo varchar(20),
  autor varchar(30),
  precio float
 );

 insert into libros (titulo,autor,precio)
  values('El aleph','Borges',23);
 insert into libros (titulo,autor,precio)
  values('Uno','Richard Bach',18);
 insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',45.60);

 select * from libros;

select ident_seed('libros');

 insert into libros (codigo,titulo,autor,precio)
  values(106,'Martin Fierro','Jose Hernandez',25);

 set identity_insert libros on;

 insert into libros (codigo,titulo,autor)
 values (100,'Matematica estas ahi','Paenza');

 insert into libros (codigo,titulo,autor)
 values (1,'Ilusiones','Richard Bach');

 insert into libros (titulo,autor)
 values ('Uno','Richard Bach');

 set identity_insert libros off;

 insert into libros (codigo,titulo,autor)
 values (300,'Uno','Richard Bach');

--ejercicio 15
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15),
  precio float
 );

 insert into libros (titulo,autor,editorial,precio)
  values ('El aleph','Borges','Emece',25.60);
 insert into libros (titulo,autor,editorial,precio)
  values ('Uno','Richard Bach','Planeta',18);

 select * from libros;

 truncate table libros;

 insert into libros (titulo,autor,editorial,precio)
  values ('El aleph','Borges','Emece',25.60);
 insert into libros (titulo,autor,editorial,precio)
  values ('Uno','Richard Bach','Planeta',18);

 select * from libros;

 delete from libros;

 insert into libros (titulo,autor,editorial,precio)
  values ('El aleph','Borges','Emece',25.60);
 insert into libros (titulo,autor,editorial,precio)
  values ('Uno','Richard Bach','Planeta',18);

 select * from libros;

--ejercicio 17
if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad integer,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11)
 );

 insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  values ('Juan Juarez',32,'masc','Avellaneda 789','Cordoba','4234567');

 insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  values ('Marcela Morales',43,'f','Colon 456','Cordoba',4567890);

 select * from visitantes;

 --ejercicio 18
 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo smallint identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  precio smallmoney,
  cantidad tinyint
 );

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Emece',25.60,260);

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Emece',250000,100);

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Uno','Richard Bach','Planeta','a50.30',100);

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Uno','Richard Bach','Planeta',50.30,'100');

 select * from libros;

 --ejercicio 19
  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(20),
  documento char(8),
  fechaingreso datetime
 );

 set dateformat dmy;

 insert into empleados values('Ana Gomez','22222222','12-01-1980');
 insert into empleados values('Bernardo Huerta','23333333','15-03-81');
 insert into empleados values('Carla Juarez','24444444','20/05/1983');
 insert into empleados values('Daniel Lopez','25555555','2.5.1990');

 select * from empleados;

 select * from empleados where fechaingreso<'01-01-1985';

 update empleados set nombre='Maria Carla Juarez' where fechaingreso='20.5.83';

 select * from empleados;

 delete from empleados where fechaingreso<>'20/05/1983';

 select * from empleados;


--ejercicio 20
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15)
 );

 insert into libros
  values ('Uno','Richard Bach','Planeta');

 insert into libros (titulo, autor)
  values ('El aleph','Borges');

 insert into libros (autor,editorial)
  values ('Lewis Carroll','Planeta');

 select * from libros;

--ejercicio 21
 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) not null default 'Desconocido', 
  editorial varchar(20),
  precio decimal(5,2),
  cantidad tinyint default 0
 );

 insert into libros (titulo,editorial,precio)
  values('Java en 10 minutos','Paidos',50.40);

 select * from libros;

 insert into libros (titulo,editorial)
  values('Aprenda PHP','Siglo XXI');
 select * from libros;

 exec sp_columns libros;

 insert into libros (titulo,autor,precio,cantidad)
  values ('El gato con botas',default,default,100);
 select *from libros;

 insert into libros default values;
 select * from libros;

 insert into libros (titulo,autor,cantidad)
  values ('Alicia en el pais de las maravillas','Lewis Carroll',null);

--ejercicio 22
if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  nombre varchar(30),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda
  values('Juan Perez','Avellaneda 908','4252525');
 insert into agenda
  values('Marta Lopez','Sucre 34','4556688');
 insert into agenda
  values('Carlos Garcia','Sarmiento 1258',null);

 select nombre as NombreYApellido,
  domicilio,telefono
  from agenda;

 select nombre as 'Nombre y apellido',
  domicilio,telefono
  from agenda;

 select nombre 'Nombre y apellido',
  domicilio,telefono
  from agenda;

  --ejercicio 23
  if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  nombre varchar(30),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda
  values('Juan Perez','Avellaneda 908','4252525');
 insert into agenda
  values('Marta Lopez','Sucre 34','4556688');
 insert into agenda
  values('Carlos Garcia','Sarmiento 1258',null);

 select nombre as NombreYApellido,
  domicilio,telefono
  from agenda;

 select nombre as 'Nombre y apellido',
  domicilio,telefono
  from agenda;

 select nombre 'Nombre y apellido',
  domicilio,telefono
  from agenda;

  --ejercicio 25
  if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 select substring(titulo,1,12) as titulo
  from libros;

 select left(titulo,12) as titulo
  from libros;

 select titulo,
  str(precio,6,1)
  from libros;

 select titulo,
  str(precio)
  from libros;

  select titulo, autor, upper(editorial)
   from libros;

--ejercicio 26
 if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25.33);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.65);
 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.95);

 select titulo,autor,precio,
  floor(precio) as abajo,
  ceiling(precio) as arriba
  from libros;

  --ejercicio 27
  if object_id ('libros') is not null
  drop table libros;

 create table libros(
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  edicion datetime,
  precio decimal(6,2)
 );

 insert into libros values('El aleph','Borges','Emece','1980/10/10',25.33);
 insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI','2000/05/05',50.65);
 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Emece','2000/08/09',19.95);
 insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI','2000/02/04',45);

 select titulo, datepart (year,edicion) from libros;

 select titulo, datename (month,edicion) from libros;

 select titulo, datediff(year,edicion,getdate()) from libros;

 select titulo from libros
  where datepart(day,edicion)=9;

--ejercicio 28
if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25.33);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.65);
 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.95);
 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Planeta',15);

select * from libros
 order by titulo;

 select titulo,autor,precio
  from libros order by 3;

 select * from libros
  order by editorial desc;

 select * from libros
  order by titulo,editorial;

 select * from libros
  order by titulo asc, editorial desc;

 select titulo, autor
  from libros
  order by precio;

 select titulo, autor, editorial,
 precio+(precio*0.1) as 'precio con descuento'
 from libros
 order by 4;


--ejercicio 29
if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Antología poética','Borges','Planeta',39.50);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Planeta',50.50);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.90);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',25.90);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Paidos',16.80);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',19.50);
 insert into libros
  values('Cervantes y el quijote','Borges','Paidos',18.40);

 select * from libros
  where (autor='Borges') and
  (precio<=20);

 select * from libros
  where autor='Borges' or
  editorial='Planeta';

 select * from libros
  where not editorial='Planeta';

 select * from libros
  where (autor='Borges') or
  (editorial='Paidos' and precio<20);

 select * from libros
  where (autor='Borges' or editorial='Paidos') and
  (precio<20);

--ejercicio 30
if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Cervantes y el quijote','Borges','Paidos',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',25.90);
 insert into libros (titulo,autor,precio)
  values('Antología poética','Borges',25.50);
 insert into libros (titulo,autor,precio)
  values('Java en 10 minutos','Mario Molina',45.80);
 insert into libros (titulo,autor)
  values('Martin Fierro','Jose Hernandez');
 insert into libros (titulo,autor)
  values('Aprenda PHP','Mario Molina');

 select * from libros
  where editorial is null;

 select * from libros
  where editorial is not null;

  --ejercicio 31
  if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Cervantes y el quijote','Borges','Paidos',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',25.90);
 insert into libros (titulo,autor,precio)
  values('Antología poética','Borges',32);
 insert into libros (titulo,autor,precio)
  values('Java en 10 minutos','Mario Molina',45.80);
 insert into libros (titulo,autor,precio)
  values('Martin Fierro','Jose Hernandez',40);
 insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',56.50);

 select * from libros
  where precio between 20 and 40;

 select * from libros
  where precio not between 20 and 35;

--ejercicio 32
if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(20),
  precio decimal(6,2),
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Cervantes y el quijote','Borges','Paidos',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros (titulo,precio)
  values('Antología poética',32);
 insert into libros (titulo,autor,precio)
  values('Martin Fierro','Jose Hernandez',40);
 insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',56.50);

 select * from libros
  where autor in('Borges','Paenza');

 select * from libros
  where autor not in ('Borges','Paenza');


--ejercicio 33
if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Antología poética','J. L. Borges','Planeta',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros
  values('Martin Fierro','Jose Hernandez',default,40);
 insert into libros
  values('Aprenda PHP','Mario Molina','Nuevo siglo',56.50);

 select * from libros
  where autor like '%Borges%';

 select * from libros
  where titulo like 'M%';

 select * from libros
  where titulo not like 'M%';

 select * from libros
  where autor like '%Carrol_';

 select titulo,autor,editorial
  from libros
  where editorial like '[P-S]%';

 select titulo,autor,editorial
  from libros
  where editorial like '[^PN]%';

 select titulo,precio from libros
  where precio like '1_.%';

 select titulo,precio from libros
  where precio like '%.00';

--ejercicio 34
if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Antología poética','J. L. Borges','Planeta',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros
  values('Martin Fierro','Jose Hernandez',default,40);
 insert into libros
  values('Aprenda PHP','Mario Molina','Nuevo siglo',null);
 insert into libros
  values('Uno','Richard Bach','Planeta',20);

 select count(*)
  from libros;

 select count(*)
  from libros
  where editorial='Planeta';

 select count(precio)
  from libros;

--ejercicio 35
if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key(codigo)
 );

 insert into libros values('El aleph','Borges','Emece',15.90);
 insert into libros values('Antología poética','Borges','Planeta',null);
 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros values('Martin Fierro','Jose Hernandez',default,40);
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',null);
 insert into libros values('Uno','Richard Bach','Planeta',20);

 select count_big(*)
  from libros;

 select count_big(*)
  from libros
  where editorial='Planeta';

 select count_big(precio)
  from libros;

 select count_big(distinct editorial)
  from libros;

--ejercicio 36
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30) default 'Desconocido',
  editorial varchar(15),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Planeta',15,null);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros
  values('Antologia poetica','J.L. Borges','Planeta',null,150);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',18.20,null);
 insert into libros
  values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 insert into libros
  values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
 insert into libros
  values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 insert into libros
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece',46.00,100);
 insert into libros (titulo,autor,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll',220);
 insert into libros (titulo,autor,cantidad)
  values('PHP de la A a la Z',default,0);

 select sum(cantidad)
  from libros;

 select sum(cantidad)
  from libros
  where editorial='Emece';

 select max(precio)
  from libros;

 select min(precio)
  from libros
  where autor like '%Rowling%';

 select avg(precio)
  from libros
  where titulo like '%PHP%';

--ejercicio 37
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Planeta',15,null);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros
  values('Antologia poetica','J.L. Borges','Planeta',null,150);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',18.20,null);
 insert into libros
  values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 insert into libros
  values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
 insert into libros
  values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 insert into libros
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',22.50,200);
 insert into libros
  values('PHP de la A a la Z',null,null,null,0);

 select editorial, count(*)
  from libros
  group by editorial;

 select editorial, count(precio)
  from libros
  group by editorial;

 select editorial, sum(precio)
  from libros
  group by editorial;

 select editorial,
  max(precio) as mayor,
  min(precio) as menor
  from libros
  group by editorial;

 select editorial, avg(precio)
  from libros
  group by editorial;

 select editorial, count(*)
  from libros
  where precio<30
  group by editorial;

 select editorial, count(*)
  from libros
  where precio<30
  group by all editorial;


--ejercicio 38
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Planeta',35,null);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Planeta',40,200);
 insert into libros
  values('Antologia poetica','J.L. Borges','Planeta',null,150);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',18,null);
 insert into libros
  values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',56,120);
 insert into libros
  values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 insert into libros
  values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 insert into libros
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',42,80);
 insert into libros
  values('PHP de la A a la Z',null,null,110,0);
 insert into libros
  values('Uno','Richard Bach','Planeta',25,null);

 select editorial, count(*) from libros
  group by editorial
  having count(*)>2;

 select editorial, avg(precio) from libros
  group by editorial
  having avg(precio)>25;

 select editorial, count(*) from libros
  where precio is not null
  group by editorial
  having editorial<>'Planeta';

 select editorial, avg(precio) from libros
  group by editorial
  having count(*) > 2; 

 select editorial, max(precio) as 'mayor'
  from libros
  group by editorial
  having max(precio)<100 and
  max(precio)>30
  order by editorial; 

--ejercicio 39
if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11),
  montocompra decimal(6,2) not null
 );

 insert into visitantes
  values ('Susana Molina',28,'f',null,'Cordoba',null,45.50); 
 insert into visitantes
  values ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',22.40);
 insert into visitantes
  values ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25); 
 insert into visitantes
  values ('Teresa Garcia',33,'f',default,'Alta Gracia','03547123456',120);
 insert into visitantes
  values ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);
 insert into visitantes
  values ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',95);
 insert into visitantes
  values ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia',null,53.50);
 insert into visitantes
  values ('Roxana Lopez',20,'f','null','Alta Gracia',null,240);
 insert into visitantes
  values ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48);
 insert into visitantes
  values ('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);

 select ciudad,
  count(*) as cantidad
  from visitantes
  group by ciudad with rollup;

 select ciudad,sexo,
  count(*) as cantidad
  from visitantes
  group by ciudad,sexo
  with rollup;

 select ciudad,sexo,
  count(*) as cantidad,
  sum(montocompra) as total
  from visitantes
  group by ciudad,sexo
  with rollup;

--ejercicio 40
 if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  sexo char(1),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20),
  primary key (documento)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','m','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','f','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','m','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','m','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez','f','c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres','m','s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez','f','c','Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia','m','c','Administracion');
 insert into empleados
  values ('30000000','Ines Torres','f','c','Administracion');
 insert into empleados
  values ('11111111','Juan Garcia','m','v','Administracion');
 insert into empleados
  values ('12222222','Luisa Perez','f','v','Administracion');
 insert into empleados
  values ('31111111','Marcela Garcia','f','s','Administracion');
 insert into empleados
  values ('32222222','Nestor Fuentes','m','c','Sistemas');
 insert into empleados
  values ('33333333','Oscar Garcia','m','s','Sistemas');
 insert into empleados
  values ('34444444','Patricia Juarez','f','c','Administracion');
 insert into empleados
  values ('35555555','Roberto Torres','m','c','Sistemas');
 insert into empleados
  values ('36666666','Susana Torres','f','c','Administracion');

 select sexo,estadocivil,seccion,
  count(*) from empleados
  group by sexo,estadocivil,seccion
  with rollup;

 select sexo,estadocivil,seccion,
  count(*) from empleados
  group by sexo,estadocivil,seccion
  with cube;

--ejercicio 41
if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  sexo char(1),
  ciudad varchar(20)
 );

 insert into visitantes values('Susana Molina', 'f', 'Cordoba');
 insert into visitantes values('Marcela Mercado', 'f','Cordoba');
 insert into visitantes values('Roberto Perez','f',null);
 insert into visitantes values('Alberto Garcia','m','Cordoba');
 insert into visitantes values('Teresa Garcia','f','Alta Gracia');

 select ciudad,
  count(*) as cantidad
  from visitantes
  group by ciudad
  with rollup;

 select ciudad,
  count(*) as cantidad,
  grouping(ciudad) as resumen
  from visitantes
  group by ciudad
  with rollup;

--ejercicio 42
if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  ciudad varchar(20),
  provincia varchar(20),
  mail varchar(30),
  montocompra decimal(6,2)
 );

 insert into visitantes
  values ('Susana Molina',28,'Cordoba','Cordoba','susanamolina@gmail.com',50); 
 insert into visitantes
  values ('Marcela Mercado',36,'Carlos Paz','Cordoba',null,20);
 insert into visitantes
  values ('Alberto Garcia',35,'La Falda','Cordoba','albertgomgarcia@hotmail.com',30); 
 insert into visitantes
  values ('Teresa Garcia',33,'Alta Gracia','Cordoba',null,120);
 insert into visitantes
  values ('Roberto Perez',45,'Alta Gracia','Cordoba','robertomarioperez@hotmail.com',30);
 insert into visitantes
  values ('Marina Torres',22,'Rosario','Santa Fe','marinatorres@xaxamail.com',90);
 insert into visitantes
  values ('Julieta Gomez',24,'Rosario','Santa Fe',null,50);
 insert into visitantes
  values ('Roxana Lopez',20,'Alta Gracia','Cordoba',null,200);
 insert into visitantes
  values ('Liliana Garcia',50,'Capital Federal','Buenos Aires','lilianagarcia@hotmail.com',40);
 insert into visitantes
  values ('Juan Torres',43,'Carlos Paz','Cordoba',null,10);

 select *from visitantes
 compute avg(montocompra);

 select edad,ciudad,montocompra
  from visitantes
  compute avg(edad),sum(montocompra);

 select nombre,ciudad,provincia
  from visitantes
  order by provincia,ciudad
  compute count(provincia)
  by provincia,ciudad;

 select *from visitantes
  order by provincia,ciudad
  compute avg(edad), sum(montocompra)
  compute avg(montocompra),count(provincia)
  by provincia,ciudad;

  --ejercicio 43
   if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Planeta');
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece');
 insert into libros
  values('Martin Fierro','Jose Hernandez','Planeta');
 insert into libros
  values('Antologia poetica','Borges','Planeta');
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece');
 insert into libros
  values('Aprenda PHP','Lopez','Emece');
 insert into libros
  values('Manual de PHP', 'J. Paez', null);
 insert into libros
  values('Cervantes y el quijote',null,'Paidos');
 insert into libros
  values('Harry Potter y la piedra filosofal','J.K. Rowling','Emece');
 insert into libros
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece');
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos');
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Planeta');
 insert into libros
  values('PHP de la A a la Z',null,null);
 insert into libros
  values('Uno','Richard Bach','Planeta');

 select distinct autor from libros;

 select distinct autor from libros
  where autor is not null;

 select count(distinct autor)
  from libros;

 select distinct editorial from libros;

 select count(distinct editorial) from libros;

 select distinct autor from libros
  where editorial='Planeta';

 select editorial,count(distinct autor)
  from libros
  group by editorial;

 select distinct titulo,editorial
  from libros
  order by titulo;

--ejercicio 44
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(20),
  editorial varchar(20)
 );

 insert into libros values ('Uno','Richard Bach','Planeta');
 insert into libros values ('El aleph','Borges','Emece');
 insert into libros values ('Alicia en el pais...','Carroll','Planeta');
 insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI');
 insert into libros values ('Java en 10 minutos','Mario Molina','Siglo XXI');
 insert into libros values ('Java desde cero','Mario Molina','Emece');
 insert into libros values ('Ilusiones','Richard Bach','Planeta');

 select top 2 * from libros;

 select top 3 titulo,autor 
  from libros
  order by autor;

 select top 3 with ties titulo,autor 
  from libros
  order by autor;

 select top 50 percent
  * from libros
  order by autor;

--ejercicio 45
if object_id('vehiculos') is not null
  drop table vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime,
  horasalida datetime,
  primary key(patente,horallegada)
 );

 insert into vehiculos values('AIC124','a','8:05','12:30');
 insert into vehiculos values('CAA258','a','8:05',null);
 insert into vehiculos values('DSE367','m','8:30','18:00');
 insert into vehiculos values('FGT458','a','9:00',null);
 insert into vehiculos values('AIC124','a','16:00',null);
 insert into vehiculos values('LOI587','m','18:05','19:55');

 insert into vehiculos values('LOI587','m','18:05',null);

 insert into vehiculos values('LOI587','m','21:30',null);

 update vehiculos set horallegada='8:05'
  where patente='AIC124' and horallegada='16:00';

 insert into vehiculos values('HUO690','m',null,null);

 exec sp_columns vehiculos;

--ejercicio 47
 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  editorial varchar(15),
  precio decimal(6,2)
 );

 insert into libros (titulo,editorial) values('Martin Fierro','Emece');
 insert into libros (titulo,editorial) values('Aprenda PHP','Emece');

 exec sp_helpconstraint libros;

 drop table libros;
 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2)
 );

 alter table libros
   add constraint DF_libros_autor
   default 'Desconocido'
   for autor;

 exec sp_helpconstraint libros;

 insert into libros (titulo,editorial) values('Martin Fierro','Emece');
 insert into libros default values;

 select * from libros;

 alter table libros
   add constraint DF_libros_precio
   default 0
   for precio;

 exec sp_helpconstraint libros;

--ejercicio 48
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  preciomin decimal(5,2),
  preciomay decimal(5,2)
 );

 insert into libros values ('Uno','Bach','Planeta',22,20);
 insert into libros values ('El quijote','Cervantes','Emece',15,13);
 insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI',48,53);
 insert into libros values ('Java en 10 minutos','Garcia','Siglo XXI',35,40);

 alter table libros
   add constraint CK_libros_precios_positivo
   check (preciomin>=0 and preciomay>=0);

 update libros set preciomay=48
  where titulo='Aprenda PHP';
 
 delete from libros where titulo='Java en 10 minutos'; 

 alter table libros
   add constraint CK_libros_preciominmay
   check (preciomay<=preciomin);

 exec sp_helpconstraint libros;

 insert into libros default values;

--ejercicio 49
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2)
 );

 insert into libros values ('Uno','Bach','Planeta',22);
 insert into libros values ('El quijote','Cervantes','Emece',15);
 insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI',-40);

 alter table libros
 with nocheck
 add constraint CK_libros_precio_positivo
 check (precio>=0);

 alter table libros
  nocheck constraint CK_libros_precio_positivo;

 insert into libros values('Java en 10 minutos',default,'Siglo XXI',-1);

 exec sp_helpconstraint libros;

 alter table libros
  check constraint CK_libros_precio_positivo;

--ejercicio 50
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  primary key (codigo)
 );

 exec sp_helpconstraint libros;

 drop table libros;
 create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );

 alter table libros
 add constraint PK_libros_codigo
 primary key(codigo);

 exec sp_helpconstraint libros;

--ejercicio 51
if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  legajo char(4) not null,
  apellido varchar(20),
  nombre varchar(20),
  documento char(8)
 );

 alter table alumnos
 add constraint PK_alumnos_legajo
 primary key(legajo);

 alter table alumnos
 add constraint UQ_alumnos_documento
 unique (documento);

 insert into alumnos values('A111','Lopez','Ana','22222222');
 insert into alumnos values('A123','Garcia','Maria','23333333');

 exec sp_helpconstraint alumnos;

--ejercicio 52
if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  legajo char(4) not null,
  apellido varchar(20),
  nombre varchar(20),
  documento char(8),
  domicilio varchar(30),
  ciudad varchar(30),
  notafinal decimal(4,2)
 );

 alter table alumnos
 add constraint PK_alumnos_legajo
 primary key(legajo);

 alter table alumnos
 add constraint UQ_alumnos_documento
 unique (documento);

 alter table alumnos
 add constraint CK_alumnos_nota
 check (notafinal>=0 and notafinal<=10);

 alter table alumnos
 add constraint DF_alumnos_ciudad
 default 'Cordoba'
 for ciudad;

 exec sp_helpconstraint alumnos;

 alter table alumnos
  nocheck constraint CK_alumnos_nota;

 exec sp_helpconstraint alumnos;

--ejercicio 53
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2)
 );

 alter table libros
 add constraint PK_libros_codigo
 primary key(codigo);

 alter table libros
 add constraint CK_libros_precio
 check (precio>=0);

 alter table libros
 add constraint DF_libros_autor
 default 'Desconocido'
 for autor;

 alter table libros
 add constraint DF_libros_precio
 default 0
 for precio;

 exec sp_helpconstraint libros;

 alter table libros
  drop DF_libros_autor;

 alter table libros
  drop PK_libros_codigo;

 exec sp_helpconstraint libros;

--ejercicio 54
if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  seccion varchar(20),
  fechaingreso datetime,
  fechanacimiento datetime,
  hijos tinyint,
  sueldo decimal(6,2)
 );

 if object_id ('RG_documento_patron') is not null
   drop rule RG_documento_patron;
 if object_id ('RG_empleados_seccion') is not null
   drop rule RG_empleados_seccion;
 if object_id ('RG_empleados_fechaingreso') is not null
   drop rule RG_empleados_fechaingreso;
 if object_id ('RG_hijos') is not null
   drop rule RG_hijos;
 if object_id ('RG_empleados_sueldo') is not null
   drop rule RG_empleados_sueldo;
 if object_id ('RG_empleados_sueldo2') is not null
   drop rule RG_empleados_sueldo2;

 insert into empleados 
   values('22222222','Ana Acosta','Contaduria','1990-10-10','1972-10-10',2,700);
 insert into empleados 
   values('23333333','Carlos Costa','Contaduria','1990-12-10','1972-05-04',0,750);
 insert into empleados 
   values('24444444','Daniel Duarte','Sistemas','1995-05-05','1975-10-06',1,880);
 insert into empleados 
   values('25555555','Fabiola Fuentes','Secretaria','1998-02-25','1978-02-08',3,550);
 insert into empleados 
   values('26666666','Gaston Garcia','Secretaria','1999-05-08','1981-01-01',3,670);
 insert into empleados 
   values('27777777','Ines Irala','Gerencia','2000-04-10','1985-12-12',0,6000);

 create rule RG_documento_patron
 as @documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]';

 exec sp_help;

 sp_helpconstraint empleados;

 insert into empleados values('ab888888','Juan Juarez','Secretaria','2001-04-11','1986-11-12',0,600);

 exec sp_bindrule RG_documento_patron, 'empleados.documento';

 exec sp_helpconstraint empleados;

 create rule RG_empleados_seccion
 as @seccion in ('Secretaria','Contaduria','Sistemas','Gerencia');

 exec sp_bindrule RG_empleados_seccion, 'empleados.seccion';

 create rule RG_empleados_fechaingreso
 as @fecha <= getdate();

 exec sp_bindrule RG_empleados_fechaingreso, 'empleados.fechaingreso';
 exec sp_bindrule RG_empleados_fechaingreso, 'empleados.fechanacimiento';

 create rule RG_hijos
 as @hijos between 0 and 20;

 exec sp_bindrule RG_hijos, 'empleados.hijos';

 create rule RG_empleados_sueldo
 as @sueldo>0 and @sueldo<= 5000;

 exec sp_bindrule RG_empleados_sueldo, 'empleados.sueldo';

 create rule RG_empleados_sueldo2
 as @sueldo>0 and @sueldo<= 7000;

 exec sp_bindrule RG_empleados_sueldo2, 'empleados.sueldo';

 insert into empleados values('29999999','Luis Lopez','Secretaria','2002-03-03','1990-09-09',0,6000);

 exec sp_help;

 exec sp_helpconstraint empleados;

--ejercicio 55
 if object_id ('empleados') is not null
  drop table empleados;

 if object_id ('RG_sueldo_100a1000') is not null
   drop rule RG_sueldo_100a1000;

 create table empleados(
  documento char(8),
  nombre varchar(30) not null,
  seccion varchar(20),
  sueldo decimal(6,2),
  primary key(documento)
 );

 create rule RG_sueldo_100a1000
 as @sueldo between 100 and 1000;

 exec sp_bindrule RG_sueldo_100a1000, 'empleados.sueldo';

 exec sp_helpconstraint empleados;

 exec sp_unbindrule 'empleados.sueldo';

 insert into empleados values ('30111222','Pedro Torres','Contaduria',1200);

 exec sp_helpconstraint empleados;

 exec sp_help;

 drop rule RG_sueldo_100a1000;

--ejercicio 56
 if object_id ('empleados') is not null
  drop table empleados;
 if object_id ('RG_sueldo') is not null
   drop rule RG_sueldo;
 if object_id ('RG_seccion_lista') is not null
   drop rule RG_seccion_lista;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  seccion varchar(20),
  sueldo decimal(6,2),
  primary key(documento)
 );

 create rule RG_sueldo
 as @sueldo between 100 and 1000;

 exec sp_bindrule RG_sueldo, 'empleados.sueldo';

 create rule RG_seccion_lista
 as @seccion in ('Sistemas','Secretaria','Contaduria');

 exec sp_help RG_sueldo;

 exec sp_helpconstraint empleados;

 exec sp_bindrule RG_seccion_lista, 'empleados.seccion';

 exec sp_helpconstraint empleados;

 exec sp_helptext "RG_seccion_lista";

 exec sp_unbindrule 'empleados.sueldo'; 
 drop rule RG_sueldo;

 exec sp_help RG_sueldo;

 select * from sysobjects
  where xtype='R' and
  name like '%seccion%';

--ejercicio 57
 if object_id ('empleados') is not null
  drop table empleados;

 if object_id ('VP_cero') is not null
   drop default VP_cero;
 if object_id ('VP_100') is not null
   drop default VP_100;
 if object_id ('VP_datodesconocido') is not null
   drop default VP_datodesconocido;
 if object_id ('VP_telefono') is not null
   drop default VP_telefono;

 create table empleados(
  nombre varchar(30),
  domicilio varchar(30),
  barrio varchar(15),
  telefono char(14),
  sueldo decimal(6,2)
 );

 insert into empleados default values;
 select * from empleados;

 create default VP_datodesconocido
  as 'Desconocido';

 exec sp_bindefault VP_datodesconocido, 'empleados.domicilio';

 exec sp_bindefault VP_datodesconocido, 'empleados.barrio';

 insert into empleados default values;
 select * from empleados;

 create default VP_cero
  as 0;

 exec sp_bindefault VP_cero, 'empleados.sueldo';

 insert into empleados default values;
 select * from empleados;

 create default VP_100
  as 100;

 exec sp_bindefault VP_100, 'empleados.sueldo';

 insert into empleados default values;
 select * from empleados;

 exec sp_helpconstraint empleados;

 exec sp_help;

 create default VP_telefono
 as '(0000)0-000000';

 exec sp_bindefault VP_telefono,'empleados.telefono';

 insert into empleados default values;
 select * from empleados;

 exec sp_helpconstraint empleados;


--ejercicio 58
 if object_id ('empleados') is not null
  drop table empleados;

 if object_id ('VP_cero') is not null
   drop default VP_cero;
 if object_id ('VP_datodesconocido') is not null
   drop default VP_datodesconocido;

 create table empleados(
  nombre varchar(30),
  domicilio varchar(30),
  barrio varchar(15),
  sueldo decimal(6,2)
 );

 create default VP_cero
  as 0;

 exec sp_bindefault VP_cero, 'empleados.sueldo';

 create default VP_datodesconocido
  as 'Desconocido';

 exec sp_bindefault VP_datodesconocido, 'empleados.domicilio';
 exec sp_bindefault VP_datodesconocido, 'empleados.barrio';

 exec sp_helpconstraint empleados;

 exec sp_unbindefault 'empleados.barrio';

 exec sp_helpconstraint empleados;
-- exec sp_help;

 exec sp_unbindefault 'empleados.domicilio';
 drop default VP_datodesconocido;

--ejercicio 59
if object_id ('empleados') is not null
  drop table empleados;
 if object_id ('VP_sueldo') is not null
   drop default VP_sueldo;
 if object_id ('VP_seccion') is not null
   drop default Vp_seccion;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  seccion varchar(20),
  sueldo decimal(6,2),
  primary key(documento)
 );

 create default VP_sueldo
  as 500;

 exec sp_bindefault VP_sueldo, 'empleados.sueldo';

 create default VP_seccion
  as 'Secretaria';

-- exec sp_help;

 exec sp_help VP_sueldo;

 exec sp_helpconstraint empleados;

 exec sp_bindefault VP_seccion, 'empleados.seccion';

 exec sp_helpconstraint empleados;

 exec sp_helptext VP_seccion;

 exec sp_unbindefault'empleados.sueldo'; 
 drop default VP_sueldo;

 exec sp_help VP_sueldo;

 select * from sysobjects
  where xtype='D' and
  name like '%seccion%';

--ejercicio 62
if object_id('libros') is not null
  drop table libros;
 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );

 create unique clustered index I_libros_codigo
 on libros(codigo);

 create nonclustered index I_libros_titulo
 on libros(titulo);

 exec sp_helpindex libros;

 alter table libros
  add constraint PK_libros_codigo
  primary key nonclustered (codigo);

 exec sp_helpindex libros;

 exec sp_helpconstraint libros;

 create index I_libros_autoreditorial
 on libros(autor,editorial);

 select name from sysindexes;

 select name from sysindexes
  where name like 'I_%';

--ejercicio 63
if object_id('libros') is not null
  drop table libros;
 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );
 create nonclustered index I_libros_titulo
 on libros(titulo);

 exec sp_helpindex libros;

 create index I_libros_titulo
  on libros(titulo,autor)
  with drop_existing;

 exec sp_helpindex libros;

 create clustered index I_libros_titulo
  on libros(titulo,autor)
  with drop_existing;

 exec sp_helpindex libros;

 create clustered index I_libros_titulo
  on libros(titulo)
  with drop_existing;

 exec sp_helpindex libros;

--ejercicio 64
if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );

 create index I_libros_titulo
  on libros(titulo);

 exec sp_helpindex libros;

 drop index libros.I_libros_titulo;

 exec sp_helpindex libros;

 if exists (select name from sysindexes
  where name = 'I_libros_titulo')
   drop index libros.I_libros_titulo;

--ejercicio 66
if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',2,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',3,50);
 insert into libros values('Java en 10 minutos',default,3,45);

 select * from libros;

 select titulo, autor, nombre
  from libros
  join editoriales
  on codigoeditorial=editoriales.codigo;

 select l.codigo,titulo,autor,nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo;

 select l.codigo,titulo,autor,nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo
  where e.nombre='Siglo XXI';

 select titulo,autor,nombre
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo
  order by titulo;

--ejercicico 67
if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',2,50);
 insert into libros values('Java en 10 minutos',default,4,45);

  select titulo,nombre
  from editoriales as e
  left join libros as l
  on codigoeditorial = e.codigo;

  select titulo,nombre
  from libros as l
  left join editoriales as e
  on codigoeditorial = e.codigo;

 select titulo,nombre
  from editoriales as e
  left join libros as l
  on e.codigo=codigoeditorial
  where codigoeditorial is not null;

 select titulo,nombre
  from editoriales as e
  left join libros as l
  on e.codigo=codigoeditorial
  where codigoeditorial is null;


--ejercicio 68
if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',2,50);
 insert into libros values('Java en 10 minutos',default,4,45);

 select titulo,nombre
  from libros as l
  right join editoriales as e
  on codigoeditorial = e.codigo;

 select titulo,nombre
  from libros as l
  right join editoriales as e
  on e.codigo=codigoeditorial
  where codigoeditorial is not null;

 select titulo,nombre
  from libros as l
  right join editoriales as e
  on e.codigo=codigoeditorial
  where codigoeditorial is null;

--ejercicio 69
 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',2,50);
 insert into libros values('Java en 10 minutos',default,4,45);

 select titulo,nombre
  from editoriales as e
  full join libros as l
  on codigoeditorial = e.codigo;

--ejercicio 70
if object_id('comidas') is not null
  drop table comidas;
 if object_id('postres') is not null
  drop table postres;

 create table comidas(
  codigo tinyint identity,
  nombre varchar(30),
  precio decimal(4,2)
 );

 create table postres(
  codigo tinyint identity,
  nombre varchar(30),
  precio decimal(4,2)
 );

 insert into comidas values('ravioles',5);
 insert into comidas values('tallarines',4);
 insert into comidas values('milanesa',7);
 insert into comidas values('cuarto de pollo',6);

 insert into postres values('flan',2.5);
 insert into postres values('porcion torta',3.5);

 select c.nombre as 'plato principal',
  p.nombre as 'postre',
  c.precio+p.precio as 'total'
  from comidas as c
  cross join postres as p;


--ejercicio 71
if object_id('comidas') is not null
  drop table comidas;

 create table comidas(
  codigo int identity,
  nombre varchar(30),
  precio decimal(4,2),
  rubro char(6),-- 'plato'=plato principal', 'postre'=postre
  primary key(codigo)
 );

 insert into comidas values('ravioles',5,'plato');
 insert into comidas values('tallarines',4,'plato');
 insert into comidas values('milanesa',7,'plato');
 insert into comidas values('cuarto de pollo',6,'plato');
 insert into comidas values('flan',2.5,'postre');
 insert into comidas values('porcion torta',3.5,'postre');

 select c1.nombre as 'plato principal',
  c2.nombre as postre,
  c1.precio+c2.precio as total
  from comidas as c1
  cross join comidas as c2;

 select c1.nombre as 'plato principal',
  c2.nombre as postre,
  c1.precio+c2.precio as total
  from comidas as c1
  cross join comidas as c2
  where c1.rubro='plato' and
  c2.rubro='postre';

 select c1.nombre as 'plato principal',
  c2.nombre as postre,
  c1.precio+c2.precio as total
  from comidas as c1
  join comidas as c2
  on c1.codigo<>c2.codigo
  where c1.rubro='plato' and
  c2.rubro='postre';

--ejercicio 72
if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',3,50);
 insert into libros values('Uno','Richard Bach',3,15);
 insert into libros values('Java en 10 minutos',default,4,45);

 select nombre as editorial,
  count(*) as cantidad
  from editoriales as e
  join libros as l
  on codigoeditorial=e.codigo
  group by e.nombre;

 select nombre as editorial,
  max(precio) as 'mayor precio'
  from editoriales as e
  left join libros as l
  on codigoeditorial=e.codigo
  group by nombre;

--ejercicio 73
if object_id('libros') is not null
  drop table libros;
 if object_id('autores') is not null
  drop table autores;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  codigoautor int not null,
  codigoeditorial tinyint not null,
  precio decimal(5,2),
  primary key(codigo)
 );

 create table autores(
  codigo int identity,
  nombre varchar(20),
  primary key (codigo)
 );

 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');
 insert into editoriales values('Plaza');
 
 insert into autores values ('Richard Bach');
 insert into autores values ('Borges');
 insert into autores values ('Jose Hernandez');
 insert into autores values ('Mario Molina');
 insert into autores values ('Paenza');
 
 insert into libros values('El aleph',2,2,20);
 insert into libros values('Martin Fierro',3,1,30);
 insert into libros values('Aprenda PHP',4,3,50);
 insert into libros values('Uno',1,1,15);
 insert into libros values('Java en 10 minutos',0,3,45);
 insert into libros values('Matematica estas ahi',0,0,15);
 insert into libros values('Java de la A a la Z',4,0,50);

 select titulo,a.nombre,e.nombre,precio
  from autores as a
  join libros as l
  on codigoautor=a.codigo
  join editoriales as e
  on codigoeditorial=e.codigo;

 select titulo,a.nombre,e.nombre,precio
  from autores as a
  right join libros as l
  on codigoautor=a.codigo
  left join editoriales as e
  on codigoeditorial=e.codigo;

--ejercicio 74
if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',2,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',3,50);
 insert into libros values('Java en 10 minutos',default,3,45);

 update libros set precio=precio+(precio*0.1)
  from libros 
  join editoriales as e
  on codigoeditorial=e.codigo
  where nombre='Planeta';

 select titulo,autor,e.nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo;

 delete libros
  from libros
  join editoriales
  on codigoeditorial = editoriales.codigo
  where editoriales.nombre='Emece';

 select titulo,autor,e.nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo;





