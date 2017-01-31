module Tests exposing (..)

import Test exposing (..)
import Expect
import FizzBuzz exposing (fizzBuzz)


all : Test
all =
    describe "FizzBuzz Test Suite"
        [ describe "module 3 numbers"
            [ test "3 should return 'Fizz'" <|
                \() ->
                    Expect.equal "Fizz" (fizzBuzz 3)
            , test "6 should return 'Fizz'" <|
                \() ->
                    Expect.equal "Fizz" (fizzBuzz 6)
            ]
        ]
