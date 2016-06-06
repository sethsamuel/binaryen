(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func))
  (type $1 (func (param i32)))
  (export "return_void" $return_void)
  (export "return_void_twice" $return_void_twice)
  (func $return_void (type $0)
    (nop)
  )
  (func $return_void_twice (type $1) (param $0 i32)
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
      (return)
    )
    (i32.store
      (i32.const 0)
      (i32.const 1)
    )
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
