module CoreModules::DeleteClone

  def self.delete_cohort(cohort)
    cohort.courses.each do |course|
      delete_course(course, false)
    end 
    if cohort.destroy
      return cohort
    end
  end
  
  def self.delete_course(course, for_course=true)
    course.units.each do |unit|
      delete_unit(unit, false)
    end 
    if course.destroy
      if for_course
        return course
      end
    end
  end

  def self.delete_unit(unit, for_unit=true)
    unit.lessons.each do |lesson|
      delete_lesson(lesson, false)
    end 
    if unit.destroy
      if for_unit
        return unit
      end
    end
  end

  def self.delete_lesson(lesson, for_lesson=true)
    if lesson.destroy 
      if for_lesson
        return lesson
      end
    end
  end

  def self.delete_material(material)
    if material.destroy 
      return material
    end
  end

  def self.delete_assignment(assignment)
    if assignment.destroy 
      return assignment
    end
  end 

end 