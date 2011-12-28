class Company < ActiveRecord::Base
  attr_accessible :company_name, :company_email, :name, :mobile_no, :email, :password, :password_confirmation, :level
   has_secure_password
   validates_presence_of :password, :on => :create

   email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

   validates :name,         :presence => true,
                            :length   => { :maximum => 50 }
   validates :company_name, :presence => true,
                            :length   => { :maximum => 50 }
   validates :email,        :presence => true,
                            :format   => { :with => email_regex },
                            :uniqueness => { :case_sensitive => false }
   validates :company_email,:presence => true,
                            :format   => { :with => email_regex },
                            :uniqueness => { :case_sensitive => false }
   validates :mobile_no,    :presence => true
end
