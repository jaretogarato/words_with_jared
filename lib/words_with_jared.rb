require "words_with_jared/version"

module WordsWithJared
  def self.reversify(str)
    str.split('').reverse.join('')
  end

  def self.casify(str)
    # symbols -- methods preceded by colons?
    to_case = [:upcase, :downcase]
    arr = str.split('')
    arr.each_with_index do |letter, i|
      this_case = to_case.sample
      arr[i] = letter.send(this_case)
    end
    arr.join("")
  end

  def self.spacify(str, spaces = 0)
    spaces.times do
      str = str.split("").join(" ")
    end
    str
  end
end
