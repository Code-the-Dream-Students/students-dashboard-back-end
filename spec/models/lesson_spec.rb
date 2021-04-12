require 'rails_helper'
RSpec.describe Lesson, type: :model do
  subject { Lesson.new(lesson_name: "Beginning JavaScript")}
    describe "Associations" do
      it { should have_many(:sources) }
      it { should have_many(:unit_lessons) }
      it { should have_many(:units).through(:unit_lessons)}
      it { should have_many(:lesson_sources) }
      it { should have_many(:sources).through(:lesson_sources) }
      it { should have_one(:assignment) }
      it { should have_many(:weeks) }    
    end

    describe "Validations" do
      it { should validate_presence_of(:lesson_name) }
      it { should validate_length_of(:lesson_name).is_at_least(2) }
    end
    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    it "is not valid without a lesson name" do
        subject.lesson_name=nil
        expect(subject).to_not be_valid
    end
    it "is not valid if the lesson name is not min 2 chars" do
        lesson_name = subject.lesson_name.length
        if lesson_name <2
          expect(subject). to_not be_valid
        end
    end
end

  
#   validates_presence_of :lesson_name, :on => :create

#   validates_length_of :lesson_name, 
#     :minimum => 2,
#     :allow_nil => true