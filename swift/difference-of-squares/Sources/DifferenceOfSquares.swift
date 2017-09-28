/*
Korman Chen
9/28/17 
*/

class Squares
{
    var squareOfSums: Int
    var sumOfSquares: Int
    var differenceOfSquares: Int
    
    init(_ n: Int)
    {
        self.squareOfSums = 0
        self.sumOfSquares = 0
        
        for i in 0...n { //Runtime 2t * N = O(N)
            squareOfSums += i //t
            sumOfSquares += (i * i) //t
        }
        
        self.squareOfSums *= squareOfSums
        
        self.differenceOfSquares = abs(squareOfSums - sumOfSquares)
    }
}
