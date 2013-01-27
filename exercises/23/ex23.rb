# Find a ruby program and take notes on what you think it does.
#
# => https://github.com/edavis10/redmine/blob/master/app/models/comment.rb
#

# subclass Comment from ActiveRecord::Base.
#
# Comment is an ORM class; it makes a database table accessible with
# ruby code conventions (that is, the SQL has been abstracted away)
class Comment < ActiveRecord::Base

  # import all methods from Redmine::SafeAttributes
  include Redmine::SafeAttributes

  # These set up database table relations.
  # belongs_to sets up a 1:1 relation.
  #
  # "a Comment belongs to a Commented and has these attributes"
  belongs_to :commented, :polymorphic => true, :counter_cache => true

  # "a Comment belongs to an Author and has these attributes"
  belongs_to :author, :class_name => 'User', :foreign_key => 'author_id'

  # all three attributes may not be null.
  validates_presence_of :commented, :author, :comments

  # permits the Redmine user to set comments.
  safe_attributes 'comments'
end