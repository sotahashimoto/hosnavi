require 'rails_helper'

RSpec.describe Hospital, type: :model do
  context 'avg_scoreメソッド' do
    it "計算が正しいか" do
      member = create(:member, name: "taro", email: "taro@example.com")
      hospital = create(:hospital, name: "byouin")
      avg_score1 = create(:comment, id: 1, member_id: 1, hospital_id: 1, score: 1)
      avg_score2 = create(:comment, id: 2, member_id: 1, hospital_id: 1, score: 2)
      avg_score3 = create(:comment, id: 3, member_id: 1, hospital_id: 1, score: 3)
      expect(hospital.avg_score).to eq 2
    end
  end

  context 'searchメソッド' do
    it "検索機能が正しいか" do
      hospital1 = create(:hospital, name: "若草第一病院")
      hospital2 = create(:hospital, name: "石切生喜病院")
      let(:query) { '若' }
      expect(hospital.search).to eq "若草第一病院"
    end
  end
end