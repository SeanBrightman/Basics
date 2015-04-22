class User < ActiveRecord::Base
    has_secure_password
    
    validates_uniqueness_of :email
end
# the model now accepts password and
# password_confirmation to generate
# password_digest