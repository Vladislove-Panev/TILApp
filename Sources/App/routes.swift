import Fluent
import Vapor

func routes(_ app: Application) throws {

    let usersController = UsersController()
    let acronymsController = AcronnymsController()
    let categoriesController = CategoriesController()
    
    try app.register(collection: usersController)
    try app.register(collection: acronymsController)
    try app.register(collection: categoriesController)
}
