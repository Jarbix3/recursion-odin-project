def fibs(n)
  arr = []
  (0..n-1).each do |i|
    if i == 0
      arr << 0
    elsif i == 1
      arr << 1
    else
      fib = arr[i-1] + arr[i-2]
      arr << fib
    end
  end
    arr
end

def fibs_rec(n,arr = [0,1])
  
  return arr[0..n] if n == 1 || n == 0
  array = fibs_rec(n-1,arr)
  arr << arr[-1] + arr[-2] 
  
  
end
p fibs(8)
p fibs_rec(8)