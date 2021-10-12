import basolato/controller
import basolato/core/base

import ../views/pages/hello_view

proc index*(context:Context, params:Params):Future[Response] {.async.} =
  return render(helloView())