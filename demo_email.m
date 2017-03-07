mail = 'xxx@gmail.com'; %change
psswd = 'xxxxx'; %change
host = 'smtp.gmail.com';
port  = '587';  % I find 465 port does not work for me. 
emailto = 'xxx@gmail.com';%change
m_subject = 'subject';
m_text = 'test';
setpref( 'Internet','E_mail', mail );
setpref( 'Internet', 'SMTP_Server', host );
setpref( 'Internet', 'SMTP_Username', mail );
setpref( 'Internet', 'SMTP_Password', psswd );
props = java.lang.System.getProperties;
props.setProperty( 'mail.smtp.user', mail );
props.setProperty( 'mail.smtp.host', host );
props.setProperty( 'mail.smtp.port', port );
props.setProperty( 'mail.smtp.starttls.enable', 'true' );
props.setProperty( 'mail.smtp.debug', 'true' );
props.setProperty( 'mail.smtp.auth', 'true' );
props.setProperty( 'mail.smtp.socketFactory.port', port );
props.setProperty( 'mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory' );
props.setProperty( 'mail.smtp.socketFactory.fallback', 'false' );
props.remove( 'mail.smtp.socketFactory.class' );

sendmail( emailto , 'Hello from MATLAB', 'Hello from MATLAB' );