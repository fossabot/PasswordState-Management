---
external help file: passwordstate-management-help.xml
Module Name: passwordstate-management
online version:
schema: 2.0.0
---

# Find-PasswordStatePassword

## SYNOPSIS
Finds a password state entry and returns the object.
If multiple matches it will return multiple entries.

## SYNTAX

### General (Default)
```
Find-PasswordStatePassword [-Search] <String> [[-Reason] <String>] [<CommonParameters>]
```

### PasswordID
```
Find-PasswordStatePassword [-PasswordID] <Int32> [[-Reason] <String>] [<CommonParameters>]
```

### Specific
```
Find-PasswordStatePassword [[-Title] <String>] [[-UserName] <String>] [[-HostName] <String>]
 [[-Domain] <String>] [[-AccountType] <String>] [[-Description] <String>] [[-Notes] <String>] [[-URL] <String>]
 [[-SiteID] <String>] [[-SiteLocation] <String>] [[-GenericField1] <String>] [[-GenericField2] <String>]
 [[-GenericField3] <String>] [[-GenericField4] <String>] [[-GenericField5] <String>]
 [[-GenericField6] <String>] [[-GenericField7] <String>] [[-GenericField8] <String>]
 [[-GenericField9] <String>] [[-GenericField10] <String>] [[-Reason] <String>] [<CommonParameters>]
```

## DESCRIPTION
Finds a password state entry and returns the object.
If multiple matches it will return multiple entries.

## EXAMPLES

### EXAMPLE 1
```
Find-PasswordStatePassword -title "testuser"
```

Returns the test user object including password.

## PARAMETERS

### -Search
A string value which will be matched with most fields in the database table.

```yaml
Type: String
Parameter Sets: General
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -PasswordID
An ID of a specific password resource to return.

```yaml
Type: Int32
Parameter Sets: PasswordID
Aliases:

Required: True
Position: 1
Default value: 0
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Title
A string value which should match the passwordstate entry exactly(Not case sensitive)

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserName
An optional parameter to filter searches to those with a certain username as multiple titles may have the same value.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -HostName
An optional parameter to filter the search on hostname.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Domain
An optional parameter to filter the search on domain.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AccountType
An optional parameter to filter the search on account type.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Description
An optional parameter to filter the search on description.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Notes
An optional parameter to filter the search on notes.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -URL
An optional parameter to filter the search on the URL.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SiteID
An optional parameter to filter the search on the site ID.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SiteLocation
An optional parameter to filter the search on the site location.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GenericField1
An optional parameter to filter the search on a generic field.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GenericField2
An optional parameter to filter the search on a generic field.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GenericField3
An optional parameter to filter the search on a generic field.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GenericField4
An optional parameter to filter the search on a generic field.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GenericField5
An optional parameter to filter the search on a generic field.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GenericField6
An optional parameter to filter the search on a generic field.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GenericField7
An optional parameter to filter the search on a generic field.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 17
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GenericField8
An optional parameter to filter the search on a generic field.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 18
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GenericField9
An optional parameter to filter the search on a generic field.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 19
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GenericField10
An optional parameter to filter the search on a generic field.

```yaml
Type: String
Parameter Sets: Specific
Aliases:

Required: False
Position: 20
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Reason
A reason which can be logged for auditing of why a password was retrieved.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 21
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Title - The title of the entry (string)
### Username - The username you need the password for. If multiple entries have the same name this is useful to get the one you want only. (String)(Optional)
## OUTPUTS

### Returns the Object from the API as a powershell object.
## NOTES
Daryl Newsholme 2018

## RELATED LINKS
