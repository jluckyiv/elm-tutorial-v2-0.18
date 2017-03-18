module Players.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Msgs exposing (Msg)
import Models exposing (Player)
import RemoteData exposing (WebData)


view : WebData (List Player) -> Html Msg
view response =
    div []
        [ nav
        , maybePlayers response
        ]


nav : Html Msg
nav =
    div [ class "clearfix mb2 white bg-black" ]
        [ div [ class "left p2" ]
            [ text "Players" ]
        ]


maybePlayers : WebData (List Player) -> Html Msg
maybePlayers response =
    case response of
        RemoteData.NotAsked ->
            text ""

        RemoteData.Loading ->
            text "Loading"

        RemoteData.Success players ->
            playerTable players

        RemoteData.Failure error ->
            text (toString error)


playerTable : List Player -> Html Msg
playerTable players =
    div [ class "p2" ]
        [ table []
            [ thead [] [ headerRow ]
            , tbody [] (List.map playerRow players)
            ]
        ]


headerRow : Html Msg
headerRow =
    tr []
        [ th [] [ text "ID" ]
        , th [] [ text "Name" ]
        , th [] [ text "Level" ]
        , th [] [ text "Actions" ]
        ]


playerRow : Player -> Html Msg
playerRow player =
    tr []
        [ td [] [ text player.id ]
        , td [] [ text player.name ]
        , td [] [ text (toString player.level) ]
        , td [] [ text "Actions" ]
        ]
