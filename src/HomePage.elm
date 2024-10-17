module HomePage exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


view model =
    div [ class "jumbotron" ]
        [ h1 [] [ text "Welkom op mijn website" ]
        , p []
            [ text "Lotte Houtepen"
            , strong [] [ text "Naaister" ]
            , text <|
                """ 
                Geen idee wat hier moet komen
                """
            ]
        ]


main =
    view "dummy model"
