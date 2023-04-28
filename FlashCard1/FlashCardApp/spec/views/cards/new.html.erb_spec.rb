require 'rails_helper'

RSpec.describe "cards/new", type: :view do
  before(:each) do
    assign(:card, Card.new(
      question: "MyString",
      answer: "MyString",
      deck: nil
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do

      assert_select "input[name=?]", "card[question]"

      assert_select "input[name=?]", "card[answer]"

      assert_select "input[name=?]", "card[deck_id]"
    end
  end
end
