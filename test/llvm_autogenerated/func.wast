(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func))
  (type $1 (func (result i32)))
  (type $2 (func (param i32 f32) (result i32)))
  (type $3 (func (param i32 f32)))
  (type $4 (func (param i32) (result i32)))
  (type $5 (func (result f32)))
  (export "f0" $f0)
  (export "f1" $f1)
  (export "f2" $f2)
  (export "f3" $f3)
  (export "f4" $f4)
  (export "f5" $f5)
  (func $f0 (type $0)
    (return)
  )
  (func $f1 (type $1) (result i32)
    (return
      (i32.const 0)
    )
  )
  (func $f2 (type $2) (param $0 i32) (param $1 f32) (result i32)
    (return
      (i32.const 0)
    )
  )
  (func $f3 (type $3) (param $0 i32) (param $1 f32)
    (return)
  )
  (func $f4 (type $4) (param $0 i32) (result i32)
    (block $label$0
      (br_if $label$0
        (i32.eqz
          (i32.and
            (get_local $0)
            (i32.const 1)
          )
        )
      )
      (return
        (i32.const 0)
      )
    )
    (return
      (i32.const 1)
    )
  )
  (func $f5 (type $5) (result f32)
    (unreachable)
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
