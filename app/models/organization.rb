class Organization < ActiveRecord::Base
    before_create :create_uuid
    
    #create uuid
    def create_uuid()
      self.uuid = UUIDTools::UUID.random_create.to_s
    end
end