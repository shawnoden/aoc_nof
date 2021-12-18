<cfscript>
    /************** PARSE INPUT *********************/
    crlf = chr(13)&chr(10);
    crlf2 = chr(13)&chr(10)&chr(13)&chr(10);

    inFile = fileRead("C:\dev\aoc_nof\2021\day05_input.txt").listToArray(crlf);
    inp = inFile
        .reduce( 
            (prev,nxt) => { 
                return prev.append( 
                    nxt
                        .listToArray(crlf)
                        .map( 
                            (itm) => itm
                                .listToArray(" -> ",false,true)
                                .map( (itm2) => itm2.listToArray(","))
                        ) 
                        
                )   
            }, [] 
        )

    writedump(inp)

    /**************************************************/    

    writeoutput(solvePart1(inp))
    writeoutput("<br>")
    writeoutput(solvePart2(inp))
    
    function solvePart1( inp ) {
        
        
        
        return false
    }
    
    function solvePart2( inp ) {
        return false
    }
    
    
    </cfscript>