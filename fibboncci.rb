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


def merge (array1, array2)
  helper=[]
  while array1 != [] && array2 !=[]
    if array1.first <array2.first
      helper<< array1.shift
    else
      helper<< array2.shift
    end
  end
  helper+array1+array2
end

def merge_sort(array)
  return array if array.length == 1
  a = merge_sort(array.shift(array.length/2))
  b = merge_sort(array)
  merge(a,b)
end
