class Week < ApplicationRecord
  belongs_to :course
  belongs_to :unit
  belongs_to :lesson
  # belongs_to :student_weekly_progress

  validates_presence_of :week_number, :course, :unit, :lesson
  validates_numericality_of :week_number, :only_integer => true
  
  validate :start_date
  validate :end_date
  validate :end_date_after_start_date

  private

    def val_start_date
      if !Date.parsable?(:start_date) then errors.add(:start_date, "is not a date data type") end
    end

    def val_end_date
      if !Date.parsable?(:end_date) then errors.add(:end_date, "is not a date data type") end
    end

    def end_date_after_start_date
      return if end_date.blank? || start_date.blank?

      if end_date < start_date
        errors.add(:end_date, "must be after the start date")
      end
    end

end
