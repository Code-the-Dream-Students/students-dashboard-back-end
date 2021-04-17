require 'rails_helper'
RSpec.describe Lesson, type: :model do
  subject { Lesson.new(id: 1, name: "Beginning JavaScript", description: "description", created_at: "2021-04-14 13:30:31 UTC", updated_at: "2021-04-14 13:30:31 UTC", cohort_id: 1)}
    describe "Associations" do
      it { should have_many(:lesson_materials) }
      it { should have_many(:materials).through(:lesson_materials)}
      it { should have_many(:unit_lessons) }
      it { should have_many(:units).through(:unit_lessons)}
      it { should have_many(:lesson_assignments) }
      it { should have_many(:assignments).through(:lesson_assignments) }
      it { is_expected.to belong_to(:cohort) }
    end
    describe "Validations" do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(2) }

    end
    it "is valid with valid attributes" do
        byebug
        expect(subject).to be_valid
    end
    it "is not valid without a lesson name" do
        subject.name=nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a created_at" do
      subject.created_at=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a updated_at" do
      subject.updated_at=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a cohort_id" do
      subject.cohort_id=nil
      expect(subject).to_not be_valid
    end
    it "is not valid if the lesson name is not min 2 chars" do
        lesson_name = subject.name.length
        if lesson_name <2
          expect(subject). to_not be_valid
        end
    end
end
#DATABASE
    # t.string "duration"
    # t.text "learning_objectives"
    # t.datetime "created_at", precision: 6, null: false
    # t.datetime "updated_at", precision: 6, null: false
    # t.bigint "cohort_id", null: false
    # t.string "description"
    # t.string "name"
    # t.index ["cohort_id"], name: "index_lessons_on_cohort_id"
  
#   validates_presence_of :lesson_name, :on => :create

#   validates_length_of :lesson_name, 
#     :minimum => 2,
#     :allow_nil => true