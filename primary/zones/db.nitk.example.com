$TTL	604800
@	IN	SOA	machine1.nitk.example.com. admin.nitk.example.com. (
			      7		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
; name servers - NS records
     IN      NS		machine1.nitk.example.com.
     IN	     NS		machine2.nitk.example.com.

; name servers - A records
machine1.nitk.example.com.		IN	A	192.168.56.2
machine2.nitk.example.com.		IN	A	192.168.56.3

; 192.168.56.0/21 - A records
machine3.nitk.example.com.	IN	A	192.168.56.10
machine4.nitk.example.com.	IN	A	192.168.56.11
