FactoryBot.define do
  factory :rental do
    return_date { "2025-04-09 16:28:35" }
    status { 1 }
    user { nil }
    book { nil }
  end
end
