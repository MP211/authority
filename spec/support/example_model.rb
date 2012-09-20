class ExampleModel
  include Authority::Abilities
end

class ApplicationAuthorizer < Authority::Authorizer
  def self.readable_by?(user)
    true
  end

  def self.updatable_by?(user, options={})
    return false, "resource no can be updated?"
  end
end
