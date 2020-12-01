class Post < ActiveRecord::Base
    
   
    
    validate :clickbaity
    validates :summary, length: {maximum: 250}
    validates :content, length: {minimum: 250}
    validates :category, inclusion: { in: %w(Non-Fiction Fiction)}
    validate :clickbaity 


    def clickbaity
            unless title.present? && ["Won't Believe", "Secret", "Top[number]", "Guess"].any? {|word| title.include?(word)}
                errors.add(:title, "not clickbaity!")
            end
    end
end
