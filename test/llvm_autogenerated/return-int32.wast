(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func (param i32) (result i32)))
  (export "return_i32" $return_i32)
  (export "return_i32_twice" $return_i32_twice)
  (func $return_i32 (type $0) (param $0 i32) (result i32)
    (get_local $0)
  )
  (func $return_i32_twice (type $0) (param $0 i32) (result i32)
    (block $label$0
      (br_if $label$0
        (i32.eqz
          (get_local $0)
        )
      )
      (i32.store
        (i32.const 0)
        (i32.const 0)
      )
      (return
        (i32.const 1)
      )
    )
    (i32.store
      (i32.const 0)
      (i32.const 2)
    )
    (i32.const 3)
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
