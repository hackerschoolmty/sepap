# Sepap App

App que controla asistencias de alumnos en un grupo de clases

## Pre-Explicación

1. MVC

* Analogía restaurante
* URL: /controlador/accion

2. Filosofía en Rails

* ActiveRecord + ORM
* Finders on Rails

3. REST

* Get / Post / Put / Delete
* CRUD

## Crear el app

Antes de empezar hacer wireframe de students básico

1. Scaffold Students

* Explicar que es un recurso
* Explicar REST

2. Modelo CourseSession

* Migraciones (Archivo de migración y database.yml)
* Modelos (Validaciones básicas)
* Rails Console (Crear y eliminar modelos)
* Explicar Seed

3. Controlador CourseSessions index

* Generador de controlador
* Explicar routes.rb
* Hacer acción index

4. Crear vista course_sessions/index.html.erb

* Explicar ERB básico
* Explicar Rails link helpers básico
* Hacer wireframe de toma de asistencia

5. Crear accion course_sessions/show.html.erb

* Empezar mostrando el listado de alumnos
* Crear modelo attendance
  ** Explicar belongs_to y has_many
