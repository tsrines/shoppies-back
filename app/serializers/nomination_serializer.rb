class NominationSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  belongs_to :movie
end