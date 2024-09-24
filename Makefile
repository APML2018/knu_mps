

LN      =       ln -sf
MAKE    =       make -i -r
RM      =       rm -f


MODULES = \
	ccpp_kind_types.o \
	module_bep_bem_helper.o \
	complex_number_module.o \
	module_cam_shr_kind_mod.o \
	module_cam_support.o \
	module_cam_shr_const_mod.o \
	module_cam_physconst.o \
	module_cam_cldwat.o \
	module_cam_wv_saturation.o \
	module_cam_esinti.o \
	module_cam_gffgch.o \
	module_cam_error_function.o \
	module_cam_constituents.o \
	module_cam_trb_mtn_stress.o \
	module_cam_molec_diff.o \
	module_cam_upper_bc.o \
	module_cam_bl_diffusion_solver.o \
	module_cam_bl_eddy_diff.o \
	module_cam_mp_microp_aero.o \
	module_cam_mp_cldwat2m_micro.o \
	module_cam_mp_ndrop.o \
	module_cam_mp_modal_aero_initialize_data_phys.o \
	module_cam_mp_radconstants.o \
	module_cam_mp_conv_water.o \
	module_cam_mp_qneg3.o \
	module_data_cam_mam_aero.o \
	module_data_cam_mam_asect.o \
	module_cam_infnan.o \
	$(PHYS_PLUS) \
	module_bl_ysu.o \
	module_bl_shinhong.o \
	module_bl_mrf.o \
	module_bl_gfs.o \
        module_bl_gfsedmf.o \
	module_bl_myjpbl.o \
	module_bl_qnsepbl.o \
	module_bl_acm.o \
        module_bl_mynn_common.o \
        module_bl_mynn.o \
        module_bl_mynn_wrapper.o \
	module_bl_fogdes.o \
	module_bl_gwdo.o \
	module_bl_gwdo_gsl.o \
	module_bl_myjurb.o \
	module_bl_boulac.o \
	module_checkerror.o \
	module_bl_camuwpbl_driver.o \
	module_bl_mfshconvpbl.o \
	module_bl_eepsilon.o \
	module_bl_keps.o \
        module_shcu_camuwshcu_driver.o \
	module_shcu_camuwshcu.o \
	module_shcu_deng.o          \
	module_shcu_grims.o \
	module_shcu_nscv.o \
	module_cu_camzm_driver.o \
	module_cu_camzm.o \
	module_bl_temf.o \
	module_bl_gbmpbl.o \
	module_cu_g3.o \
	module_cu_kf.o  \
	module_cu_bmj.o \
	module_cu_kfeta.o \
	module_cu_mskf.o \
	module_cu_tiedtke.o\
	module_cu_ntiedtke.o\
	module_cu_gd.o \
        module_cu_gf_ctrans.o \
	module_cu_gf_wrfdrv.o \
	module_cu_gf_deep.o \
	module_cu_gf_sh.o \
	module_cu_ksas.o \
	module_cu_nsas.o \
	module_cu_sas.o \
	module_gocart_coupling.o \
	module_cu_scalesas.o \
	module_cu_osas.o \
	module_cu_kfcup.o \
	module_madwrf.o \
	module_mp_radar.o \
	module_mp_kessler.o \
	module_mp_lin.o  \
	module_mp_sbu_ylin.o  \
	module_mp_wsm3.o \
	module_mp_wsm5.o \
	module_mp_wsm6.o \
	module_mp_wsm6r.o \
	module_mp_wsm7.o \
	module_mp_etanew.o \
	module_mp_fer_hires.o \
	module_mp_thompson.o \
        module_fire_emis.o \
	module_mp_SBM_polar_radar.o \
	module_mp_full_sbm.o \
	module_mp_fast_sbm.o \
	module_ltng_lpi.o \
	module_mp_gsfcgce.o \
	module_mp_gsfcgce_4ice_nuwrf.o \
	module_mp_morr_two_moment.o \
        module_mp_p3.o \
        module_mp_jensen_ishmael.o \
        module_mp_morr_two_moment_aero.o \
	module_mp_milbrandt2mom.o \
	module_mp_nssl_2mom.o \
	module_mp_wdm5.o \
	module_mp_wdm6.o \
	module_mp_knu.o \
	module_mp_wdm7.o \
	module_mp_ntu.o \
	module_mp_cammgmp_driver.o \
	module_ra_sw.o  \
	module_ra_clWRF_support.o  \
	module_ra_gsfcsw.o \
	module_ra_goddard.o \
        module_ra_effective_radius.o \
	module_ra_rrtm.o  \
	module_ra_rrtmg_lw.o  \
	module_ra_rrtmg_sw.o  \
	module_ra_rrtmg_aero_optical_util_cmaq.o \
	module_ra_rrtmg_lwf.o  \
	module_ra_rrtmg_swf.o  \
        module_ra_rrtmg_lwk.o  \
        module_ra_rrtmg_swk.o  \
        module_ra_cam_support.o \
        module_ra_cam.o \
	module_ra_gfdleta.o \
        module_ra_flg.o \
	module_ra_hs.o  \
	module_ra_eclipse.o \
	module_ra_aerosol.o  \
	module_ra_farms.o  \
	module_sf_sfclay.o \
	module_sf_sfclayrev.o \
	module_sf_gfs.o \
	module_sf_exchcoef.o \
	module_sf_gfdl.o \
	module_sf_slab.o  \
	module_sf_noahdrv.o  \
	module_sf_noahlsm.o  \
	module_sf_clm.o  \
	module_sf_ctsm.o \
        module_sf_ssib.o  \
	module_sf_noah_seaice.o \
	module_sf_noah_seaice_drv.o \
	module_sf_noahlsm_glacial_only.o \
        module_sf_noahmp_groundwater.o \
        module_sf_gecros.o \
	module_sf_noahmpdrv.o \
	module_sf_noahmplsm.o \
	module_sf_noahmp_glacier.o \
        module_sf_urban.o  \
        module_sf_bep.o  \
        module_sf_bep_bem.o \
        module_sf_bem.o \
	module_sf_pxlsm.o \
	module_sf_pxlsm_data.o \
	module_sf_ruclsm.o \
	module_sf_sfcdiags.o \
	module_sf_sfcdiags_ruclsm.o \
	module_sf_sstskin.o \
	module_sf_tmnupdate.o \
	module_sf_ocean_driver.o \
	module_sf_oml.o \
	module_sf_3dpwp.o \
	module_sf_myjsfc.o \
	module_sf_qnsesfc.o \
	module_sf_mynn.o \
	module_sf_fogdes.o \
	module_sf_pxsfclay.o \
	module_sf_temfsfclay.o \
	module_sf_idealscmsfclay.o \
	module_sf_scmflux.o \
	module_sf_scmskintemp.o \
	module_physics_addtendc.o \
	module_physics_init.o \
	module_gfs_machine.o \
	module_gfs_funcphys.o \
	module_gfs_physcons.o \
	module_progtm.o \
	module_pbl_driver.o \
	module_data_gocart_dust.o \
        module_dust_emis.o \
	module_cumulus_driver.o \
	module_shallowcu_driver.o \
	module_microphysics_driver.o \
	module_microphysics_zero_out.o \
	module_mixactivate.o \
	module_radiation_driver.o \
	module_surface_driver.o \
	module_lightning_driver.o \
	module_ltng_cpmpr92z.o \
	module_ltng_crmpr92.o \
	module_ltng_iccg.o \
	module_fdda_psufddagd.o \
	module_fdda_spnudging.o \
	module_fddagd_driver.o  \
        module_fddaobs_rtfdda.o \
	module_fddaobs_driver.o \
	module_wind_fitch.o \
	module_wind_mav.o \
	module_sf_lake.o \
	module_diagnostics_driver.o \
	module_irrigation.o

