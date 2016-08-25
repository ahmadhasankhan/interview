def max_rev(a, k)
  ticket_sold = 0
  revenue_sofar = 0
  counter = 0
  a.sort!
  a.reverse!

  while ticket_sold < k
    p "counter= #{counter} on Enter "
    if (a[counter+1])
      if (a[counter] >= a[counter+1])
        counter += 1
        p a[counter]
        revenue_sofar += a[counter]
        ticket_sold += 1
        a[counter] -= 1
        counter = counter-1
        p "counter= #{counter} in nested if number of tickets #{a[counter]}"
      else
        p "counter= #{counter} in nested else"
        counter +=1
      end
    else
      p "counter= #{counter} in else"
      revenue_sofar += a[counter]
      ticket_sold += 1
      counter -= 1
    end
    p "revenue_sofar #{revenue_sofar}"
    p "counter= #{counter} on exit "
  end
  revenue_sofar
end

a = [2, 8, 4, 10, 6]
k = 20

p max_rev(a, k)