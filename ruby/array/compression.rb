def compress(str)
  count = 1
  out_str = nil
  char= nil
  str.split("").each do |ch|
    if char != ch
      char = ch

      out_str = check_count(count, out_str)

      if out_str
        out_str += char
      else
        out_str = char
      end

      count = 1
    else
      count += 1
    end
  end
  check_count(count, out_str)
end


def check_count(count, out_str)
  if count > 1
    out_str += count.to_s
  end
  out_str
end