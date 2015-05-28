import Data.List

intToChar [] = return ()
intToChar (number : list) = do
                              putStr (show number ++ ", ")
                              intToChar list

join = intercalate ", " ["1", "3"]
