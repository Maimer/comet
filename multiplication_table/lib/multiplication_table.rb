def multiplication_table(num = 12)
  row, col = 1, 1
  while col <= num
    while row <= num
      if row == num
        print "#{row * col}\n"
      else
        print "#{row * col}\t"
      end
      row += 1
    end
    row = 1
    col += 1
  end
end
