class MembershipCreator
  def self.call(pool_id:, user_id:, role:)
    new(pool_id, user_id, role).call
  end

  def initialize(pool_id, user_id, role)
    @pool_id = pool_id
    @user_id = user_id
    @role = role
  end

  def call
    Membership.create!(pool_id: pool_id, user_id: user_id, role: role)
  end

  private

  attr_reader :pool_id, :user_id, :role
end
