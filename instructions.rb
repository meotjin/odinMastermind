require 'colorize'
require 'io/console'

class Instructions
  @@intro = ["\t\t\t\t\tMASTER MIND".yellow,
             "\n\t\tin this game one player is the #{'Coder'.red} & the other one is #{'Code Breaker'.blue}!",
             "\t#{'Coder'.red} sets up the game placing 4 colors from 6 colors on 4 given position which is",
             "\thidden from the #{'Code Breaker'.blue}. then #{'Code Breaker'.blue} gets 12 chances to geuss the correct",
             "\tcombination to win the game. if he fails and his geusses run out the #{'Coder'.red} wins the game!",
             "\n\nthe playable colors and their codes are:   #{'1'.white} - #{'2'.green} - #{'3'.blue} - #{'4'.yellow} - #{'5'.red} - #{'6'.black}"]

  def self.print
    @@intro.each { |text| puts text }
  end

  def self.any_key
    puts 'press any key to continue'
    STDIN.getch
  end
end
