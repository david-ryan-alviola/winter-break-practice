# 27-DEC-2020

# The parameter weekday is True if it is a weekday, and the parameter vacation is True if we are on vacation. We sleep in if it is not a weekday or we're on vacation. Return True if we sleep in.

def sleep_in(weekday, vacation):
  return not weekday or vacation

# We have two monkeys, a and b, and the parameters a_smile and b_smile indicate if each is smiling. We are in trouble if they are both smiling or if neither of them is smiling. Return True if we are in trouble.

def monkey_trouble(a_smile, b_smile):
  return (a_smile and b_smile) or (not a_smile and not b_smile)

# Given two int values, return their sum. Unless the two values are the same, then return double their sum.

def sum_double(a, b):
  if a == b:
    return (a + b) * 2
  else:
    return a + b

# Given an int n, return the absolute difference between n and 21, except return double the absolute difference if n is over 21.

def diff21(n):
  if n > 21:
    return abs(n - 21) * 2
  else:
    return abs(n - 21)

# We have a loud talking parrot. The "hour" parameter is the current hour time in the range 0..23. We are in trouble if the parrot is talking and the hour is before 7 or after 20. Return True if we are in trouble.

def parrot_trouble(talking, hour):
  if (talking):
    if (hour < 7 or hour > 20):
      return True
  return False

# Given 2 ints, a and b, return True if one if them is 10 or if their sum is 10.

def makes10(a, b):
  sum = a + b
  if (a == 10 or b == 10 or sum == 10):
    return True
  else:
    return False

# Given an int n, return True if it is within 10 of 100 or 200. Note: abs(num) computes the absolute value of a number.

def near_hundred(n):
  if (abs(n - 100) <= 10 or abs(n - 200) <= 10):
    return True
  else:
    return False

# Given 2 int values, return True if one is negative and one is positive. Except if the parameter "negative" is True, then return True only if both are negative.

def pos_neg(a, b, negative):
  if (negative):
    if (a < 0 and b < 0):
      return True
    else:
      return False
  elif ((a > 0 and b < 0) or (a < 0 and b > 0)):
    return True
  else:
    return False

# Given a string, return a new string where "not " has been added to the front. However, if the string already begins with "not", return the string unchanged.

def not_string(str):
  if (str.startswith("not")):
    return str;
  else:
    return 'not ' + str;

# Given a non-empty string and an int n, return a new string where the char at index n has been removed. The value of n will be a valid index of a char in the original string (i.e. n will be in the range 0..len(str)-1 inclusive).

def missing_char(str, n):
  return str.replace(str[n], '')

# Given a string, return a new string where the first and last chars have been exchanged.

def front_back(str):
  if (len(str) == 1):
    return str
  else:
    first_char = str[:1]
    last_position = len(str) - 1
    last_char = str[last_position:]
    body = str[1:last_position]
  
    return last_char + body + first_char

# Given a string, we'll say that the front is the first 3 chars of the string. If the string length is less than 3, the front is whatever is there. Return a new string which is 3 copies of the front.

def front3(str):
  if (len(str) < 3):
    return str + str + str
  else:
    first_three = str[:3]
    return first_three + first_three + first_three

# 31-DEC-2020


# Given a string and a non-negative int n, return a larger string that is n copies of the original string.

def string_times(str, n):
  combo_str = ""
  for i in range(n):
    combo_str += str
  return combo_str

# Given a string and a non-negative int n, we'll say that the front of the string is the first 3 chars, or whatever is there if the string is less than length 3. Return n copies of the front;

def front_times(str, n):
  front_three = ""
  combo = ""
  
  if (len(str) >= 3):
    front_three = str[:3]
  else:
    front_three = str[:len(str)]
    
  for i in range(n):
    combo += front_three

  return combo

# Given a string, return a new string made of every other char starting with the first, so "Hello" yields "Hlo".

def string_bits(str):
  every_other = ""
  for i in range(len(str)):
    if (i % 2 == 0):
      every_other += str[i]
  
  return every_other

# Given a non-empty string like "Code" return a string like "CCoCodCode".

def string_splosion(str):
  explode = ""
  
  for i in range(len(str) + 1):
    explode += str[:i]
    
  return explode

# Given a string, return the count of the number of times that a substring length 2 appears in the string and also as the last 2 chars of the string, so "hixxxhi" yields 1 (we won't count the end substring).

def last2(str):
  last_two = str[len(str) - 2:len(str)]
  start_index = 0
  count = 0
  
  for i in range(len(str)):
    k = str.find(last_two, start_index)
    
    if (k != -1):
      start_index = k + 1
      count += 1
      k = 0
  
  if (count > 0):
    return count - 1
  else:
    return count

# Given an array of ints, return the number of 9's in the array.

def array_count9(nums):
  count = 0
  
  for i in nums:
    if (i == 9):
      count += 1

  return count

# Given an array of ints, return True if one of the first 4 elements in the array is a 9. The array length may be less than 4.

def array_front9(nums):
  index = 0
  for i, num in enumerate(nums):
    if(i < 3 and num == 9):
      return True
  
  return False

# Given an array of ints, return True if the sequence of numbers 1, 2, 3 appears in the array somewhere.

def array123(nums):
  str_array = []
  
  for i in nums:
    str_array.append(str(i))
    
  num_str = "".join(str_array)
  
  if (num_str.find("123") > -1):
    return True
  else:
    return False


