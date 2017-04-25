class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :movements_count
  attribute :balance { object.balance.to_f }
  has_many :movements
end
