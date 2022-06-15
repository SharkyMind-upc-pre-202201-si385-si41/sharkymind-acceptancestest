Feature: HU11: Como usuario de la app deseo subir una foto a mi perfil para tener una mayor credibilidad de mi personalidad en la red social
Scenario: E01: Ingreso a mi perfil para cambiar mi foto
        TA01:
        Given Dado que se encuentra en la sección foto de perfil
        When selecciona la imagen a subir
        Then observa que la foto de perfil se actualiza
        Examples:
            | Sección actulizar datos | Boton subir imagen | Resultado                                       |
            | Branco Venegas          | clic()             | La nueva imagen se muestra en su perfil         |
        TA02:
        Given se encuentro en la sección foto de perfil 
        When seleccionó la imagen a cargar
        Then observa que se muestra un mensaje de error indicando que este supera el tamaño permitido
        Examples:
            | Sección actulizar datos | Boton subir imagen | Resultado                                                           |
            | Branco Venegas          | clic()             | mensaje="La imagen seleccionada supera el tamaño permitido"         |
        TA03:
        Given se encuentra en la sección foto de perfil
        When selecciona la imagen a cargar
        Then observa que la foto subida es de color blanco y le muestra un mensaje que menciona una reciente actualización
        Examples:
            | Sección actulizar datos | Boton subir imagen | Resultado                            |
            | Branco Venegas          | clic()             | mensaje="La esta en actualización"   |