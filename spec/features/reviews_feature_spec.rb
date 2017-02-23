feature 'reviewing' do
  before do
     @user = User.create(email: "test@test.com", password: "testtest", password_confirmation: "testtest")
     @user.restaurants.create(name: 'KFC', description: 'beautiful')
   end

  scenario 'allows users to leave a review using a form' do
     visit '/restaurants'
     click_link 'Review KFC'
     fill_in "Thoughts", with: "so so"
     select '3', from: 'Rating'
     click_button 'Leave Review'
     expect(current_path).to eq '/restaurants'
     expect(page).to have_content('so so')
  end

end
