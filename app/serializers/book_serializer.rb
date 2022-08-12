# frozen_string_literal: true

class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :book_copies

  def author
    if instance_options[:without_serializer]
      object.author
    else
      AuthorSerializer.new(object.author,
                           without_serializer: true)
    end
  end
end
