(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func (param i32) (result i32)))
  (type $1 (func (param i32) (result i64)))
  (type $2 (func (param i32) (result f32)))
  (type $3 (func (param i32) (result f64)))
  (export "ldi32" $ldi32)
  (export "ldi64" $ldi64)
  (export "ldf32" $ldf32)
  (export "ldf64" $ldf64)
  (func $ldi32 (type $0) (param $0 i32) (result i32)
    (return
      (i32.load
        (get_local $0)
      )
    )
  )
  (func $ldi64 (type $1) (param $0 i32) (result i64)
    (return
      (i64.load
        (get_local $0)
      )
    )
  )
  (func $ldf32 (type $2) (param $0 i32) (result f32)
    (return
      (f32.load
        (get_local $0)
      )
    )
  )
  (func $ldf64 (type $3) (param $0 i32) (result f64)
    (return
      (f64.load
        (get_local $0)
      )
    )
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
