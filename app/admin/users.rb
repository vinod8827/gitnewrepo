ActiveAdmin.register User do
    permit_params :email, :password, :password_confirmation, :name
  
    form do |f|
      f.inputs 'User Details' do
        f.input :name
        f.input :email
        f.input :password
        f.input :password_confirmation
      end
      f.actions
    end
  end
  