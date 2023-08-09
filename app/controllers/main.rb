class Main < ApplicationController
  def self.execute
    a = [1, 2, 3, 1, 4, 2, 4, 3, 5, 23, 54, 233, 2, 3, 3]
    b = {}
    c = []

    a.each do |t|
      if c.exclude?(t)
        b[t] = a.select { |x| x == t }.count
        c << t
      end
    end

    highest_freq = b.values(&:map).sort_by {|t| t }.reverse.compact.uniq
    highest_freq_keys = b.select {|k, v| v == highest_freq[1]}.first[0]
    puts "second highest freq is #{highest_freq[1]} and is key number is #{highest_freq_keys}"
  end
end
