require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'methods' do
    before(:each) do
      @ast_1 = Astronaut.create(name: "Silver", age: 60, job: "Engineer")
      @ast_2 = Astronaut.create(name: "Tom", age: 50, job: "Chemist")
    end

    it '.can show astronaut average age' do
      avg_age = Astronaut.average_age
      expect(avg_age).t eq("55")
    end

  end
end
