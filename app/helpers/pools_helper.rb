module PoolsHelper
  def pool_card_title(status)
    case status
    when "finalized", "archived"
      "finalized & archived"
    else
      status
    end
  end

  def pool_card_description(status)
    case status
    when "enrolling"
      "These pools are still available for people to submit entries"
    when "scoring"
      "These pools are locked for new entries, but are still active"
    else
      "These pools are done"
    end
  end

  def pools(user, status)
    user.pools.send(status)
  end
end
