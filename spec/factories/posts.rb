FactoryBot.define do
  factory :post do
    name {Faker::Lorem.sentence}
    description {Faker::Lorem.sentence}
    category_id { 6 }
    video { 
      Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.mp4')) 
    }
    association :user
  end
end
