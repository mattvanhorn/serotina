module Graph exposing (..)

import List


type alias Node =
    { key : Int
    }


type alias Graph =
    { nodes : List Node
    }


new : List Node -> Graph
new nodes =
    Graph nodes


nodes : Graph -> List Node
nodes graph =
    graph.nodes
