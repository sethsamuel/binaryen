(module
  (memory 1
    (segment 4 "\10\04\00\00")
  )
  (export "memory" memory)
  (type $0 (func (param i32 i32 i32) (result i32)))
  (type $1 (func (param i32 i64 i64) (result i64)))
  (type $2 (func (param i32 f32 f32) (result f32)))
  (type $3 (func (param i32 f64 f64) (result f64)))
  (export "select_i32_bool" $select_i32_bool)
  (export "select_i32_eq" $select_i32_eq)
  (export "select_i32_ne" $select_i32_ne)
  (export "select_i64_bool" $select_i64_bool)
  (export "select_i64_eq" $select_i64_eq)
  (export "select_i64_ne" $select_i64_ne)
  (export "select_f32_bool" $select_f32_bool)
  (export "select_f32_eq" $select_f32_eq)
  (export "select_f32_ne" $select_f32_ne)
  (export "select_f64_bool" $select_f64_bool)
  (export "select_f64_eq" $select_f64_eq)
  (export "select_f64_ne" $select_f64_ne)
  (func $select_i32_bool (type $0) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (return
      (select
        (get_local $1)
        (get_local $2)
        (get_local $0)
      )
    )
  )
  (func $select_i32_eq (type $0) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (return
      (select
        (get_local $2)
        (get_local $1)
        (get_local $0)
      )
    )
  )
  (func $select_i32_ne (type $0) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
    (return
      (select
        (get_local $1)
        (get_local $2)
        (get_local $0)
      )
    )
  )
  (func $select_i64_bool (type $1) (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
    (return
      (select
        (get_local $1)
        (get_local $2)
        (get_local $0)
      )
    )
  )
  (func $select_i64_eq (type $1) (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
    (return
      (select
        (get_local $2)
        (get_local $1)
        (get_local $0)
      )
    )
  )
  (func $select_i64_ne (type $1) (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
    (return
      (select
        (get_local $1)
        (get_local $2)
        (get_local $0)
      )
    )
  )
  (func $select_f32_bool (type $2) (param $0 i32) (param $1 f32) (param $2 f32) (result f32)
    (return
      (select
        (get_local $1)
        (get_local $2)
        (get_local $0)
      )
    )
  )
  (func $select_f32_eq (type $2) (param $0 i32) (param $1 f32) (param $2 f32) (result f32)
    (return
      (select
        (get_local $2)
        (get_local $1)
        (get_local $0)
      )
    )
  )
  (func $select_f32_ne (type $2) (param $0 i32) (param $1 f32) (param $2 f32) (result f32)
    (return
      (select
        (get_local $1)
        (get_local $2)
        (get_local $0)
      )
    )
  )
  (func $select_f64_bool (type $3) (param $0 i32) (param $1 f64) (param $2 f64) (result f64)
    (return
      (select
        (get_local $1)
        (get_local $2)
        (get_local $0)
      )
    )
  )
  (func $select_f64_eq (type $3) (param $0 i32) (param $1 f64) (param $2 f64) (result f64)
    (return
      (select
        (get_local $2)
        (get_local $1)
        (get_local $0)
      )
    )
  )
  (func $select_f64_ne (type $3) (param $0 i32) (param $1 f64) (param $2 f64) (result f64)
    (return
      (select
        (get_local $1)
        (get_local $2)
        (get_local $0)
      )
    )
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
