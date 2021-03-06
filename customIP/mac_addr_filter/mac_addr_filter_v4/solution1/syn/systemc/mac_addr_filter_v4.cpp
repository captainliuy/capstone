// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "mac_addr_filter_v4.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_lv<73> mac_addr_filter_v4::ap_const_lv73_0 = "0000000000000000000000000000000000000000000000000000000000000000000000000";
const sc_logic mac_addr_filter_v4::ap_const_logic_0 = sc_dt::Log_0;
const sc_logic mac_addr_filter_v4::ap_const_logic_1 = sc_dt::Log_1;

mac_addr_filter_v4::mac_addr_filter_v4(sc_module_name name) : sc_module(name), mVcdFile(0) {
    packet_filtering_U0 = new packet_filtering("packet_filtering_U0");
    packet_filtering_U0->ap_clk(ap_clk);
    packet_filtering_U0->ap_rst(ap_rst);
    packet_filtering_U0->ap_start(packet_filtering_U0_ap_start);
    packet_filtering_U0->ap_done(packet_filtering_U0_ap_done);
    packet_filtering_U0->ap_continue(packet_filtering_U0_ap_continue);
    packet_filtering_U0->ap_idle(packet_filtering_U0_ap_idle);
    packet_filtering_U0->ap_ready(packet_filtering_U0_ap_ready);
    packet_filtering_U0->from_eth_V_dout(from_eth_V_dout);
    packet_filtering_U0->from_eth_V_empty_n(from_eth_V_empty_n);
    packet_filtering_U0->from_eth_V_read(packet_filtering_U0_from_eth_V_read);
    packet_filtering_U0->to_shell_V_din(packet_filtering_U0_to_shell_V_din);
    packet_filtering_U0->to_shell_V_full_n(to_shell_V_full_n);
    packet_filtering_U0->to_shell_V_write(packet_filtering_U0_to_shell_V_write);
    packet_filtering_U0->to_pr_V_din(packet_filtering_U0_to_pr_V_din);
    packet_filtering_U0->to_pr_V_full_n(to_pr_V_full_n);
    packet_filtering_U0->to_pr_V_write(packet_filtering_U0_to_pr_V_write);
    packet_filtering_U0->src_mac_addr_V(src_mac_addr_V);
    packet_filtering_U0->debug_bit_V(debug_bit_V);

    SC_METHOD(thread_ap_sync_continue);

    SC_METHOD(thread_from_eth_V_read);
    sensitive << ( packet_filtering_U0_from_eth_V_read );

    SC_METHOD(thread_packet_filtering_U0_ap_continue);

    SC_METHOD(thread_packet_filtering_U0_ap_start);

    SC_METHOD(thread_packet_filtering_U0_start_full_n);

    SC_METHOD(thread_packet_filtering_U0_start_write);

    SC_METHOD(thread_to_pr_V_din);
    sensitive << ( packet_filtering_U0_to_pr_V_din );

    SC_METHOD(thread_to_pr_V_write);
    sensitive << ( packet_filtering_U0_to_pr_V_write );

    SC_METHOD(thread_to_shell_V_din);
    sensitive << ( packet_filtering_U0_to_shell_V_din );

    SC_METHOD(thread_to_shell_V_write);
    sensitive << ( packet_filtering_U0_to_shell_V_write );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "mac_addr_filter_v4_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, to_shell_V_din, "(port)to_shell_V_din");
    sc_trace(mVcdFile, to_shell_V_full_n, "(port)to_shell_V_full_n");
    sc_trace(mVcdFile, to_shell_V_write, "(port)to_shell_V_write");
    sc_trace(mVcdFile, to_pr_V_din, "(port)to_pr_V_din");
    sc_trace(mVcdFile, to_pr_V_full_n, "(port)to_pr_V_full_n");
    sc_trace(mVcdFile, to_pr_V_write, "(port)to_pr_V_write");
    sc_trace(mVcdFile, from_eth_V_dout, "(port)from_eth_V_dout");
    sc_trace(mVcdFile, from_eth_V_empty_n, "(port)from_eth_V_empty_n");
    sc_trace(mVcdFile, from_eth_V_read, "(port)from_eth_V_read");
    sc_trace(mVcdFile, src_mac_addr_V, "(port)src_mac_addr_V");
    sc_trace(mVcdFile, debug_bit_V, "(port)debug_bit_V");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, packet_filtering_U0_ap_start, "packet_filtering_U0_ap_start");
    sc_trace(mVcdFile, packet_filtering_U0_ap_done, "packet_filtering_U0_ap_done");
    sc_trace(mVcdFile, packet_filtering_U0_ap_continue, "packet_filtering_U0_ap_continue");
    sc_trace(mVcdFile, packet_filtering_U0_ap_idle, "packet_filtering_U0_ap_idle");
    sc_trace(mVcdFile, packet_filtering_U0_ap_ready, "packet_filtering_U0_ap_ready");
    sc_trace(mVcdFile, packet_filtering_U0_from_eth_V_read, "packet_filtering_U0_from_eth_V_read");
    sc_trace(mVcdFile, packet_filtering_U0_to_shell_V_din, "packet_filtering_U0_to_shell_V_din");
    sc_trace(mVcdFile, packet_filtering_U0_to_shell_V_write, "packet_filtering_U0_to_shell_V_write");
    sc_trace(mVcdFile, packet_filtering_U0_to_pr_V_din, "packet_filtering_U0_to_pr_V_din");
    sc_trace(mVcdFile, packet_filtering_U0_to_pr_V_write, "packet_filtering_U0_to_pr_V_write");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, packet_filtering_U0_start_full_n, "packet_filtering_U0_start_full_n");
    sc_trace(mVcdFile, packet_filtering_U0_start_write, "packet_filtering_U0_start_write");
