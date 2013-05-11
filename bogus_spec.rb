require_relative 'coderwall.rb'
require 'bogus/rspec'

describe "Controller" do
  it "stores resources" do
    repository = fake(:repository)
    mock(repository).store('Penguin') { nil }
    controller = Controller.new(repository)

    controller.create(name: 'Penguin')
  end
end
