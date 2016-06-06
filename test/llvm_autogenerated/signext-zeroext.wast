(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func (param i32) (result i32)))
  (export "z2s_func" $z2s_func)
  (export "s2z_func" $s2z_func)
  (export "z2s_call" $z2s_call)
  (export "s2z_call" $s2z_call)
  (func $z2s_func (type $0) (param $0 i32) (result i32)
    (return
      (i32.shr_s
        (i32.shl
          (get_local $0)
          (i32.const 24)
        )
        (i32.const 24)
      )
    )
  )
  (func $s2z_func (type $0) (param $0 i32) (result i32)
    (return
      (i32.and
        (get_local $0)
        (i32.const 255)
      )
    )
  )
  (func $z2s_call (type $0) (param $0 i32) (result i32)
    (return
      (call $z2s_func
        (i32.and
          (get_local $0)
          (i32.const 255)
        )
      )
    )
  )
  (func $s2z_call (type $0) (param $0 i32) (result i32)
    (return
      (i32.shr_s
        (i32.shl
          (call $s2z_func
            (i32.shr_s
              (i32.shl
                (get_local $0)
                (i32.const 24)
              )
              (i32.const 24)
            )
          )
          (i32.const 24)
        )
        (i32.const 24)
      )
    )
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
