class CreateFuncionarios < ActiveRecord::Migration[6.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :genero
      t.decimal :salario
      t.integer :idade

      t.timestamps
    end
  end
end
