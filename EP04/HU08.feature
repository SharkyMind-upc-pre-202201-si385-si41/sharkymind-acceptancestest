Feature: Como empresa quiero visualizar el puntaje de las infracciones de los conductores profesionales.
    Scenario: E01: Puntuación acumulativa de infracciones
        TA01

        Given se encuentra en el “perfil de un conductor profesional”
        And quiere saber cuál es el puntaje de infracciones del conductor
        When seleccione ver “puntaje de infracciones”
        Then se muestra el puntaje de las infracciones acumuladas del chofer seleccionado

        Examples:
            | Nombre del chofer     | Puntaje de las infracciones   | Resultado                           |
            | Henry Diaz Huarcaya   | 18                            | El puntaje se despliega en pantalla |