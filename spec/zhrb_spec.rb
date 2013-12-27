require 'zhrb'

describe ZHRB do
  describe '#compile' do
    it 'puts' do
      expect { ZHRB.eval %q{印出 'Hello'} }.not_to raise_error
    end

    it 'def' do
      expect(
        ZHRB.eval %q{
          定義 相加 甲, 乙
            回傳 甲 + 乙
          結束
          相加 1, 2
        }
      ).to eq(3)
    end

    it 'class' do
      expect(
        ZHRB.eval %q{
          類 狐狸
            定義 說話 內容
              內容
            結束
          結束

          狐狸甲 = 狐狸.生成
          狐狸甲.說話("啊嗚")
        }
      ).to eq("啊嗚")
    end

    it 'classes' do
      expect(
        ZHRB.eval %q{
          類 狐狸
            定義 說話 內容
              內容
            結束
          結束

          類 狗
            定義 說話 內容
              內容
            結束
          結束

          狐狸甲 = 狐狸.生成
          狗狗甲 = 狗.生成

          狗狗甲.說話(狐狸甲.說話("汪汪"))
        }
      ).to eq("汪汪")
    end
  end
end