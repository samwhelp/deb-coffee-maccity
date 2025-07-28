pkgname="bean-appearance-bigsur-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="BigSur Icon Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/yeyushengfan258/BigSur-icon-theme/archive/refs/heads/master.tar.gz")
url="https://github.com/samwhelp/deb-coffee-maccity/tree/main/packages/bean-appearance-bigsur-icon-theme"
depends=()
pacdeps=()
replace=()




package () {

	echo
	echo "##"
	echo "## ## Call package"
	echo "##"
	echo

	#pwd

	#echo
	#echo cd "${_archive}"
	#cd "${_archive}"

	echo
	echo cd "BigSur-icon-theme-master"
	cd "BigSur-icon-theme-master"

	local icons_dir_path="${pkgdir}/usr/share/icons"


	echo
	echo mkdir -p "${icons_dir_path}"
	mkdir -p "${icons_dir_path}"


	echo
	echo ./install.sh -t all -d "${icons_dir_path}"
	./install.sh -t all -d "${icons_dir_path}"


	echo
	echo cd "${OLDPWD}"
	cd "${OLDPWD}"
	echo




	echo
	echo "##"
	echo "## ## Done"
	echo "##"
	echo


	return 0
}
