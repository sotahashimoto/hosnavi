require 'rails_helper'

RSpec.describe "Comments", type: :request do
  let!(:member) { create(:member) }
  let!(:hospital) { create(:hospital) }

  describe "ページを表示(GET #show)" do
    it "リクエストが成功すること" do
      get hospital_comment_path hospital.id, member.id
      expect(response).to have_http_status "200"
    end
  end
end