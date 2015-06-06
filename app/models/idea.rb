class Idea < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  validates :name, presence: true
  validates :description, length: {
    minimum: 20,
    maximum: 1000,
    tokenizer: lambda { |str| str.split(/\s+/) },
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words"
  }

  def self.search(search)
    search.blank? ? Idea.all : where("description like ?", "%#{search}%")
  end

  has_many :comments
end
