require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '投稿の保存' do
    context '投稿が保存できる場合' do
      it '全ての項目が正しく入力されていれば投稿が保存される' do
        expect(@post).to be_valid
      end
    end

    context '投稿が保存できない場合' do
      it 'nameがないと保存できない' do
        @post.name = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Name can't be blank")
      end

      it 'descriptionがないと保存できない' do
        @post.description = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Description can't be blank")
      end

      it 'カテゴリーが選択されていないと保存できない' do
        @post.category_id = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Category can't be blank")
      end

      it 'videoがないと保存できない' do
        @post.video = ""
        @post.valid?
        expect(@post.errors.full_messages).to include("Video can't be blank")
      end

      it 'ユーザーが紐付いていないと投稿は保存されない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("User must exist")
      end
    end
  end
end
