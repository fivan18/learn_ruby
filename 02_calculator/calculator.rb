#write your code here
def add num1, num2
    num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum arr
    arr.sum
end

def multiply *args
    args.reduce(1, :*)
end

def power base, pow
    base ** pow
end

def factorial num
    num == 0 ? 1 : factorial(num - 1) * num
end




