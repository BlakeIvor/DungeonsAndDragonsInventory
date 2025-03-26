# DungeonsAndDragonsInventory
 Local webapp for keeping track of inventory items in dungeons and dragons
 Originally created as part of Database Management & Systems design by Blake Shea, Klee Baumhover, Matt Cooney, and Ben R-G. This branch has been expanded on and maintained by Blake Shea.

 ![Inventory Page](./image_refs/DandDInventory.png)

 # Running the Project

## Create .env
1. Copy `.env.example` to `.env`
2. Edit `.env`, changing:
  - The text `RANDOM_PASSWORD` to a password which is actually random
  - The text `SOMETHING_LONG_AND_RANDOM` to random text.

 ## Start the Docker Services

Run:
```
docker compose up
```

 ## Run Migrations

```
docker compose exec django python manage.py migrate
```

#### Load Equipment

To load the equipment data from existing dump files, use the following commands.

```
> docker compose exec postgres bash
# psql --username="$POSTGRES_USER" --dbname="$POSTGRES_DB" --set ON_ERROR_STOP=on --file postgres_files/equipment.sql
# psql --username="$POSTGRES_USER" --dbname="$POSTGRES_DB" --set ON_ERROR_STOP=on --file postgres_files/equipment_property.sql
# psql --username="$POSTGRES_USER" --dbname="$POSTGRES_DB" --set ON_ERROR_STOP=on --file postgres_files/weapon.sql
```

## Load the Application

Load <http://localhost:8080> and you will be directed to the home page. 

### Signup and Login
First create a user using the signup page.

Login, and you will be able to access the user page where you can create a character. The user page lists all of your characters with their corresponding links.

### Character Creation
Once you create a character, you will be redirected to the new character's page.

First add an inventory named "Inventory"

Finally add items based on preexisting ones, or add custom items. Example existing item to search: "Potion of Healing"

Items can be removed individually, as can entire inventories.

NOTE: There may be issues with line endings in setup_and_start.sh depending on the environment settings of your IDE. If the application does not run, please change the line ending configuration in setup_and_start.sh to your LF.
