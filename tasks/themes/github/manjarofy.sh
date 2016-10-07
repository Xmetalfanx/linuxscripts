#Title : Manjaro Theme and Icon Installer
#Description : This script installs the MANY of the common themes/icons/cursors found (or use to be found) in Manjaro
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-06
#Version: v0.5
#Usage 	: bash manjarofy.sh

rootdir=$basedir

postInstallsDir="$rootdir"/postInstalls
commonFunctions= . $rootdir/tasks/f_common.cfg
$commonFunctions

manjaroScripts= . $rootdir/tasks/themes/github/functions/gitManjaro.cfg
$manjaroScripts


###################################################

echo "Xmetal's Manjaro-afication Script\n"

vertex-maia-icon-themes
MaiaCursor
VertexTheme

ArtworkMaiaThemes
VertexMaiaIconPack
numixManjaroTheme
numixRebornTheme

maiaCursor
vertexManjaroTheme
MaiaGTKTheme
