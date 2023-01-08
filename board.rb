class Board
  def initialize(answer)
    @answer = answer
    @geusses = 0
  end

  def geuss(com)
    @geusses += 1
    return nil if @geusses > 12

    array = com.split('').map!(&:to_i)
    [check_win(array),
     check_corrects(array),
     check_color(array)]
  end

  private

  def check_win(array)
    array == @answer
  end

  def check_corrects(array)
    @answer.select.with_index { |item, index| item == array[index] }.count
  end

  def check_color(array)
    array.select { |item| @answer.include?(item) }.count - check_corrects(array)
  end
end
