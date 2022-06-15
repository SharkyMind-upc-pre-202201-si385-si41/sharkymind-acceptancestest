Feature: Como usuario de la red social, deseo ingresar con mi cuenta con la cual me registre.
    Scenario: E01: Iniciar sesión
        TA01

        Given se encuentra en el formulario “Login”
        When ingrese el correo electrónico y contraseña
        Then puede ingresar a la app de manera exitosa.

        Examples:
            | correo-electronico      | Resultado                                                |
            | abeleldulce@gmail.com   | Ingresa al apartado principal de la aplicación           |

    Scenario: E02: Recuperar contraseña
        TA02

        Given olvida su contraseña con la cual se registró en la plataforma
        When seleccione la opción “¿Olvidaste tu contraseña?”
        And la aplicación despliega el apartado de recuperar contraseña
        And selecciona en la opción “Continuar”
        Then recibe un código a su correo electrónico y se despliega el formulario “Ingrese el código de seguridad”

        Examples:
            | codigo  | Boton opcion “¿Olvidaste tu contraseña?”   | Boton opcion “Continuar” | Resultado           |
            | 899828  | clic()                                     | clic()                   | Obtencion de codigo |

    Scenario: E03: Subir documentos importantes
        TA03

        Given cuenta con el código de recuperación de contraseña
        When digita el código en el apartado “ingresa el código”
        And selecciona en la opción “Continuar” oprime el botón “Hecho”
        Then tiene la opción de cambiar su contraseña.

        Examples:
            | codigo  | Boton opcion “Continuar”   | Boton opcion "Hecho”     | Resultado                                  |
            | 899828  | clic()                     | clic()                   | El cambio de contraseña ha sido habilitado |