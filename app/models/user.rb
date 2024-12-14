class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ROLES = %w[reciclador operador administrador].freeze

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :role, inclusion: { in: ROLES }

  after_initialize :set_default_role, if: :new_record?

  private

  def set_default_role
    self.role ||= "reciclador" if new_record?
  end

  def reciclador?
    role == "reciclador"
  end

  def operador?
    role == "operador"
  end

  has_many :materials, dependent: :destroy
end
