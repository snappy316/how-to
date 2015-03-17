require "test_helper"

feature "Viewing lists" do
  scenario "homepage shows list index" do
    visit root_path
    page.text.must_include "Lists"
  end

  scenario "one list page has multiple steps" do
    visit list_path(lists(:one))
    page.text.must_include "Open fridge"
  end
end
