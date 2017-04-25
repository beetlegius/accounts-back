class MovementSerializer < ActiveModel::Serializer
  attributes :id, :name, :client_id
  attribute :ammount { object.ammount.to_f }
end
