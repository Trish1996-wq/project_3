require 'rails_helper'

RSpec.describe "cards/edit", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      question: "MyString",
      answer: "MyString",
      deck: nil
    ))
  end

  it "renders the edit card form" do
    render

    assert_select "form[action=?][method=?]", card_path(@card), "post" do

      assert_select "input[name=?]", "card[question]"

      assert_select "input[name=?]", "card[answer]"

      assert_select "input[name=?]", "card[deck_id]"
    end
  end
end
