#Create a class and inherit from ActiveRecord::Migration
#by convention, the class name should match the part of the
#file name after the number, so in this case:
#001_create_loved_ones.rb becomes class LovedOnes

class Messages < ActiveRecord::Migration
  #define a change method in which to do the migration
  def change
    create_table :messages do |t| #we get a block variable here for the table
      #primary key of :id is created for us!
      # defining columns is as simple as t.[datatype] :column
      t.string :title
      t.text :body
      t.integer :theme_id
      t.timestamps null: false
    end
  end
end

#Todo:1 Verify all table datatype and VALUES.
#Todo:2 Make dynamic, so that Heartstrings can prompt user to answer five levels of "why this keepsake"

##PURPOSE

#Purpose of this table is to allow LovedOnes to save and schedule messages to be sent to other LovedOnes at some data in the future(24 hours > send_on < 24 years).
