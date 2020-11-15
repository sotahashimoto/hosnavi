require 'rails_helper'

RSpec.describe Hospital, type: :model do
  describe 'バリデーションのテスト' do
    context 'nameカラム' do
      it "空欄でないこと" do
        hospital = build(:hospital, name: nil)
        hospital.valid?
        expect(hospital.errors[:name]).to include("を入力してください")
      end

      it "25文字以下であること" do
        hospital = build(:hospital, name: "a" * 26)
        hospital.valid?
        expect(hospital.errors[:name]).to include("は25文字以内で入力してください")
      end
    end

    context 'postcodeカラム' do
      it "空欄でないこと" do
        hospital = build(:hospital, postcode: nil)
        hospital.valid?
        expect(hospital.errors[:postcode]).to include("を入力してください")
      end

      it "8文字以下であること" do
        hospital = build(:hospital, postcode: "a" * 9)
        hospital.valid?
        expect(hospital.errors[:postcode]).to include("は8文字以内で入力してください")
      end
    end

    context 'addressカラム' do
      it "空欄でないこと" do
        hospital = build(:hospital, address: nil)
        hospital.valid?
        expect(hospital.errors[:address]).to include("を入力してください")
      end

      it "25文字以下であること" do
        hospital = build(:hospital, address: "a" * 26)
        hospital.valid?
        expect(hospital.errors[:address]).to include("は25文字以内で入力してください")
      end
    end

    context 'phone_numberカラム' do
      it "空欄でないこと" do
        hospital = build(:hospital, phone_number: nil)
        hospital.valid?
        expect(hospital.errors[:phone_number]).to include("を入力してください")
      end

      it "13文字以下であること" do
        hospital = build(:hospital, phone_number: "a" * 14)
        hospital.valid?
        expect(hospital.errors[:phone_number]).to include("は13文字以内で入力してください")
      end
    end

    context 'featureカラム' do
      it "空欄でないこと" do
        hospital = build(:hospital, feature: nil)
        hospital.valid?
        expect(hospital.errors[:feature]).to include("を入力してください")
      end

      it "300文字以下であること" do
        hospital = build(:hospital, feature: "a" * 301)
        hospital.valid?
        expect(hospital.errors[:feature]).to include("は300文字以内で入力してください")
      end
    end

    context 'short_messageカラム' do
      it "空欄でないこと" do
        hospital = build(:hospital, short_message: nil)
        hospital.valid?
        expect(hospital.errors[:short_message]).to include("を入力してください")
      end

      it "25文字以下であること" do
        hospital = build(:hospital, short_message: "a" * 26)
        hospital.valid?
        expect(hospital.errors[:short_message]).to include("は25文字以内で入力してください")
      end
    end

    context 'noticesカラム' do
      it "空欄でないこと" do
        hospital = build(:hospital, notices: nil)
        hospital.valid?
        expect(hospital.errors[:notices]).to include("を入力してください")
      end

      it "240文字以下であること" do
        hospital = build(:hospital, notices: "a" * 241)
        hospital.valid?
        expect(hospital.errors[:notices]).to include("は240文字以内で入力してください")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    let(:association) do
      described_class.reflect_on_association(target)
    end

    context 'Commetnモデルとの関係' do
      let(:target) { :comments }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'HospitalFavoriteモデルとの関係' do
      let(:target) { :hospital_favorites }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'Memberモデルとの関係' do
      let(:target) { :members }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'Medicalモデルとの関係' do
      let(:target) { :medicals }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'MedicalDepartmentモデルとの関係' do
      let(:target) { :medical_departments }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'ConsultationTimeモデルとの関係' do
      let(:target) { :consultation_times }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end

    context 'ConsultationDayモデルとの関係' do
      let(:target) { :consultation_days }

      it '1:Nとなっている' do
        expect(association.macro).to eq :has_many
      end
    end
  end

  describe '自作メソッドのテスト' do
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
end