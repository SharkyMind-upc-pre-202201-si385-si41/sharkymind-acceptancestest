Feature: Como empresa no registrada en la aplicación, deseo crearme una cuenta, para poder acceder a las características de la app.
    Scenario: E01: Registro exitoso
        CA01

        Given se encuentra en el formulario de registro de cuenta para empresas
        When ingresa un número de RUC no registrado, su correo electrónico asociado (no registrado), y una contraseña válida (mayor o igual a 8 caracteres que incluyan al menos una letra y un número) junto a la confirmación de contraseña (la misma contraseña escrita correctamente).
        And presiona el botón “Registrarse”
        Then la app le mostrará un mensaje diciéndole que está registrado, pero que tiene que confirmar la cuenta abriendo el link de confirmación enviado a su correo electrónico.

        Examples:
            | RUC           | Boton opcion “Registrarse”   | mensaje                                                |
            | 20100047218   | clic()                       | Registro exitoso , siga los pasos enviados a su correo |
    
    Scenario: E02: Registro inválido
        CA02

        Given se encuentra en el formulario de registro de cuenta para empresas
        When ingresa un correo electrónico registrado pero los demás datos son correctos.
        And presiona el botón “Registrarse”
        Then la app le mostrará un mensaje diciéndole que su correo electrónico ya está registrado, y le sugiere iniciar sesión.

        Examples:
            | correo-electronico  | Boton opcion “Registrarse”   | mensaje                               |
            | andynzein@gmail.com | clic()                       | correo electrónico ya está registrado |

    Scenario: E03: Subir documentos importantes
        CA03

        Given se encuentra en el formulario de registro de cuenta para empresas
        When ingresa un RUC registrado pero los demás datos son correctos
        And presiono el botón “Registrarse”
        Then la app muestra un mensaje diciéndo que el RUC ya está registrado, y sugiere iniciar sesión.

        Examples:
            | RUC            | Boton opcion “Registrarse”   | mensaje                    |
            | 20100047218    | clic()                       | el RUC ya está registrado  |

    Scenario: E04: 
        CA04

        Given está en el formulario de registro de cuenta para empresas
        When ingresa un correo electrónico inexistente pero los demás datos son correctos
        And presiona el botón “Registrarse”
        Then la aplicación muestra un mensaje de error del correo electrónico.

        Examples:
            | correo-electronico   | Boton opcion “Registrarse” | mensaje                        |
            | andynzein@gmail.com  | clic()                     | correo electrónico inexistente |

    Scenario: E05: 
        CA05

        Given está en el formulario de registro de cuenta para empresas
        When ingresa un RUC inexistente, pero los demás datos son correctos
        And presiona el botón “Registrarse”
        Then la aplicación muestra un mensaje de error del RUC.

        Examples:
            | RUC            | Boton opcion “Registrarse”   | mensaje                         |
            | 20100047218    | clic()                       | el RUC ingresado es inexistente |

    Scenario: E06: 
        CA06

        Given está en el formulario de registro de cuenta para empresas
        When ingresa un correo electrónico que no está asociado a su RUC, pero los demás datos son correctos
        And presiona el botón “Registrarse”
        Then la aplicación muestra un mensaje de error de comprobación del RUC

        Examples:
            | correo-electronico   | Boton opcion “Registrarse” | mensaje                                          |
            | andynzein@gmail.com  | clic()                     | correo electrónico que no está asociado a su RUC |

    Scenario: E07: 
        CA07

        Given está en el formulario de registro de cuenta para conductores profesionales
        When ingresa una contraseña que no cumple los requisitos o la contraseña de confirmación no coincide, pero los demás datos son correctos.
        And presiona el botón “Registrarse”
        Then la aplicación muestra un mensaje de error de contraseña.

        Examples:
            | contrasena    | Boton opcion “Registrarse”   | mensaje                                                                                |
            | 1234567890    | clic()                       | la contraseña que no cumple los requisitos o la contraseña de confirmación no coincide |