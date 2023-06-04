
require 'craluno'
require 'aluno'

RSpec.describe CrAluno do
  describe '.calcular_cr_aluno' do
    let(:arquivo) { 'lib/notas.csv' }

    it 'retorna um array de objetos Aluno' do
      alunos = CrAluno.calcular_cr_aluno(arquivo)
      expect(alunos).to be_an(Array)
      expect(alunos.all? { |aluno| aluno.is_a?(Aluno) }).to be true
    end

    it 'calcula corretamente o CR do aluno' do
      alunos = CrAluno.calcular_cr_aluno(arquivo)
      expect(alunos.first.cr.ceil(2)).to eq(63.33)
    end
  end
end
