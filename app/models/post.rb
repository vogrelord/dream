class Post < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable
  #has_and_belongs_to_many :users, :as=>:purchased_posts


  def date=(date)
    date = Date.strptime(date, '%d.%m.%Y') if date.is_a?(String)
    write_attribute(:date, date)
  end

end
