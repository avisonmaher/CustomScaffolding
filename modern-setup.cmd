dotnet new webapi -n TestWebApi -o TestWebApi
dotnet new mvc -n TestWebApp -o TestWebApp
dotnet new classlib -n TestFactory -o TestFactory
dotnet new sln -n TestApp
dotnet sln TestApp.sln add TestWebApi/TestWebApi.csproj
dotnet sln TestApp.sln add TestWebApp/TestWebApp.csproj
dotnet sln TestApp.sln add TestFactory/TestFactory.csproj
dotnet add TestWebApi/TestWebApi.csproj reference TestFactory/TestFactory.csproj
dotnet add TestWebApi/TestWebApi.csproj package Microsoft.EntityFrameworkCore
dotnet restore
dotnet build
cd TestWebApi
dotnet tool install --global dotnet-aspnet-codegenerator