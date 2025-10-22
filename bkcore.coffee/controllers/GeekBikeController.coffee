
class GeekBikeController

  @isCompatible: ->
    GeekBikeAgent in window

  constructor: (@callback) ->
    @active = true

  updateAvailable: ->
    return false if not @active

    agent = new GeekBikeAgent()
    agent.fetch((data) -> {
      @acceleration = data.acceleration
      @turning = data.turning

      @callback this
    })
