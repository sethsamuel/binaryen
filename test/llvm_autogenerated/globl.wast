(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func))
  (export "foo" $foo)
  (func $foo (type $0)
    (nop)
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
