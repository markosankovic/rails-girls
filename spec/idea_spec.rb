require "rails_helper"

describe Idea do
  it "has a title" do
    idea = Idea.new
    expect(idea.name).not_to be_empty
  end
end
