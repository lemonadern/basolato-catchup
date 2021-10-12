import re
# framework
import basolato
# controller
import app/http/controllers/welcome_controller
import app/http/controllers/hello_controller
# middleware
import app/http/middlewares/auth_middleware
import app/http/middlewares/cors_middleware

var routes = Routes.new()
routes.middleware(re".*", auth_middleware.checkCsrfTokenMiddleware)
routes.middleware(re"/api/.*", cors_middleware.setCorsHeadersMiddleware)

groups "":
  routes.get("/", welcome_controller.index)
  routes.get("/hello", hello_controller.index)


groups "/api":
  routes.get("/index", welcome_controller.indexApi)

serve(routes)
