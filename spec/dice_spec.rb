# -*- coding: Windows-31J -*-

require '../lib/dice.rb'

describe Roll, '����' do
	it 'new �������́A2D6�̔���Ƃ���' do
		r= Roll.new
		r.should be_kind_of(Roll)
		r.to_s.should =~ /\+2D6 =/
	end
	
	context '��������p�[�X�ł��邱��' do
		it '���߂ł��Ȃ�������ɂ� nil��Ԃ�' do
			Roll::parse('���[���łȂ�������').should== nil
		end
		
		it '���߂ł���ꍇ�� Roll�N���X��Ԃ�' do
			Roll::parse('�x�[�X���Q�c�{�V�A�A�C�e���Ł{�Q�O�A�N���e�B�J���Ł{�Q�c').should be_kind_of(Roll)
		end
	end
end
