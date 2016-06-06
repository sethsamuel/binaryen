(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func (param i32 i32)))
  (type $1 (func (param i32 i64)))
  (export "trunc_i8_i32" $trunc_i8_i32)
  (export "trunc_i16_i32" $trunc_i16_i32)
  (export "trunc_i8_i64" $trunc_i8_i64)
  (export "trunc_i16_i64" $trunc_i16_i64)
  (export "trunc_i32_i64" $trunc_i32_i64)
  (func $trunc_i8_i32 (type $0) (param $0 i32) (param $1 i32)
    (i32.store8
      (get_local $0)
      (get_local $1)
    )
  )
  (func $trunc_i16_i32 (type $0) (param $0 i32) (param $1 i32)
    (i32.store16
      (get_local $0)
      (get_local $1)
    )
  )
  (func $trunc_i8_i64 (type $1) (param $0 i32) (param $1 i64)
    (i64.store8
      (get_local $0)
      (get_local $1)
    )
  )
  (func $trunc_i16_i64 (type $1) (param $0 i32) (param $1 i64)
    (i64.store16
      (get_local $0)
      (get_local $1)
    )
  )
  (func $trunc_i32_i64 (type $1) (param $0 i32) (param $1 i64)
    (i64.store
      (get_local $0)
      (get_local $1)
    )
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
