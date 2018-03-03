def fibs(n)
  helper = [0,1]
  return [0] if n == 1
  return [0,1] if n == 2
  (n-2).times do
    helper << helper[-1]+helper[-2]
  end
  helper
end

def fibs_rec(n, helper = [0,1])
  return [0] if n == 1
  return [0,1] if n == 2
  x=fibs_rec(n-1,helper); return helper<< x[-1]+x[-2]
end
