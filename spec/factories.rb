FactoryGirl.define do
  
  # country factory without associated products, types or dynasty
  factory :country do
    name_en "France"
    name_fr "France"
    name_es "Francia"
  end
end