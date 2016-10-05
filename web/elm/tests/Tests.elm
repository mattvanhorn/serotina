module Tests exposing (..)

import Test exposing (..)
import Expect
import Graph exposing (..)


all : Test
all =
    describe "A Graph"
        [ test "A single node graph" <|
            \() ->
                Graph.new ([ Node 42 ])
                    |> Graph.nodes
                    |> List.length
                    |> Expect.equal 1
        ]
