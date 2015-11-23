class Post < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable


  def date=(date)
    date = Date.strptime(date, '%m/%d/%Y') if date.is_a?(String)
    write_attribute(:date, date)
  end

end
