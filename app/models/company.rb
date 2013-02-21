class Company < ActiveRecord::Base
  attr_accessible  :user_id, :domain, :name, :address, :introduce, :site_url
end
