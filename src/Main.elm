module Main exposing (..)

import Browser
import ModelsAndTypes exposing (Model, Msg(..), ViewPage(..))
import Views.MainView exposing (mainView)


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


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoMessage ->
            ( model, Cmd.none )
