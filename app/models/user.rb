module  Teaser
  class User
    
    include DataMapper::Resource
    
    property  :id,          Serial
    
    property  :first_name,  String
    property  :last_name,   String
    
    property  :email,       String,   :required => true,  :unique =>  true
    property  :subscribed,  Boolean,   :default  => false
    
    property  :created_at,  DateTime
    property  :updated_at,  DateTime
    
    validates_format_of :email, :as => :email_address
    
  end
end