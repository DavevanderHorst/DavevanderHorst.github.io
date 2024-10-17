module HomePage exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (style)


main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = mainView
        }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { page = StartPage
      }
    , Cmd.none
    )


type ViewPage
    = StartPage


type Msg
    = NoMessage


type alias Model =
    { page : ViewPage }


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoMessage ->
            ( model, Cmd.none )


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


textFontSizeStyle : Int -> Attribute msg
textFontSizeStyle size =
    style "font-size" (String.fromInt size ++ "px")


alignItemsCenterStyle : Attribute msg
alignItemsCenterStyle =
    style "align-items" "center"


displayFlexStyle : Attribute msg
displayFlexStyle =
    style "display" "flex"


justifyContentCenterStyle : Attribute msg
justifyContentCenterStyle =
    style "justify-content" "center"
