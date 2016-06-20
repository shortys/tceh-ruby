class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_format_of :title, with: /\A[0-9]*\z/i
  validates_presence_of :body, :message => "What the hell you doing??!!!"

  before_save :calculate_count

  scope :published, -> { where(published: true) }

  has_many :comments

  def calculate_count
    self.title_char_count = title.length
    self.body_char_count = body.length
  end

  def to_s
    "Post: #{self.id} with body #{self.body}"
  end

end
