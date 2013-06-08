# -*- coding: Windows-31J -*-

require '../lib/brounie/dice.rb'

class DiceRoll
	attr_reader :said, :fix, :dice
end

describe DiceRoll do
	it '���߂ł��Ȃ�������ɂ� nil��Ԃ�' do
		DiceRoll::parse('���[���łȂ�������').should== nil
	end
		
	context '�p�[�X����DiceRoll�𐶐�' do
		it '�_�C�X���[�������̕�����' do
			srand(0)
			d=DiceRoll::parse('2D+4')
			d.should be_a_kind_of(DiceRoll)
			d.roll.should =~ /4\+\[5\]\[6\]/
		end
	end
end
