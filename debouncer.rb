class Debouncer
  def initialize(timeout = 15.5)
    @triggered_at = Time.now
    @timeout = timeout
  end

  def trigger &blk
    now = Time.now
    if @triggered_at + @timeout < now
      @triggered_at = now
      blk.call
    end
  end
end
