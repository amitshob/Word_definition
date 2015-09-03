class Word
attr.reader(:word, :definition)
@@Words = []

  define_method(:initialize) do |word|
    @word= word
    @definitions=[]
    @word_id=@@Words.lenght+1
  end
  define_method(:name) do
		@word
	end
  define_method(:add) do
		@@Words.push(self)
	end
  define_method(:id) do
		@id
	end
  define_singleton_method(:all) do
		@@Words
	end
  define_singleton_method(:clear) do
		@@Words = []
	end
  define_method(:add_definition) do |definition|
		@definition.push(definition)
	end

end
