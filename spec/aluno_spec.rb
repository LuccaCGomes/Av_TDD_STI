require 'aluno'

RSpec.describe Aluno do
  describe '#initialize' do
    it 'atribui corretamente a matrícula, inicializa as notas e carga horária e calcula o cr' do
      aluno = Aluno.new(100)
      expect(aluno.matricula).to eq(100)
      expect(aluno.notas_agp).to eq([])
      expect(aluno.ch).to eq([])
      expect(aluno.cr).to eq(0.0)
    end
  end

  describe '#adicionar_notas_agp' do
    it 'adiciona corretamente uma nota ao aluno' do
      aluno = Aluno.new(100)
      aluno.adicionar_notas_agp(80)
      expect(aluno.notas_agp).to eq([80])
    end
  end

  describe '#adicionar_ch' do
    it 'adiciona corretamente a carga horária ao aluno' do
      aluno = Aluno.new(100)
      aluno.adicionar_ch(60)
      expect(aluno.ch).to eq([60])
    end
  end

  describe '#calcular_cr' do
    it 'calcula o CR corretamente ao adicionar a nota e carga horária' do
      aluno = Aluno.new(100)
      aluno.adicionar_notas_agp(80)
      aluno.adicionar_ch(60)
      expect(aluno.cr).to eq(80.0) # O CR será recalculado após adicionar a carga horária
    end
  end
end
