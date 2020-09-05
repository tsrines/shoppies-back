class NominationSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :movie
  belongs_to :user

end
