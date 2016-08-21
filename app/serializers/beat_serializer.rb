class BeatSerializer < ActiveModel::Serializer
  attributes :id, :name, :kick, :snare, :hatClose, :hatOpen, :clap, :user_id
  has_one :user
end
