Feature: HU10: Como gerente de recursos humanos quiero visualizar el perfil de cada chofer para conocer la experiencia en su carrera de conductor profesional
Scenario: E01: Observar lista de choferes desempleados
        TA01:
        Given se encuentra en el inicio de la app 
        When ingresa a la sección de catálogos de choferes
        Then observa una lista de choferes desempleados
        Examples:
            | Inicio sesión     | Buscar choferes | Resultado                                       |
            | Branco Venegas    | clic()          | Visualizar lista de choferes disponibles        |
        TA02:
        Given está en la sección de catálogos
        When ingresa al perfil de un chofer
        Then la app le muestra la información correspondiente del perfil
        Examples:
            | Buscar choferes | Boton ver perfil | Resultado                                       |
            | clic()          | clic()           | Visualizar el perfil del chofer seleccionado    |