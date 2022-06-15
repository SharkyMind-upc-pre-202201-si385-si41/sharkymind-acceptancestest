Feature: Como usuario chofer quiero subir mis certificados de trabajo para que las empresas conozcan sobre mi experiencia laboral.
    Scenario: E01: Visualizar mis datos personales
        CA01

        Given el usuario tiene sus certificados de trabajo escaneados en formato pdf
        And se loguea correctamente en la aplicación
        When se dirige a la sección “Mi perfil”
        And el usuario selecciona el icono de  la sección
        Then la aplicación le muestra sus datos personales básicos.

        Examples:
            | certificados                         | Boton opcion “Registrarse”  | Resultado                                         |
            | constancia de trabajo "Cruz del Sur" | clic()                      | Nombre: "Robo", Apellido: "Reporte", Edad: "30"   |

    Scenario: E02: Acceder al apartado de subir mis documentos
        CA02

        Given el usuario se encuentra en la sección “Mi perfil”
        When se dirige hacia a la parte inferior de la sección
        And oprime el botón “Subir mis certificados”
        Then la aplicación despliega el apartado “Subir mis certificados”

        Examples:
            | Boton opcion “Registrarse”  | Resultado                                       |
            | clic()                      | Apertura del apartado para subir certificados   |

    Scenario: E03: Subir documentos importantes
        CA03

        Given el usuario accede al apartado “Subir mis certificados” correctamente.
        When el usuario sube sus certificados de trabajo en el campo “Certificados de trabajo”
        And oprime el botón “Hecho”
        Then la aplicación lo redirecciona a la sección mi perfil
        And confirma la subida de sus resultados.

        Examples:
            | Boton opcion “Hecho”        | Resultado                           |
            | clic()                      | mensaje="Subida de datos exitosa"   |