require 'curso'

RSpec.describe Curso do
  describe '#initialize' do
    it 'atribui corretamente o id do curso, inicializa as notas e carga horária e calcula o cr do curso' do
      curso = Curso.new(56)
      expect(curso.curso_id).to eq(56)
      expect(curso.notas_agp).to eq([])
      expect(curso.ch).to eq([])
      expect(curso.cr).to eq(0.0)
    end
  end

  describe '#adicionar_notas_agp' do
    it 'adiciona corretamente uma nota ao curso'do
      curso = Curso.new(56)
      curso.adicionar_notas_agp(75.5)
      expect(curso.notas_agp).to eq([75.5])
    end
  end

  describe '#adicionar_ch' do
    it 'adiciona corretamente a carga horária aox curso' do
      curso = Curso.new(56)
      curso.adicionar_ch(60)
      expect(curso.ch).to eq([60])
    end
  end

  describe '#calcular_cr' do
    it 'calcula o corretamente o Cr ao adicionar a nota e a Carga hóraria' do
      curso = Curso.new(56)
      curso.adicionar_notas_agp(75.5)
      curso.adicionar_ch(60)
      expect(curso.cr).to eq(75.5)
    end
  end
end