FIRE_MODULES = \
        module_fr_fire_driver.o \
        module_fr_fire_driver_wrf.o \
        module_fr_fire_atm.o \
        module_fr_fire_model.o \
        module_fr_fire_core.o \
        module_fr_fire_phys.o \
        module_fr_fire_util.o \
        module_firebrand_spotting_mpi.o \
        module_firebrand_spotting.o

DIAGNOSTIC_MODULES_EM = \
	module_diag_afwa.o \
	module_diag_cl.o \
	module_diag_functions.o \
        module_diag_hailcast.o \
	module_diag_misc.o \
	module_diag_nwp.o \
        module_diag_rasm.o \
	module_diag_pld.o \
	module_diag_zld.o \
	module_diag_trad_fields.o \
        module_diag_solar.o
  
PHYSMMM_MODULES = \
	physics_mmm/sf_sfclayrev.o \
	physics_mmm/cu_ntiedtke.o \
	physics_mmm/module_libmassv.o \
	physics_mmm/mp_wsm6.o \
	physics_mmm/mp_wsm6_effectRad.o \
	physics_mmm/mp_radar.o \
        physics_mmm/bl_gwdo.o \
        physics_mmm/bl_ysu.o

OBJS    =

LIBTARGET    =  physics
TARGETDIR    =  ./

$(LIBTARGET) :
	$(MAKE) $(J) non_nmm ; \
	$(AR) $(ARFLAGS) ../main/$(LIBWRFLIB) $(MODULES) $(OBJS)  \
		$(FIRE_MODULES) $(DIAGNOSTIC_MODULES_EM) $(PHYSMMM_MODULES)

include ../configure.wrf

non_nmm : $(MODULES) $(FIRE_MODULES) $(OBJS) $(DIAGNOSTIC_MODULES_EM)

submodules :
	@if [ \( ! -f module_sf_noahmpdrv.F \) -o \( ! -f module_sf_noahmp_glacier.F \) -o \
	      \( ! -f module_sf_noahmp_groundwater.F \) -o \( ! -f module_sf_noahmplsm.F \) ] ; then \
		echo Pulling in NoahMP submodule ; \
		( cd .. ; git submodule update --init --recursive ) ; \
		ln -sf noahmp/drivers/wrf/module_sf_noahmpdrv.F . ; \
		ln -sf noahmp/src/module_sf_noahmp_glacier.F . ; \
		ln -sf noahmp/src/module_sf_noahmp_groundwater.F . ; \
		ln -sf noahmp/src/module_sf_noahmplsm.F . ; \
		( cd ../run ; ln -sf ../phys/noahmp/parameters/MPTABLE.TBL . ) ; \
	else \
		echo No action required for NoahMP submodule ; \
	fi

clean:
	@ echo 'use the clean script'

# DEPENDENCIES : only dependencies after this line (don't remove the word DEPENDENCIES)
# DO NOT DELETE

include ../main/depend.common
