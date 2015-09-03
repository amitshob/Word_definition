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
			test_word = Word.new("rainbow")
			expect(test_word.name()).to(eq("rainbow"))
		end
  end
  describe('#add') do
		it('adds the word to the list of words') do
			test_word = Word.new("rainbow")
			test_word.add()
			expect(Word.all()).to(eq([test_word]))
		end
	end
  describe('#id') do
		it('returns the id number of a word') do
			test_word = Word.new("rainbow")
			test_word.add()
			expect(test_word.id()).to(eq(1))
		end
	end
  describe('.clear') do
		it('clears the word list') do
			test_word = Word.new("rainbow")
			test_word.add()
			Word.clear()
			expect(Word.all()).to(eq([]))
		end
	end
  describe('.find') do
		it('finds a word based on its id number') do
			test_word = Word.new("rainbow")
			test_word.add()
			test_word2 = Word.new("rainfall")
			test_word2.add()
			expect(Word.find(test_word2.id())).to(eq(test_word2))
		end
	end
  describe('#add_definition') do
		it('adds a definition to a word') do
			test_word = Word.new("rainbow")
			test_word.add()
			test_definition = Definition.new("Verb", "to renounce or relinquish a throne, right or claim")
			test_word.add_definition(test_definition)
			expect(test_word.define()).to(eq([test_definition]))
		end
	end
describe(Definition) do
	describe('#define') do
		it('returns  definition') do
			test_definition = Definition.new("Verb", "to renounce or relinquish a throne, right or claim")
			expect(test_definition.define()).to(eq("to renounce or relinquish a throne, right or claim"))
		end
	end
