(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $FUNCSIG$i (func (result i32)))
  (type $1 (func (param i32 i32) (result i32)))
  (type $2 (func))
  (import $return_something "env" "return_something" (result i32))
  (export "unused_first" $unused_first)
  (export "unused_second" $unused_second)
  (export "call_something" $call_something)
  (func $unused_first (type $1) (param $0 i32) (param $1 i32) (result i32)
    (return
      (get_local $1)
    )
  )
  (func $unused_second (type $1) (param $0 i32) (param $1 i32) (result i32)
    (return
      (get_local $0)
    )
  )
  (func $call_something (type $2)
    (drop
      (call_import $return_something)
    )
    (return)
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
