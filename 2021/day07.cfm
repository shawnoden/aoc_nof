<cfscript>
    /**************** PARSE INPUT *********************/

    inFile = fileRead("C:\dev\aoc_nof\2021\day07_input.txt").listToArray();
    inp = inFile

    ////writedump(inp)

    /****************** SOLUTIONS *********************/

    writeDump(solvePart1(inp))
    writeoutput("<br>")
    writeoutput(solvePart2(inp))
    writeoutput("<br>")
    
    function solvePart1( inp ) {
        var retval = 0 ;
        
        var s3 = inp.sort("numeric")
        var s6 = (s3[floor((inp.len()/2))] + s3[ceiling((inp.len()/2))]) \2  //// Find the median.

        var s7 = s3.reduce( (prev,nxt) => { return prev.append(abs(s6-nxt)) }, [] );

        retval = s7.sum()


        return retval
       //// ANSWER : 355592 CORRECT
    }
    
    function solvePart2( inp ) {
        var retval = 0 ;
        
        return retval
       //// ANSWER :  
    }

    /******************* UTILITIES *********************/

</cfscript>

