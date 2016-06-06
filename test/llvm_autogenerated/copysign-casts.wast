(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func (param f64 f32) (result f64)))
  (type $1 (func (param f32 f64) (result f32)))
  (export "fold_promote" $fold_promote)
  (export "fold_demote" $fold_demote)
  (func $fold_promote (type $0) (param $0 f64) (param $1 f32) (result f64)
    (f64.copysign
      (get_local $0)
      (f64.promote/f32
        (get_local $1)
      )
    )
  )
  (func $fold_demote (type $1) (param $0 f32) (param $1 f64) (result f32)
    (f32.copysign
      (get_local $0)
      (f32.demote/f64
        (get_local $1)
      )
    )
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
