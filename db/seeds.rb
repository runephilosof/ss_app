# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

@con = ActiveRecord::Base.connection

@con.execute "IF EXISTS (
  SELECT TABLE_NAME
  FROM INFORMATION_SCHEMA.VIEWS
  WHERE TABLE_NAME = 'people'
) DROP VIEW people"

@con.execute <<-SQL
  CREATE VIEW people AS
    SELECT id, name, email
    FROM users
SQL

100.times do |n|
  User.create name: "User #{n}", email: "user#{n}@example.com"
end
