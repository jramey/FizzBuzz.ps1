. PSUnit.ps1
. (Join-Path -Path $env:PSUNIT_HOME -ChildPath "FizzBuzz/FizzBuzz.ps1")

Function Test.StringOneIsReturned()
{
    $Actual = Get-Translation("1");
    
    Assert-That -ActualValue $Actual -Constraint {$ActualValue -eq "1"}
}

Function Test.StringTwoIsReturned()
{
    $Actual = Get-Translation("2");
    
    Assert-That -ActualValue $Actual -Constraint {$ActualValue -eq "2"}
}

Function Test.FizzIsReturned()
{
    $Actual = Get-Translation("3");
    
    Assert-That -ActualValue $Actual -Constraint {$ActualValue -eq "Fizz"}
}

Function Test.BuzzIsReturned()
{
    $Actual = Get-Translation("5");
    
    Assert-That -ActualValue $Actual -Constraint {$ActualValue -eq "Buzz"}
}

Function Test.FizzBuzzIsReturned()
{
    $Actual = Get-Translation("15");
    
    Assert-That -ActualValue $Actual -Constraint {$ActualValue -eq "FizzBuzz"}
}