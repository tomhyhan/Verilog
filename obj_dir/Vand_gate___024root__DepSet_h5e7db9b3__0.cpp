// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vand_gate.h for the primary calling header

#include "Vand_gate__pch.h"
#include "Vand_gate__Syms.h"
#include "Vand_gate___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vand_gate___024root___dump_triggers__ico(Vand_gate___024root* vlSelf);
#endif  // VL_DEBUG

void Vand_gate___024root___eval_triggers__ico(Vand_gate___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vand_gate__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vand_gate___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.set(0U, (IData)(vlSelf->__VicoFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vand_gate___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vand_gate___024root___dump_triggers__act(Vand_gate___024root* vlSelf);
#endif  // VL_DEBUG

void Vand_gate___024root___eval_triggers__act(Vand_gate___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vand_gate__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vand_gate___024root___eval_triggers__act\n"); );
    // Body
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vand_gate___024root___dump_triggers__act(vlSelf);
    }
#endif
}
