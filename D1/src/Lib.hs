module Lib where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

count :: [Int] -> Int -> Int
count [x] s = s
count (x : y : xs) s
    | y > x = f $ s + 1
    | otherwise = f s
    where f = count (y : xs)

-- point of seminars isn't to give solutions regarding answers to questions
-- its to have discussions

