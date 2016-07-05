def alphabetize(arr, rev=false)
    arr.sort!
    if rev
        arr.reverse!
    else
        arr.sort!
    end
end

numbers = [3, 5, 7, 2, 4]

puts alphabetize(numbers)
