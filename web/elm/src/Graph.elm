module Graph exposing (..)

import List
import Node exposing (Node, Edge)


type alias Graph =
    { nodes : List Node
    }


new : List Node -> Graph
new nodes =
    Graph nodes


nodes : Graph -> List Node
nodes graph =
    graph.nodes


edges : Graph -> List Edge
edges graph =
    List.map (\node -> Node.edges node) graph.nodes
        |> List.concat


cartesian : Int -> Int -> Graph
cartesian width height =
    let
        rangeCheck : Int -> Int -> Bool
        rangeCheck =
            \n x ->
                (0 <= x)
                    && (x < width * height)
                    -- right border check
                    &&
                        not (x % width == 0 && x == n + 1)
                    -- left border check
                    &&
                        not (n % width == 0 && x == n - 1)

        getNeighbors : Int -> List Int
        getNeighbors =
            \idx ->
                List.filter (rangeCheck idx) [ idx - 1, idx + 1, idx - width, idx + width ]
    in
        List.repeat height (List.repeat width 0)
            |> List.concat
            |> List.indexedMap (\idx a -> Node idx (getNeighbors idx))
            |> new
