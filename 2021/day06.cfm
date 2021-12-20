<cfscript>
    /**************** PARSE INPUT *********************/
    crlf = chr(13)&chr(10);
    crlf2 = chr(13)&chr(10)&chr(13)&chr(10);

    inFile = fileRead("C:\dev\aoc_nof\2021\day06_input.txt").listToArray();
    inp = inFile

    ////writedump(inp)

    /****************** SOLUTIONS *********************/

    writeDump(solvePart1(inp,80))
    writeoutput("<br>")
    writeoutput(solvePart2(inp,256))
    writeoutput("<br>")

    //writeoutput(26984457539-2329711392)
    
    function solvePart1( inp,days=1 ) {
        var retval = 0 ;
        
        var accum = [ 0,0,0,0,0,0,0,0,0 ] ;

        inp.map( ( el ) => { accum[el+1] += 1 } ) ;

        //writedump(accum) ;
        
        for (var d=1; d<=days; d++) {
            newFish = accum.shift() ; /// Removes first array element ( Day 0 fish )
            accum[7] += newFish ;     /// Adds those former Day 0 fish to Day 6
            accum.append(newFish) ;   /// Since those former Day 8 fish are now moved to 7, replace Day 8 with Day 0 New Fish
            //writedump(accum);
        }
        
        retval = accum.sum() ;
        return retval
       //// ANSWER : 373378 

    }
    
    function solvePart2( inp, days=1 ) {
        var retval = 0 ;
        
        var accum = [ 0,0,0,0,0,0,0,0,0 ] ;

        inp.map( ( el ) => { accum[el+1] += 1 } ) ;

        for (var d=1; d<=days; d++) {
            newFish = accum.shift() ; /// Removes first array element ( Day 0 fish )
            accum[7] += newFish ;     /// Adds those former Day 0 fish to Day 6
            accum.append(newFish) ;   /// Since those former Day 8 fish are now moved to 7, replace Day 8 with Day 0 New Fish
        }

        //writedump(accum) ;
        /////// In refactoring, should move this reduction up to Function 1. They are ultimately the same, but this is slightly more accurate. 
        retval = accum.reduce( (prev,nxt) => { writedump(precisionEvaluate(prev+nxt)); return precisionEvaluate(prev+nxt) },0) ;
        return retval
       //// ANSWER : 150307958118 << Too low.
    }

    /******************* UTILITIES *********************/

    //26984457539
    writeoutput("<hr>")
    writeoutput("HERE")
    writeoutput("<br>")
    writeoutput(2376852196 + 2731163883 + 2897294544 + 3164316379 )
    writeoutput("<br>")
    writeoutput( 3541830408 + 3681986557)
    writeoutput("<br>")
    writeoutput(4275812629 + 1985489551)
    writeoutput("<br>")


writeoutput(5108016079 + 6061610923)
writeoutput("<br>")
writeoutput(7223816965 + 6261302180)
writeoutput("<br>")
writeoutput(11169627002+13485119145)
writeoutput("<br>")
writeoutput("<br>")
//2329711392 

</cfscript>


