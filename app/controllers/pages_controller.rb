class PagesController < ApplicationController
  def login
  end

  def admin_home
  end

  def staff_management
    @personal_details = PersonalDetail.all
  end

  def finish_register_staff
  end
end
