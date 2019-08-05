require 'scrabble_solver'

describe 'scrabble' do
  it 'empty word scores 0' do
    scrabble = Scrabble.new('')
    expect(scrabble.score).to eq 0
  end

  it 'a scores 1' do
    scrabble = Scrabble.new('a')
    expect(scrabble.score).to eq 1
  end

  it 'f scores 4' do
    scrabble = Scrabble.new('f')
    expect(scrabble.score).to eq 4
  end

  it 'aff scores 9' do
    scrabble = Scrabble.new('aff')
    expect(scrabble.score).to eq 9
  end

  it 'dog scores 5' do
    scrabble = Scrabble.new('dog')
    expect(scrabble.score).to eq 5
  end

  it 'DOG scores 5' do
    scrabble = Scrabble.new('DOG')
    expect(scrabble.score).to eq 5
  end
end