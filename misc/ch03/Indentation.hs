-- file: ch03/Indentation.hs
foo = let firstDefinition = blah blah
          -- a comment-only line is treated as empt
                            continuation blah

          -- we reduce the indetantion, so this is a new definition
          secondDefinition = yada yada
          
                             continuation yada

       in whatever
