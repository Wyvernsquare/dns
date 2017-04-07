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
                IN      AAAA    fe80::1:85ff:fe82:66d2
                IN      MX      10 MX.ZOHO.COM.
                IN      MX      20 MX2.ZOHO.COM.
                IN      TXT     "MS=ms47698118"
                IN      TXT     "v=spf1 include:zoho.com ~all"

;name servers
dns1     172800    IN      A       133.130.102.210
ns1     172800    IN      A       133.130.102.210
ns2     172800    IN      A       8.8.8.8

;www redirect
www IN A 133.130.102.210

; A records for services
vpn1 IN A 133.130.102.210

;CNAME Records
; office 365
lyncdiscover IN CNAME webdir.online.lync.com.
msoid IN CNAME clientconfig.microsoftonline-p.net.
sip IN CNAME sipdir.online.lync.com.
enterpriseenrollment IN CNAME enterpriseenrollment.manage.microsoft.com.
enterpriseregistration IN CNAME enterpriseregistration.windows.net.
lyncdiscover IN CNAME webdir.online.lync.com.
; others
zb14593215 IN CNAME zmverify.zoho.com.

; SRV Records
;FORMAT: name IN SRV priority weight port target
;_xmpp-client._tcp      IN      SRV     10      0       5222    jabber
_sip._tls IN SRV 1 100 443 sipdir.online.lync.com
_sipfederationtls._tcp IN SRV 1 100 5061 sipfed.online.lync.com

;test purposes
test	IN	A   216.58.221.164

;INCLUDE private records
$INCLUDE /home/named/zones/wyvernsquare.com-private

$ORIGIN internal.wyvernsquare.com.
@ IN     A       52.192.214.252

; dc1.internal
dc1 IN A 52.192.214.252

