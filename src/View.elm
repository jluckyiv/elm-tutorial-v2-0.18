module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class)
import Msgs exposing (Msg)
import Models exposing (Model, Player)


view : Model -> Html Msg
view model =
    div []
        [ nav
        , playerTable model.players
        ]


nav : Html Msg
nav =
    div [ class "clearfix mb2 white bg-black" ]
        [ div [ class "left p2" ]
            [ text "Nav" ]
        ]


playerTable : List Player -> Html Msg
playerTable players =
    div [ class "p2" ]
        [ table []
            [ thead [] [ headerRow ]
            , tbody [] (playerRows players)
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


playerRows : List Player -> List (Html Msg)
playerRows players =
    List.map playerRow players


playerRow : Player -> Html Msg
playerRow player =
    tr []
        [ td [] [ text player.id ]
        , td [] [ text player.name ]
        , td [] [ text (toString player.level) ]
        , td [] []
        ]
