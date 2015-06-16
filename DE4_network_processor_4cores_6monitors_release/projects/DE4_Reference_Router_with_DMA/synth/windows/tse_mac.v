// megafunction wizard: %Triple Speed Ethernet v11.1%
// GENERATION: XML

// ============================================================
// Megafunction Name(s):
// 			altera_tse_mac_pcs_pma
// ============================================================
// Generated by Triple Speed Ethernet 11.1 [Altera, IP Toolbench 1.3.0 Build 173]
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
// ************************************************************
// Copyright (C) 1991-2013 Altera Corporation
// Any megafunction design, and related net list (encrypted or decrypted),
// support information, device programming or simulation file, and any other
// associated documentation or information provided by Altera or a partner
// under Altera's Megafunction Partnership Program may be used only to
// program PLD devices (but not masked PLD devices) from Altera.  Any other
// use of such megafunction design, net list, support information, device
// programming or simulation file, or any other related documentation or
// information is prohibited for any other purpose, including, but not
// limited to modification, reverse engineering, de-compiling, or use with
// any other silicon devices, unless such use is explicitly licensed under
// a separate agreement with Altera or a megafunction partner.  Title to
// the intellectual property, including patents, copyrights, trademarks,
// trade secrets, or maskworks, embodied in any such megafunction design,
// net list, support information, device programming or simulation file, or
// any other related documentation or information provided by Altera or a
// megafunction partner, remains with Altera, the megafunction partner, or
// their respective licensors.  No other licenses, including any licenses
// needed under any third party's intellectual property, are provided herein.


