module Tests exposing (..)

import Test exposing (..)
import Expect
import Graph exposing (Graph)
import Node exposing (Node)


all : Test
all =
    describe "a graph"
        [ describe "that is undirected"
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
        , describe "that is cartesian"
            [ test "a 2 x 2 graph has 4 nodes" <|
                \() ->
                    Graph.cartesian 2 2
                        |> Graph.nodes
                        |> List.length
                        |> Expect.equal 4
            , test "a 2 x 2 graph has 8 edges" <|
                \() ->
                    Graph.cartesian 2 2
                        |> Graph.edges
                        |> List.length
                        |> Expect.equal 8
            ]
        ]
