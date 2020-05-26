require 'pry'

# Inputs are (string, array of strings)
# We take the string and test for substrings found in the array
# Output is a hash that contains the substring name and the # times it was found

# Main output - takes in a string and dictionary (array of strings) and outputs hash
def substrings(string, dictionary)
    result = Hash.new
    i = 0
    until i == (dictionary.length) do
        result[dictionary[i]] = string_search(string, dictionary[i])
        i += 1
    end
    puts result
end

# Function - tests how many times a substring appears in a string
# Input is (string, string)
# Output is positive Int
def string_search(main_string, sub_string)
    count = 0
    i = 0
    while i <= (main_string.length - sub_string.length) do # number of potential tests
        if main_string[i, sub_string.length] == sub_string # string slice is starting position, length
            count += 1;
        end
        i +=1;
    end
    return count
end

# TEST p string_search("abceabcfabc abc", "abc")
substrings("abceabcfabc abc", ["abc", "fab"])