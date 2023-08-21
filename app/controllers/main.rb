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
end
