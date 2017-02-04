def sieve (max)
  list = (0..max).to_a
  counter = 0
  list[0] = nil
  list[1] = nil
  list.each do |num|
    next unless num
    break if num * num > max
        counter += 1
        (num * num).step(max,num) { |m| list[m] = nil }
      end
list.compact
end

def prime?(num)
  sieve(num).include?(num)
end
