$TTL 3600
@ 		IN	SOA	dns1.wyvernsquare.com. helpdesk.wyvernsquare.com. (
			2017040401	; serial
			300		; refresh
			300		; retry
			1209600		; expire
			300 )		; minimum
		IN	NS	dns1.wyvernsquare.com.
		IN	NS	ns2.wyvernsquare.com.
		IN	A	61.160.235.206
                IN      MX      10 ASPMX.L.GOOGLE.COM.
                IN      MX      20 ALT1.ASPMX.L.GOOGLE.COM.
                IN      MX      20 ALT2.ASPMX.L.GOOGLE.COM.
$ORIGIN wyvernsquare.com.
dns1     172800    IN      A       133.130.102.210
ns2     172800    IN      A       133.130.102.210
www	IN	A   133.130.102.210
test	IN	A   216.58.197.14
*	IN	CNAME   wyvernsquare.com.
