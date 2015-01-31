class RomanNumeral

  # code code code
  # what? why?

  RRN1 = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }

  RRN2 =
  {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  def initialize(number)
    @r_number = number
  end

  def to_arabic
    array = @r_number.split('')
    array.map!{|a| RRN2[a]}
    size = array.size - 1
    size.downto(0).each do |i|
      next if (i-1) < 0
      if array[i-1] < array[i]
        array[i-1] = array[i] - array[i-1]
        array[i] = 0
      end
    end
    array.reduce(:+)
  end
end
