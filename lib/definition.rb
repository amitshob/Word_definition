class Definition
  attr_reader(:definition_content,:word)

define_method(:initialize) do |attributes|
    @definition_content = atttributes.fetch(:definition_content)
    @word = atttributes.fetch(:word)
   end
 end
