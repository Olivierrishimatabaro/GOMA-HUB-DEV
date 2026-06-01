-- GomaHub.hs
module Main where

data Member = Member
    { name :: String
    , role :: String
    } deriving (Show)

community :: [Member]
community =
    [ Member "Olivier" "Logistics"
    , Member "Sarah" "Developer"
    , Member "Jean" "Community Manager"
    ]

displayMember :: Member -> String
displayMember member =
    name member ++ " - " ++ role member

main :: IO ()
main = do
    putStrLn "=== Goma Hub Community ==="
    mapM_ (putStrLn . displayMember) community
