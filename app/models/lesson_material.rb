class LessonMaterial < ApplicationRecord
    belongs_to :lesson
    belongs_to :material

    validates_presence_of :lesson, :material
end
