# Hospital-DB

Este repositorio contiene una colección de scripts SQL desarrollados para la gestión de pacientes, turnos médicos, médicos y especialidades dentro de una base de datos llamada **Hospital**.

---

## 📂 Estructura del proyecto

   1_schema/ -- Scripts para crear tablas e insertar valores iniciales
    -  CREAR_Tablas.sql
    -  InsertValues.sql

   2_data/ -- Carga inicial de médicos u otras entidades
    -  ALTA_Medico.sql

 3_procedures/ -- Procedimientos almacenados
    -      ALTA_Paciente.sql
    -  ALTA_Turno.sql
    -  DEL_Turno.sql
    -  UPD_Paciente.sql
    -  UPD_Turnos.sql
    -  JOB_CancelaTurnoVencido.sql

     4_functions/ -- Funciones definidas por el usuario
    -  FCN_FechaTexto.sql

     5_queries/ -- Consultas SELECT
    -  SEL_EspecialidadesMedicas.sql
    -  SEL_HistoriaPaciente.sql
    -  SEL_TurnoPaciente.sql


---

## Requisitos

- Microsoft SQL Server (se recomienda SQL Server Management Studio).
- Base de datos: `Hospital`
- Compatibilidad de tipos personalizados como `Paciente`, `Turno`, `Medico` si están definidos.

---

## Uso sugerido

1. Crear la base de datos y las tablas:
   - Ejecutar `1_schema/CREAR_Tablas.sql`
   - Ejecutar `1_schema/InsertValues.sql`

2. Ejecutar procedimientos y funciones:
   - `3_procedures/*.sql`
   - `4_functions/*.sql`

3. Ejecutar `2_data/ALTA_Medico.sql` para insertar un médico y su especialidad.

4. Usar las consultas SELECT en `5_queries` según necesidad.

---

## 📌 Notas

- Todos los scripts están ordenados y comentados para facilitar su comprensión.
- Los procedimientos almacenados contienen validaciones con `IF EXISTS` y `PRINT` para mejorar el control.
- Se recomienda complementar con backups y datos reales en entornos de prueba.

---

## 📫 Contacto

Este repositorio es parte de un proyecto académico. Consultas o sugerencias son bienvenidas vía issues o pull requests.

