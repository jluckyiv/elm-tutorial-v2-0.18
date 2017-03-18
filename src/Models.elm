module Models exposing (Model, Player, initialModel)

import Msgs exposing (Msg)


type alias Model =
    { players : List Player
    }


type alias PlayerId =
    String


type alias Player =
    { id : PlayerId
    , name : String
    , level : Int
    }


initialModel : Model
initialModel =
    { players =
        [ Player "1" "Larry" 0
        , Player "2" "Moe" 0
        , Player "3" "Curly" 0
        ]
    }
