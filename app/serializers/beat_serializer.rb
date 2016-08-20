class BeatSerializer < ActiveModel::Serializer
  attributes :id, :name, :kick, :snare, :hatClose, :hatOpen, :clap
  has_one :user
end
