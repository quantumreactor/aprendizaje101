# Proyecto

[aprendizaje101](https://aprendizaje101)

## Instalacion

### Clonar repositorio

```shell
git clone git@github.com:juliendargelos/project.git
cd project
```

### Check your Ruby version

```shell
ruby -v
```

Debe mostrar algo como `ruby 2.6.6`

Si no, instale la version correcta de ruby usando [rbenv](https://github.com/rbenv/rbenv) (podria tardar algo):

```shell
rbenv install 2.6.6
```

### Instalar dependencias

Use [Bundler](https://github.com/bundler/bundler) y tambien [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

### Initialice la base de datos

```shell
rails db:create db:migrate db:seed
```

### Agregue remotos de heroku

Usando [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli):

```shell
heroku git:remote -a aprendizaje101
heroku git:remote --remote heroku-staging -a aprendizaje101-staging
```

## Sirva

```shell
rails s
```

## Deploye

### con el pipeline de Heroku pipeline (recomendado)

Pushee al Heroku staging remoto:

```shell
git push heroku-staging
```

Vaya al dashboard Heroku y [promueva la app a prduccion](https://devcenter.heroku.com/articles/pipelines) o use Heroku en la terminal:

```shell
heroku pipelines:promote -a project-staging
```

### Directly to production (not recommended)

Push to Heroku production remote:

```shell
git push heroku
```

