Feature: HU09: Como gerente de recursos humanos quiero visualizar el perfil de cada chofer para conocer la experiencia en su carrera de conductor profesional
Scenario: E01: Ingreso al perfil del chofer
        TA01:
        Given se encuentra en el inicio de la app 
        When ingresa a la sección de catálogos de choferes
        Then observa una lista de choferes desempleados
        Examples:
            | Nombre del gerente| Boton Buscar choferes | Resultado                                       |
            | Branco Venegas    | clic()                | Visualizar lista de choferes disponibles        |
        TA02:
        Given ingresa a la sección de catálogos
        When no se muestra la sección de catálogos de choferes
        Then la app le muestra un mensaje que dice que no hay ningún chofer desempleado
        Examples:
            | Nombre del gerente | Boton Buscar choferes | Resultado                                         |
            | Irazzu Ruzza       | clic()                | visualiza un sms="No hay choferes disponibles"    |
        TA03:
        Given ingresa a la sección de catálogos
        When no se muestra la sección de catálogos de choferes
        Then  la app le muestra un mensaje que informa que la app está en una actualización
        Examples:
            | Inicio de sesión     | Boton Buscar choferes | Resultado                                          |
            | Dominik Mendoza      | clic()                | visualiza un sms="La app esta en actualización"    |