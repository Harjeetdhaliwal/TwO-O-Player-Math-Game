class Game

  attr_accessor :turn, :player1, :player2

  def initialize
    @turn = 1
    @player1 = 3
    @player2 = 3
  end

  def update_turn
    if turn == 1
      @turn = 2
    else
      @turn = 1
    end
    puts "----- NEW TURN -----"
    start_game
  end

  def update_lives turn
    if turn == 1
      @player1 -= 1
    else
      @player2 -= 1
    end
  end

  def game_over
    score =  @player1 ==0 ? @player2 : @player1
    winner = @player1 == 0? "Player 2" : "Player 1"
    puts "#{winner} wins with the score of #{score}/3"
    puts "------ Game Over -----"
    exit(0)
  end


  def start_game
    question = Question.new
    puts "Player #{turn}: #{question.generate_question}"
    input = $stdin.gets.chomp

    if !question.check_answer(input.to_i)
      update_lives(turn)
    end

    puts "P1: #{@player1}/3 vs P2: #{player2}/3"
    if @player1 == 0 || @player2 == 0 
      game_over
    end

    update_turn
  end

end

 
