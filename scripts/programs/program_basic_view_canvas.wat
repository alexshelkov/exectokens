(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (func (;0;) (type 1)
    (local i32 i32 i32)
    i32.const 1048584
    local.set 0
    loop  ;; label = @1
      i32.const 0
      local.set 1
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.add
        i32.const -1
        i32.store align=1
        local.get 1
        i32.const 200
        i32.add
        local.tee 1
        i32.const 10000
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      i32.const 4
      i32.add
      local.set 0
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      i32.const 50
      i32.ne
      br_if 0 (;@1;)
    end)
  (func (;1;) (type 1)
    call 0)
  (func (;2;) (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 1048580
    i32.const 1048580
    i32.load
    local.get 0
    i32.add
    local.tee 1
    i32.store
    local.get 1
    i32.const 500
    i32.ge_u
    if  ;; label = @1
      call 0
      i32.const 1048577
      i32.load8_u
      local.tee 2
      i32.const 200
      i32.mul
      i32.const 1048576
      i32.load8_u
      local.tee 3
      i32.const 2
      i32.shl
      i32.add
      local.tee 0
      i32.const 1048584
      i32.add
      i32.const 255
      i32.store8
      local.get 0
      i32.const 1048585
      i32.add
      i32.const 0
      i32.store8
      local.get 0
      i32.const 1048586
      i32.add
      i32.const 0
      i32.store8
      local.get 0
      i32.const 1048587
      i32.add
      i32.const 255
      i32.store8
      i32.const 1048576
      local.get 3
      i32.const 1
      i32.add
      i32.const 0
      local.get 3
      i32.const 50
      i32.lt_u
      local.get 2
      i32.const 50
      i32.lt_u
      i32.and
      local.tee 0
      select
      i32.store8
      i32.const 1048577
      local.get 2
      i32.const 1
      i32.add
      i32.const 0
      local.get 0
      select
      i32.store8
      i32.const 1048580
      i32.const 0
      i32.store
    end
    local.get 1
    i32.const 499
    i32.gt_u)
  (func (;3;) (type 0) (result i32)
    i32.const 1048584)
  (func (;4;) (type 0) (result i32)
    i32.const 50)
  (func (;5;) (type 0) (result i32)
    i32.const 10)
  (func (;6;) (type 0) (result i32)
    i32.const 500)
  (memory (;0;) 17)
  (global (;0;) i32 (i32.const 1058584))
  (global (;1;) i32 (i32.const 1058592))
  (export "memory" (memory 0))
  (export "smart_nft_view_canvas" (func 1))
  (export "smart_nft_view_canvas_tick" (func 2))
  (export "smart_nft_view_canvas_buffer" (func 3))
  (export "smart_nft_view_canvas_get_height" (func 4))
  (export "smart_nft_view_canvas_get_scale" (func 5))
  (export "smart_nft_view_canvas_get_ticker" (func 6))
  (export "smart_nft_view_canvas_get_width" (func 4))
  (export "__data_end" (global 0))
  (export "__heap_base" (global 1)))
