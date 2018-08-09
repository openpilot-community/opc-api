FactoryBot.define do
  factory :hardware_item do
    name "MyString"
    alternate_name "MyString"
    description "MyText"
    hardware_type nil
    compatible_with_all_vehicles false
    available_for_purchase false
    purchase_url "MyString"
    requires_assembly false
    can_be_built false
    build_plans_url "MyString"
    notes "MyText"
    image_url "MyString"
    install_guide_url "MyString"
  end
end
