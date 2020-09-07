class HomeController < ApplicationController
  def top
    @medical_departments = MedicalDepartment.all
  end

  def about
  end
end
