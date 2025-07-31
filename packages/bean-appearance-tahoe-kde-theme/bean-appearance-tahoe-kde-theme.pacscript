pkgname="bean-appearance-tahoe-kde-theme"
gives="${pkgname}"
arch=("all")
pkgver="0.1.1"
pkgdesc="Tahoe Kde Theme"
maintainer="develop <develop@home.heaven>"
source=("https://github.com/vinceliuice/MacTahoe-kde/archive/refs/heads/main.tar.gz")
url="https://github.com/samwhelp/deb-coffee-maccity/tree/main/packages/bean-appearance-tahoe-kde-theme"
depends=()
pacdeps=()
replace=()




util_copy_from_srcfile_to_desfile () {

	local src_file_path="${1}"
	local des_file_path="${2}"


	echo
	echo cp -f "${src_file_path}" "${des_file_path}"
	cp -f "${src_file_path}" "${des_file_path}"


	echo

	return 0

}


util_copy_from_srcdir_to_desdir () {

	local src_dir_path="${1}"
	local des_dir_path="${2}"


	echo
	echo mkdir -p "${src_dir_path}"
	mkdir -p "${src_dir_path}"


	echo
	echo mkdir -p "${des_dir_path}"
	mkdir -p "${des_dir_path}"


	echo
	echo cp -rfT "${src_dir_path}" "${des_dir_path}"
	cp -rfT "${src_dir_path}" "${des_dir_path}"


	echo

	return 0

}


sys_theme_install_aurorae_theme_each () {

	local src_dir_path="${prjdir}/aurorae"
	local des_dir_path="${pkgdir}/usr/share/aurorae/themes"

	local the_main_name="MacTahoe"
	local the_brightness="${1}"
	local the_theme_name="${the_main_name}-${the_brightness}"



	util_copy_from_srcdir_to_desdir "${src_dir_path}/${the_theme_name}" "${des_dir_path}/${the_theme_name}"


	util_copy_from_srcdir_to_desdir "${src_dir_path}/icons-${the_brightness}" "${des_dir_path}/${the_theme_name}"


	util_copy_from_srcfile_to_desfile "${src_dir_path}/${the_brightness}rc" "${des_dir_path}/${the_theme_name}/${the_brightness}rc"


	util_copy_from_srcfile_to_desfile "${src_dir_path}/metadata.desktop" "${des_dir_path}/${the_theme_name}/metadata.desktop"


	util_copy_from_srcfile_to_desfile "${src_dir_path}/metadata.json" "${des_dir_path}/${the_theme_name}/metadata.json"


	sed -i "s|theme_name|${the_theme_name}|g" "${des_dir_path}/${the_theme_name}/metadata.desktop"


	sed -i "s|theme_name|${the_theme_name}|g" "${des_dir_path}/${the_theme_name}/metadata.json"


	return 0
}


mod_theme_install_aurorae_theme () {

	local src_dir_path="${prjdir}/aurorae"
	local des_dir_path="${pkgdir}/usr/share/aurorae/themes"


	sys_theme_install_aurorae_theme_each "Dark"

	sys_theme_install_aurorae_theme_each "Ligth"


	return 0
}

mod_theme_install_color_schemes () {

	local src_dir_path="${prjdir}/color-schemes"
	local des_dir_path="${pkgdir}/usr/share/color-schemes"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}

mod_theme_install_kvantum_theme () {

	local src_dir_path="${prjdir}/Kvantum"
	local des_dir_path="${pkgdir}/usr/share/Kvantum"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}

mod_theme_install_plasma_theme () {

	local src_dir_path="${prjdir}/plasma"
	local des_dir_path="${pkgdir}/usr/share/plasma"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}

mod_theme_install_sddm_theme () {

	local src_dir_path="${prjdir}/sddm/MacTahoe-6.0"
	local des_dir_path="${pkgdir}/usr/share/sddm/themes/MacTahoe"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}

mod_theme_install_wallpaper () {

	local src_dir_path="${prjdir}/wallpapers"
	local des_dir_path="${pkgdir}/usr/share/wallpapers"

	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}







package () {

	echo
	echo "##"
	echo "## ## Call package"
	echo "##"
	echo

	#pwd


	#pkgdir="${pkgdir}"

	#prjdir="${_archive}"

	prjdir="${srcdir}/MacTahoe-kde-main"


	echo
	echo mkdir -p "${prjdir}"
	mkdir -p "${prjdir}"


	echo
	echo mkdir -p "${pkgdir}"
	mkdir -p "${pkgdir}"




	mod_theme_install_aurorae_theme
	mod_theme_install_color_schemes
	mod_theme_install_kvantum_theme
	mod_theme_install_plasma_theme
	mod_theme_install_sddm_theme
	mod_theme_install_wallpaper




	echo
	echo "##"
	echo "## ## Done"
	echo "##"
	echo


	return 0
}
