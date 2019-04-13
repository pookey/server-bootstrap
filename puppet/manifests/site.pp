Class { 'os_hardening': }
Class { 'ssh_hardening': }

class { 'sudo': }
sudo::conf { 'admins':
  priority => 10,
  content  => '%admins ALL=(ALL) NOPASSWD: ALL',
}


user { 'pookey':
   ensure           => 'present',
   home             => '/home/pookey',
   managehome       => true,
   groups           => ['admin'],
}

ssh_authorized_key { 'pookey@pookey.co.uk':
  ensure => present,
  user   => 'pookey',
  type   => 'ssh-rsa',
  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDN/HLkFM2y/dWF5LInXcoTM/dm+4zZxjuvP/SPbENNgM8cFRlm6opbRrjZdbQKflpVcucVDaj0AX/PaOGQWV6qWOUbP+f1Ki1T/VpzE8hV8LuguUXzm/5Grg+GyYeXb06M7dabBGVopbh1Ifi5AOx6n2K6QoShWbuUdIzoEvDS35GhQb6W/MrdYonS8dp///WZyFNGHLzCfZ1MDsxxAx3wXc/pSTkx8Klofb4fdOxPOSQVxnngz1lRSGAq/owSzORThUFdTZQWimQdWadKLz6dGE9uXQgZFAk3bMMEx8/ZRKyXwifSxyqcc+85lGPdiQRHXLUx/t0JY/KRtGVLEgwKjFG3EVDUh9WHVqsDIPYPm6uu6tiFgEVlmg5q54EsK82C2CaVdawgmcQEaLCmq01VtNG91pKHNWWFAv2npRtXcAydrvs4bhLIHYnKokBR/LnQxJUtqNd2xcnw3Un5K742qaf58YvEvFLJawGgicJtznKkHWze+vRhK+nt1oWNcT/hxu9QUs7uwDf3yvTQ79kTleppkvUsHpUeHxL1lqCzTQByt/Urzgn+RDDVi1DqCoGOYJy+0r3sESuaElbQJz6zvm+Rz0Ieq54sDyGcmyVQTKajZ+IDif8NE3bN7sTVoAwj6dMl79oM7EvBTRQr7xKvLjNmhZeYyPAq8a95EFqgSw==',
}