#endif

    }
    mHdltvinHandle.open("mac_addr_filter_v4.hdltvin.dat");
    mHdltvoutHandle.open("mac_addr_filter_v4.hdltvout.dat");
}

mac_addr_filter_v4::~mac_addr_filter_v4() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete packet_filtering_U0;
}

void mac_addr_filter_v4::thread_ap_sync_continue() {
    ap_sync_continue = ap_const_logic_0;
}

void mac_addr_filter_v4::thread_from_eth_V_read() {
    from_eth_V_read = packet_filtering_U0_from_eth_V_read.read();
}

void mac_addr_filter_v4::thread_packet_filtering_U0_ap_continue() {
    packet_filtering_U0_ap_continue = ap_const_logic_1;
}

void mac_addr_filter_v4::thread_packet_filtering_U0_ap_start() {
    packet_filtering_U0_ap_start = ap_const_logic_1;
}

void mac_addr_filter_v4::thread_packet_filtering_U0_start_full_n() {
    packet_filtering_U0_start_full_n = ap_const_logic_1;
}

void mac_addr_filter_v4::thread_packet_filtering_U0_start_write() {
    packet_filtering_U0_start_write = ap_const_logic_0;
}

void mac_addr_filter_v4::thread_to_pr_V_din() {
    to_pr_V_din = packet_filtering_U0_to_pr_V_din.read();
}

void mac_addr_filter_v4::thread_to_pr_V_write() {
    to_pr_V_write = packet_filtering_U0_to_pr_V_write.read();
}

void mac_addr_filter_v4::thread_to_shell_V_din() {
    to_shell_V_din = packet_filtering_U0_to_shell_V_din.read();
}

void mac_addr_filter_v4::thread_to_shell_V_write() {
    to_shell_V_write = packet_filtering_U0_to_shell_V_write.read();
}

void mac_addr_filter_v4::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvoutHandle << mComma << "{"  <<  " \"to_shell_V_din\" :  \"" << to_shell_V_din.read() << "\" ";
        mHdltvinHandle << mComma << "{"  <<  " \"to_shell_V_full_n\" :  \"" << to_shell_V_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"to_shell_V_write\" :  \"" << to_shell_V_write.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"to_pr_V_din\" :  \"" << to_pr_V_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"to_pr_V_full_n\" :  \"" << to_pr_V_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"to_pr_V_write\" :  \"" << to_pr_V_write.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"from_eth_V_dout\" :  \"" << from_eth_V_dout.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"from_eth_V_empty_n\" :  \"" << from_eth_V_empty_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"from_eth_V_read\" :  \"" << from_eth_V_read.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"src_mac_addr_V\" :  \"" << src_mac_addr_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"debug_bit_V\" :  \"" << debug_bit_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

