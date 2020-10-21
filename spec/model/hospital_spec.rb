require 'rails_helper'

RSpec.describe Hospital, type: :model do
  describe 'レビューのテスト' do
    context 'avg_scoreメソッド' do
      it "計算が正しいか" do
        avg_score = create(:hospital, id: 1)
        avg_score = build(:comment, id: 1, score: 1)
        avg_score = build(:comment, id: 2, score: 1)
        avg_score = build(:comment, id: 3, score: 1)
        expect(hospital.self.avg_score).to eq 1
      end
    end
  end
end