module Node exposing (..)

import List


type alias Node =
    { key : Int
    , neighbors : List Int
    }


type alias Edge =
    ( Int, Int )


edges : Node -> List ( Int, Int )
edges node =
    List.map (\neighbor -> ( node.key, neighbor )) node.neighbors
