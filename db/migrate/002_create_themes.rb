#Create a class and inherit from ActiveRecord::Migration
#by convention, the class name should match the part of the
#file name after the number, so in this case:
#001_create_loved_ones.rb becomes class LovedOnes

class Themes < ActiveRecord::Migration
  #define a change method in which to do the migration
  def change
    create_table :themes do |t| #we get a block variable here for the table
      #primary key of :id is created for us!
      # defining columns is as simple as t.[datatype] :column
      t.string :name
      t.text :description
      t.integer :theme_of
      t.timestamps null: false
    end
  end
end

#Todo:1 Verify all table datatype and VALUES.
