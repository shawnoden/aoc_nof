<cfscript>
    /**************** PARSE INPUT *********************/

    inFile = fileRead("C:\dev\aoc_nof\2021\day09_input.txt").listToArray(chr(13)&chr(10));
    //inp = inFile.reduce( (prev,nxt) => { return prev.append(nxt.listToArray(" | ", false,true))},[] ) ;
    //inp = inFile

    ///writedump(inp)

   /****************** SOLUTIONS *********************/

    writeDump(solvePart1(inp))
    writeoutput("<br>")
    writeoutput(solvePart2(inp))
    writeoutput("<br>")
    
    function solvePart1( inp ) {
        var retval = 0 ;
        return retval
       //// ANSWER : 381 CORRECT
    }
    
    function solvePart2( inp ) {
        var retval = 0 ;

        return retval
        //// ANSWER : 1023686  CORRECT ANSWER!
    }

    /******************* UTILITIES *********************/

</cfscript>
