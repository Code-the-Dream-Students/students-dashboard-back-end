class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :source_title, :link, :description, :platform, :treehouse_type, :instructor, :duration, :learning_objectives, :notes
end
