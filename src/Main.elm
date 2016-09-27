module Main exposing (..)

import Messages exposing (Msg)
import Models exposing (Model)
import Update exposing (update)
import View exposing (view)
import Html.App


init : ( Model, Cmd Msg )
init =
    ( "Hello", Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never
main =
    Html.App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
