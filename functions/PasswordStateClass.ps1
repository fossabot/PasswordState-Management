﻿[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingConvertToSecureStringWithPlainText', '', Justification = 'Script is converting to secure string.')]
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingPlainTextForPassword', '', Justification = 'Script is converting to secure string.')]
# Create Class
Class EncryptedPassword {
    EncryptedPassword ($Password) {
        $this.Password = ConvertTo-SecureString -String $Password -AsPlainText -Force
    }
   [SecureString]$Password
}
class PasswordResult {
    # Properties
    [int]$PasswordID
    [String]$Title
    [String]$Username
    $Password
    [String]GetPassword() {
        If ($this.Password.GetType().Name -ne 'String') {
            $SecureString = $this.Password.Password
            $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecureString)
            return [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
        } Else {
            return $this.Password
        }
    }
    DecryptPassword(){
        If ($this.Password.GetType().Name -ne 'String') {
            $SecureString = $this.Password.Password
            $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecureString)
            $this.Password = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
        }
    }
    [String]$Description
    [String]$Domain
    # Hidden Properties
    hidden [String]$hostname
    hidden [String]$GenericField1
    hidden [String]$GenericField2
    hidden [String]$GenericField3
    hidden [String]$GenericField4
    hidden [String]$GenericField5
    hidden [String]$GenericField6
    hidden [String]$GenericField7
    hidden [String]$GenericField8
    hidden [String]$GenericField9
    hidden [String]$GenericField10
    hidden [int]$AccountTypeID
    hidden [string]$notes
    hidden [string]$URL
    hidden [string]$ExpiryDate
    hidden [string]$allowExport
    hidden [string]$accounttype


}
class PasswordHistory : PasswordResult {
    $DateChanged
    [String]$USERID
    [String]$FirstName
    [String]$Surname
    [int32]$PasswordHistoryID
    [String]$PasswordList
    [String]GetPassword() {
        If ($this.Password.GetType().Name -ne 'String') {
            $SecureString = $this.Password.Password
            $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecureString)
            return [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
        } Else {
            return $this.Password
        }
    }
    DecryptPassword(){
        If ($this.Password.GetType().Name -ne 'String') {
            $SecureString = $this.Password.Password
            $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecureString)
            $this.Password = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
        }
    }
}