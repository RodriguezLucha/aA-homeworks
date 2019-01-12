class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    take_turn until @game_over

    game_over_message
    reset_game
  end

  def over
    true
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message unless @game_over
    @sequence_length += 1
  end

  def show_sequence
    add_random_color
    system("clear")
    puts "Displaying Colors Now!"
    sleep(1)
    system("clear")
    @seq.each do |color|
      puts color.chars.first
      sleep(1)
      system("clear")
      puts "-"
      sleep(1)
      system("clear")
    end
  end

  def require_sequence
    puts "Enter a sequence of colors in the form r,b,g,y..."
    user_sequence = gets.chomp.split(",")

    computer_sequence_letters = @seq.map do |color|
      color[0]
    end

    if user_sequence != computer_sequence_letters
      @game_over = true
    end
  end

  def add_random_color
    @seq.push(COLORS.sample)
  end

  def round_success_message
    system("clear")
    puts "Round Success"
    sleep(1)
  end

  def game_over_message
    puts "Game over"
    puts "Your sequence was: #{@seq}" 
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq.clear
  end
end


if __FILE__ == $PROGRAM_NAME
  simon = Simon.new
  simon.play
end