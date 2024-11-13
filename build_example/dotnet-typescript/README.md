# My .NET App

This is a sample .NET application with a TypeScript frontend. It can be used for testing CodeQL quesries against.

## Backend

The backend folder contains the following files:

- `Controllers/HomeController.cs`: This file contains the `HomeController` class, which handles the backend logic for the home route. It exports the `Index` method that returns the `Index.cshtml` view.
- `Models/SampleModel.cs`: This file contains the `SampleModel` class, which represents a sample model for the application.
- `appsettings.json`: This file contains the configuration settings for the backend application.
- `Program.cs`: This file contains the entry point of the backend application. It sets up the web host and configures the startup class.
- `Startup.cs`: This file contains the startup class for the backend application. It configures services and middleware.
- `my-dotnet-app.csproj`: This file is the project file for the backend application.

## Frontend

The frontend folder contains the following files:

- `src/app.ts`: This file is the entry point of the TypeScript frontend application. It sets up the necessary configurations and imports the `SampleComponent` from the `components` folder.
- `src/components/SampleComponent.tsx`: This file exports the `SampleComponent` class, which represents a sample component for the frontend application.
- `src/styles/main.css`: This file contains the main CSS styles for the frontend application.
- `src/types/index.ts`: This file exports the necessary TypeScript types and interfaces used in the frontend application.
- `package.json`: This file is the configuration file for npm. It lists the dependencies and scripts for the frontend application.
- `tsconfig.json`: This file is the configuration file for TypeScript. It specifies the compiler options and the files to include in the compilation.
- `webpack.config.js`: This file is the configuration file for webpack, which is used to bundle the frontend application.

## Other

- `README.md`: This file contains the documentation for the project.
```

