module Views.MainView exposing (..)

import CssStyles exposing (alignItemsCenterStyle, displayFlexStyle, justifyContentCenterStyle, textFontSizeStyle)
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import ModelsAndTypes exposing (Model, Msg)


mainView : Model -> Html Msg
mainView model =
    div
        [ displayFlexStyle
        , justifyContentCenterStyle
        , alignItemsCenterStyle
        , textFontSizeStyle 50
        , style "background" "#F0E68C"
        ]
        [ text "Lotte Houtepen" ]
