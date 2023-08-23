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
    a = [{ id: 1, value: 24 }, { id: 1, value: 50 }, { id: 2, value: 80 }, { id: 2, value: 30 }, { id: 3, value: 10 },
         { id: 3, value: 11 }]
    b = []
    a.each do |t|
      if b.select { |x| x[:id] == t[:id] }.blank?
        b << { id: t[:id], value: a.select { |x| x[:id] == t[:id] }.sum { |y| y[:value] } }
      end
    end
    puts b
  end

  def self.fab_series
    a = []
    11.times do |t|
      a << if t < 2
             t
           else
             a[t - 1] + a[t - 2]
           end
    end
    puts a.join(',')
  end

  def self.find_missing_value_in_rails
    a = [1, 4, 6, 7, 9, 12, 13, 15, 67]
    b = []
    a.sort.each_with_index do |t, index|
      if index == 0 && t[index] == 1
        b << t
      else
        (b[index - 1]..t).each do |t|
          b << t if t != t || t != b[index - 1]
        end
      end
    end
    puts b.uniq.sort - a
  end

  #output: a1b1aa2c1a1bb2c1a1

  def self.sort_end_value
    a = [1, 4, 6, 7, 9, 12, 13, 15, 67]
    b = []
    ((a.first)..(a.last)).each do |t|
      b << t
    end
    puts b.compact.uniq - a
  end

  #output: a1b1aa2c1a1bb2c1a1

  def self.test_question
    a = 'abaacabbca'

    b = a.split('')
    b.each_with_index do |t, index|
      count = 1
      if b[index - 1] == t && index != 0
        count += 1
        print t
        print count
      elsif b[index + 1] == t
        print t
      else
        print t
        print count
      end
    end
  end

  #output: a1b1aa2c1a1bb2c1a1
  def self.reverse_string
    a = "vinod"
    b = a.split('')
    c = []
    
    b.each_with_index do |t, index|
      d = b.count - (index + 1)
      c << b[d]
    end
    puts c.join('')
  end

  def self.array_flatten
   a = [1,[1,2,[1,[12,[1]]]], [1,233,4]]
    #output is [1,1,1,12,1]
   b = []
   flatten_value(a, b)
   print b
  end

   def self.flatten_value(t, b)
     t.each do | t |
      if t.is_a?(Array)
        flatten_value(t,b)
      else
        b << t
      end
     end
   end

   def self.find_missing_number
    a = [1,3,5,6,7,5,8,9,10]
    b = []
    (a.first..a.last).each do |t|
      if a.exclude?(t)
        b << t
      end
    end
    puts b
   end

   def self.find_missing_number
    a = [1,3,5,6,7,5,8,9,10]
    b = []
    (a.first..a.last).each do |t|
      if a.exclude?(t)
        b << t
      end
    end
    puts b
   end
   
   def add_exactly_two_number
    a = [2, 7, 11, 15]
    a.each_with_index do |t, index|
       
    end
   end

   def add_exactly_two_number
    a = [2, 7, 11, 15]
    a.each_with_index do |t, index|
       
    end
   end

   def self.find_largest_number
    a = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
    b = []
    a.sort.each_with_index do |t, index|
      find_index_of_array = a.count - (index + 1)
      if find_index_of_array == 1 || find_index_of_array == 0
        b << t
      end
    end
    puts "so largest sum of the number is #{b[0]} and #{b[1]} and sum of this number is #{b[0] + b[1]}"
   end

   def self.sum_of_the_last_digits
    a = [1,2,[3,4, [5,6,[7,8,[9,10]]]]]
    b = []
    recursive(a, b)
    print b
  end

  def self.recursive(a, b)
    a.each do |t|
      if t.is_a?(Array)
        recursive(t, b)
      else
        b << t
      end
    end
  end


  def self.sum_of_duplicate_same_keys
    a = [1, 2, 3, 1, 4, 2, 4, 3, 5, 23, 54, 233, 2, 3, 3]
    b = {}
    c = []

    a.each do | t |
      if c.exclude?(t)
        b[t] = a.select{| x | x == t}.count
        c << t
      end 
    end
    
    highest_value = b.values(&:map).sort.reverse.compact.uniq[1]
    second_highest_key = b.select {|k, v| v == highest_value}.first[0]
    puts "second heighest key and value is #{second_highest_key}, #{highest_value}"
    puts b
  end

  def self.sum_of_duplicate_same_keys
    a = [1, 2, 3, 1, 4, 2, 4, 3, 5, 23, 54, 233, 2, 3, 3]
    b = {}
    c = []

    a.each do | t |
      if c.exclude?(t)
        b[t] = a.select{| x | x == t}.count
        c << t
      end 
    end
  
    last_sencond_highest_value = b.values(&:map).sort.compact.uniq[1]
    second_highest_key = b.select {|k, v| v == last_sencond_highest_value}.first[0]
    puts "second heighest key and value is #{second_highest_key}, #{last_sencond_highest_value}"
  end

  def self.remove_duplicate_value_in_array
    a = [1, 2, 3, 1, 4, 2, 4, 3, 5, 23, 54, 233, 2, 3, 3]
    c = []

    a.each do | t |
      if c.exclude?(t)
        c << t
      end 
    end

    print c
  end


  def self.remove_nil_for_value_in_array
    a = [1, 2, 3, 1, 4, nil, 4, 3, 5, nil, 54, 233, 2, nil, 3]

    c = a.select {|t| t.nil? }

    print a - c
  end

  def self.remove_nil_value_in_array
    a = [1, 2, 3, 1, 4, nil, 4, 3, 5, nil, 54, 233, 2, nil, 3]
    print a.reject {|t| t.nil? }
  end

  def self.remove_arrary_of_object_value_in_array
   a = [{name: 'vinod',  last_name: 'patidar'}, {name: nil, last_namn: 'patidar'}, {name: 'manish', last_name: nil}]
   puts a.map {|t| t.reject {|k, v| v.nil? }}
  end

  def self.remove_arrary_of_object_value_in_array
    a = [{name: 'vinod',  last_name: 'patidar'}, {name: nil, last_namn: 'patidar'}, {name: 'manish', last_name: nil}]
    b = []
    a.each do |t| 
     b << t.reject {|k, v| v.nil? }
    end
    puts b
  end


  def self.series_solution(a)
    b = a.split('')
    c = []
    b.each_with_index do |t, index|
      if index.odd?
        c << sum(b[index - 1], b[index])
      elsif b.count == index + 1
        c << t.to_i
      end
    end

    if b.count > 1
     series_solution(c.join(''))
     print c
    end
  end

  def self.sum(value1, value2)
    return value1.to_i + value2.to_i
  end
end
