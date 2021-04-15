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

  def self.clone_lesson(unit, tlesson, for_lesson=true)
    lesson = Lesson.new(
      name: tlesson.name, 
      duration: tlesson.duration, 
      learning_objectives: tlesson.learning_objectives, 
      description: tlesson.description
    )

    tlesson.tmaterials.each do |tmaterial|
      clone_material(lesson, tmaterial, false)
    end

    tlesson.tassignments.each do |tassignment|
      clone_assignment(lesson, tassignment, false)
    end

    if lesson.save
      unit.lessons << lesson
      if for_lesson
        return lesson
      end
    end
  end

  def self.clone_material(lesson, tmaterial, for_material=true)
    material = Material.new(
      title: tmaterial.title, 
      link: tmaterial.link, 
      description: tmaterial.description, 
      platform: tmaterial.platform, 
      treehouse_type: tmaterial.treehouse_type, 
      instructor: tmaterial.instructor, 
      duration: tmaterial.duration, 
      learning_objectives: tmaterial.learning_objectives, 
      notes: tmaterial.notes
    )

    if material.save
      lesson.materials << material
      if for_material
        return material
      end 
    end

  end

  def self.clone_assignment(lesson, tassignment, for_assignment=true)
    assignment = Assignment.new(
      title: tassignment.title,
      link: tassignment.link, 
      description: tassignment.description
    )

    if assignment.save
      lesson.assignments << assignment
      if for_assignment 
        return assignment
      end
    end
  end
  
end 