class Post < ApplicationRecord

  validates :title, presence: true
  validates :image_url, presence: true
  validates :content, presence: true

  before_save :erase_word

  def erase_word
      
   self.content = self[:content].split.reduce([]) { |x, value| x.push(value) if value != 'spoiler'; x }.join(" ")

  end
end
