require 'rails_helper'

RSpec.describe "Events", type: :request do
  let!(:member) { create(:member) }

  describe "トップページを表示(GET #index)" do
    context "未ログインの場合" do
      it "ログインページへリダイレクトすること" do
        get member_events_path member.id
        expect(response).to redirect_to new_member_session_path
      end
    end

    context "ログインしている場合" do
      before do
        @member = create(:member, name: 'test', email: "taro@example.com" )
          sign_in @member
      end

      it "リクエストが成功すること" do
        get member_events_path
        expect(response).to have_http_status "200"
      end
    end
  end
end