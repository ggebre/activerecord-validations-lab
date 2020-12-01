class TitleValidator < ActiveModel::Validator
    def validate(record)
    #   unless record.title.match?(//)
    #     record.errors[:title] << "We're only allowed to have people who work for the company in the database!"
    #   end

        unless ["Won't Believe", "Secret", "Top[number]", "Guess"].any? {|word| record.title.include?(word)}
            record.errors[:title] << "not clickbaity!"
        end
    end
end 

#   def clickbaity
#     unless ["Won't Believe", "Secret", "Top[number]", "Guess"].any? {|word| title.include?(word)}
#         errors.add(:title, "not clickbaity!")
#     end
# end