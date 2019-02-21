
main = do
    frase <- getLine
    putStrLn frase
    esPalindromo (frase,0,length frase -1)


esPalindromo (z,l,r) = if(l==r)then 
    putStr "es palindromo \n"
    else do{
        if((z!!l) == (z!!r))then 
            esPalindromo(z,l+1,r-1)
            else do{
                putStr "No es palindromo \n"
            }
        }