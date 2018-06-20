require_relative 'challenge2'

class Combo < ApplicationRecord
  before_save :set_result

  validates :input, format: { with: /\A\[([-]?\d+)(,([-]?\d+))*]\z/,
    message: "only accepts an integer array" }

  private

  def array_for(input_string)
    input_string.split(',').map do | string |
      string.to_i
    end  
  end

  def set_result
    self.result = Challenge2.sum_to_0(eval(input))
  end
end

