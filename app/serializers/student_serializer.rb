class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :last_name, :email, :full_name

  def full_name
    "#{object.name} #{object.last_name}"
  end
end
