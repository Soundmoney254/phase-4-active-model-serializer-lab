class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author, :tags, :short_content

  def short_content
    "#{object.content[0..39]}..."
  end
end
