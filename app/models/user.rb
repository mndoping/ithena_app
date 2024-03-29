class User < ActiveRecord::Base
  #Note that password actually refers to pin
  attr_accessible :name, :email, :password, :password_confirmation, :mobile_no, :mobile_no_confirmation, :mobile_alias
  has_secure_password
  validates_presence_of :password, :on => :create
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name,      :presence => true,
                        :length   => { :maximum => 50 }
  validates :email,     :presence => true,
                        :format   => { :with => email_regex },
                        :uniqueness => { :case_sensitive => false }
  validates :mobile_no, :presence => true
end
