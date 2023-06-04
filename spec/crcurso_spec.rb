require 'crcurso'
require 'curso'

RSpec.describe CrCurso do
  describe '.calcular_cr_curso' do
    let(:arquivo) { 'lib/notas.csv' }

    it 'retorna um array de objetos Curso' do
      cursos = CrCurso.calcular_cr_curso(arquivo)
      expect(cursos).to be_an(Array)
      expect(cursos.all? { |curso| curso.is_a?(Curso) }).to be true
    end

    it 'calcula corretamente o CR do curso' do
      cursos = CrCurso.calcular_cr_curso(arquivo)
      expect(cursos.first.cr.ceil(2)).to eq(49.49)
    end
  end
end
