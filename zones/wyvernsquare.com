$TTL 3600
@ 		IN	SOA	dns1.wyvernsquare.com. helpdesk.wyvernsquare.com. (
			2017040501	; serial
			300		; refresh
			300		; retry
			1209600		; expire
			300 )		; minimum
		IN	NS	dns1.wyvernsquare.com.
		IN      NS      ns1.wyvernsquare.com.
		IN	NS	ns2.wyvernsquare.com.
		IN	A	133.130.102.210
                IN      MX      10 MX.ZOHO.COM.
                IN      MX      20 MX2.ZOHO.COM.
$ORIGIN wyvernsquare.com.

;name servers
dns1     172800    IN      A       133.130.102.210
ns1     172800    IN      A       62.75.203.70
ns2     172800    IN      A       133.130.102.210

;www redirect
www IN CNAME wyvernsquare.com

;office 365
lyncdiscover IN CNAME webdir.online.lync.com.
msoid IN CNAME clientconfig.microsoftonline-p.net.
sip IN CNAME sipdir.online.lync.com.

;test purposes
test	IN	A   216.58.221.164
