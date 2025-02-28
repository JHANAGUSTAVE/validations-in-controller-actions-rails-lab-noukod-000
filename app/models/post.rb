class Post < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates(:content, { :length => { :minimum => 250 } })
  validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
end
