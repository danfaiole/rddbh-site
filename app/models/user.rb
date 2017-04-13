class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :last_name, presence: true, length: { maximum: 255 }
  validates :birthday, presence: true
  validates :email, presence: true, email: true
  validates :leader, presence: true
  validates :city, presence: true
  validates :state, presence: true, length: { is: 2 }
  validates :leader_phone, presence: true
  #validates :password, confirmation: true

  def self.states
    [['Acre', 'AC'], ['Alagoas', 'AL'], ['Amapá', 'AP'], ['Amazonas', 'AM'],
      ['Bahia', 'BA'], ['Ceará', 'CE'], ['Distrito Federal', 'DF'], ['Espírito Santo', 'ES'],
      ['Goiás', 'GO'], ['Maranhão', 'MA'], ['Mato Grosso', 'MT'], ['Mato Grosso do Sul', 'MS'],
      ['Minas Gerais', 'MG'], ['Pará', 'PA'], ['Paraíba', 'PB'], ['Paraná', 'PR'], ['Pernambuco', 'PE'],
      ['Piauí', 'PI'], ['Rio de Janeiro', 'RJ'], ['Rio Grande do Norte', 'RN'], ['Rio Grande do Sul', 'RS'],
      ['Rondônia', 'RO'], ['Roraima', 'RR'], ['Santa Catarina', 'SC'], ['São Paulo', 'SP'],
      ['Sergipe', 'SE'], ['Tocantins', 'TO']
    ]
  end
end
