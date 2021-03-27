class TmaterialSerializer < ActiveModel::Serializer
  attributes 
    :id, 
    :title, 
    :url, 
    :platform, 
    :treehouse_type, 
    :instructor, 
    :duration, 
    :learning_objectives, 
    :tools, 
    :notes
end
