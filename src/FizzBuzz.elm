module FizzBuzz exposing (..)

import Html exposing (..)
import List
import String


fizzBuzz : Int -> String
fizzBuzz n =
    let
        -- if a number module 3 is 0 then we will return Just "Fizz"
        -- otherwise we will return Nothing
        fizz n =
            if (n % 3 == 0) then
                Just "Fizz"
            else
                Nothing

        -- if a number module 5 is 0 then we will return Just "Buzz"
        -- otherwise we will return Nothing
        buzz n =
            if (n % 5 == 0) then
                Just "Buzz"
            else
                Nothing
    in
        -- We will map our list with fizz an buzz funtions over
        -- an anonimous function executing them with our input number 'n'
        -- if any of them return Nothing, it will be filtered and it won't be
        -- in the returned list.
        List.filterMap (\fn -> fn n) [ fizz, buzz ]
            |> String.concat
            -- concat them
            |>
                \fizzbuzz ->
                    if (String.isEmpty fizzbuzz) then
                        toString n
                        -- if for that imput is not Fizz, neither Buzz
                        -- we will return a string with the input number
                    else
                        fizzbuzz


main : Html msg
main =
    let
        fizzNumbers : List (Html msg)
        fizzNumbers =
            List.range 1 100
                |> List.map fizzBuzz
                |> List.map text
                |> List.map List.singleton
                |> List.map (li [])
    in
        ul [] fizzNumbers
