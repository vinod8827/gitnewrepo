class Test < ApplicationController
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
end
