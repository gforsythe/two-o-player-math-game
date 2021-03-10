require "./player"
require "./question"

puts "Welcome to Two-O-Player Math Game. Let the games begin!"

class Computer

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def play
    while @player1.alive? && @player2.alive? do 
      new_question = Question.new
      puts new_question.question_prompt(@current_player.name)
      userInput = $stdin.gets.chomp
      print "> "
      if new_question.check_answer?(userInput.to_i)
        puts "YES! You are correct."
      else
        puts "Seriously? No!"
        @current_player.wrong_answer
      end
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
      puts "----NEW TURN----"
    end
    if @player1.dead?
      puts "Player 2 wins with a score of #{@player2.lives}/3"
    else
      puts "Player 1 wins with a score of #{@player1.lives}/3"
    end
    puts "---- GAME OVER ----"
    puts "Good Bye!"
  end
end