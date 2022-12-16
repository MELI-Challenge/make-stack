# Users manager
clone-users-manager:
	cd repos && git clone git@github.com:MELI-Challenge/users-manager.git
build-users-manager-image:
	cd repos/users-manager && docker build --no-cache -t users-manager:latest .
create-users-manager-image: clone-users-manager build-users-manager-image

# Shipments manager
clone-shipments-manager:
	cd repos && git clone git@github.com:MELI-Challenge/shipments-manager.git
build-shipments-manager-image:
	cd repos/shipments-manager && docker build --no-cache -t shipments-manager:latest .
create-shipments-manager-image: clone-shipments-manager build-shipments-manager-image

# Restrictions manager
clone-restrictions-manager:
	cd repos && git clone git@github.com:MELI-Challenge/restrictions-manager.git
build-restrictions-manager-image:
	cd repos/restrictions-manager && docker build --no-cache -t restrictions-manager:latest .
create-restrictions-manager-image: clone-restrictions-manager build-restrictions-manager-image

# Purchases manager
clone-purchases-manager:
	cd repos && git clone git@github.com:MELI-Challenge/purchases-manager.git
build-purchases-manager-image:
	cd repos/purchases-manager && docker build --no-cache -t purchases-manager:latest .
create-purchases-manager-image: clone-purchases-manager build-purchases-manager-image

# Payments manager
clone-payments-manager:
	cd repos && git clone git@github.com:MELI-Challenge/payments-manager.git
build-payments-manager-image:
	cd repos/payments-manager && docker build --no-cache -t payments-manager:latest .
create-payments-manager-image: clone-payments-manager build-payments-manager-image

# Levels manager
clone-levels-manager:
	cd repos && git clone git@github.com:MELI-Challenge/levels-manager.git
build-levels-manager-image:
	cd repos/levels-manager && docker build --no-cache -t levels-manager:latest .
create-levels-manager-image: clone-levels-manager build-levels-manager-image

# APP
clone-app:
	cd repos && git clone git@github.com:MELI-Challenge/app.git
build-app-image:
	cd repos/app && docker build --no-cache -t ml-app:latest .
create-app-image: clone-app build-app-image


# Stack up!
stack-up:
	cd docker-compose && docker compose -p 'meli-challenge' up -d

# Deploy it!
deploy: create-app-image create-users-manager-image create-shipments-manager-image create-restrictions-manager-image create-purchases-manager-image create-payments-manager-image create-levels-manager-image stack-up
