class Question < ActiveRecord::Base
  attr_accessible :body
  validates_presence_of :body
  
  def self.random
    offset = rand(Question.count)
    Question.first(:offset => offset)
  end
end
