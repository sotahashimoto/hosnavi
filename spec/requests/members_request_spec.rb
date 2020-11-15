require 'rails_helper'

RSpec.describe "Members", type: :request do
  let(:member) { create(:member) }
  # ログインしていないユーザー
  let(:other_member) { create(:member) }

  describe "トップページを表示(GET #show)" do
    context "未ログインの場合" do
      it "ログインページへリダイレクトすること" do
        get member_path member.id
        expect(response).to redirect_to new_member_session_path
      end
    end
  end

  describe "ログインページ(GET /sign_in)が" do
    it '正しく表示されること' do
      get new_member_session_path
      expect(response).to have_http_status(200)
    end
  end

  describe "ログイン(POST /sign_in)に" do
    # 存在する(DBに登録されている)ユーザー
    let (:authenticated_member) { create(:member) }
    # 存在しない(DBに登録されていない)ユーザー
    let (:unauthenticated_member) { build(:member) }
    let (:req_params) { { member: { email: member.email, password: member.password } } }

    context '存在するユーザでログインすると' do
      let (:member) { authenticated_member }

      it '成功すること' do
        post member_session_path, params: req_params
        expect(response).to have_http_status(302)
      end
      it 'ログイン後トップページにリダイレクトされること' do
        post member_session_path, params: req_params
        expect(response).to redirect_to root_path
      end
    end

    context '存在しないユーザでログインすると' do
      let (:member) { unauthenticated_member }

      it '失敗すること' do
        post member_session_path, params: req_params
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "ユーザーの編集を更新(PUT #update)" do
    let(:member_params) { { nickname: "編集後ユーザー名" } }

    # context "未ログインの場合" do
    #   it "ログインページへリダイレクトすること" do
    #     put member_path member.id, member: member_params
    #     expect(response).to redirect_to new_member_session_path
    #   end
    # end

    context "ログインしている場合" do
      before do
        sign_in member
      end

      it "リクエストが成功すること" do
        put member_path member.id, member: member_params
        expect(response.status).to eq 302
      end
      it "更新が成功すること" do
        put member_path member.id, member: member_params
        expect(member.reload.nickname).to eq "編集後ユーザー名"
      end
      it "ユーザー編集ページへリダイレクトすること" do
        put member_path member.id, member: member_params
        expect(response).to redirect_to member_path member.id
      end
    end

    # context "他のユーザーの場合" do
      # it "ログイン前トップページへリダイレクトすること" do
      #   sign_in other_member
      #   patch member_path member.id, member: member_params
      #   expect(response).to redirect_to root_path
      # end
    # end
  end

  describe "新規登録ページ(GET /sign_up)が" do
    it "正しく表示されること" do
      get new_member_registration_path
      expect(response).to have_http_status(200)
    end
  end

  describe "新規登録(POST /sign_up)で" do
    let (:req_params) { { member: { name: '新規ユーザー', email: 'test@test.co.jp', nickname: 'testnickname', password: 'password', password_confirmation: 'password' } } }

    context '全て正しい情報を入力した場合' do
      it '登録に成功すること' do
        post member_registration_path, params: req_params
        expect(response).to have_http_status(302)
      end

      it 'トップページにリダイレクトされること' do
        post member_registration_path, params: req_params
        expect(response).to redirect_to root_path
      end
    end
  end
end