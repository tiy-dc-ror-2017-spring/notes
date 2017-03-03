
class Employee < ActiveRecord::Base
  belongs_to :department
  validates :salary, numericality: { greater_than: 0 }
  
  def add_employee_review(review)
    self.review = review
    positive_matches = 0
    negative_matches = 0

    positive = [/positive/i, /initiative/i, /great/i, /good/i, /helpful/i,
               /puntual/i, /positive/i, /encourage/i, /beneficial/i, /meets/i,
               /good/i, /(team player)/i, /(hard working)/i, /helps/i, /impressed/i, /impressive/i, /fast/i, /asset/i, /leadership/i, /leader/i, /efficient/i, /(willing to help)/i, /successfully/i,
               /pleasure/i]

    negative = [/negative/i, /lazy/i, /bad/i, /stubborn/i, /(misses deadlines)/i,
               /late/i, /concerns/i, /difficulty/i, /struggles/i, /limitations/i,
               /inconsistent/i, /inefficient/i, /(not done well)/i, /poorly/i,
               /badly/i, /rude/i, /(off topic)/i, /lack/i, /inadequate/i, /limitation/i, /(room for improvement)/i, ]
    positive.each do |r|
      matches = self.review.scan(r).count
      positive_matches += matches
    end
    negative.each do |r|
      matches = self.review.scan(r).count
      negative_matches += matches
    end
    self.satisfactory = (positive_matches > negative_matches)
    self.save
  end

  def set_employee_performance(boolean)
    self.satisfactory = boolean
    save
  end

  def raise_by_percent(raise_percentage)
    self.salary += (salary * raise_percentage)
  end

  def raise_by_amount(raise_amount)
    self.salary += raise_amount
    save
    salary
  end
end
