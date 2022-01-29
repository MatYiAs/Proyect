fx_version 'bodacious'
game 'gta5'

name 'Sistema de anuncios para esx'
version 'v1'

ui_page {
    'html/ui.html',
}

files {
	'html/*.html',
	'html/js/*.js', 
	'html/css/*.css',
	'html/imagenes/*.png'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua',
	'@mysql-async/lib/MySQL.lua'
}

exports {
	'SendAlert',
}

dependencies {
	'es_extended',
}
