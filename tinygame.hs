import System.Random
import Control.Monad
import Data.Char(ord)
main = do { num <- getStdRandom (randomR (1,20));
    print "Guess the number (between 1 and 20)!";
    mapM_ (pp num) . takeWhile (/= show num ) . lines =<< getContents;
    print "You did it! That was the number!"}
    where pp n l = if n > (read l::Int) then print"h"else print"l"
