# web-kp
Store secrets securely on Github using kpcli utility
<br/>

#### Install kpcli
```
sudo apt update
sudo apt install kpcli libterm-readline-gnu-perl libdata-password-perl
```
<br/>

#### Start a kpcli interactive session
`kpcli`

<br/>

#### List available functions within the session
`help`

<br/>

#### Open the KeePass encrypted db called tryout.kdbx using keys in /tmp/.keyx
`open tryout.kdbx /tmp/.keyx`

<br/>

#### Create a new KeePass encrypted db
`saveas tryout.kdbx /tmp/.keyx`

<br/>

#### Save the contents of the keyfile into a codespace secret for future reference and use
`cat /tmp/.keyx`
<br/>
Then select and copy the keys and put into the codespace secret called KP_KEYFILE

<br/>

#### Next time you want to use the saved keys in codespace secret
`echo ${KP_KEYFILE} > /tmp/.keyx && truncate -s -1 /tmp/.keyx`
<br/>
NB: the truncate is usually needed to remove the newline character that gets added when the codespace secret is created

<br/>

#### Now open the keepass db using the /tmp/.keyx created above
##### Start a kpcli session
`kpcli`
##### Open the encrypted db using the key file
`open tryout.kdbx /tmp/.keyx`

<br/>

#### To find how to update the stored secrets etc use the help within the session
`help`

<br/>

#### When done close the session 
type `exit` within the kpcli session

<br/>

#### Finally stop and exit the codespace
`gh codespace stop`
<br/>
**Note:** this is important for two reasons<br/>
a) Use of codespace beyond a certain threshold is chargeable. Shutting down stops unnecessary charges</br>
b) On exit the /tmp folder is cleaned up. This is important as the key file is created there if the above commands are followed<br/>
