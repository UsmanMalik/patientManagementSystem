json.array!(@problems) do |problem|
  json.extract! problem, :id, :current_problem, :history, :diagnosis
  json.url problem_url(problem, format: :json)
end
