//Solution goes in Sources

class Year
{
    var year: Int
    
    init(calendarYear: Int)
    {
        year = calendarYear
    }
    
    func isLeapYear() -> Bool
    {
        if year % 100 == 0
        {
            return year % 400 == 0
        }
        else
        {
            return year % 4 == 0
        }
    }
}
