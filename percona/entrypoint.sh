#!/bin/bash
set -e

if [ "$1" = 'mysqld_safe' ]; then
	DATADIR="$("$@" --verbose --help 2>/dev/null | awk '$1 == "datadir" { print $2; exit }')"

	if [ ! -d "$DATADIR/mysql" ]; then
		mysql_install_db --datadir="$DATADIR"
			
		mysqlInitFile='/docker/mysql-init-file.sql'
		cat > "$mysqlInitFile" <<-EOF
			GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
		EOF
		
		if [ "$DB" ]; then
			echo "CREATE DATABASE IF NOT EXISTS \`$DB\` ;" >> "$mysqlInitFile"
		fi

		set -- "$@" --init-file="$mysqlInitFile"
	fi

	chown -R mysql:mysql "$DATADIR"
fi

exec "$@"