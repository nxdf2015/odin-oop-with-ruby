
load "format.rb"



class  Code
include Format
  class << self
    def create
      new
    end
  end


  def initialize
    num = (1..6).to_a.shuffle
    @secret_code = num
  # puts "  [secret code : #{@secret_code}]"
    end

 def win? guess
   @secret_code.eql?  guess.to_array
 end

 def valid?(guess)
   
   if  guess.to_array.length != @secret_code.length
     puts ("invalid  length secret code = #{@secret_code.length}")
  end
  guess.to_array.length == @secret_code.length
 end

 def init_feedback
   [-1]*6
   #{}"." * @secret_code.length
 end

 def match(guess)
   guess_a = guess.to_array
   feedback = init_feedback
   index_zeros = []
   valid_index =  (0...@secret_code.length).to_a

   if @secret_code.any_match?(guess_a)
     substract = @secret_code.substract(guess_a)
    if substract.count_zeros > 0
       index_zeros  = substract.index_zeros
       intersection = @secret_code.number_match(guess_a)
       valid_index = valid_index -  index_zeros
    end

    hash_guess = Hash.new
    hash_secret = Hash.new
    valid_index.each do |i| hash_secret[i] = @secret_code[i] end
    valid_index.each do |i| hash_guess[i] = guess_a[i] end

    hash_secret = hash_secret.invert
    hash_guess = hash_guess.invert

    index_present = []
    (hash_secret.keys & hash_guess.keys).each { |value|
      n =hash_secret[value].length.min( hash_guess[value].length)
      index_present << hash_guess[value][0,n]}
    index_present.flatten!

    for i in  index_present
      feedback[i] = 0
    end
    for i in index_zeros
       feedback[i] = @secret_code[i]
       #print %W[ feedback #{feedback}]
    end
  end
  #print  %W[ feedback #{feedback}]
   print("match",feedback)
  end

end
