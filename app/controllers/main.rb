class Main < ApplicationController
  def self.find_out_second_most_freq
    a = [1, 2, 3, 1, 4, 2, 4, 3, 5, 23, 54, 233, 2, 3, 3]
    b = {}
    c = []

    a.each do |t|
      if c.exclude?(t)
        b[t] = a.select { |x| x == t }.count
        c << t
      end
    end

    highest_freq = b.values(&:map).sort.reverse.compact.uniq
    highest_freq_keys = b.select { |_k, v| v == highest_freq[1] }.first[0]
    puts "second highest freq is #{highest_freq[1]} and is key number is #{highest_freq_keys}"
  end

  def self.print_triangle_pattern
    rows = 4
    (1..rows).each do |row|
      spaces = rows - row
      stars = 2 * row - 1  
      puts ' ' * spaces + '*' * stars
    end
  end
  
  def self.array_data_users
   a = [{id: 1, value: 24}, {id: 1, value: 50}, {id: 2, value: 80}, {id: 2, value: 30}, {id: 3, value: 10}, {id: 3, value: 11}]
   b = []
    a.each_with_index do |t|
      if b.select{|x| x[:id] == t[:id]}.blank? 
       b << { id: t[:id], value: a.select{|x| x[:id] == t[:id]}.sum{|y| y[:value]} }
      end
    end
    puts b
  end

  def self.fab_series
    a = []
   (0..10).each do |t|
      if t < 2
        a << t
      else
       a << a[t-1] + a[t-2]
      end
   end
   puts a.join(',')
  end

  def self.find_missing_value_in_rails
    a = [1,4,6,7,9,12,13,15,67]
    b = []
    a.sort.each_with_index do |t, index|
       if index == 0 && t[index] == 1
        b << t
       else
        (b[index - 1]..t).each do |t|
         if (t != t || t != b[index - 1])
          b << t
         end
        end
       end 
    end
    puts b.uniq.sort - a
  end 

  def self.sort_end_value
    a = [1,4,6,7,9,12,13,15,67]
    b = []
    ((a.first)..(a.last)).each do |t|
        b << t
    end
    puts b.compact.uniq - a
  end
end
