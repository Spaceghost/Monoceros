Fabricator(:user) do
  username Faker::Internet.user_name
  email    Faker::Internet.email
end

