require('rspec')
require('word')
require('definition')
require('example_sentence')

describe(Word) do
	before() do
		Word.clear()
	end
	describe('#name') do
		it('returns the word') do
			test_word = Word.new("cat")
			expect(test_word.name()).to(eq("cat"))
		end
	end
	describe('#add') do
		it('adds the word to the list of words') do
			test_word = Word.new("cat")
			test_word.add()
			expect(Word.all()).to(eq([test_word]))
		end
	end

	describe('#add_definition') do
		it('adds a definition to an instance of word') do
			test_word = Word.new("cat")
			test_word.add()
			test_definition = Definition.new("Verb", "member of feline species")
			test_word.add_definition(test_definition)
			expect(test_word.define()).to(eq([test_definition]))
		end
	end

	describe('#find_definition') do
		it('finds a definition based on its string') do
			test_word = Word.new("cat")
			test_word.add()
			test_definition = Definition.new("Verb", "member of feline species")
			test_word.add_definition(test_definition)
			expect(test_word.find_definition("member of feline species")).to(eq(test_definition))
		end
	end
end

describe(Definition) do
	describe('#define') do
		it('returns the definition') do
			test_definition = Definition.new("Verb", "member of feline species")
			expect(test_definition.define()).to(eq("member of feline species"))
		end
	end
	describe('#type') do
		it('returns the part of speech') do
			test_definition = Definition.new("Verb", "member of feline species")
			expect(test_definition.type()).to(eq("Verb"))
		end
	end


end
