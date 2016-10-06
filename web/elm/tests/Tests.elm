module Tests exposing (..)

import Test exposing (..)
import Expect
import Graph exposing (Graph)
import Node exposing (Node)


all : Test
all =
    describe "An undirected graph"
        [ test "A single node graph has no edges" <|
            \() ->
                Graph.new ([ Node 42 [] ])
                    |> Graph.nodes
                    |> List.length
                    |> Expect.equal 1
        , test "A node with a neighbor has two edges (one for each direction)" <|
            \() ->
                Graph.new ([ (Node 1 [ 2 ]), (Node 2 [ 1 ]) ])
                    |> Graph.edges
                    |> List.length
                    |> Expect.equal 2
        ]
