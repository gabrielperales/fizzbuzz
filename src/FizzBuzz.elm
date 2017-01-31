module FizzBuzz exposing (..)

import List
import String

fizzBuzz: Int -> String
fizzBuzz n =
  let
    fizz n =
      if (n % 3 == 0) then Just "Fizz" else Nothing
    buzz n =
      if (n % 5 == 0) then Just "Buzz" else Nothing
  in
    List.filterMap (\fn -> fn n) [fizz, buzz]
      |> String.concat
      |> \fizzbuzz -> if (String.isEmpty fizzbuzz) then toString n else fizzbuzz