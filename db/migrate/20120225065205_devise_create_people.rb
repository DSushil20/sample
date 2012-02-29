class DeviseCreatePeople < ActiveRecord::Migration
  def self.up
    change_table(:people) do |t|
      t.database_authenticatable :null => false
     # t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both

      #t.timestamps
    end

    #add_index :people, :email,                :unique => true
    #add_index :people, :confirmation_token,   :unique => true
    add_index :people, :reset_password_token, :unique => true
    # add_index :people, :unlock_token,         :unique => true
  end

  def self.down
    remove_column :people,:database_authenticatable
    remove_column :people,:recoverable
    remove_column :people,:rememberable
    remove_column :people,:trackable
  end
end
