# Rastreamento de Acesso

## Environment
This app was build with Ruby 2.4.2 and Rails 5.1.4.

## Install
* Install dependencies:
```console
$ bundle install
```
* Create and generate database migrations:
```console
$ rake db:create
$ rake db:migrate
```
* Start the api
```console
$ rails s
```
## API endpoints
* Base "acessos" path:
https://vast-hamlet-73400.herokuapp.com/acessos

* Base "contatos path":
https://vast-hamlet-73400.herokuapp.com/contatos

## Example Site

The code for the example site is inside folder 'site'
```
- site
  |- js
    |- access_crawler.js
  |- css
    |- bootstrap.css
    |- bootstrap.min.css
  |- index.html
  |- price.html
  |- contact.html
```