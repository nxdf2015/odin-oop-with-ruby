class Array

  def to_string
   self.map do |x| x.to_s end.join("")
  end

  def substract(array)
    self.zip(array).map do |x,y| x - y end
  end

  def index_zeros
    index = []
    self.each_index do |i|  index << i  if self[i] == 0 end
    index
  end

  def count_zeros
    self.count do |x| x == 0 end
    end

  def number_match guess
    guess & self
  end

  def any_match? guess
    !( number_match(guess).empty?)
  end
end

class Hash

  def invert
    r = Hash.new
    self.each {|k,v|
      r[v] ||= []
      r[v] << k
    }
    r
  end
end


class String
  def to_array
    self.split("").map do |i| i.to_i end
  end
end

class Integer
  def to_array
    self.to_s.split("").map do |i| i.to_i end
  end
  def min(other)
    self < other ? self : other
  end
end
