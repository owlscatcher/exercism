=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
  MARKERS = { 'black' => 0, 'brown' => 1, 'red' => 2, 'orange' => 3, 'yellow' => 4,
              'green' => 5, 'blue' => 6, 'violet' => 7, 'grey' => 8, 'white' => 9 }.freeze

  def self.value(colors)
    colors.take(2)
          .map(&:downcase)
          .map { |color| MARKERS[color] }
          .join
          .to_i
  end
end
