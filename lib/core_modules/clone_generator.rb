module CoreModules::CloneGenerator

  def self.clone_course(cohort, tcourse)
    course = Course.new(name: tcourse.name, description: tcourse.description)
    tcourse.tunits.each do |tunit|
      clone_unit(course, tunit, false)
    end 
    if course.save
      cohort.courses << course
      return course
    end
  end

  def self.clone_unit(course, tunit, for_unit=true)
    unit = Unit.new(name: tunit.name, description: tunit.description, duration: tunit.duration)
    tunit.tlessons.each do |tlesson|
      clone_lesson(unit, tlesson, false)
    end
    if unit.save
      course.units << unit
      if for_unit
        return unit
      end
    end
  end

  def self.clone_lesson(unit, tlesson, for_unit=true)
    lesson = Lesson.new(lesson_name: tlesson.name)
    if lesson.save
      unit.lessons << lesson
      if for_unit
        return lesson
      end
    end
  end
  
end 