Function Get-Translation($value)
{
    if ($value % 15 -eq 0) {
         return "FizzBuzz"
    } elseif ($value % 5 -eq 0) {
         return "Buzz"
    } elseif ($value % 3 -eq 0) {
         return "Fizz"
    } else {
         return $value
    }
}