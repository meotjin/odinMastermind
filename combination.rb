class Combination
  @@colors = [1, 2, 3, 4, 5, 6]

  def self.random_combin
    [@@colors[rand(6).to_i], @@colors[rand(6).to_i], @@colors[rand(6).to_i], @@colors[rand(6).to_i]]
  end
end
