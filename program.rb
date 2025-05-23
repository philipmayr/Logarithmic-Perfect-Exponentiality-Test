# Logarithmic Perfect Exponentiality Test

include Math
require "readline"

def test_exponentiality(n)
    for m in 2..sqrt(n) + 1 do
        k = log2(n) / log2(m)
        
        return m, k.to_i if k % 1 == 0 and n == m ** k
    end
    
    return false
end

loop do
    print("Enter a candidate integer to test perfect exponentiality: ")
    n = Readline.readline().to_i
    
    if (m, k = test_exponentiality(n)) == false
        puts(n.to_s + " is not a perfect power.")
    else
        puts(n.to_s + " is a perfect power whose base and exponent are " + m.to_s + " and " + k.to_s + ".")
    end
    
    puts()
end
