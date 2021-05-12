require 'rails_helper'

RSpec.describe Work, type: :model do
  it "is invalid integer title" do
    movie = Work.new(title: "Spider-man No Way Home")
    expect(movie.title).to eq('Spider-man No Way Home')
  end
end
