# Cuarta_forma_actividad_Jhoan_Diaz__Camila_Toledo
# 📁 CUARTA FORMA 

## 🔗 Índice

| Índice | Título |
| --- | --- |
| 📍 | Análisis inicial |
| 🤝 | Diagrama entidad-relación |
| 🧩 | Explicacion de normalizaciones |

## 📍 Análisis inicial
Esta proyecto se centra en el desarrollo de una base de datos relacional para la gestion de asignaturas, docentes y horarios. 
A través de un esquema lógico UML, se han definido las entidades necesarias y sus relaciones. 
El objetivo es proporcionar un sistema eficiente que permita gestionar la información relacionada con estudiantes, docentes, cursos, aulas, horarios entre otros.

## 🤝 Diagrama entidad-relación 
![image](https://github.com/user-attachments/assets/c33ecfe2-7845-4ff0-9866-93994c4345b5)



## 🧩 Explicacion de normalizaciones

1.** 1NF: ** primero eliminamos grupos repetidos, ya que no deben existir datos o conjuntos de valores en una misma fila, se convierten en valores atomicos y se les da una clave primaria.

2.** 2NF: ** Luego separamos la informacion con el fin de que cada campo dependa completamente de la clave primaria es decir aca se dividen todas las entidades como las asignaturas, cursos, aulas, docentes, horarios , estudiantes y su respectivas relaciones como cursos_docentes, cursos_aulas, cursos_estudiantes etc
Es decir en este segundo paso eliminamos las dependencias parciales, transitivas y multivaluadas, y asi evitamos las redundancia, mantenemos los datos organzados, dependencias directas con su clave primaria, las tablas bien segmentadas y permiten la facilidad de mantenimieno una vez se quiera actualizar sin tener el riesgo de introducir inconsistencias en ls datos.
