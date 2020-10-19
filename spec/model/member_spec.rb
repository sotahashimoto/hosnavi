require 'rails_helper'

RSpec.describe Member, type: :model do
  describe 'バリデーションのテスト' do
    context 'nameカラム' do
      it "空欄でないこと" do
        member = build(:member, name: nil)
        member.valid?
        expect(member.errors[:name]).to include("を入力してください")
      end

      it "15文字以下であること" do
        member = build(:member, name: "0123456789012345")
        member.valid?
        expect(member.errors[:name]).to include("は15文字以内で入力してください")
      end
    end

    context 'nicknameカラム' do
      it "空欄でないこと" do
        member = build(:member, nickname: nil)
        member.valid?
        expect(member.errors[:nickname]).to include("を入力してください")
      end

      it "15文字以下であること" do
        member = build(:member, nickname: "0123456789012345")
        member.valid?
        expect(member.errors[:nickname]).to include("は15文字以内で入力してください")
      end
    end

    context 'emailカラム' do
      it "空欄でないこと" do
        member = build(:member, email: nil)
        member.valid?
        expect(member.errors[:email]).to include("が入力されていません。")
      end

      it "重複していたら登録できないこと" do
        member1 = create(:member,name: "taro", email: "taro@example.com")
        member2 = build(:member, name: "ziro", email: member1.email)
        member2.valid?
        expect(member2.errors[:email]).to include("は既に使用されています。")
      end
    end

    context 'passwordカラム' do
      it "空欄でないこと" do
        member = build(:member, password: nil)
        member.valid?
        expect(member.errors[:password]).to include("が入力されていません。")
      end

      it "重複していないと登録できないこと" do
        member = build(:member, password: "000000", password_confirmation: "aaaaaa")
        member.valid?
        expect(member.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
      end
    end
  end
end