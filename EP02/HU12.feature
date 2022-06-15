Feature: HU12: Como usuario de la app deseo subir el certificado de mi trabajo a mi perfil para tener un mayor puntaje cuando las empresas me evalúen.
Scenario: E01: Ingreso al perfil del chofer
        TA01:
        Given se encuentra en la sección información de perfil
        When selecciona su certificado y lo carga
        Then visualiza el documento publicado en su perfil
        Examples:
            | Información perfil| Boton de subir certificado | Resultado                                        |
            | Branco Venegas    | clic()                     | El documento se lográ subir con exactitud        |
        TA02:
        Given se encuentra en la sección información de perfil 
        When selecciona su certificado y lo carga
        Then no visualiza el documento publicado en su perfil y le muestra un mensaje que dice que el documento supera el tamaño
        Examples:
            | Información perfil| Boton de subir certificado | Resultado                                                |
            | Branco Venegas    | clic()                     | mensaje="El tamaño del documento es mayor a lo permitido |