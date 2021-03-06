#!/bin/bash
set -e

if [ "$1" = 'mysqld' ]; then
	DATADIR="$("$@" --verbose --help 2>/dev/null | awk '$1 == "datadir" { print $2; exit }')"

	if [ ! -d "$DATADIR/mysql" ]; then
		mysql_install_db --datadir="$DATADIR"
		mysqlInitFile="/$DOCKER_DIR/mysql-init-file.sql"
		
		if [ ! -f "$mysqlInitFile" ]; then
			cat > "$mysqlInitFile" <<-EOF
				GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
			EOF
			
			if [ "$MYSQL_DATABASE" ]; then
				echo "CREATE DATABASE IF NOT EXISTS \`$MYSQL_DATABASE\` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;" >> "$mysqlInitFile"
			fi
		fi
		set -- "$@" --init-file="$mysqlInitFile"
	fi

	chown -R mysql:mysql "$DATADIR"
fi

exec "$@"