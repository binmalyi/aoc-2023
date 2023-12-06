import Text.Regex.TDFA

main :: IO ()
patch :: [String] -> [Int]

patch x = [read $ head x ++ (if length x == 1 then head x else last x)]

main = do
    contents <- readFile "day-1.txt"
    print (sum $ concat $ map patch (map (\x -> getAllTextMatches (x =~ "[0-9]" :: AllTextMatches [] String)) (lines contents)))