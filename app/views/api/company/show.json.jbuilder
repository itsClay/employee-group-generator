json.company do
  json.extract! @company, :id, :name
end
json.groups do
  @company.groups. each do |group|
    json.set! group.id do
      employees group.employees
    end
  end
end