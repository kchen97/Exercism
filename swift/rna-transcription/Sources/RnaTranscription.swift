/*
Korman Chen
9/28/17
 
O(N) Solution
*/

class Nucleotide
{
    var DNA: String
    var RNA = String()
    var dictRNA: [Character: Character] = ["G": "C", "C": "G", "T": "A", "A": "U"]
    
    init(_ DNA: String)
    {
        self.DNA = DNA
    }
    
    
    enum invalidDNA: Error //Error initialization
    {
        case invalidNucleotide
    }
    
    func complementOfDNA() throws -> String?
    {
        for character in DNA.characters
        {
            guard dictRNA[character] != nil else //Makes sure the key exists in the dictionary, otherwise throws an error
            {
                throw invalidDNA.invalidNucleotide
            }
            
            RNA.append(dictRNA[character]!) // Lookup + DNA String Loop * RNA String Append = O(1) + O(N) * O(1) = O(N)
        }
        
        return RNA
        
    }
}
