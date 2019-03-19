FROM microsoft/dotnet:2.1-sdk as build
WORKDIR /app
COPY src .
RUN dotnet restore
RUN dotnet publish -c Release -o out

FROM microsoft/dotnet:2.1-runtime
WORKDIR /app
COPY --from=build /app/Sample.LongLived.ConsoleApp/out .
ENTRYPOINT [ "dotnet", "Sample.LongLived.ConsoleApp.dll" ]