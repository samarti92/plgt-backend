class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :city
end
