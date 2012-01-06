class User
  include Mongoid::Document
  field :name, :type => String
  field :id, :type => Integer
  field :last_name, :type => String

end
