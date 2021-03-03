class question
  # we read only because there is overwiritng here I think...?
  attr_reader :add
# the question will have 2 numbers that will be generated randomly and will be required to be added together
  def initialize
    @num1 = rand(0...20)
    @num2 = rand(0...20)
    @add = @num1 + @num2
  end

  # the propmt question - bringing in the name of the player
  def question_prompt
    puts "#{name}: What does #{num1} + #{num2} = ?"
  end

  # verifiying if the input is the same as the answer
  def check_answer?(input)
    @add == input
  end

end