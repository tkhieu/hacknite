class ArabicNumeral

  RRN1 = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  def initialize(number)
    @a_number = number
  end

  def to_roman
    @string = ''
    RRN1.each do |key,value|
      i = @a_number/key
      @a_number = @a_number%key
      if(i > 0)
        (1..i).each do
          @string += value
        end
      end
    end
    @string
  end
end
