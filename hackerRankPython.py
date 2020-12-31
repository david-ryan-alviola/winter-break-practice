# 26-DEC-2020

# Print Hello, World! to stdout.

print("Hello, World!")

# Given an integer, , perform the following conditional actions:
# If  is odd, print Weird
# If  is even and in the inclusive range of 2  to 5, print Not Weird
# If  is even and in the inclusive range of 6 to 20, print Weird
# If  is even and greater than 20, print Not Weird

n = input()

if (n % 2 == 0):
    if (n >= 2 and n <= 5):
        print("Not Weird")
    elif (n >=6 and n <= 20):
        print("Weird")
    else:
        print("Not Weird")
else:
    print("Weird")

# The provided code stub reads two integers from STDIN, a and b. Add code to print three lines where:
# The first line contains the sum of the two numbers.
# The second line contains the difference of the two numbers (first - second).
# The third line contains the product of the two numbers.

print(a + b)
print(a - b)
print(a * b)

# The provided code stub reads two integers, a and b, from STDIN.
# Add logic to print two lines. The first line should contain the result of integer division,  a//b . The second line should contain the result of float division,  a/b .
# No rounding or formatting is necessary.

print(a//b)
print(a/b)

# 30-DEC-2020

# The provided code stub reads an integer, n, from STDIN. For all non-negative integers i < n, print i^2.
    
if n >= 0:
    for i in range(n):
        print(i * i)

# Given a year, determine whether it is a leap year. If it is a leap year, return the Boolean True, otherwise return False.
# Note that the code stub provided reads from STDIN and passes arguments to the is_leap function. It is only necessary to complete the is_leap function.

def is_leap(year):
    leap = False
    
    if(year % 4 == 0 and year % 100 > 0):
        leap = True
    else:
        if (year % 100 == 0 and year % 400 == 0):
            leap = True
    
    return leap

# Print the list of integers from 1 through n as a string, without spaces.

for i in range(n):
    print(i + 1, end="")