module tse_mac (
	ff_tx_data,
	ff_tx_eop,
	ff_tx_err,
	ff_tx_sop,
	ff_tx_wren,
	ff_tx_clk,
	ff_rx_rdy,
	ff_rx_clk,
	address,
	read,
	writedata,
	write,
	clk,
	reset,
	mdio_in,
	rxp,
	ref_clk,
	ff_tx_rdy,
	ff_rx_data,
	ff_rx_dval,
	ff_rx_eop,
	ff_rx_sop,
	rx_err,
	readdata,
	waitrequest,
	mdio_out,
	mdio_oen,
	mdc,
	led_an,
	led_char_err,
	led_link,
	led_disp_err,
	led_crs,
	led_col,
	txp,
	rx_recovclkout);


	input	[7:0]	ff_tx_data;
	input		ff_tx_eop;
	input		ff_tx_err;
	input		ff_tx_sop;
	input		ff_tx_wren;
	input		ff_tx_clk;
	input		ff_rx_rdy;
	input		ff_rx_clk;
	input	[7:0]	address;
	input		read;
	input	[31:0]	writedata;
	input		write;
	input		clk;
	input		reset;
	input		mdio_in;
	input		rxp;
	input		ref_clk;
	output		ff_tx_rdy;
	output	[7:0]	ff_rx_data;
	output		ff_rx_dval;
	output		ff_rx_eop;
	output		ff_rx_sop;
	output	[5:0]	rx_err;
	output	[31:0]	readdata;
	output		waitrequest;
	output		mdio_out;
	output		mdio_oen;
	output		mdc;
	output		led_an;
	output		led_char_err;
	output		led_link;
	output		led_disp_err;
	output		led_crs;
	output		led_col;
	output		txp;
	output		rx_recovclkout;


	altera_tse_mac_pcs_pma	altera_tse_mac_pcs_pma_inst(
		.ff_tx_data(ff_tx_data),
		.ff_tx_eop(ff_tx_eop),
		.ff_tx_err(ff_tx_err),
		.ff_tx_sop(ff_tx_sop),
		.ff_tx_wren(ff_tx_wren),
		.ff_tx_clk(ff_tx_clk),
		.ff_rx_rdy(ff_rx_rdy),
		.ff_rx_clk(ff_rx_clk),
		.address(address),
		.read(read),
		.writedata(writedata),
		.write(write),
		.clk(clk),
		.reset(reset),
		.mdio_in(mdio_in),
		.rxp(rxp),
		.ref_clk(ref_clk),
		.ff_tx_rdy(ff_tx_rdy),
		.ff_rx_data(ff_rx_data),
		.ff_rx_dval(ff_rx_dval),
		.ff_rx_eop(ff_rx_eop),
		.ff_rx_sop(ff_rx_sop),
		.rx_err(rx_err),
		.readdata(readdata),
		.waitrequest(waitrequest),
		.mdio_out(mdio_out),
		.mdio_oen(mdio_oen),
		.mdc(mdc),
		.led_an(led_an),
		.led_char_err(led_char_err),
		.led_link(led_link),
		.led_disp_err(led_disp_err),
		.led_crs(led_crs),
		.led_col(led_col),
		.txp(txp),
		.rx_recovclkout(rx_recovclkout));

	defparam
		altera_tse_mac_pcs_pma_inst.ENABLE_MAGIC_DETECT = 1,
		altera_tse_mac_pcs_pma_inst.ENABLE_MDIO = 1,
		altera_tse_mac_pcs_pma_inst.ENABLE_SHIFT16 = 0,
		altera_tse_mac_pcs_pma_inst.ENABLE_SUP_ADDR = 1,
		altera_tse_mac_pcs_pma_inst.CORE_VERSION = 16'h0b01,
		altera_tse_mac_pcs_pma_inst.CRC32GENDELAY = 6,
		altera_tse_mac_pcs_pma_inst.MDIO_CLK_DIV = 50,
		altera_tse_mac_pcs_pma_inst.ENA_HASH = 1,
		altera_tse_mac_pcs_pma_inst.USE_SYNC_RESET = 1,
		altera_tse_mac_pcs_pma_inst.STAT_CNT_ENA = 1,
		altera_tse_mac_pcs_pma_inst.ENABLE_EXTENDED_STAT_REG = 0,
		altera_tse_mac_pcs_pma_inst.ENABLE_HD_LOGIC = 1,
		altera_tse_mac_pcs_pma_inst.REDUCED_INTERFACE_ENA = 0,
		altera_tse_mac_pcs_pma_inst.CRC32S1L2_EXTERN = 0,
		altera_tse_mac_pcs_pma_inst.ENABLE_GMII_LOOPBACK = 0,
		altera_tse_mac_pcs_pma_inst.CRC32DWIDTH = 8,
		altera_tse_mac_pcs_pma_inst.CUST_VERSION = 0,
		altera_tse_mac_pcs_pma_inst.RESET_LEVEL = 8'h01,
		altera_tse_mac_pcs_pma_inst.CRC32CHECK16BIT = 8'h00,
		altera_tse_mac_pcs_pma_inst.ENABLE_MAC_FLOW_CTRL = 1,
		altera_tse_mac_pcs_pma_inst.ENABLE_MAC_TXADDR_SET = 1,
		altera_tse_mac_pcs_pma_inst.ENABLE_MAC_RX_VLAN = 1,
		altera_tse_mac_pcs_pma_inst.ENABLE_MAC_TX_VLAN = 1,
		altera_tse_mac_pcs_pma_inst.SYNCHRONIZER_DEPTH = 4,
		altera_tse_mac_pcs_pma_inst.EG_FIFO = 2048,
		altera_tse_mac_pcs_pma_inst.EG_ADDR = 11,
		altera_tse_mac_pcs_pma_inst.ING_FIFO = 2048,
		altera_tse_mac_pcs_pma_inst.ENABLE_ENA = 8,
		altera_tse_mac_pcs_pma_inst.ING_ADDR = 11,
		altera_tse_mac_pcs_pma_inst.RAM_TYPE = "AUTO",
		altera_tse_mac_pcs_pma_inst.INSERT_TA = 1,
		altera_tse_mac_pcs_pma_inst.ENABLE_MACLITE = 0,
		altera_tse_mac_pcs_pma_inst.MACLITE_GIGE = 0,
		altera_tse_mac_pcs_pma_inst.PHY_IDENTIFIER = 32'h00000000,
		altera_tse_mac_pcs_pma_inst.DEV_VERSION = 16'h0b01,
		altera_tse_mac_pcs_pma_inst.ENABLE_SGMII = 1,
		altera_tse_mac_pcs_pma_inst.DEVICE_FAMILY = "STRATIXIV",
		altera_tse_mac_pcs_pma_inst.EXPORT_PWRDN = 0,
		altera_tse_mac_pcs_pma_inst.TRANSCEIVER_OPTION = 1,
		altera_tse_mac_pcs_pma_inst.ENABLE_ALT_RECONFIG = 0;
endmodule

