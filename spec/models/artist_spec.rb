require 'rails_helper'

describe Artist do
  describe 'relationship' do
    it {should have_many :songs}
  end

  describe 'instance methods' do
    describe '#average_song_length' do
      it 'returns the average song length' do
        talking_heads = Artist.create!(name: 'Talking Heads')
        she_was = talking_heads.songs.create!(title: 'And She Was', length: 234, play_count: 34)
        wild_life = talking_heads.songs.create!(title: 'Wild Wild Life', length: 456, play_count: 45)

        expect(talking_heads.average_song_length).to eq(345)
      end
    end
  end
end
