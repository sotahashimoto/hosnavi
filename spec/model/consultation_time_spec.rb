require 'rails_helper'

RSpec.describe ConsultationTime, type: :model do
  describe 'バリデーションのテスト' do
    context 'start_hourカラム' do
      it "空欄でないこと" do
        consultation_time = build(:consultation_time, start_hour: nil)
        consultation_time.valid?
        expect(consultation_time.errors[:start_hour]).to include("を入力してください")
      end
    end

    context 'start_minuteカラム' do
      it "空欄でないこと" do
        consultation_time = build(:consultation_time, start_minute: nil)
        consultation_time.valid?
        expect(consultation_time.errors[:start_minute]).to include("を入力してください")
      end
    end

    context 'finish_hourカラム' do
      it "空欄でないこと" do
        consultation_time = build(:consultation_time, finish_hour: nil)
        consultation_time.valid?
        expect(consultation_time.errors[:finish_hour]).to include("を入力してください")
      end
    end

    context 'finish_minuteカラム' do
      it "空欄でないこと" do
        consultation_time = build(:consultation_time, finish_minute: nil)
        consultation_time.valid?
        expect(consultation_time.errors[:finish_minute]).to include("を入力してください")
      end
    end
  end

  describe 'アソシエーションのテスト' do
    let(:association) do
      described_class.reflect_on_association(target)
    end

    context 'Hospitalモデルとの関係' do
      let(:target) { :hospital }

      it 'N:1となっている' do
        expect(association.macro).to eq :belongs_to
      end
    end

    context 'ConsultationDayモデルとの関係' do
      let(:target) { :consultation_day }

      it 'N:1となっている' do
        expect(association.macro).to eq :belongs_to
      end
    end
  end
end