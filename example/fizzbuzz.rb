require "array/eqq"

using Array::Eqq

# 必ず true を返す proc を返す
def _
    proc { true }
end

def fizzbuzz n
    case [n % 3, n % 5]
    # n % 3 === 0 && n % 5 === 0
    when [0, 0]
        "FizzBuzz"
    # n % 3 === 0
    when [0, _]
        "Fizz"
    # n % 5 === 0
    when [_, 0]
        "Buzz"
    else
        n
    end
end

p (1..20).map &method(:fizzbuzz)
# => [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz"]
