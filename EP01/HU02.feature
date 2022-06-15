Feature: HU02: Como chofer quiero cambiar mi estado a disponible para que las empresas me tomen en cuenta al momento de buscar choferes
Scenario: E01: Selección de opción “Cambiar estado”
        TA01:
        Given el usuario quiere cambiar su estado actual 
        When ingresa en el botón “estado” 
        Then aparece la opción “Cambiar estado”
        Examples:
            | Nombre del chofer| Boton estado de chofer | Resultado                              |
            | Abel Cierto      | clic()                 | Visualizar el estado actual del chofer |
Scenario: E02: Cambiar al estado laboral “Disponible”
        TA01:
        Given el usuario está en el menú de “Cambiar estado” 
        When el usuario selecciona la opción “Disponible” 
        Then aparece la opción “Cambiar estado”
        Examples:
            | Nombre del chofer | Boton  actualizar estado   | Resultado                                                                          |
            | Abel Espiritu     | clic()                     | Se muestra una pantalla con la confirmación de la actualización del estado laboral |