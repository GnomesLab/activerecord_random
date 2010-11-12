Factory.define(:question) do |q|
  q.sequence(:title) { |n| "Question ##{n}" }
end
