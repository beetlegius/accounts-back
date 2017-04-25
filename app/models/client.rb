class Client < ApplicationRecord
  has_many :movements

  default_scope -> { order :name }

  def balance
    movements.map(&:ammount).sum
  end
end
