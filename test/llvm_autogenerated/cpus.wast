(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func (param i32) (result i32)))
  (export "f" $f)
  (func $f (type $0) (param $0 i32) (result i32)
    (get_local $0)
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
