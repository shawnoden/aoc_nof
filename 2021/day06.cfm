<cfscript>
    /**************** PARSE INPUT *********************/
    crlf = chr(13)&chr(10);
    crlf2 = chr(13)&chr(10)&chr(13)&chr(10);

    inFile = fileRead("C:\dev\aoc_nof\2021\day06_input.txt").listToArray();
    inp = inFile

    writedump(inp)

    /****************** SOLUTIONS *********************/

    writeoutput(solvePart1(inp))
    writeoutput("<br>")
    //writeoutput(solvePart2(inp))
    //writeoutput("<br>")
    
    function solvePart1( inp ) {
        var retval = 0 ;
        return retval
       //// ANSWER
    }
    
    function solvePart2( inp ) {
        var retval = 0 ;
        return retval
       //// ANSWER
    }

    /******************* UTILITIES *********************/

</cfscript>