class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :hostname
      t.string :origin_ip_address
      t.belongs_to :account
      t.timestamps
    end
  end
end
