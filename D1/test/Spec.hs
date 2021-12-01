module Spec where

import Test.Hspec

testNumbers = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]

main :: IO ()
-- main = putStrLn "Test suite not yet implemented"
main = hspec $ do
    describe "Lib.count" $ do 
        it "succesfuly gives 0 on an empty list length = 1" $ do 
            count [0] 0 `shouldBe` (0 :: Int)
        
        it "succesfully counts the test list" $ do 
            count testNumbers 0 `shouldBe` 7

