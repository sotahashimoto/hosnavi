class HomeController < ApplicationController
  def top
    @medical_departments = MedicalDepartment.all
  end

  def about
  end

  def new_guest
    member = Member.find_or_create_by!(name: 'ゲスト太郎', nickname: 'ゲスト', email: 'guest@example.com') do |member|
      member.password = SecureRandom.urlsafe_base64
      # member.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
    sign_in member
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
