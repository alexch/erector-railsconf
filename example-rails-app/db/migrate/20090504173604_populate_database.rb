class PopulateDatabase < ActiveRecord::Migration
  
  require 'faker'
  
  def self.up
    20.times do
      article = Article.create! :title => Faker::Company.bs, :content => Faker::Lorem.paragraph
      rand(6).times do
        article.comments.create! :content => Faker::Lorem.paragraph, :username => Faker::Internet.user_name
      end
    end
  end

  def self.down
  end
end
