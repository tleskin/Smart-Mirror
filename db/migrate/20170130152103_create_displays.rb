class CreateDisplays < ActiveRecord::Migration[5.0]
  def change
    create_table :displays do |t|
      t.string :box1
      t.string :box2
      t.string :box3
      t.string :box4
      t.string :box5
      t.string :box6
      t.string :box7
      t.string :box8
      t.string :box9
      t.string :box10
      t.string :box11
      t.string :box12

      t.timestamps
    end
  end
end
