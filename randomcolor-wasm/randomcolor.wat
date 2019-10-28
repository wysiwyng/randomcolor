(module
  (type $t0 (func))
  (type $t1 (func (param i32) (result i32)))
  (type $t2 (func (param i32)))
  (type $t3 (func (result i32)))
  (func $__wasm_call_ctors (type $t0))
  (func $randomcolor (export "randomcolor") (type $t1) (param $p0 i32) (result i32)
    get_local $p0
    call $srand
    call $rand
    set_local $p0
    call $rand
    i32.const 256
    i32.rem_s
    i32.const 16
    i32.shl
    call $rand
    i32.const 256
    i32.rem_s
    i32.const 8
    i32.shl
    i32.or
    get_local $p0
    i32.const 24
    i32.shl
    i32.or
    i32.const 255
    i32.or)
  (func $srand (type $t2) (param $p0 i32)
    i32.const 0
    get_local $p0
    i32.const -1
    i32.add
    i64.extend_u/i32
    i64.store offset=1024)
  (func $rand (type $t3) (result i32)
    (local $l0 i64)
    i32.const 0
    i32.const 0
    i64.load offset=1024
    i64.const 6364136223846793005
    i64.mul
    i64.const 1
    i64.add
    tee_local $l0
    i64.store offset=1024
    get_local $l0
    i64.const 33
    i64.shr_u
    i32.wrap/i64)
  (table $T0 1 1 anyfunc)
  (memory $memory (export "memory") 2)
  (global $g0 (mut i32) (i32.const 66576))
  (global $__heap_base (export "__heap_base") i32 (i32.const 66576))
  (global $__data_end (export "__data_end") i32 (i32.const 1032))
  (data (i32.const 1024) "\00\00\00\00\00\00\00\00"))
