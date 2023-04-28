require 'rails_helper'

RSpec.describe "decks/show", type: :view do
  before(:each) do
    @deck = assign(:deck, Deck.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
