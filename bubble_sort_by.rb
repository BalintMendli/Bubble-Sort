def bubble_sort_by(arr)
  sorted=false
  to=arr.length-1
  while !sorted
    sorted=true
    i=0
    while i<to
      if block_given? ? yield(arr[i],arr[i+1])>0 : arr[i]>arr[i+1]
        arr[i],arr[i+1]=arr[i+1],arr[i]
        sorted=false
      end
      i+=1
    end
    to-=1
  end
  arr
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
