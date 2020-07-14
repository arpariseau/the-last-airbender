require 'rails_helper'

describe 'from the root page' do
  it 'can pull characters by affiliation' do
    visit '/'
    select "Fire Nation", from: "nation"
    click_button "Search For Members"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("20")
    within "character-5cf5679a915ecad153ab68da" do
      expect(page).to have_content("Azula")
      within '#allies' do
        expect(page).to have_content("Ozai Zuko")
      end
      within '#enemies' do
        expect(page).to have_content("Iroh Zuko Kuei Long Feng Mai Ty Lee Ursa")
      end
      within '#affiliations' do
        expect(page).to have_content("Azula's team (formerly) Dai Li (formerly)
        Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
      end
    end
  end
end

# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (i.e. 20)
# And I should see a list with the detailed information for the 20 members of the Fire Nation.
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies and a list of enemies
# - Any affiliation that the member has
