def bubble_sort(arr)
  sorted=false
  to=arr.length-1
  while !sorted
    sorted=true
    i=0
    while i<to
      if arr[i]>arr[i+1]
        arr[i],arr[i+1]=arr[i+1],arr[i]
        sorted=false
      end
      i+=1
    end
    to-=1
  end
  arr
end

bubble_sort([4,3,78,2,0,2])
