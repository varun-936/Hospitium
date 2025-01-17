class AnimalWeight < ActiveRecord::Base
  belongs_to :animal
  before_create :create_uuid
  
  # settings for rails admin views
  rails_admin do
    object_label_method do
      :show_weight_label_method # show the link in the admin UI instead of the link id
    end
    show do
      exclude_fields :uuid
    end
    create do
      exclude_fields :uuid
    end
    edit do
      exclude_fields :uuid
    end
    list do
      exclude_fields :uuid
    end
  end
  
  # show the link in the admin UI instead of the link id
  def show_weight_label_method
    "#{self.weight}"
  end
  
  #create uuid
  def create_uuid()
    self.uuid = UUIDTools::UUID.random_create.to_s
  end
  
end
