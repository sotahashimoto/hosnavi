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
    it "住所検索機能が正しいか" do
      hospital1 = create(:hospital, address: "大阪府東大阪市若草町1-6")
      hospital2 = create(:hospital, address: "大阪府東大阪市弥生町18-28")
      expect(Hospital.search({search_address: "若草" }).ids).to include hospital1.id
      # expect(Hospital.search({search_address: hospital1.address }).ids).to include hospital1.id
    end

    it "病院名&住所検索機能が正しいか" do
      hospital1 = create(:hospital, name: "若草第一病院", address: "大阪府東大阪市若草町1-6")
      hospital2 = create(:hospital, name: "石切生喜病院", address: "大阪府東大阪市弥生町18-28")
      expect(Hospital.search({search_name_address: "第一" }).ids).to include hospital1.id
      expect(Hospital.search({search_name_address: "若草町" }).ids).to include hospital1.id
    end
  end
end