class HomeController < ApplicationController
  before_action :today_events

  def top
    @medical_departments = MedicalDepartment.all
  end

  def about
  end

  def new_guest
    member = Member.find_or_create_by!(name: 'ゲスト太郎', nickname: 'ゲスト', email: 'guest@example.com') do |member|
      member.password = SecureRandom.urlsafe_base64
    end
    sign_in member
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
