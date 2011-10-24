Given /^"([^"]*)" has created a ticket for this project:$/ do |email, table|
  table.hashes.each do |attributes|
    attribures = attributes.merge!(:user => User.find_by_email!(email))
    @project.tickets.create!(attributes)
  end
end


