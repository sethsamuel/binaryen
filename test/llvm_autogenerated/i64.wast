(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func (param i64 i64) (result i64)))
  (type $1 (func (param i64) (result i64)))
  (type $2 (func (param i64) (result i32)))
  (export "add64" $add64)
  (export "sub64" $sub64)
  (export "mul64" $mul64)
  (export "sdiv64" $sdiv64)
  (export "udiv64" $udiv64)
  (export "srem64" $srem64)
  (export "urem64" $urem64)
  (export "and64" $and64)
  (export "or64" $or64)
  (export "xor64" $xor64)
  (export "shl64" $shl64)
  (export "shr64" $shr64)
  (export "sar64" $sar64)
  (export "clz64" $clz64)
  (export "clz64_zero_undef" $clz64_zero_undef)
  (export "ctz64" $ctz64)
  (export "ctz64_zero_undef" $ctz64_zero_undef)
  (export "popcnt64" $popcnt64)
  (export "eqz64" $eqz64)
  (export "rotl" $rotl)
  (export "masked_rotl" $masked_rotl)
  (export "rotr" $rotr)
  (export "masked_rotr" $masked_rotr)
  (func $add64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.add
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $sub64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.sub
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $mul64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.mul
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $sdiv64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.div_s
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $udiv64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.div_u
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $srem64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.rem_s
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $urem64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.rem_u
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $and64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.and
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $or64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.or
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $xor64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.xor
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $shl64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.shl
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $shr64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.shr_u
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $sar64 (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.shr_s
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $clz64 (type $1) (param $0 i64) (result i64)
    (return
      (i64.clz
        (get_local $0)
      )
    )
  )
  (func $clz64_zero_undef (type $1) (param $0 i64) (result i64)
    (return
      (i64.clz
        (get_local $0)
      )
    )
  )
  (func $ctz64 (type $1) (param $0 i64) (result i64)
    (return
      (i64.ctz
        (get_local $0)
      )
    )
  )
  (func $ctz64_zero_undef (type $1) (param $0 i64) (result i64)
    (return
      (i64.ctz
        (get_local $0)
      )
    )
  )
  (func $popcnt64 (type $1) (param $0 i64) (result i64)
    (return
      (i64.popcnt
        (get_local $0)
      )
    )
  )
  (func $eqz64 (type $2) (param $0 i64) (result i32)
    (return
      (i64.eqz
        (get_local $0)
      )
    )
  )
  (func $rotl (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.rotl
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $masked_rotl (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.rotl
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $rotr (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.rotr
        (get_local $0)
        (get_local $1)
      )
    )
  )
  (func $masked_rotr (type $0) (param $0 i64) (param $1 i64) (result i64)
    (return
      (i64.rotr
        (get_local $0)
        (get_local $1)
      )
    )
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
