# -*- coding: Windows-31J -*-

require '../lib/brounie/dice.rb'

class DiceRoll
	attr_reader :said, :fix, :dice
end

describe DiceRoll do
	it '���߂ł��Ȃ�������ɂ� nil��Ԃ�' do
		DiceRoll::parse('���[���łȂ�������').should== nil
	end
		
	context 'D6 x n �̃_�C�X���[�����ł���' do
		before do
			srand(0)
		end
		
		it '�_�C�X���[�������̕�����' do
			d=DiceRoll::parse('2D+4')
			d.should be_a_kind_of(DiceRoll)
			d.roll.should =~ /4\+\[5\]\[6\]/
			d.roll.should =~ /2D\+4/
		end
		
		it '�����񒆂Ƀ_�C�X���[�����������Ă���P�[�X' do
			d=DiceRoll::parse('�ʏ��2d�A�}�X�^���[��1d�A����̍U���͂�11�ŃX�L����+4�ł�')
			d.should be_a_kind_of(DiceRoll)
			d.roll.should =~ /15\+\[5\]\[6\]\[1\]/
			d.roll.should =~ /�ʏ��2d�A�}�X�^���[��1d�A����̍U���͂�11�ŃX�L����\+4�ł�/
		end
	end
	
	context 'D66 �̃_�C�X���[�����ł���' do
		before do
			srand(0)
		end
		
		it 'D66����' do
			d=DiceRoll::parse('D66')
			d.should be_a_kind_of(DiceRoll)
			d.roll.should =~ /\[56\]/
			d.roll.should =~ /D66/
		end
	end
end
