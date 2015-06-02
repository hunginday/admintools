#!/usr/local/bin/lua

function newCounter ()
    local i = 0

    return function () -- anonymous function
        i = i + 1
        return i
    end
end

do
    local oldSin = math.sin
    local k = math.pi/180
    math.sin = function (x)
        return oldSin(x*k)
    end
end

print(math.sin(60))

c1 = newCounter()
print("c1: " .. c1()) --> 1
print("c1: " .. c1()) --> 2

c2 = newCounter()
print("c2: " .. c2()) --> 1
print("c1: " .. c1()) --> 3
print("c2: " .. c2()) --> 2
