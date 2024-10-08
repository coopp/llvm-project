; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --version 5
; RUN: opt -S < %s -passes=dce  | FileCheck %s

declare float @llvm.wasm.loadf16.f32(ptr)

define void @test_llvm_wasm_loadf16_f32(ptr %a) {
; CHECK-LABEL: define void @test_llvm_wasm_loadf16_f32(
; CHECK-SAME: ptr [[A:%.*]]) {
; CHECK-NEXT:    ret void
;
  %v = call float @llvm.wasm.loadf16.f32(ptr %a)
  ret void
}
