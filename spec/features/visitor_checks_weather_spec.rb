require 'rails_helper'

feature 'Visitor checks the weather' do
	scenario 'sunny' do
		#setup
		visit root_path

		#exercise
		fill_in "What's your zipcode", with: "94702"
		click_button "Is it going to rain?"

		#verify
		expect(page).to have_content("Sun's gonna be shining!")
		expect(page).to have_content("No umbrella needed.")
	end

	scenario 'rainy' do
		#setup
		visit root_path

		#exercise
		fill_in "What's your zipcode", with: "87111"
		click_button "Is it going to rain?"

		#verify
		expect(page).to have_content("High probability of rain.")
		expect(page).to have_content("Bring your umbrella and galoshes!")
	end

	# scenario 'snowy' do
	# 	#setup
	# 	visit root_path

	# 	#exercise
	# 	fill_in "What's your zipcode", with: "96701"
	# 	click_button "Is it going to rain?"

	# 	#verify
	# 	expect(page).to have_content("Super snowy.")
	# 	expect(page).to have_content("You need more than an umbrella! Bring your snowsuit.")
	# end
end