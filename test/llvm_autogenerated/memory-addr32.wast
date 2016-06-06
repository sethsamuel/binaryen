(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func (result i32)))
  (type $1 (func (param i32)))
  (export "current_memory" $current_memory)
  (export "grow_memory" $grow_memory)
  (func $current_memory (type $0) (result i32)
    (return
      (current_memory)
    )
  )
  (func $grow_memory (type $1) (param $0 i32)
    (drop
      (grow_memory
        (get_local $0)
      )
    )
    (return)
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
