{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_D1 (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/m4ge/Shared/Dev/Private/Advent of Code/D1/.stack-work/install/x86_64-linux-tinfo6/f0b0823611634fbe7f2803aeeeb0b04aa715bec71a5fc8c889153aade323a55d/8.10.7/bin"
libdir     = "/home/m4ge/Shared/Dev/Private/Advent of Code/D1/.stack-work/install/x86_64-linux-tinfo6/f0b0823611634fbe7f2803aeeeb0b04aa715bec71a5fc8c889153aade323a55d/8.10.7/lib/x86_64-linux-ghc-8.10.7/D1-0.1.0.0-KV0VGXya2qmGBf3ypRexMI"
dynlibdir  = "/home/m4ge/Shared/Dev/Private/Advent of Code/D1/.stack-work/install/x86_64-linux-tinfo6/f0b0823611634fbe7f2803aeeeb0b04aa715bec71a5fc8c889153aade323a55d/8.10.7/lib/x86_64-linux-ghc-8.10.7"
datadir    = "/home/m4ge/Shared/Dev/Private/Advent of Code/D1/.stack-work/install/x86_64-linux-tinfo6/f0b0823611634fbe7f2803aeeeb0b04aa715bec71a5fc8c889153aade323a55d/8.10.7/share/x86_64-linux-ghc-8.10.7/D1-0.1.0.0"
libexecdir = "/home/m4ge/Shared/Dev/Private/Advent of Code/D1/.stack-work/install/x86_64-linux-tinfo6/f0b0823611634fbe7f2803aeeeb0b04aa715bec71a5fc8c889153aade323a55d/8.10.7/libexec/x86_64-linux-ghc-8.10.7/D1-0.1.0.0"
sysconfdir = "/home/m4ge/Shared/Dev/Private/Advent of Code/D1/.stack-work/install/x86_64-linux-tinfo6/f0b0823611634fbe7f2803aeeeb0b04aa715bec71a5fc8c889153aade323a55d/8.10.7/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "D1_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "D1_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "D1_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "D1_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "D1_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "D1_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
