require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    emaildomain = "mailinator.com"

    @dev = User.new
    @dev.fullname = "Aizzat Suhardi"
    @dev.usertype = "dev"
    @dev.email = "aizzat.suhardi@gmail.com"
    @dev.password = "q"
    @dev.save

    @guard = User.new
    @guard.fullname = "Mokgopja Sani"
    @guard.usertype = "guard"
    @guard.email = "nsmsguard01@#{emaildomain}"
    @guard.password = "q"
    @guard.save 

    @manager = User.new
    @manager.fullname = "Bob Manager"
    @manager.usertype = "manager"
    @manager.email = "nsmsmanager01@#{emaildomain}"
    @manager.password = "q"
    @manager.save

    @resident = User.new
    @resident.fullname = "Minah Resident"
    @resident.usertype = "resident"
    @resident.email = "nsmsresident01@#{emaildomain}"
    @resident.password = "q"
    #@resident.save

  end

  test "user must have password" do
    @resident.password = ""
    assert !@resident.valid?, "Kene ada password maa"
    @resident.password = "jvbuiasdm"
    assert @resident.valid?, "Kene ada password maa"
  end

  test "user must have a full name" do
    @resident.fullname = ""
    assert !@resident.valid?, "Kene ada fullname maa"
    @resident.fullname = "jvbuiasdm"
    assert @resident.valid?, "Kene ada fullname maa"
  end


end
