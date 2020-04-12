--
-- PERSONAL PROJECT, 2020
-- Uzume
-- File description:
-- args
--

module Args
( parseArg,
  isArg,
  peerArg
) where

-- parse args for a specific option
-- error case, return "undefined"
-- ex : ./Example --foo bar
--      ParseArgs args "--foo" = "bar"

parseArg :: [String] -> String -> String
parseArg [] s = "undefined"
parseArg (id:value:avs) s
    | id == s = value
    | otherwise = parseArg avs s

---

-- parse args for a specific String
-- error case, return False
-- ex : ./Example --foo bar -a -f
--      ParseArgs args "-a" = True

isArg :: [String] -> String -> Bool
isArg [] s = False
isArg (av:avs) s
    | av == s = True
    | otherwise = isArg avs s

---

-- tell you if the number of args is peer
-- error case, return False
-- ex : ./Example --foo bar -a -f
--      ParseArgs args = True

peerArg :: [String] -> Bool
peerArg [] = False
peerArg av
    | ((length av) `mod` 2) == 0 = True
    | otherwise = False
