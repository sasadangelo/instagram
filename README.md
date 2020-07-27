# Get statistics from your Instagram account

The following project contains a set of script I use to monitor my Instagram account.

## Credentials file

All the scripts use the credentials.sh file that contains information about the profile to monitor.

## Create Instagram application

TODO

## Get code

The first step is to get the CODE required to get the ACCESS TOKEN. Run the following command:

```
./get_code.sh
```

it will print an URL you have to insert into the address bar of your browser. The browser will redirect to the URL specified in the credentials.sh file with the CODE attached. Remove the "#\_" characters from the code and copy it in the credentials.sh CODE field.

```
CODE="AQDa-oNW_6 ..."
```

## Get the Access Token

The second step is to get the ACCESS TOKEN. Run the following command:

```
./get_access_token.sh
```

it will print a JSON file with the ACCESS TOKEN. Copy it in the credentials.sh ACCESS_TOKEN field.

```
ACCESS_TOKEN="IGQVJWOHVN ..."
```
