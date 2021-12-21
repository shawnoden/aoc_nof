<cfscript>
    /**************** PARSE INPUT *********************/

    inFile = fileRead("C:\dev\aoc_nof\2021\day08_input.txt").listToArray();
    inp = inFile.reduce( (prev,nxt) => { return prev.append(nxt.listToArray(" | ",false,true)) },[] ) ;

    //    writedump(inp)

   /****************** SOLUTIONS *********************/

    writeDump(solvePart1(inp))
    writeoutput("<br>")
    writeoutput(solvePart2(inp))
    writeoutput("<br>")
    
    function solvePart1( inp ) {
        // var retval = 0 ;
        var cnts = inp
            .reduce( (prev,nxt) => { return prev.append(nxt[2]) },[] )
            .map( (elm)=>elm.listToArray(" ").filter( (el)=> (el.len()==2) || (el.len()==4) || (el.len()==3) || (el.len()==7) ).len() )
        return cnts.sum()
       //// ANSWER : 381 CORRECT
    }
    
    function solvePart2( inp ) {
        var retval = 0 ;
        
        return retval
        //// ANSWER : 
    }

    /******************* UTILITIES *********************/

</cfscript>

