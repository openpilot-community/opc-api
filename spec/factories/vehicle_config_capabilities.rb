FactoryBot.define do
  factory :vehicle_config_capability do
    vehicle_config nil
    vehicle_capability nil
    kph 1
    timeout 1
    confirmed false
    confirmed_by 1
    notes "MyText"
  end
end
