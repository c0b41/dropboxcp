# SYNOPSIS
#   dropboxcp [options]
#
# USAGE
#   Options
#   $1 src directory
#   $2 dest directory
#
#  example dropboxcp ~/Resimler Resimdump

function dropboxcp
  if type -t rsync > /dev/null
    eval rsync -rv --exclude=.git --exclude=node_modules $argv[1] ~/Dropbox/$argv[2]
  else
  	echo "📂  Please install rsync first!"
  end
end
