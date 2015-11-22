class Post < ActiveRecord::Base
  belongs_to :user

  def date=(date)
    date = Date.strptime(date, '%m/%d/%Y') if date.is_a?(String)
    write_attribute(:date, date)
  end

end
