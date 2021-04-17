require 'faker'
FactoryBot.define do
  factory :lesson do |f|
    # f.name  { Faker::Name.name }
    # f.description { Faker::Lorem.description }
    # f.created_at { Faker::Lorem.created_at }
    # f.updated_at { Faker::Lorem.updated_at }
    # f.cohort_id { Faker::Lorem.cohort_id }
    f.name  { "Ruby on Rails"}
    f.description { "Backend" }
    # f.created_at { "2016-11-11 13:30:31 UTC" }
    # f.updated_at { "2016-11-11 13:30:31 UTC"  }
    f.created_at { Faker::Lorem.created_at } 
    f.updated_at { Faker::Lorem.updated_at }
    f.cohort_id { 1 }
    f.unit_id { 1 }
  end
end


#Faker::Date.between(2.days.ago, Date.today) 