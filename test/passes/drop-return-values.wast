(module
  (memory 10)
  (type $0 (func))
  (func $0 (type $0)
    (local $x i32)
    (local $1 i32)
    (drop
      (i32.add
        (tee_local $x
          (i32.const 10)
        )
        (i32.const 20)
      )
    )
    (drop
      (i32.add
        (block
          (block
            (set_local $1
              (i32.const 40)
            )
            (i32.store
              (i32.const 30)
              (get_local $1)
            )
          )
          (get_local $1)
        )
        (i32.const 50)
      )
    )
    (block $block0
      (i32.store
        (i32.const 0)
        (i32.const 1)
      )
    )
    (if
      (i32.const 0)
      (block $block2
        (set_local $x
          (get_local $x)
        )
        (br $block2)
      )
      (set_local $x
        (get_local $x)
      )
    )
    (block $out
      (block
        (drop
          (i32.const 0)
        )
        (br $out)
      )
      (drop
        (i32.const 1)
      )
    )
    (i32.store
      (i32.const 101)
      (block $big
        (if
          (i32.const 0)
          (br $big
            (i32.const 102)
          )
        )
        (i32.load
          (i32.const 100)
        )
      )
    )
    (nop)
  )
)
