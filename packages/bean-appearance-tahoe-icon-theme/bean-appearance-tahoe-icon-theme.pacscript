pkgname="bean-appearance-tahoe-icon-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Tahoe Icon Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/vinceliuice/MacTahoe-icon-theme/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee-maccity/tree/main/packages/bean-appearance-tahoe-icon-theme"
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
	echo cd "MacTahoe-icon-theme-main"
	cd "MacTahoe-icon-theme-main"

	local themes_dir_path="${pkgdir}/usr/share/themes"


	echo
	echo mkdir -p "${themes_dir_path}"
	mkdir -p "${themes_dir_path}"


	echo
	echo ./install.sh -t all -d "${themes_dir_path}"
	./install.sh -t all -d "${themes_dir_path}"


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