// =========================================================
// Triple Speed Ethernet Wizard Data
// ===============================
// DO NOT EDIT FOLLOWING DATA
// @Altera, IP Toolbench@
// Warning: If you modify this section, Triple Speed Ethernet Wizard may not be able to reproduce your chosen configuration.
// 
// Retrieval info: <?xml version="1.0"?>
// Retrieval info: <MEGACORE title="Triple Speed Ethernet MegaCore Function"  version="11.1"  build="173"  iptb_version="1.3.0 Build 173"  format_version="120" >
// Retrieval info:  <NETLIST_SECTION class="altera.ipbu.flowbase.netlist.model.TSEMVCModel"  active_core="altera_tse_mac_pcs_pma" >
// Retrieval info:   <STATIC_SECTION>
// Retrieval info:    <PRIVATES>
// Retrieval info:     <NAMESPACE name = "parameterization">
// Retrieval info:      <PRIVATE name = "atlanticSinkClockRate" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "atlanticSinkClockSource" value="unassigned"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "atlanticSourceClockRate" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "atlanticSourceClockSource" value="unassigned"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "avalonSlaveClockRate" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "avalonSlaveClockSource" value="unassigned"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "avalonStNeighbours" value="unassigned=unassigned"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "channel_count" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "core_variation" value="MAC_PCS"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "core_version" value="2817"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "crc32dwidth" value="8"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "crc32gendelay" value="6"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "crc32s1l2_extern" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "cust_version" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "dataBitsPerSymbol" value="8"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "dev_version" value="2817"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "deviceFamily" value="STRATIXIV"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "deviceFamilyName" value="Stratix IV"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "eg_addr" value="11"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "eg_fifo" value="2048"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "ena_hash" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_alt_reconfig" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_clk_sharing" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_ena" value="8"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_fifoless" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_gmii_loopback" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_hd_logic" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_mac_flow_ctrl" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_mac_txaddr_set" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_mac_vlan" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_maclite" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_magic_detect" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_multi_channel" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_pkt_class" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_pma" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_reg_sharing" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_sgmii" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_shift16" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_sup_addr" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enable_use_internal_fifo" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "export_calblkclk" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "export_pwrdn" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "ext_stat_cnt_ena" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "gigeAdvanceMode" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "ifGMII" value="MII_GMII"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ifPCSuseEmbeddedSerdes" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "ing_addr" value="11"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "ing_fifo" value="2048"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "insert_ta" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "maclite_gige" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "max_channels" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "mdio_clk_div" value="50"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "phy_identifier" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ramType" value="AUTO"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "sopcSystemTopLevelName" value="system"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "starting_channel_number" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "stat_cnt_ena" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "timingAdapterName" value="timingAdapter"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "toolContext" value="SOPC_BUILDER"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "transceiver_type" value="LVDS_IO"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "uiEgFIFOSize" value="2048 x 8 Bits"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "uiHostClockFrequency" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "uiIngFIFOSize" value="2048 x 8 Bits"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "uiMACFIFO" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "uiMACOptions" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "uiMDIOFreq" value="0.0 MHz"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "uiMIIInterfaceOptions" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "uiPCSInterface" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "uiPCSInterfaceOptions" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "useLvds" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "useMAC" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "useMDIO" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "usePCS" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "use_sync_reset" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen_enable">
// Retrieval info:      <PRIVATE name = "language" value="VERILOG"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "enabled" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "gb_enabled" value="0"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "testbench">
// Retrieval info:      <PRIVATE name = "variation_name" value="tse_mac"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "project_name" value="DE4_SOPC"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "output_name" value="tse_mac"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "tool_context" value="SOPC_BUILDER"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "constraint_file_generator">
// Retrieval info:      <PRIVATE name = "variation_name" value="tse_mac"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "instance_name" value="tse_mac"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "output_name" value="tse_mac"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "modelsim_script_generator">
// Retrieval info:      <PRIVATE name = "variation_name" value="tse_mac"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "instance_name" value="tse_mac"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "plugin_worker" value="0"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "europa_executor">
// Retrieval info:      <PRIVATE name = "plugin_worker" value="0"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen">
// Retrieval info:      <PRIVATE name = "use_alt_top" value="0"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "family" value="Stratix IV"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "filename" value="tse_mac.vo"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "modelsim_wave_script_plugin">
// Retrieval info:      <PRIVATE name = "plugin_worker" value="0"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "nativelink">
// Retrieval info:      <PRIVATE name = "plugin_worker" value="0"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "settings">
// Retrieval info:      <PRIVATE name = "DEVICE" value="EP4SGX230KF40C2"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FAMILY" value="Stratix IV"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "greybox">
// Retrieval info:      <PRIVATE name = "filename" value="tse_mac_syn.v"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "quartus_settings">
// Retrieval info:      <PRIVATE name = "DEVICE" value="EP4SGX230KF40C2"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FAMILY" value="Stratix IV"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "serializer"/>
// Retrieval info:    </PRIVATES>
// Retrieval info:    <FILES/>
// Retrieval info:    <PORTS/>
// Retrieval info:    <LIBRARIES/>
// Retrieval info:   </STATIC_SECTION>
// Retrieval info:  </NETLIST_SECTION>
// Retrieval info: </MEGACORE>
// =========================================================
