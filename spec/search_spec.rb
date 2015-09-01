require "spec_helper"
describe "My search page" do
  it "has results" do
    visit "http://google.com"
    fill_in "q", with: "Code Fellows"
    click_on "Google Search"
    page.text.must_include "codefellows.org"
    page.text.must_include "twitter.com/codefellowsorg"
  end
end
=begin
describe "GoodSearch search page" do
  it "has results" do
    visit "http://www.goodsearch.com"
    fill_in "keywords", with: "Code Fellows"
    find(".search-button").click
    page.text.must_include "codefellows.org"
    page.text.must_include "twitter.com/CodeFellowsOrg"
  end
end
=end
