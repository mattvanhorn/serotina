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
