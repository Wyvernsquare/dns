$TTL 3600
@ 		IN	SOA	dns1.wyvernsquare.com. helpdesk.wyvernsquare.com. (
			2017040404	; serial
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
ns1     172800    IN      A       62.75.203.70
ns2     172800    IN      A       133.130.102.210
test	IN	A   216.58.221.164
www IN CNAME wyvernsquare.com
lyncdiscover IN CNAME webdir.online.lync.com.
msoid IN CNAME clientconfig.microsoftonline-p.net.
sip IN CNAME sipdir.online.lync.com.
zb14593215 IN CNAME zmverify.zoho.com.
zoho._domainkey IN TXT "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCbNLlmBn+kB0VZB1wDMtrLt/XSmHsce2GaP7a6OVaNj6WX6/ONFcR41BDDs6EM15oCx0rDzEODMmmjaE9SLV2b3XFoYnXEc6fY8JZbgUTI3mKkr+jfNmR0XB14Z+1zoEFpGcKD5BDzK05BSkL4WpayDRTi3vmfNgFjabr0sS+FnwIDAQAB"
dkey._domainkey IN TXT "k=rsa; t=y; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCQgbrAQByq0wcsRrxpP5y4Ukv/4BFh8TzOh5sV7w9zIYGJZdPUJeXmeXvlkE6zO/o4e2yEec4XtF5DQwgsvt7cwq/b0EsT+HIS2x2FQ32sEWPBLBdQI+mbBle8mySRQCPdH/YgoWD/T7j4XoeOkiF4KISJ8hHmO6wbVotkDQ3sXwIDAQAB"
_dmarc IN TXT "v=DMARC1; p=none; sp=none; rua=mailto:helpdesk@wyvernsquare.com; rf=afrf; pct=100; ri=86400"
