# PasswordState Management

![PasswordState Logo](https://www.clickstudios.com.au/assets/images/Feature-Block2.png)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fdnewsholme%2FPasswordState-Management.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fdnewsholme%2FPasswordState-Management?ref=badge_shield)

## Introduction

Contains various functions for the management of passwordstate via powershell.

## Requirements

| Requirement   | Version |
|---------------|---------|
| passwordstate | 8.0+    |
| Powershell    | 4.0+    |

## IMPORTANT NOTE

As of version 0.94 Passwords are no longer output in plaintext by default and kept as secure strings instead. Passwords can be obtained by calling the .GetPassword() Method on the result which will decrypt the secure string.
eg.

```powershell
    Find-PasswordStatePassword
```

This will return:

    PasswordID  : 1
    Title       : test
    Username    : test
    Password    : EncryptedPassword
    Description :
    Domain      :

```powershell
    (Find-PasswordStatePassword test).GetPassword()
```

This will return the actual password as a string.

    Password.1

To maintain backward compatability with scripts that have already been created you can force passwords to always output as plaintext for the duration of your powershell session by setting the following global variable `$global:PasswordStateShowPasswordsPlainText` to `$true`.

If you would like to set it forever then add the following to your powershell profile.

```powershell
$global:PasswordStateShowPasswordsPlainText = $true
```

## How to use

First you will need to setup the environment for PasswordState. This prevents you having to enter the api key all the time as it's stored in an encrypted format. Or you can use Windows authentication using the currently logged on user.

### For API Key

```powershell
    Set-PasswordStateEnvironment  -baseuri "https://passwordstatserver.co.uk" -apikey "dsiwjdi9e0377dw84w45dsw5sw"
```

### For Windows Auth With Pass Through Authentication

```powershell
    Set-PasswordStateEnvironment  -baseuri "https://passwordstateserver.co.uk" -WindowsAuthOnly
```

### For Windows Auth With Custom Credentials

```powershell
    Set-PasswordStateEnvironment  -baseuri "https://passwordstateserver.co.uk" -customcredentials $(Get-Credential)
```

This will save a file called `passwordstate.json` under the users profile folder.

Once the environment has been set up it can be used by other functions.

#### Retrieve a Password

Find and existing password entry and retrieve the password.

```powershell
    Find-PasswordStatePassword -Title "testpassword"
```

Or optionally include the username as well.

```powershell
    Find-PasswordStatePassword -Title "testpassword" -username "someuser"
```

#### Update a password

Update an existing entry with a new password

```powershell
    Update-PasswordStatePassword -Title "testpassword" -PasswordListID 1 -PasswordID 3 -Password "CorrectHorseStapleBattery"
```

Or pipe in the result from finding one.

```powershell
    Find-PasswordStatePassword -Title "testpassword" | Update-PasswordStatePassword -password "CorrectHorseStapleBattery"
```

#### Create a New Password Entry

Create a new password entry.

```powershell
    New-PasswordStatePassword -Title "testpassword" -PasswordListID 1 -username "newuser" -Password "CorrectHorseStapleBattery" -notes "development website" -url "http://somegoodwebsite.com"
```

Create a new entry to a PasswordList if you know the name of the list.

```powershell
    Get-PasswordStateList | ? {$_.PasswordList -eq "passwordlistname"} | New-PasswordStatePassword -Title "testpassword" -username "newuser" -Password "CorrectHorseStapleBattery" -notes "development website" -url "http://somegoodwebsite.com"
```

#### Get All Password Lists

Useful to return the `listID` for use in other commands such as creating a new entry.

**NOTE: due to an api limitation when using APIKeys only the system key can return lists** This is not an issue using Windows Authentication.

```powershell
    Get-PasswordStateList
```

#### Deleting a password entry

Deletes an existing password entry.

```powershell
    Remove-PasswordStatePassword -passwordID 5 -SendToRecycleBin
```

Or find the password and pipe it acrosss to remove.

```powershell
   Find-PasswordStatePassword -title "testuser" | Remove-PasswordStatePassword -SendToRecycleBin
```

##### Additional Info

Functions all contain Pester tests ensuring that the code works.

Full documentation under `.\docs`

## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fdnewsholme%2FPasswordState-Management.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fdnewsholme%2FPasswordState-Management?ref=badge_large)