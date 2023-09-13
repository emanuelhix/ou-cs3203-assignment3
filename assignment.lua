local assignment = {}

function assignment.arraySum(t)
    local sum = 0
    
    for i = 1, #t do
        local value = t[i]
        sum = sum + value
    end

    return sum
end

function assignment.arrayProduct(t)
    local product = 1
    
    for i = 1, #t do
        local value = t[i]
        product = product * value
    end

    return product
end

function assignment.reverseArray(t)
    local reversed = {}

    for i = 1, #t do
        reversed[i] = t[#t-#reversed]
    end

    return reversed
end

-- lua doesn't support an automatic main function, so we just write one ourselves.
-- this runs when the module is passed to a require call.
local function main()
    print(assignment.arraySum({1,2,3})) -- should print 6 (1+2+3)
    print(assignment.arrayProduct({1,2,3})) -- should print 6 (1*2*3)
    local reversed = assignment.reverseArray({3, 2, 1})
    print("Reversed: " .. table.concat(reversed, ", ")) -- should print Reversed: 1, 2, 3
end

-- call the main function
main()

return assignment