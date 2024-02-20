# web-kp
Store secrets securely on Github using kpcli utility
<br/>

#### Install kpcli
```
sudo apt-get update
sudo apt-get install kpcli libterm-readline-gnu-perl libdata-password-perl
```
<br/>

#### Start a kpcli interactive session
`kpcli`

<br/>

#### List available functions within the session
`help`

<br/>

#### Open the KeePass encrypted db called tryout.kdbx using keys in tryout.keyx
`open tryout.kdbx tryout.keyx`

<br/>

#### Create a new KeePass encrypted db
`saveas tryout.kdbx tryout.keyx`

<br/>

#### Save the contents of the keyfile into a codespace secret for future reference and use
`cat tryout.keyx`
<br/>
Then select and copy the keys and put into the codespace secret

<br/>

#### Next time you want to use the saved keys in codespace secret
`echo ${KP_KEYFILE} > temp.keyx && truncate -s -1 temp.keyx`
<br/>
NB: the truncate is usually needed to remove the newline character that gets added when the codespace secret is created

<br/>

#### Now open the keepass db using the temp.keyx created above
##### Start a kpcli session
`kpcli`
##### Open the encrypted db using the key file
`open tryout.kdbx temp.keyx`
