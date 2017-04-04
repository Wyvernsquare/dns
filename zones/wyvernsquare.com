$TTL 3600
@ 		IN	SOA	dns1.wyvernsquare.com. helpdesk.wyvernsquare.com. (
			2017040402	; serial
			300		; refresh
			300		; retry
			1209600		; expire
			300 )		; minimum
		IN	NS	dns1.wyvernsquare.com.
		IN	NS	ns2.wyvernsquare.com.
		IN	A	133.130.102.210
                IN      MX      10 MX.ZOHO.COM.
                IN      MX      20 MX2.ZOHO.COM.
                IN      TXT     "v=spf1 include:zoho.com ~all"
                IN      TXT     "MS=ms47698118"
$ORIGIN wyvernsquare.com.
dns1     172800    IN      A       133.130.102.210
ns2     172800    IN      A       133.130.102.210
www	IN	A   133.130.102.210
test	IN	A   216.58.197.14
test    IN      CNAME   google.com.
salesforce        IN      CNAME   wyvernsquare-dev-ed.my.salesforce.com.
