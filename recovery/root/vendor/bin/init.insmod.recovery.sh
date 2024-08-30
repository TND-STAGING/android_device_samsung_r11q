#!/bin/bash

# List of kernel modules
modules=(
sec_boot_stat.ko
sec_log_buf.ko
sec_arm64_ap_context.ko
abc.ko
gh_virt_wdt.ko
qcom_wdt_core.ko
qcom_cpu_vendor_hooks.ko
clk-rpmh.ko
gcc-waipio.ko
icc-rpmh.ko
qcom_ipcc.ko
qcom_ipc_logging.ko
qcom-pdc.ko
qcom_tsens.ko
rpmh-regulator.ko
bwmon.ko
qcom-cpufreq-hw.ko
sched-walt.ko
thermal_pause.ko
cpu_hotplug.ko
cfg80211.ko
clk-dummy.ko
clk-qcom.ko
cmd-db.ko
cqhci.ko
crypto-qti-common.ko
crypto-qti-hwkm.ko
dcvs_fp.ko
debug-regulator.ko
dispcc-diwali.ko
dispcc-waipio.ko
gcc-diwali.ko
gdsc-regulator.ko
gh_arm_drv.ko
gh_ctrl.ko
gh_dbl.ko
gh_msgq.ko
gh_rm_drv.ko
gh_virt_wdt.ko
hwkm.ko
icc-bcm-voter.ko
icc-debug.ko
iommu-logger.ko
kryo_arm64_edac.ko
llcc-qcom.ko
mac80211.ko
mem_buf_dev.ko
mem_buf.ko
mem-hooks.ko
memory_dump_v2.ko
minidump.ko
msm_dma_iommu_mapping.ko
pinctrl-waipio.ko
qnoc-waipio.ko
qti-fixed-regulator.ko
reboot-mode.ko
msm_geni_serial.ko
nvmem_qcom-spmi-sdam.ko
phy-generic.ko
phy-qcom-ufs.ko
phy-qcom-ufs-qmp-v4-waipio.ko
phy-qcom-ufs-qmp-v4-diwali.ko
phy-qcom-ufs-qmp-v4-cape.ko
pinctrl-cape.ko
pinctrl-diwali.ko
pinctrl-msm.ko
proxy-consumer.ko
qcom-dcvs.ko
qcom-dload-mode.ko
qcom_dma_heaps.ko
qcom_gic_intr_routing.ko
qcom_hwspinlock.ko
qcom_iommu_util.ko
qcom_llcc_pmu.ko
qcom-pmu-lib.ko
pmu_vendor.ko
pmu_scmi.ko
qcom-spmi-pmic.ko
spmi-pmic-arb.ko
pinctrl-spmi-gpio.ko
qcom-reboot-reason.ko
qcom_rpmh.ko
qcom-scm.ko
qcom_wdt_core.ko
qcom_tsens.ko
qti-adc-tm.ko
qcom-spmi-adc5.ko
qcom-vadc-common.ko
cpu_voltage_cooling.ko
cpu_hotplug.ko
msm_lmh_dcvs.ko
thermal_pause.ko
ddr_cdev.ko
qti_cpufreq_cdev.ko
sec_ext_tm.ko
qnoc-diwali.ko
qnoc-qos.ko
qrtr.ko
qti-regmap-debugfs.ko
regmap-spmi.ko
rtc-pm8xxx.ko
sec_class.ko
sec_crashkey.ko
sec_crashkey_long.ko
sec_debug.ko
sec_debug_region.ko
sec_key_notifier.ko
sec_param.ko
sec_pmsg.ko
sec_qc_debug.ko
sec_qc_dbg_partition.ko
sec_qc_logger.ko
sec_qc_param.ko
sec_qc_summary.ko
sec_qc_upload_cause.ko
sec_upload_cause.ko
sec_pm_log.ko
i2c-gpio.ko
pmic_class.ko
s2mpb03.ko
secure_buffer.ko
smem.ko
socinfo.ko
softdog.ko
stub-regulator.ko
tmecom-intf.ko
ufshcd-crypto-qti.ko
ufs_qcom.ko
arm_smmu.ko
msm-geni-se.ko
qcom_aoss.ko
msm_qmp.ko
qcom_rimps.ko
c1dcvs_vendor.ko
c1dcvs_scmi.ko
bcl_pmic5.ko
hdm.ko
msm_rng.ko
msm_sysstats.ko
zsmalloc.ko
lzo.ko
lzo-rle.ko
ssg.ko
blk-sec-stats.ko
msm_show_resume_irq.ko
mhi_cntrl_qcom.ko
mhi_dev_uci.ko
mhi_dev_netdev.ko
mhi_dev_dtr.ko
mhi.ko
phy-qcom-ufs-qmp-v4-lahaina.ko
phy-qcom-ufs-qmp-v4-parrot.ko
phy-qcom-ufs-qmp-v4-anarok.ko
phy-qcom-ufs-qmp-v3.ko
phy-qcom-ufs-qmp-14nm.ko
pinctrl-spmi-mpp.ko
sec-pinmux.ko
pwm-qti-lpg.ko
pci-msm-drv.ko
lcd.ko
camcc-waipio.ko
camcc-diwali.ko
debugcc-diwali.ko
videocc-waipio.ko
gpucc-waipio.ko
debugcc-waipio.ko
gpucc-diwali.ko
videocc-diwali.ko
bam_dma.ko
gpi.ko
pci-edma.ko
qcom_cpuss_sleep_stats.ko
mdt_loader.ko
cdsp-loader.ko
qcom_ramdump.ko
pdr_interface.ko
qmi_helpers.ko
heap_mem_ext_v01.ko
msm_memshare.ko
boot_stats.ko
smp2p.ko
subsystem_sleep_stats.ko
adsp_sleepmon.ko
sysmon_subsystem_stats.ko
qsee_ipc_irq_bridge.ko
core_hang_detect.ko
soc_sleep_stats.ko
dcc_v2.ko
smcinvoke_mod.ko
microdump_collector.ko
llcc_perfmon.ko
smp2p_sleepstate.ko
sensors_ssc.ko
glink_pkt.ko
glink_probe.ko
pmic_glink.ko
qti_battery_debug.ko
charger-ulog-glink.ko
altmode-glink.ko
pmic-pon-log.ko
spss_utils.ko
msm_performance.ko
qpnp-pbs.ko
spcom.ko
cdsprm.ko
fsa4480-i2c.ko
msm_show_epoch.ko
eud.ko
guestvm_loader.ko
hyp_core_ctl.ko
qcom_soc_wdt.ko
sys_pm_vx.ko
msm_ext_display.ko
icnss2.ko
rimps_log.ko
plh_scmi.ko
gplaf_scmi.ko
shared_rail_scmi.ko
qdss_bridge.ko
memlat.ko
panel_event_notifier.ko
dmesg_dumper.ko
qcom_sync_file.ko
hung_task_enh.ko
qfprom-sys.ko
qmp-sysfs-client.ko
qcom_pm8008-regulator.ko
qpnp-amoled-regulator.ko
hvc_gunyah.ko
frpc-adsprpc.ko
rdbg.ko
qcom_iommu_debug.ko
lt9611uxc.ko
msm_kgsl.ko
zram.ko
hdcp.ko
qseecom-mod.ko
qcom-i2c-pmic.ko
sec_ap_pmic.ko
nfc_sec.ko
sg.ko
spi-msm-geni.ko
spmi-pmic-arb-debug.ko
spmi-glink-debug.ko
smsc.ko
dhd.ko
cnss2.ko
cnss_utils.ko
wlan_firmware_service.ko
cnss_plat_ipc_qmi_svc.ko
cnss_nl.ko
cnss_prealloc.ko
asix.ko
ax88179_178a.ko
smsc75xx.ko
smsc95xx.ko
msm_sharedmem.ko
phy-qcom-emu.ko
phy-msm-ssusb-qmp.ko
phy-msm-snps-hs.ko
phy-msm-snps-eusb2.ko
dwc3-msm.ko
ehset.ko
lvstest.ko
usb_f_diag.ko
usb_f_qdss.ko
usb_f_ccid.ko
usb_f_cdev.ko
usb_f_gsi.ko
f_fs_ipc_log.ko
usb_f_conn_gadget.ko
usb_f_ss_mon_gadget.ko
usb_f_ss_acm.ko
ucsi_glink.ko
repeater.ko
repeater-i2c-eusb2.ko
redriver.ko
nb7vpq904m.ko
usb_notify_layer.ko
usb_notifier_qcom.ko
pm8941-pwrkey.ko
qcom-hv-haptics.ko
akm.ko
sec_pon_alarm.ko
i2c-msm-geni.ko
i3c-master-msm-geni.ko
qcom_ipc_lite.ko
synx-driver.ko
qcom-pon.ko
qti_battery_charger_main.ko
qcom-spmi-temp-alarm.ko
qti_qmi_sensor_v2.ko
qti_qmi_cdev.ko
bcl_soc.ko
policy_engine.ko
sdpm_clk.ko
qti_userspace_cdev.ko
qti_devfreq_cdev.ko
bcm4389.ko
bluesleep.ko
btpower.ko
bt_fm_slim.ko
qcom_edac.ko
cpufreq_limit.ko
qcom-cpufreq-hw-debug.ko
qcom_lpm.ko
sdhci-msm-sec.ko
leds-qti-flash.ko
leds-qti-tri-led.ko
leds-qpnp-vibrator-ldo.ko
leds-aw36518.ko
plh_vendor.ko
gplaf_vendor.ko
shared_rail_vendor.ko
tz_log.ko
qce50.ko
qcedev-mod.ko
ipa_fmwk.ko
usb_bam.ko
sps_drv.ko
ep_pcie_drv.ko
mhi_dev_drv.ko
mhi_dev_net.ko
qcom_pil_info.ko
rproc_qcom_common.ko
qcom_q6v5.ko
qcom_q6v5_pas.ko
qcom_spss.ko
qcom_esoc.ko
qcom_sysmon.ko
qcom_glink.ko
qcom_glink_smem.ko
qcom_glink_spss.ko
qcom_smd.ko
gh_irq_lend.ko
gh_mem_notifier.ko
gh_virtio_backend.ko
nvmem_qfprom.ko
icc-test.ko
qnoc-parrot.ko
switch_class.ko
switch_gpio.ko
sec_sysup.ko
sec_argos.ko
sec_arm64_fsimd_debug.ko
sec_qc_rbcmd.ko
sec_qc_qcom_reboot_reason.ko
sec_qc_soc_id.ko
sec_qc_qcom_wdt_core.ko
sec_qc_user_reset.ko
sec_qc_smem.ko
sec_qc_hw_param.ko
sec_qc_rst_exinfo.ko
sec_qc_rdx_bootdev.ko
sec_reboot_cmd.ko
max77705_charger.ko
vibrator_vib_info.ko
sb-core.ko
dev_ril_bridge.ko
sec_panel_notifier.ko
sec_common_fn.ko
sec_input_notifier.ko
dropdump.ko
vbus_notifier.ko
input_booster_lkm.ko
sec_vibrator_inputff_module.ko
common_muic.ko
kperfmon.ko
usb_typec_manager.ko
if_cb_manager.ko
fingerprint.ko
fingerprint_sysfs.ko
pdic_notifier_module.ko
abc_hub.ko
hall_ic.ko
hall_ic_notifier.ko
max77705-fuelgauge.ko
flicker_test.ko
stk.ko
pca9482_charger.ko
snvm.ko
stm_ts.ko
aw8622x_haptic.ko
synaptics_ts_i2c.ko
sec_thermistor.ko
sec-direct-charger.ko
sec_pd.ko
sec-battery.ko
s2miw04_charger.ko
mfd_max77705.ko
pdic_max77705.ko
slimbus.ko
slim-qcom-ngd-ctrl.ko
hwmon.ko
qti_amoled_ecm.ko
coresight.ko
coresight-tmc.ko
coresight-funnel.ko
coresight-replicator.ko
coresight-stm.ko
coresight-cti.ko
coresight-tpda.ko
coresight-tpdm.ko
coresight-csr.ko
coresight-dummy.ko
coresight-remote-etm.ko
coresight-tgu.ko
coresight-hwevent.ko
stm_core.ko
stm_p_basic.ko
stm_p_ost.ko
stm_console.ko
stm_ftrace.ko
sensors_core.ko
adsp_factory_module.ko
spu_verify.ko
qc_usb_audio.ko
snd-usb-audio-qmi.ko
snd-soc-cirrus-amp.ko
snd-soc-cs35l41-i2c.ko
snd-soc-cs35l45.ko
snd-soc-cs35l45-i2c.ko
snd-soc-wm-adsp.ko
sec_audio_sysfs.ko
snd_debug_proc.ko
qrtr-smd.ko
qrtr-mhi.ko
qrtr-gunyah.ko
msm_drm.ko
msm-mmrm.ko
)

# Directory where modules are located
module_dir="/lib/modules"

# Load each module
for module in "${modules[@]}"; do
    echo "Loading $module..."
    insmod "$module_dir/$module"
    if [ $? -eq 0 ]; then
        echo "$module loaded successfully."
    else
        echo "Failed to load $module."
    fi
done

echo "Module loading complete."
