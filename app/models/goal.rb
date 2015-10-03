class Goal < ActiveRecord::Base
  belongs_to :user
  has_attached_file :picture, styles: { med: "400x400#", large: "1000x600#" }
  validates_attachment :picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  validates :title, presence: true
  validates :description, presence: true

  acts_as_votable

  def vote(current_user)

  end
end
