require 'rails_helper.rb'

feature "adds a new movie" do
scenario "User adds a new movie" do
  visit new_movie_path
  expect(page).to have_content('Title')
  expect(page).to have_content("Rating")
  expect(page).to have_content("Genres")
  expect(page).to have_content("Description")
  fill_in "Title", with: "my foobar"
  fill_in "Rating", with: "10"
  fill_in "Genres", with: "foobar/foobar"
  click_button "Save Movie"
  visit movies_index_path
  expect(page).to have_content("my foobar")
  expect(page).to have_content("10")
  expect(page).to have_content("foobar/foobar")
end
end
feature "adds a comment" do
  scenario "User posts a comment" do
    visit new_movie_path
    click_button "Save Movie"
    expect(page).to have_content("Post a review")
    fill_in "Name", with: "my foobar"
    fill_in "Comment", with: "Foo"
    click_button
    expect(page).to have_content("my foobar")
    expect(page).to have_content("Foo")
    fill_in "Name", with: "my foobar2"
    fill_in "Comment", with: "Foo2"
    click_button
    expect(page).to have_content("my foobar2")
    expect(page).to have_content("Foo2")

  end
end
