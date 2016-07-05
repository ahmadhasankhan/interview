def solution(a, x, d)
  k = a.size
  position = 0
  if position+d >= x
    return 0;
  end

  (0..k).each do |i|
    if (a[i] - position) <= d
      position = a[i]
      if position+d >= x
        return i;
      end
    end
    -1
  end
end


a = [1, 3, 1, 4, 2, 5]

x = 7

d = 3

p solution(a, x, d)