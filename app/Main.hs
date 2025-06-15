module Main where

import Control.Concurrent
import Control.Concurrent.Async
import System.Process
  ( terminateProcess
  )
import P2PRC
  ( p2prcAPI
  , P2PRCapi(..)
  )




main :: IO ()
main = do

  putStrLn "Before withCounter"

  delayThreadBy1

  startingP2prc

  putStrLn "After withCounter"



startingP2prc :: IO ()
startingP2prc = do

  let MkP2PRCapi {..} = p2prcAPI

  putStrLn "Starting P2PRC!!!!!!"
  maybeServer <- startServer

  case maybeServer of
    Left e -> putStrLn "ERROR"
    Right ph -> do

      putStrLn "RUNNING"
      terminateProcess ph
      delayThreadBy2
      putStrLn "FINISHED PROCESS"



delayThread :: Int -> IO ()
delayThread n = do
  threadDelay (1000000 * n)

delayThreadBy1 = delayThread 1
delayThreadBy2 = delayThread 2
