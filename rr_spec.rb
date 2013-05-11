require_relative 'coderwall.rb'

RSpec.configure do |config|
  config.mock_framework = :rr
end

describe "Controller" do
  it "stores resources" do
    repository = stub
    mock(repository).store('Penguin') { nil }
    controller = Controller.new(repository)

    controller.create(name: 'Penguin')
  end
end
