Feature: Como conductor profesional no registrado en la aplicación, deseo crearme una cuenta, para poder acceder a las características de la app.d
    Scenario: E01: Registro exitoso
        CA01

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When ingresa un correo electrónico no registrado, un DNI no registrado, su fecha de emisión, su dígito de seguridad y una contraseña válida (mayor o igual a 8 caracteres que incluyan al menos una letra y un número) junto a la confirmación de contraseña (la misma contraseña escrita correctamente).
        And presiona el botón “Registrarse”
        Then la app muestra un mensaje diciéndole que está registrado, pero que tiene que confirmar su cuenta abriendo el link de confirmación enviado a su correo electrónico.

        Examples:
            | correo-electronico  | Boton opcion “Registrarse”   | mensaje                                                         |
            | andynzein@gmail.com | clic()                       | Se encuentra registrado, pero que tiene que confirmar su cuenta |

    Scenario: E02: Registro inválido
        CA02

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When ingresa un correo electrónico registrado pero los demás datos son correctos.
        And presiona el botón “Registrarse”
        Then la app le mostrará un mensaje diciéndole que el correo electrónico ya está registrado, y le sugiere iniciar sesión.

        Examples:
            | correo-electronico  | Boton opcion “Registrarse”   | mensaje                                  |
            | andynzein@gmail.com | clic()                       | El correo electrónico ya está registrado |

    Scenario: E03: 
        CA03

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When ingresa un DNI registrado pero los demás datos son correctos.
        And presiona el botón “Registrarse”
        Then la app le mostrará un mensaje diciéndole que el DNI ya está registrado, y le sugiere iniciar sesión.

        Examples:
            | DNI       | Boton opcion “Registrarse”   | mensaje                                        |
            | 75330642  | clic()                       | El número de DNI asociado ya está registrado   |

    Scenario: E04: 
        CA04

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When ingresa un correo electrónico inexistente pero los demás datos son correctos.
        And presiona el botón “Registrarse”
        Then la app le mostrará un mensaje diciéndole que el correo electrónico no existe, y le sugiere probar usar otro correo.

        Examples:
            | correo-electronico  | Boton opcion “Registrarse”   | mensaje                                           |
            | andynzein@gmail.com | clic()                       | El correo electrónico ingresado es inexistente    |

    Scenario: E05: 
        CA05

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When ingresa un DNI inexistente pero los demás datos son correctos
        And presiona el botón “Registrarse”
        Then la app le mostrará un mensaje diciéndole que el DNI no existe, y le sugiere probar usar otro DNI.

        Examples:
            | DNI       | Boton opcion “Registrarse”   | mensaje                                     |
            | 75330642  | clic()                       | El número de DNI ingresado es inexistente   |
    
    Scenario: E06: 
        CA06

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When ingresa la fecha de emisión o el dígito de seguridad del DNI de manera incorrecta pero los demás datos son correctos
        And presiona el botón “Registrarse”
        Then la app le mostrará un mensaje diciéndole que no se pudo comprobar que el DNI le pertenezca, y le sugiere volver a intentarlo.

        Examples:
            | fecha-emision | digito-seguridad | Boton opcion “Registrarse”   | mensaje                             |
            | 24/08/2019    | 4                | clic()                       | No se pudo comprobar su identidad   |

    Scenario: E07: 
        CA07

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When ingresa una contraseña que no cumple los requisitos o la contraseña de confirmación no coincide con esta pero los demás datos son correctos
        And presiona el botón “Registrarse”
        Then la app le mostrará un mensaje diciéndole que sucedió un error con la contraseña, y le sugiere volver a intentarlo.

        Examples:
            | contrasena    | Boton opcion “Registrarse”   | mensaje                                                                                |
            | 1234567890    | clic()                       | la contraseña que no cumple los requisitos o la contraseña de confirmación no coincide |

    
    