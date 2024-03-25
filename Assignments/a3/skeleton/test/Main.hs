WeChat: cstutorcs
QQ: 749389476
Email: tutorcs@163.com
module Main (main) where

import LoopyLambdaTests (lambdaTests)
import SKITests (skiTests)
import System.Exit
import Test.HUnit

fullTestingSuite :: Test
fullTestingSuite =
  TestList
    [ TestLabel "lambda" lambdaTests,
      TestLabel "ski" skiTests
    ]

-- Run the test suite. Please do not touch this!
main :: IO ()
main = do
  counts <- runTestTT fullTestingSuite
  if errors counts + failures counts == 0
    then exitSuccess
    else exitFailure
