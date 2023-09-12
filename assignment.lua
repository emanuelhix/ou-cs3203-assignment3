local assignment = {}

-- returns the sum of all numbers within an array portion of a table
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

return assignment