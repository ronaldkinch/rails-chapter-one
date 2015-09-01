require "spec_helper"
describe "My welcome page" do
  it "has results" do
    visit "http://localhost:4000"
    page.text.downcase.must_include "welcome"
  end
end
