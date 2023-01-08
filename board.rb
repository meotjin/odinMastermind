class Board
  attr_reader :geusses, :answer

  def initialize(answer)
    @answer = answer
    @geusses = 0
  end

  def geuss(com)
    @geusses += 1

    array = com.split('').map!(&:to_i)
    [array,
     check_win(array),
     check_corrects(array),
     check_color(array)]
  end

  def out_of_geuss
    @geusses > 11
  end

  private

  def check_win(array)
    array == @answer
  end

  def check_corrects(array)
    @answer.select.with_index { |item, index| item == array[index] }.count
  end

  def check_color(array)
    ans = Marshal.load(Marshal.dump(@answer))
    array.select do |item|
      is = ans.include?(item)
      ans.delete_at(ans.find_index(item)) if is
      is
    end.count - check_corrects(array)
  end
end
