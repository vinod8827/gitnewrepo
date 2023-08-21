class Test < ApplicationController
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