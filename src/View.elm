module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class)
import Msgs exposing (Msg)
import Models exposing (Model, Player)
import Players.List


view : Model -> Html Msg
view model =
    div []
        [ Players.List.view model.players ]
