require './config/environment'

use Rack::MethodOverride
use CharactersController
use UsersController
use TeamsController
run ApplicationController
