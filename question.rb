class Question

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def generate_question
    "What does #{@number1} plus #{@number2} equal?"
  end

  def check_answer answer
    if @number1 + @number2 == answer
      puts "Correct!"
      true
    else
      puts "Incorrect!"
      false
    end
  end
end

