module Models exposing (Model, init)

import Msgs exposing (Msg)


type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "Hello", Cmd.none )
