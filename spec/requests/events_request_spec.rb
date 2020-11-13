require 'rails_helper'

RSpec.describe "Events", type: :request do
  let!(:member) { create(:member) }

  describe "ページを表示(GET #index)" do
    context "未ログインの場合" do
      it "ログインページへリダイレクトすること" do
        get member_events_path member.id
        expect(response).to redirect_to new_member_session_path
      end
    end

    context "ログインしている場合" do
      before do
        sign_in member
      end

      it "リクエストが成功すること" do
        get member_events_path member.id
        expect(response).to have_http_status "200"
      end
    end
  end
end