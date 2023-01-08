require_relative 'instructions'
require_relative 'board'
require_relative 'game'

Instructions.print
Instructions.any_key

board = Board.new(Combination.random_combin)
game = Game.new(board)
game.play
