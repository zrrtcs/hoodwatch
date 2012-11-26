class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :fullname, :password_digest, :usertype
  validates :password, :presence => true
  validates :fullname, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :usertype, :presence => true

  #activerecord enumeration
  validates_inclusion_of :usertype, :in => %w(dev manager guard resident)


end
