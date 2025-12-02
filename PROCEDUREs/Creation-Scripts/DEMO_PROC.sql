CREATE OR REPLACE EDITIONABLE PROCEDURE DEMO_PROC (
   p_id     NUMBER,
   p_nombre VARCHAR2
)
AS
BEGIN
   DBMS_OUTPUT.PUT_LINE('ID: ' || p_id || ' - Nombre: ' || p_nombre);
END;
/

