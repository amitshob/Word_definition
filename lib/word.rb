class Word

@@word_list = []

  define_method(:initialize) do |word|
    @word= word
    @definition=[]
    @word_id=@@Word_list.lenght+1
  end
  define_method(:name) do
		@word
	end
  define_method(:add) do
		@@word_list.push(self)
	end
  define_method(:id) do
		@id
	end
  define_singleton_method(:all) do
		@@word_list
	end
  define_singleton_method(:clear) do
		@@word_list = []
	end
  define_method(:add_definition) do |definition|
		@definition.push(definition)
	end

end
