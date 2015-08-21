#Create a class and inherit from ActiveRecord::Migration
#by convention, the class name should match the part of the
#file name after the number, so in this case:
#001_create_loved_ones.rb becomes class LovedOnes

class Keepsakes < ActiveRecord::Migration
  #define a change method in which to do the migration
  def change
    create_table :keepsakes do |t| #we get a block variable here for the table
      #primary key of :id is created for us!
      # defining columns is as simple as t.[datatype] :column
      t.string :title
      t.text :description
      t.integer :song_id
      t.integer :legacy_of # foreign key to join with loved_ones
      t.timestamps null: false
    end
  end
end

#Todo:1 Verify all table datatype and VALUES.
#Todo:2 Make dynamic, so that Heartstrings can prompt user to answer five levels of "why this keepsake"

##PURPOSE

#Purpose of this table is to allow Loved Ones to store keepsakes they would like to share with their LovedOnes. For example: "Dear Purple, here are five songs you should know that I loved, along with a brief story behind why I loved them. Love, Dad"
