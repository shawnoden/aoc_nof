<cfscript>
    /**************** PARSE INPUT *********************/
    inp=[];
    inFile = fileRead("C:\dev\aoc_nof\2021\day09_input.txt").listToArray(chr(13)&chr(10));
    inFile.map( (el) => inp.append(el.listToArray("")) ) ;
    
    //writedump(inp)

   /****************** SOLUTIONS *********************/

    writeDump(solvePart1(inp))
    writeoutput("<br>")
    writeoutput(solvePart2(inp))
    writeoutput("<br>")
    
    function solvePart1( inp ) {
        var retval = 0 ;
        /// Block in area to ease calcs.
        // Add row of 9s
        inp = inp.map((el)=>el.prepend(9).append(9) )
        var rowLen = inp[1].len() ;
        var toAdd = []; toAdd.set(1,rowLen,9)
        inp.prepend( toAdd )
        inp.append( toAdd )
        ///////////////////////////////////////////////////

        var lowpoints = [] ;
        
        for (var rownum=2;rownum<inp.len();rownum++) {
            var rlen = inp[rownum].len() ;
            for ( var colnum=2; colnum<rlen ;colnum++) {
                var thisSpot = inp[rownum][colnum] ;
                var lspot = (inp[rownum][colnum-1])>thisSpot ;
                var rspot = (inp[rownum][colnum+1])>thisSpot ;
                var tspot = (inp[rownum-1][colnum])>thisSpot ;
                var uspot = (inp[rownum+1][colnum])>thisSpot ;

                if(lspot && tspot && rspot && uspot) { lowpoints.append(thisSpot+1) }

            }            
        }

        retval = lowPoints.sum() ;
        
        return retval
       //// ANSWER : 436 Correct
    }
    
    function solvePart2( inp ) {
        var retval = 0 ;

        return retval
        //// ANSWER : 1023686  CORRECT ANSWER!
    }

    /******************* UTILITIES *********************/

</cfscript>
