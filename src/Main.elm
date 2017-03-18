module Main exposing (..)

import Commands exposing (fetchPlayers)
import Html exposing (program)
import Msgs exposing (Msg)
import Models exposing (Model, initialModel)
import Subscriptions exposing (subscriptions)
import Update exposing (update)
import View exposing (view)


init : ( Model, Cmd Msg )
init =
    ( initialModel, fetchPlayers )


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
