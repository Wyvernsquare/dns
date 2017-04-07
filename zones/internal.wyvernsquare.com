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
		IN	A	52.197.98.218
    IN      AAAA    fe80::4ca5:4369:945a:13fa

; dc1.internal
dc1 IN A 52.197.98.218
