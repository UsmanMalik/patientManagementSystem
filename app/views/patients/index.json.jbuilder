json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :age, :email, :date_of_birth, :sex, :address, :phone, :isSms
  json.url patient_url(patient, format: :json)
end
