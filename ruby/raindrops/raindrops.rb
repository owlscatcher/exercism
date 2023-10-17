=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  RAINDROP_SOUNDS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  def self.convert(num)
    result_string = String.new

    RAINDROP_SOUNDS.each { |key, value| result_string << value if (num % key).zero? }

    result_string.empty? ? num.to_s : result_string
  end
end
