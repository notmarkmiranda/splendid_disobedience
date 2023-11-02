class MembershipCreator
  def self.call(pool_id:, user_id:, role: 0, status: 0)
    new(pool_id, user_id, role, status).call
  end

  def initialize(pool_id, user_id, role, status)
    @pool_id = pool_id
    @user_id = user_id
    @role = role
    @status = status
  end

  def call
    Membership.create!(pool_id: pool_id, user_id: user_id, role: role, status: status)
  end

  private

  attr_reader :pool_id, :user_id, :role, :status
end
