/*
Korman Chen
9/28/17
 
Worst Case: O(N)
*/


class SumOfMultiples
{
    static func toLimit(_ Limit: Int, inMultiples: [Int]) -> Int
    {
        var sum: Int = 0
        var dictMult = [Int: Int]() //Dictionaries will reduce lookups to O(1)
        var prevMult: Int?
        
        guard Limit != 0 else { //If the limit is 0 then we return immediately
            return Limit
        }
        
        for mult in inMultiples { // Let limit = N, worse case complexity is N-1: O(N)
            var currentMultiple = mult
            
            while currentMultiple < Limit && currentMultiple > 0 && mult != prevMult //Make sure mult is not 0 and != to the last multiple we checked to reduce complexity
            {
                if dictMult[currentMultiple] == nil //Add multiple to dictionary if we have no seen it before
                {
                    dictMult[currentMultiple] = currentMultiple
                }
                currentMultiple += mult //Get next multiple
            }
            
            prevMult = mult
        }
        
        for keys in dictMult.keys //Add up all the keys, since the keys are the same as the values
        {
            sum += keys //O(N)
        }
        
        return sum
    }
}
