# frozen_string_literal

## Create user Roles
Role.names.each_value do |role_name|
  Role.where(name: role_name).first_or_create!
end
