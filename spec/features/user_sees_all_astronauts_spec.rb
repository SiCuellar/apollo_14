require 'pry'
require 'rails_helper'

describe 'astronaut index' do

  before(:each) do
    @ast_1 = Astronaut.create(name: "Silver", age: 42, job: "Engineer")
    @ast_2 = Astronaut.create(name: "Tom", age: 50, job: "Chemist")
    @ast_3 = Astronaut.create!(name: "Neil Armstrong", age: 34, job: 'Commander')

    @ast_4 = Astronaut.create!(name: "Ian", age: 28, job: 'Navigator')
    @ast_5 = Astronaut.create!(name: "Martha", age: 45, job: 'Commander')

  end

  it 'user can see all astronaut information' do
    visit '/astronauts'
    # save_and_open_page
    expect(page).to have_content("Name: #{@ast_1.name}")
    expect(page).to have_content("Age: #{@ast_1.age}")
    expect(page).to have_content("Job: #{@ast_1.job}")

    expect(page).to have_content("Name: #{@ast_2.name}")
    expect(page).to have_content("Age: #{@ast_2.age}")
    expect(page).to have_content("Job: #{@ast_2.job}")
  end
end
