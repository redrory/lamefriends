class User
  include Mongoid::Document
  field :provider
  field :uid
  field :name
  field :first_name
  field :last_name
  field :link
  field :gender
  field :location


  def self.create_with_omniauth(auth)
	  create! do |user|
	  	user.provider = auth["provider"]
	  	user.uid = auth["uid"]
	  	user.first_name = auth["info"]["first_name"]
      user.last_name = auth["info"]["last_name"]
      user.gender = auth["info"]["gender"]
      user.location = auth["info"]["location"]
	  end
   end

def self.find_by_provider_and_uid(provider, uid)
  find(provider, uid) rescue nil
end

   
end
