module Main exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model, initialModel)
import Update exposing (update)
import View exposing (view)
import Players.Commands exposing (fetchAll)
import Html.App


init : ( Model, Cmd Msg )
init =
    ( initialModel, Cmd.map PlayersMsg fetchAll )


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
