(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i64 i32 i32)))
  (type (;15;) (func (param i32 i64 i32 i32)))
  (type (;16;) (func (param i32 i32 f32 i32 i32)))
  (type (;17;) (func (param i32 f32 i32 i32)))
  (type (;18;) (func (param i32 i32 f64 i32 i32)))
  (type (;19;) (func (param i32 f64 i32 i32)))
  (import "wbg" "__wbg_smartnftmainrun_ce08a810b8bdbd71" (func (;0;) (type 1)))
  (import "wbg" "__wbindgen_object_drop_ref" (func (;1;) (type 0)))
  (import "wbg" "__wbindgen_cb_drop" (func (;2;) (type 4)))
  (import "wbg" "__wbg_queueMicrotask_48421b3cc9052b68" (func (;3;) (type 4)))
  (import "wbg" "__wbindgen_is_function" (func (;4;) (type 4)))
  (import "wbg" "__wbg_queueMicrotask_12a30234db4045d3" (func (;5;) (type 0)))
  (import "wbg" "__wbg_newnoargs_76313bd6ff35d0f2" (func (;6;) (type 1)))
  (import "wbg" "__wbg_call_1084a111329e68ce" (func (;7;) (type 1)))
  (import "wbg" "__wbindgen_object_clone_ref" (func (;8;) (type 4)))
  (import "wbg" "__wbg_self_3093d5d1f7bcb682" (func (;9;) (type 6)))
  (import "wbg" "__wbg_window_3bcfc4d31bc012f8" (func (;10;) (type 6)))
  (import "wbg" "__wbg_globalThis_86b222e13bdf32ed" (func (;11;) (type 6)))
  (import "wbg" "__wbg_global_e5a3fe56f8be9485" (func (;12;) (type 6)))
  (import "wbg" "__wbindgen_is_undefined" (func (;13;) (type 4)))
  (import "wbg" "__wbg_call_89af060b4e1523f2" (func (;14;) (type 3)))
  (import "wbg" "__wbg_new_b85e72ed1bfd57f9" (func (;15;) (type 1)))
  (import "wbg" "__wbg_resolve_570458cb99d56a43" (func (;16;) (type 4)))
  (import "wbg" "__wbg_then_95e6edc0f89b73b1" (func (;17;) (type 1)))
  (import "wbg" "__wbg_then_876bb3c633745cc6" (func (;18;) (type 3)))
  (import "wbg" "__wbg_buffer_b7b08af79b0b0974" (func (;19;) (type 4)))
  (import "wbg" "__wbg_new_ea1883e1e5e86686" (func (;20;) (type 4)))
  (import "wbg" "__wbg_set_d1e79e2388520f18" (func (;21;) (type 5)))
  (import "wbg" "__wbg_length_8339fcf5d8ecd12e" (func (;22;) (type 4)))
  (import "wbg" "__wbindgen_debug_string" (func (;23;) (type 2)))
  (import "wbg" "__wbindgen_throw" (func (;24;) (type 2)))
  (import "wbg" "__wbindgen_memory" (func (;25;) (type 6)))
  (import "wbg" "__wbindgen_uint8_array_new" (func (;26;) (type 1)))
  (import "wbg" "__wbindgen_closure_wrapper58" (func (;27;) (type 3)))
  (func (;28;) (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 8
    global.set 0
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 245
                  i32.ge_u
                  if  ;; label = @8
                    i32.const 0
                    local.get 0
                    i32.const -65587
                    i32.ge_u
                    br_if 7 (;@1;)
                    drop
                    local.get 0
                    i32.const 11
                    i32.add
                    local.tee 1
                    i32.const -8
                    i32.and
                    local.set 5
                    i32.const 1060952
                    i32.load
                    local.tee 9
                    i32.eqz
                    br_if 4 (;@4;)
                    i32.const 31
                    local.set 7
                    i32.const 0
                    local.get 5
                    i32.sub
                    local.set 4
                    local.get 0
                    i32.const 16777204
                    i32.le_u
                    if  ;; label = @9
                      local.get 5
                      i32.const 6
                      local.get 1
                      i32.const 8
                      i32.shr_u
                      i32.clz
                      local.tee 0
                      i32.sub
                      i32.shr_u
                      i32.const 1
                      i32.and
                      local.get 0
                      i32.const 1
                      i32.shl
                      i32.sub
                      i32.const 62
                      i32.add
                      local.set 7
                    end
                    local.get 7
                    i32.const 2
                    i32.shl
                    i32.const 1060540
                    i32.add
                    i32.load
                    local.tee 1
                    i32.eqz
                    if  ;; label = @9
                      i32.const 0
                      local.set 0
                      br 2 (;@7;)
                    end
                    i32.const 0
                    local.set 0
                    local.get 5
                    i32.const 25
                    local.get 7
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    i32.const 0
                    local.get 7
                    i32.const 31
                    i32.ne
                    select
                    i32.shl
                    local.set 3
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.tee 6
                        local.get 5
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 6
                        local.get 5
                        i32.sub
                        local.tee 6
                        local.get 4
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 1
                        local.set 2
                        local.get 6
                        local.tee 4
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 4
                        local.get 1
                        local.set 0
                        br 4 (;@6;)
                      end
                      local.get 1
                      i32.load offset=20
                      local.tee 6
                      local.get 0
                      local.get 6
                      local.get 1
                      local.get 3
                      i32.const 29
                      i32.shr_u
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      i32.load
                      local.tee 1
                      i32.ne
                      select
                      local.get 0
                      local.get 6
                      select
                      local.set 0
                      local.get 3
                      i32.const 1
                      i32.shl
                      local.set 3
                      local.get 1
                      br_if 0 (;@9;)
                    end
                    br 1 (;@7;)
                  end
                  i32.const 1060948
                  i32.load
                  local.tee 2
                  i32.const 16
                  local.get 0
                  i32.const 11
                  i32.add
                  i32.const 504
                  i32.and
                  local.get 0
                  i32.const 11
                  i32.lt_u
                  select
                  local.tee 5
                  i32.const 3
                  i32.shr_u
                  local.tee 0
                  i32.shr_u
                  local.tee 1
                  i32.const 3
                  i32.and
                  if  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const -1
                      i32.xor
                      i32.const 1
                      i32.and
                      local.get 0
                      i32.add
                      local.tee 6
                      i32.const 3
                      i32.shl
                      local.tee 0
                      i32.const 1060684
                      i32.add
                      local.tee 3
                      local.get 0
                      i32.const 1060692
                      i32.add
                      i32.load
                      local.tee 1
                      i32.load offset=8
                      local.tee 4
                      i32.ne
                      if  ;; label = @10
                        local.get 4
                        local.get 3
                        i32.store offset=12
                        local.get 3
                        local.get 4
                        i32.store offset=8
                        br 1 (;@9;)
                      end
                      i32.const 1060948
                      local.get 2
                      i32.const -2
                      local.get 6
                      i32.rotl
                      i32.and
                      i32.store
                    end
                    local.get 1
                    local.get 0
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 1
                    i32.add
                    local.tee 0
                    local.get 0
                    i32.load offset=4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    i32.const 8
                    i32.add
                    br 7 (;@1;)
                  end
                  local.get 5
                  i32.const 1060956
                  i32.load
                  i32.le_u
                  br_if 3 (;@4;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1060952
                        i32.load
                        local.tee 0
                        i32.eqz
                        br_if 6 (;@4;)
                        local.get 0
                        i32.ctz
                        i32.const 2
                        i32.shl
                        i32.const 1060540
                        i32.add
                        i32.load
                        local.tee 2
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 5
                        i32.sub
                        local.set 4
                        local.get 2
                        local.set 1
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 2
                            i32.load offset=16
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 2
                            i32.load offset=20
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 1
                            i32.load offset=24
                            local.set 7
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                local.get 1
                                i32.load offset=12
                                local.tee 0
                                i32.eq
                                if  ;; label = @15
                                  local.get 1
                                  i32.const 20
                                  i32.const 16
                                  local.get 1
                                  i32.load offset=20
                                  local.tee 0
                                  select
                                  i32.add
                                  i32.load
                                  local.tee 2
                                  br_if 1 (;@14;)
                                  i32.const 0
                                  local.set 0
                                  br 2 (;@13;)
                                end
                                local.get 1
                                i32.load offset=8
                                local.tee 2
                                local.get 0
                                i32.store offset=12
                                local.get 0
                                local.get 2
                                i32.store offset=8
                                br 1 (;@13;)
                              end
                              local.get 1
                              i32.const 20
                              i32.add
                              local.get 1
                              i32.const 16
                              i32.add
                              local.get 0
                              select
                              local.set 3
                              loop  ;; label = @14
                                local.get 3
                                local.set 6
                                local.get 2
                                local.tee 0
                                i32.const 20
                                i32.add
                                local.get 0
                                i32.const 16
                                i32.add
                                local.get 0
                                i32.load offset=20
                                local.tee 2
                                select
                                local.set 3
                                local.get 0
                                i32.const 20
                                i32.const 16
                                local.get 2
                                select
                                i32.add
                                i32.load
                                local.tee 2
                                br_if 0 (;@14;)
                              end
                              local.get 6
                              i32.const 0
                              i32.store
                            end
                            local.get 7
                            i32.eqz
                            br_if 4 (;@8;)
                            local.get 1
                            local.get 1
                            i32.load offset=28
                            i32.const 2
                            i32.shl
                            i32.const 1060540
                            i32.add
                            local.tee 2
                            i32.load
                            i32.ne
                            if  ;; label = @13
                              local.get 7
                              i32.const 16
                              i32.const 20
                              local.get 7
                              i32.load offset=16
                              local.get 1
                              i32.eq
                              select
                              i32.add
                              local.get 0
                              i32.store
                              local.get 0
                              i32.eqz
                              br_if 5 (;@8;)
                              br 4 (;@9;)
                            end
                            local.get 2
                            local.get 0
                            i32.store
                            local.get 0
                            br_if 3 (;@9;)
                            i32.const 1060952
                            i32.const 1060952
                            i32.load
                            i32.const -2
                            local.get 1
                            i32.load offset=28
                            i32.rotl
                            i32.and
                            i32.store
                            br 4 (;@8;)
                          end
                          local.get 0
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 5
                          i32.sub
                          local.tee 2
                          local.get 4
                          local.get 2
                          local.get 4
                          i32.lt_u
                          local.tee 2
                          select
                          local.set 4
                          local.get 0
                          local.get 1
                          local.get 2
                          select
                          local.set 1
                          local.get 0
                          local.set 2
                          br 0 (;@11;)
                        end
                        unreachable
                      end
                      block  ;; label = @10
                        i32.const 2
                        local.get 0
                        i32.shl
                        local.tee 3
                        i32.const 0
                        local.get 3
                        i32.sub
                        i32.or
                        local.get 1
                        local.get 0
                        i32.shl
                        i32.and
                        i32.ctz
                        local.tee 6
                        i32.const 3
                        i32.shl
                        local.tee 1
                        i32.const 1060684
                        i32.add
                        local.tee 3
                        local.get 1
                        i32.const 1060692
                        i32.add
                        i32.load
                        local.tee 0
                        i32.load offset=8
                        local.tee 4
                        i32.ne
                        if  ;; label = @11
                          local.get 4
                          local.get 3
                          i32.store offset=12
                          local.get 3
                          local.get 4
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        i32.const 1060948
                        local.get 2
                        i32.const -2
                        local.get 6
                        i32.rotl
                        i32.and
                        i32.store
                      end
                      local.get 0
                      local.get 5
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 5
                      i32.add
                      local.tee 6
                      local.get 1
                      local.get 5
                      i32.sub
                      local.tee 3
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 1
                      i32.add
                      local.get 3
                      i32.store
                      i32.const 1060956
                      i32.load
                      local.tee 4
                      if  ;; label = @10
                        local.get 4
                        i32.const -8
                        i32.and
                        i32.const 1060684
                        i32.add
                        local.set 1
                        i32.const 1060964
                        i32.load
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 1060948
                          i32.load
                          local.tee 5
                          i32.const 1
                          local.get 4
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 4
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            i32.const 1060948
                            local.get 4
                            local.get 5
                            i32.or
                            i32.store
                            local.get 1
                            br 1 (;@11;)
                          end
                          local.get 1
                          i32.load offset=8
                        end
                        local.set 4
                        local.get 1
                        local.get 2
                        i32.store offset=8
                        local.get 4
                        local.get 2
                        i32.store offset=12
                        local.get 2
                        local.get 1
                        i32.store offset=12
                        local.get 2
                        local.get 4
                        i32.store offset=8
                      end
                      i32.const 1060964
                      local.get 6
                      i32.store
                      i32.const 1060956
                      local.get 3
                      i32.store
                      local.get 0
                      i32.const 8
                      i32.add
                      br 8 (;@1;)
                    end
                    local.get 0
                    local.get 7
                    i32.store offset=24
                    local.get 1
                    i32.load offset=16
                    local.tee 2
                    if  ;; label = @9
                      local.get 0
                      local.get 2
                      i32.store offset=16
                      local.get 2
                      local.get 0
                      i32.store offset=24
                    end
                    local.get 1
                    i32.load offset=20
                    local.tee 2
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 2
                    i32.store offset=20
                    local.get 2
                    local.get 0
                    i32.store offset=24
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 4
                      i32.const 16
                      i32.ge_u
                      if  ;; label = @10
                        local.get 1
                        local.get 5
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 1
                        local.get 5
                        i32.add
                        local.tee 3
                        local.get 4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 3
                        local.get 4
                        i32.add
                        local.get 4
                        i32.store
                        i32.const 1060956
                        i32.load
                        local.tee 6
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 6
                        i32.const -8
                        i32.and
                        i32.const 1060684
                        i32.add
                        local.set 0
                        i32.const 1060964
                        i32.load
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 1060948
                          i32.load
                          local.tee 5
                          i32.const 1
                          local.get 6
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 6
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            i32.const 1060948
                            local.get 5
                            local.get 6
                            i32.or
                            i32.store
                            local.get 0
                            br 1 (;@11;)
                          end
                          local.get 0
                          i32.load offset=8
                        end
                        local.set 6
                        local.get 0
                        local.get 2
                        i32.store offset=8
                        local.get 6
                        local.get 2
                        i32.store offset=12
                        local.get 2
                        local.get 0
                        i32.store offset=12
                        local.get 2
                        local.get 6
                        i32.store offset=8
                        br 1 (;@9;)
                      end
                      local.get 1
                      local.get 4
                      local.get 5
                      i32.add
                      local.tee 0
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 1
                      i32.add
                      local.tee 0
                      local.get 0
                      i32.load offset=4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      br 1 (;@8;)
                    end
                    i32.const 1060964
                    local.get 3
                    i32.store
                    i32.const 1060956
                    local.get 4
                    i32.store
                  end
                  local.get 1
                  i32.const 8
                  i32.add
                  br 6 (;@1;)
                end
                local.get 0
                local.get 2
                i32.or
                i32.eqz
                if  ;; label = @7
                  i32.const 0
                  local.set 2
                  i32.const 2
                  local.get 7
                  i32.shl
                  local.tee 0
                  i32.const 0
                  local.get 0
                  i32.sub
                  i32.or
                  local.get 9
                  i32.and
                  local.tee 0
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  i32.ctz
                  i32.const 2
                  i32.shl
                  i32.const 1060540
                  i32.add
                  i32.load
                  local.set 0
                end
                local.get 0
                i32.eqz
                br_if 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 0
                local.get 2
                local.get 0
                i32.load offset=4
                i32.const -8
                i32.and
                local.tee 3
                local.get 5
                i32.sub
                local.tee 6
                local.get 4
                i32.lt_u
                local.tee 7
                select
                local.set 9
                local.get 0
                i32.load offset=16
                local.tee 1
                i32.eqz
                if  ;; label = @7
                  local.get 0
                  i32.load offset=20
                  local.set 1
                end
                local.get 2
                local.get 9
                local.get 3
                local.get 5
                i32.lt_u
                local.tee 0
                select
                local.set 2
                local.get 4
                local.get 6
                local.get 4
                local.get 7
                select
                local.get 0
                select
                local.set 4
                local.get 1
                local.tee 0
                br_if 0 (;@6;)
              end
            end
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.const 1060956
            i32.load
            local.tee 0
            i32.le_u
            local.get 4
            local.get 0
            local.get 5
            i32.sub
            i32.ge_u
            i32.and
            br_if 0 (;@4;)
            local.get 2
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                local.get 2
                i32.load offset=12
                local.tee 0
                i32.eq
                if  ;; label = @7
                  local.get 2
                  i32.const 20
                  i32.const 16
                  local.get 2
                  i32.load offset=20
                  local.tee 0
                  select
                  i32.add
                  i32.load
                  local.tee 1
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 0
                  br 2 (;@5;)
                end
                local.get 2
                i32.load offset=8
                local.tee 1
                local.get 0
                i32.store offset=12
                local.get 0
                local.get 1
                i32.store offset=8
                br 1 (;@5;)
              end
              local.get 2
              i32.const 20
              i32.add
              local.get 2
              i32.const 16
              i32.add
              local.get 0
              select
              local.set 3
              loop  ;; label = @6
                local.get 3
                local.set 6
                local.get 1
                local.tee 0
                i32.const 20
                i32.add
                local.get 0
                i32.const 16
                i32.add
                local.get 0
                i32.load offset=20
                local.tee 1
                select
                local.set 3
                local.get 0
                i32.const 20
                i32.const 16
                local.get 1
                select
                i32.add
                i32.load
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 6
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            local.get 2
            i32.load offset=28
            i32.const 2
            i32.shl
            i32.const 1060540
            i32.add
            local.tee 1
            i32.load
            i32.ne
            if  ;; label = @5
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 2
              i32.eq
              select
              i32.add
              local.get 0
              i32.store
              local.get 0
              i32.eqz
              br_if 3 (;@2;)
              br 2 (;@3;)
            end
            local.get 1
            local.get 0
            i32.store
            local.get 0
            br_if 1 (;@3;)
            i32.const 1060952
            i32.const 1060952
            i32.load
            i32.const -2
            local.get 2
            i32.load offset=28
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.const 1060956
                    i32.load
                    local.tee 1
                    i32.gt_u
                    if  ;; label = @9
                      local.get 5
                      i32.const 1060960
                      i32.load
                      local.tee 0
                      i32.ge_u
                      if  ;; label = @10
                        local.get 5
                        i32.const 65583
                        i32.add
                        i32.const -65536
                        i32.and
                        local.tee 2
                        i32.const 16
                        i32.shr_u
                        memory.grow
                        local.set 0
                        local.get 8
                        i32.const 4
                        i32.add
                        local.tee 1
                        i32.const 0
                        i32.store offset=8
                        local.get 1
                        i32.const 0
                        local.get 2
                        i32.const -65536
                        i32.and
                        local.get 0
                        i32.const -1
                        i32.eq
                        local.tee 2
                        select
                        i32.store offset=4
                        local.get 1
                        i32.const 0
                        local.get 0
                        i32.const 16
                        i32.shl
                        local.get 2
                        select
                        i32.store
                        i32.const 0
                        local.get 8
                        i32.load offset=4
                        local.tee 1
                        i32.eqz
                        br_if 9 (;@1;)
                        drop
                        local.get 8
                        i32.load offset=12
                        local.set 6
                        i32.const 1060972
                        local.get 8
                        i32.load offset=8
                        local.tee 4
                        i32.const 1060972
                        i32.load
                        i32.add
                        local.tee 0
                        i32.store
                        i32.const 1060976
                        i32.const 1060976
                        i32.load
                        local.tee 2
                        local.get 0
                        local.get 0
                        local.get 2
                        i32.lt_u
                        select
                        i32.store
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 1060968
                            i32.load
                            local.tee 2
                            if  ;; label = @13
                              i32.const 1060668
                              local.set 0
                              loop  ;; label = @14
                                local.get 1
                                local.get 0
                                i32.load
                                local.tee 3
                                local.get 0
                                i32.load offset=4
                                local.tee 7
                                i32.add
                                i32.eq
                                br_if 2 (;@12;)
                                local.get 0
                                i32.load offset=8
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                              br 2 (;@11;)
                            end
                            i32.const 1060984
                            i32.load
                            local.tee 0
                            i32.const 0
                            local.get 0
                            local.get 1
                            i32.le_u
                            select
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1060984
                              local.get 1
                              i32.store
                            end
                            i32.const 1060988
                            i32.const 4095
                            i32.store
                            i32.const 1060680
                            local.get 6
                            i32.store
                            i32.const 1060672
                            local.get 4
                            i32.store
                            i32.const 1060668
                            local.get 1
                            i32.store
                            i32.const 1060696
                            i32.const 1060684
                            i32.store
                            i32.const 1060704
                            i32.const 1060692
                            i32.store
                            i32.const 1060692
                            i32.const 1060684
                            i32.store
                            i32.const 1060712
                            i32.const 1060700
                            i32.store
                            i32.const 1060700
                            i32.const 1060692
                            i32.store
                            i32.const 1060720
                            i32.const 1060708
                            i32.store
                            i32.const 1060708
                            i32.const 1060700
                            i32.store
                            i32.const 1060728
                            i32.const 1060716
                            i32.store
                            i32.const 1060716
                            i32.const 1060708
                            i32.store
                            i32.const 1060736
                            i32.const 1060724
                            i32.store
                            i32.const 1060724
                            i32.const 1060716
                            i32.store
                            i32.const 1060744
                            i32.const 1060732
                            i32.store
                            i32.const 1060732
                            i32.const 1060724
                            i32.store
                            i32.const 1060752
                            i32.const 1060740
                            i32.store
                            i32.const 1060740
                            i32.const 1060732
                            i32.store
                            i32.const 1060760
                            i32.const 1060748
                            i32.store
                            i32.const 1060748
                            i32.const 1060740
                            i32.store
                            i32.const 1060756
                            i32.const 1060748
                            i32.store
                            i32.const 1060768
                            i32.const 1060756
                            i32.store
                            i32.const 1060764
                            i32.const 1060756
                            i32.store
                            i32.const 1060776
                            i32.const 1060764
                            i32.store
                            i32.const 1060772
                            i32.const 1060764
                            i32.store
                            i32.const 1060784
                            i32.const 1060772
                            i32.store
                            i32.const 1060780
                            i32.const 1060772
                            i32.store
                            i32.const 1060792
                            i32.const 1060780
                            i32.store
                            i32.const 1060788
                            i32.const 1060780
                            i32.store
                            i32.const 1060800
                            i32.const 1060788
                            i32.store
                            i32.const 1060796
                            i32.const 1060788
                            i32.store
                            i32.const 1060808
                            i32.const 1060796
                            i32.store
                            i32.const 1060804
                            i32.const 1060796
                            i32.store
                            i32.const 1060816
                            i32.const 1060804
                            i32.store
                            i32.const 1060812
                            i32.const 1060804
                            i32.store
                            i32.const 1060824
                            i32.const 1060812
                            i32.store
                            i32.const 1060832
                            i32.const 1060820
                            i32.store
                            i32.const 1060820
                            i32.const 1060812
                            i32.store
                            i32.const 1060840
                            i32.const 1060828
                            i32.store
                            i32.const 1060828
                            i32.const 1060820
                            i32.store
                            i32.const 1060848
                            i32.const 1060836
                            i32.store
                            i32.const 1060836
                            i32.const 1060828
                            i32.store
                            i32.const 1060856
                            i32.const 1060844
                            i32.store
                            i32.const 1060844
                            i32.const 1060836
                            i32.store
                            i32.const 1060864
                            i32.const 1060852
                            i32.store
                            i32.const 1060852
                            i32.const 1060844
                            i32.store
                            i32.const 1060872
                            i32.const 1060860
                            i32.store
                            i32.const 1060860
                            i32.const 1060852
                            i32.store
                            i32.const 1060880
                            i32.const 1060868
                            i32.store
                            i32.const 1060868
                            i32.const 1060860
                            i32.store
                            i32.const 1060888
                            i32.const 1060876
                            i32.store
                            i32.const 1060876
                            i32.const 1060868
                            i32.store
                            i32.const 1060896
                            i32.const 1060884
                            i32.store
                            i32.const 1060884
                            i32.const 1060876
                            i32.store
                            i32.const 1060904
                            i32.const 1060892
                            i32.store
                            i32.const 1060892
                            i32.const 1060884
                            i32.store
                            i32.const 1060912
                            i32.const 1060900
                            i32.store
                            i32.const 1060900
                            i32.const 1060892
                            i32.store
                            i32.const 1060920
                            i32.const 1060908
                            i32.store
                            i32.const 1060908
                            i32.const 1060900
                            i32.store
                            i32.const 1060928
                            i32.const 1060916
                            i32.store
                            i32.const 1060916
                            i32.const 1060908
                            i32.store
                            i32.const 1060936
                            i32.const 1060924
                            i32.store
                            i32.const 1060924
                            i32.const 1060916
                            i32.store
                            i32.const 1060944
                            i32.const 1060932
                            i32.store
                            i32.const 1060932
                            i32.const 1060924
                            i32.store
                            i32.const 1060968
                            local.get 1
                            i32.const 15
                            i32.add
                            i32.const -8
                            i32.and
                            local.tee 0
                            i32.const 8
                            i32.sub
                            local.tee 2
                            i32.store
                            i32.const 1060940
                            i32.const 1060932
                            i32.store
                            i32.const 1060960
                            local.get 4
                            i32.const 40
                            i32.sub
                            local.tee 3
                            local.get 1
                            local.get 0
                            i32.sub
                            i32.add
                            i32.const 8
                            i32.add
                            local.tee 0
                            i32.store
                            local.get 2
                            local.get 0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 1
                            local.get 3
                            i32.add
                            i32.const 40
                            i32.store offset=4
                            i32.const 1060980
                            i32.const 2097152
                            i32.store
                            br 8 (;@4;)
                          end
                          local.get 2
                          local.get 3
                          i32.lt_u
                          local.get 1
                          local.get 2
                          i32.le_u
                          i32.or
                          br_if 0 (;@11;)
                          local.get 0
                          i32.load offset=12
                          local.tee 3
                          i32.const 1
                          i32.and
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const 1
                          i32.shr_u
                          local.get 6
                          i32.eq
                          br_if 3 (;@8;)
                        end
                        i32.const 1060984
                        i32.const 1060984
                        i32.load
                        local.tee 0
                        local.get 1
                        local.get 0
                        local.get 1
                        i32.lt_u
                        select
                        i32.store
                        local.get 1
                        local.get 4
                        i32.add
                        local.set 3
                        i32.const 1060668
                        local.set 0
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 3
                              local.get 0
                              i32.load
                              local.tee 7
                              i32.ne
                              if  ;; label = @14
                                local.get 0
                                i32.load offset=8
                                local.tee 0
                                br_if 1 (;@13;)
                                br 2 (;@12;)
                              end
                            end
                            local.get 0
                            i32.load offset=12
                            local.tee 3
                            i32.const 1
                            i32.and
                            br_if 0 (;@12;)
                            local.get 3
                            i32.const 1
                            i32.shr_u
                            local.get 6
                            i32.eq
                            br_if 1 (;@11;)
                          end
                          i32.const 1060668
                          local.set 0
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 2
                              local.get 0
                              i32.load
                              local.tee 3
                              i32.ge_u
                              if  ;; label = @14
                                local.get 2
                                local.get 3
                                local.get 0
                                i32.load offset=4
                                i32.add
                                local.tee 7
                                i32.lt_u
                                br_if 1 (;@13;)
                              end
                              local.get 0
                              i32.load offset=8
                              local.set 0
                              br 1 (;@12;)
                            end
                          end
                          i32.const 1060968
                          local.get 1
                          i32.const 15
                          i32.add
                          i32.const -8
                          i32.and
                          local.tee 0
                          i32.const 8
                          i32.sub
                          local.tee 3
                          i32.store
                          i32.const 1060960
                          local.get 4
                          i32.const 40
                          i32.sub
                          local.tee 9
                          local.get 1
                          local.get 0
                          i32.sub
                          i32.add
                          i32.const 8
                          i32.add
                          local.tee 0
                          i32.store
                          local.get 3
                          local.get 0
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 1
                          local.get 9
                          i32.add
                          i32.const 40
                          i32.store offset=4
                          i32.const 1060980
                          i32.const 2097152
                          i32.store
                          local.get 2
                          local.get 7
                          i32.const 32
                          i32.sub
                          i32.const -8
                          i32.and
                          i32.const 8
                          i32.sub
                          local.tee 0
                          local.get 0
                          local.get 2
                          i32.const 16
                          i32.add
                          i32.lt_u
                          select
                          local.tee 3
                          i32.const 27
                          i32.store offset=4
                          i32.const 1060668
                          i64.load align=4
                          local.set 10
                          local.get 3
                          i32.const 16
                          i32.add
                          i32.const 1060676
                          i64.load align=4
                          i64.store align=4
                          local.get 3
                          local.get 10
                          i64.store offset=8 align=4
                          i32.const 1060680
                          local.get 6
                          i32.store
                          i32.const 1060672
                          local.get 4
                          i32.store
                          i32.const 1060668
                          local.get 1
                          i32.store
                          i32.const 1060676
                          local.get 3
                          i32.const 8
                          i32.add
                          i32.store
                          local.get 3
                          i32.const 28
                          i32.add
                          local.set 0
                          loop  ;; label = @12
                            local.get 0
                            i32.const 7
                            i32.store
                            local.get 0
                            i32.const 4
                            i32.add
                            local.tee 0
                            local.get 7
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          local.get 2
                          local.get 3
                          i32.eq
                          br_if 7 (;@4;)
                          local.get 3
                          local.get 3
                          i32.load offset=4
                          i32.const -2
                          i32.and
                          i32.store offset=4
                          local.get 2
                          local.get 3
                          local.get 2
                          i32.sub
                          local.tee 0
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 3
                          local.get 0
                          i32.store
                          local.get 0
                          i32.const 256
                          i32.ge_u
                          if  ;; label = @12
                            local.get 2
                            local.get 0
                            call 41
                            br 8 (;@4;)
                          end
                          local.get 0
                          i32.const 248
                          i32.and
                          i32.const 1060684
                          i32.add
                          local.set 1
                          block (result i32)  ;; label = @12
                            i32.const 1060948
                            i32.load
                            local.tee 3
                            i32.const 1
                            local.get 0
                            i32.const 3
                            i32.shr_u
                            i32.shl
                            local.tee 0
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1060948
                              local.get 0
                              local.get 3
                              i32.or
                              i32.store
                              local.get 1
                              br 1 (;@12;)
                            end
                            local.get 1
                            i32.load offset=8
                          end
                          local.set 0
                          local.get 1
                          local.get 2
                          i32.store offset=8
                          local.get 0
                          local.get 2
                          i32.store offset=12
                          local.get 2
                          local.get 1
                          i32.store offset=12
                          local.get 2
                          local.get 0
                          i32.store offset=8
                          br 7 (;@4;)
                        end
                        local.get 0
                        local.get 1
                        i32.store
                        local.get 0
                        local.get 0
                        i32.load offset=4
                        local.get 4
                        i32.add
                        i32.store offset=4
                        local.get 1
                        i32.const 15
                        i32.add
                        i32.const -8
                        i32.and
                        i32.const 8
                        i32.sub
                        local.tee 2
                        local.get 5
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 7
                        i32.const 15
                        i32.add
                        i32.const -8
                        i32.and
                        i32.const 8
                        i32.sub
                        local.tee 4
                        local.get 2
                        local.get 5
                        i32.add
                        local.tee 0
                        i32.sub
                        local.set 5
                        local.get 4
                        i32.const 1060968
                        i32.load
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 4
                        i32.const 1060964
                        i32.load
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 4
                        i32.load offset=4
                        local.tee 1
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.eq
                        if  ;; label = @11
                          local.get 4
                          local.get 1
                          i32.const -8
                          i32.and
                          local.tee 1
                          call 38
                          local.get 1
                          local.get 5
                          i32.add
                          local.set 5
                          local.get 1
                          local.get 4
                          i32.add
                          local.tee 4
                          i32.load offset=4
                          local.set 1
                        end
                        local.get 4
                        local.get 1
                        i32.const -2
                        i32.and
                        i32.store offset=4
                        local.get 0
                        local.get 5
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 5
                        i32.add
                        local.get 5
                        i32.store
                        local.get 5
                        i32.const 256
                        i32.ge_u
                        if  ;; label = @11
                          local.get 0
                          local.get 5
                          call 41
                          br 6 (;@5;)
                        end
                        local.get 5
                        i32.const 248
                        i32.and
                        i32.const 1060684
                        i32.add
                        local.set 1
                        block (result i32)  ;; label = @11
                          i32.const 1060948
                          i32.load
                          local.tee 3
                          i32.const 1
                          local.get 5
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 4
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            i32.const 1060948
                            local.get 3
                            local.get 4
                            i32.or
                            i32.store
                            local.get 1
                            br 1 (;@11;)
                          end
                          local.get 1
                          i32.load offset=8
                        end
                        local.set 3
                        local.get 1
                        local.get 0
                        i32.store offset=8
                        local.get 3
                        local.get 0
                        i32.store offset=12
                        local.get 0
                        local.get 1
                        i32.store offset=12
                        local.get 0
                        local.get 3
                        i32.store offset=8
                        br 5 (;@5;)
                      end
                      i32.const 1060960
                      local.get 0
                      local.get 5
                      i32.sub
                      local.tee 1
                      i32.store
                      i32.const 1060968
                      i32.const 1060968
                      i32.load
                      local.tee 0
                      local.get 5
                      i32.add
                      local.tee 2
                      i32.store
                      local.get 2
                      local.get 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 5
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      i32.const 8
                      i32.add
                      br 8 (;@1;)
                    end
                    i32.const 1060964
                    i32.load
                    local.set 0
                    block  ;; label = @9
                      local.get 1
                      local.get 5
                      i32.sub
                      local.tee 2
                      i32.const 15
                      i32.le_u
                      if  ;; label = @10
                        i32.const 1060964
                        i32.const 0
                        i32.store
                        i32.const 1060956
                        i32.const 0
                        i32.store
                        local.get 0
                        local.get 1
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 1
                        i32.add
                        local.tee 1
                        local.get 1
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 1 (;@9;)
                      end
                      i32.const 1060956
                      local.get 2
                      i32.store
                      i32.const 1060964
                      local.get 0
                      local.get 5
                      i32.add
                      local.tee 3
                      i32.store
                      local.get 3
                      local.get 2
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 1
                      i32.add
                      local.get 2
                      i32.store
                      local.get 0
                      local.get 5
                      i32.const 3
                      i32.or
                      i32.store offset=4
                    end
                    local.get 0
                    i32.const 8
                    i32.add
                    br 7 (;@1;)
                  end
                  local.get 0
                  local.get 4
                  local.get 7
                  i32.add
                  i32.store offset=4
                  i32.const 1060968
                  i32.const 1060968
                  i32.load
                  local.tee 0
                  i32.const 15
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 1
                  i32.const 8
                  i32.sub
                  local.tee 2
                  i32.store
                  i32.const 1060960
                  i32.const 1060960
                  i32.load
                  local.get 4
                  i32.add
                  local.tee 3
                  local.get 0
                  local.get 1
                  i32.sub
                  i32.add
                  i32.const 8
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 2
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 3
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  i32.const 1060980
                  i32.const 2097152
                  i32.store
                  br 3 (;@4;)
                end
                i32.const 1060968
                local.get 0
                i32.store
                i32.const 1060960
                i32.const 1060960
                i32.load
                local.get 5
                i32.add
                local.tee 1
                i32.store
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                br 1 (;@5;)
              end
              i32.const 1060964
              local.get 0
              i32.store
              i32.const 1060956
              i32.const 1060956
              i32.load
              local.get 5
              i32.add
              local.tee 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
            end
            local.get 2
            i32.const 8
            i32.add
            br 3 (;@1;)
          end
          i32.const 0
          i32.const 1060960
          i32.load
          local.tee 0
          local.get 5
          i32.le_u
          br_if 2 (;@1;)
          drop
          i32.const 1060960
          local.get 0
          local.get 5
          i32.sub
          local.tee 1
          i32.store
          i32.const 1060968
          i32.const 1060968
          i32.load
          local.tee 0
          local.get 5
          i32.add
          local.tee 2
          i32.store
          local.get 2
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 5
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 8
          i32.add
          br 2 (;@1;)
        end
        local.get 0
        local.get 7
        i32.store offset=24
        local.get 2
        i32.load offset=16
        local.tee 1
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.store offset=16
          local.get 1
          local.get 0
          i32.store offset=24
        end
        local.get 2
        i32.load offset=20
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 1
        local.get 0
        i32.store offset=24
      end
      block  ;; label = @2
        local.get 4
        i32.const 16
        i32.ge_u
        if  ;; label = @3
          local.get 2
          local.get 5
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 2
          local.get 5
          i32.add
          local.tee 0
          local.get 4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 4
          i32.add
          local.get 4
          i32.store
          local.get 4
          i32.const 256
          i32.ge_u
          if  ;; label = @4
            local.get 0
            local.get 4
            call 41
            br 2 (;@2;)
          end
          local.get 4
          i32.const 248
          i32.and
          i32.const 1060684
          i32.add
          local.set 1
          block (result i32)  ;; label = @4
            i32.const 1060948
            i32.load
            local.tee 3
            i32.const 1
            local.get 4
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 4
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 1060948
              local.get 3
              local.get 4
              i32.or
              i32.store
              local.get 1
              br 1 (;@4;)
            end
            local.get 1
            i32.load offset=8
          end
          local.set 3
          local.get 1
          local.get 0
          i32.store offset=8
          local.get 3
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=12
          local.get 0
          local.get 3
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 2
        local.get 4
        local.get 5
        i32.add
        local.tee 0
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.add
        local.tee 0
        local.get 0
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
      end
      local.get 2
      i32.const 8
      i32.add
    end
    local.get 8
    i32.const 16
    i32.add
    global.set 0)
  (func (;29;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      local.tee 3
      local.get 0
      i32.load
      local.tee 8
      i32.eqz
      i32.and
      i32.eqz
      if  ;; label = @2
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          i32.add
          local.set 7
          block  ;; label = @4
            local.get 0
            i32.load offset=12
            local.tee 6
            i32.eqz
            if  ;; label = @5
              local.get 1
              local.set 3
              br 1 (;@4;)
            end
            local.get 1
            local.set 3
            loop  ;; label = @5
              local.get 3
              local.tee 4
              local.get 7
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              block (result i32)  ;; label = @6
                local.get 3
                i32.const 1
                i32.add
                local.get 3
                i32.load8_s
                local.tee 5
                i32.const 0
                i32.ge_s
                br_if 0 (;@6;)
                drop
                local.get 3
                i32.const 2
                i32.add
                local.get 5
                i32.const -32
                i32.lt_u
                br_if 0 (;@6;)
                drop
                local.get 3
                i32.const 3
                i32.add
                local.get 5
                i32.const -16
                i32.lt_u
                br_if 0 (;@6;)
                drop
                local.get 3
                i32.const 4
                i32.add
              end
              local.tee 3
              local.get 4
              i32.sub
              i32.add
              local.set 5
              local.get 6
              i32.const 1
              i32.sub
              local.tee 6
              br_if 0 (;@5;)
            end
          end
          local.get 3
          local.get 7
          i32.eq
          br_if 0 (;@3;)
          local.get 3
          i32.load8_s
          drop
          local.get 5
          local.get 2
          block (result i32)  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 5
              i32.gt_u
              if  ;; label = @6
                local.get 1
                local.get 5
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                br_if 1 (;@5;)
                i32.const 0
                br 2 (;@4;)
              end
              local.get 2
              local.get 5
              i32.eq
              br_if 0 (;@5;)
              i32.const 0
              br 1 (;@4;)
            end
            local.get 1
          end
          local.tee 3
          select
          local.set 2
          local.get 3
          local.get 1
          local.get 3
          select
          local.set 1
        end
        local.get 8
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.set 12
        block  ;; label = @3
          local.get 2
          i32.const 16
          i32.ge_u
          if  ;; label = @4
            block (result i32)  ;; label = @5
              i32.const 0
              local.set 6
              i32.const 0
              local.set 7
              i32.const 0
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.tee 3
                  local.get 1
                  i32.sub
                  local.tee 10
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 10
                  i32.sub
                  local.tee 8
                  i32.const 4
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 8
                  i32.const 3
                  i32.and
                  local.set 9
                  i32.const 0
                  local.set 4
                  block  ;; label = @8
                    local.get 1
                    local.get 3
                    i32.eq
                    local.tee 11
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 1
                      local.get 3
                      i32.sub
                      local.tee 7
                      i32.const -4
                      i32.gt_u
                      if  ;; label = @10
                        i32.const 0
                        local.set 3
                        br 1 (;@9;)
                      end
                      i32.const 0
                      local.set 3
                      loop  ;; label = @10
                        local.get 4
                        local.get 1
                        local.get 3
                        i32.add
                        local.tee 6
                        i32.load8_s
                        i32.const -65
                        i32.gt_s
                        i32.add
                        local.get 6
                        i32.const 1
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.gt_s
                        i32.add
                        local.get 6
                        i32.const 2
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.gt_s
                        i32.add
                        local.get 6
                        i32.const 3
                        i32.add
                        i32.load8_s
                        i32.const -65
                        i32.gt_s
                        i32.add
                        local.set 4
                        local.get 3
                        i32.const 4
                        i32.add
                        local.tee 3
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 11
                    br_if 0 (;@8;)
                    local.get 1
                    local.get 3
                    i32.add
                    local.set 6
                    loop  ;; label = @9
                      local.get 4
                      local.get 6
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      i32.add
                      local.set 4
                      local.get 6
                      i32.const 1
                      i32.add
                      local.set 6
                      local.get 7
                      i32.const 1
                      i32.add
                      local.tee 7
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 1
                  local.get 10
                  i32.add
                  local.set 3
                  block  ;; label = @8
                    local.get 9
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 8
                    i32.const -4
                    i32.and
                    i32.add
                    local.tee 6
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    local.set 5
                    local.get 9
                    i32.const 1
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 6
                    i32.load8_s offset=1
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.set 5
                    local.get 9
                    i32.const 2
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 6
                    i32.load8_s offset=2
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.set 5
                  end
                  local.get 8
                  i32.const 2
                  i32.shr_u
                  local.set 8
                  local.get 4
                  local.get 5
                  i32.add
                  local.set 7
                  loop  ;; label = @8
                    local.get 3
                    local.set 5
                    local.get 8
                    i32.eqz
                    br_if 2 (;@6;)
                    i32.const 192
                    local.get 8
                    local.get 8
                    i32.const 192
                    i32.ge_u
                    select
                    local.tee 9
                    i32.const 3
                    i32.and
                    local.set 10
                    local.get 9
                    i32.const 2
                    i32.shl
                    local.set 11
                    i32.const 0
                    local.set 6
                    local.get 8
                    i32.const 4
                    i32.ge_u
                    if  ;; label = @9
                      local.get 3
                      local.get 11
                      i32.const 1008
                      i32.and
                      i32.add
                      local.set 13
                      local.get 3
                      local.set 4
                      loop  ;; label = @10
                        local.get 4
                        i32.load
                        local.tee 3
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 3
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        local.get 6
                        i32.add
                        local.get 4
                        i32.load offset=4
                        local.tee 3
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 3
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        i32.add
                        local.get 4
                        i32.load offset=8
                        local.tee 3
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 3
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        i32.add
                        local.get 4
                        i32.load offset=12
                        local.tee 3
                        i32.const -1
                        i32.xor
                        i32.const 7
                        i32.shr_u
                        local.get 3
                        i32.const 6
                        i32.shr_u
                        i32.or
                        i32.const 16843009
                        i32.and
                        i32.add
                        local.set 6
                        local.get 4
                        i32.const 16
                        i32.add
                        local.tee 4
                        local.get 13
                        i32.ne
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 8
                    local.get 9
                    i32.sub
                    local.set 8
                    local.get 5
                    local.get 11
                    i32.add
                    local.set 3
                    local.get 6
                    i32.const 8
                    i32.shr_u
                    i32.const 16711935
                    i32.and
                    local.get 6
                    i32.const 16711935
                    i32.and
                    i32.add
                    i32.const 65537
                    i32.mul
                    i32.const 16
                    i32.shr_u
                    local.get 7
                    i32.add
                    local.set 7
                    local.get 10
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  block (result i32)  ;; label = @8
                    local.get 5
                    local.get 9
                    i32.const 252
                    i32.and
                    i32.const 2
                    i32.shl
                    i32.add
                    local.tee 3
                    i32.load
                    local.tee 4
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 4
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.tee 4
                    local.get 10
                    i32.const 1
                    i32.eq
                    br_if 0 (;@8;)
                    drop
                    local.get 4
                    local.get 3
                    i32.load offset=4
                    local.tee 5
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 5
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    i32.add
                    local.tee 4
                    local.get 10
                    i32.const 2
                    i32.eq
                    br_if 0 (;@8;)
                    drop
                    local.get 3
                    i32.load offset=8
                    local.tee 3
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 3
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    local.get 4
                    i32.add
                  end
                  local.tee 3
                  i32.const 8
                  i32.shr_u
                  i32.const 459007
                  i32.and
                  local.get 3
                  i32.const 16711935
                  i32.and
                  i32.add
                  i32.const 65537
                  i32.mul
                  i32.const 16
                  i32.shr_u
                  local.get 7
                  i32.add
                  br 2 (;@5;)
                end
                i32.const 0
                local.get 2
                i32.eqz
                br_if 1 (;@5;)
                drop
                local.get 2
                i32.const 3
                i32.and
                local.set 3
                local.get 2
                i32.const 4
                i32.ge_u
                if  ;; label = @7
                  local.get 2
                  i32.const -4
                  i32.and
                  local.set 5
                  loop  ;; label = @8
                    local.get 7
                    local.get 1
                    local.get 6
                    i32.add
                    local.tee 4
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 4
                    i32.const 1
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 4
                    i32.const 2
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 4
                    i32.const 3
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.set 7
                    local.get 5
                    local.get 6
                    i32.const 4
                    i32.add
                    local.tee 6
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 3
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                local.get 6
                i32.add
                local.set 4
                loop  ;; label = @7
                  local.get 7
                  local.get 4
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 7
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 4
                  local.get 3
                  i32.const 1
                  i32.sub
                  local.tee 3
                  br_if 0 (;@7;)
                end
              end
              local.get 7
            end
            local.set 4
            br 1 (;@3;)
          end
          local.get 2
          i32.eqz
          if  ;; label = @4
            i32.const 0
            local.set 4
            br 1 (;@3;)
          end
          local.get 2
          i32.const 3
          i32.and
          local.set 6
          block  ;; label = @4
            local.get 2
            i32.const 4
            i32.lt_u
            if  ;; label = @5
              i32.const 0
              local.set 4
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            local.get 2
            i32.const 12
            i32.and
            local.set 7
            i32.const 0
            local.set 4
            i32.const 0
            local.set 5
            loop  ;; label = @5
              local.get 4
              local.get 1
              local.get 5
              i32.add
              local.tee 3
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.const 1
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.const 2
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.const 3
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 4
              local.get 7
              local.get 5
              i32.const 4
              i32.add
              local.tee 5
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 5
          i32.add
          local.set 3
          loop  ;; label = @4
            local.get 4
            local.get 3
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 4
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 6
            i32.const 1
            i32.sub
            local.tee 6
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 4
          local.get 12
          i32.lt_u
          if  ;; label = @4
            local.get 12
            local.get 4
            i32.sub
            local.set 3
            i32.const 0
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load8_u offset=32
                  i32.const 1
                  i32.sub
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;)
                end
                local.get 3
                local.set 4
                i32.const 0
                local.set 3
                br 1 (;@5;)
              end
              local.get 3
              i32.const 1
              i32.shr_u
              local.set 4
              local.get 3
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_u
              local.set 3
            end
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 0
            i32.load offset=16
            local.set 6
            local.get 0
            i32.load offset=24
            local.set 5
            local.get 0
            i32.load offset=20
            local.set 0
            loop  ;; label = @5
              local.get 4
              i32.const 1
              i32.sub
              local.tee 4
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              local.get 6
              local.get 5
              i32.load offset=16
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
            end
            i32.const 1
            return
          end
          br 2 (;@1;)
        end
        local.get 0
        local.get 1
        local.get 2
        local.get 5
        i32.load offset=12
        call_indirect (type 3)
        if  ;; label = @3
          i32.const 1
          return
        end
        i32.const 0
        local.set 4
        loop  ;; label = @3
          local.get 3
          local.get 4
          i32.eq
          if  ;; label = @4
            i32.const 0
            return
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 0
          local.get 6
          local.get 5
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 4
        i32.const 1
        i32.sub
        local.get 3
        i32.lt_u
        return
      end
      local.get 0
      i32.load offset=20
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 3)
      return
    end
    local.get 0
    i32.load offset=20
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 3))
  (func (;30;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              i32.load8_u offset=72
                              i32.const 1
                              i32.sub
                              br_table 10 (;@3;) 2 (;@11;) 1 (;@12;) 0 (;@13;)
                            end
                            local.get 0
                            local.get 0
                            i64.load offset=40 align=4
                            i64.store align=4
                            local.get 0
                            i32.const 24
                            i32.add
                            local.get 0
                            i32.const -64
                            i32.sub
                            i64.load align=4
                            i64.store align=4
                            local.get 0
                            i32.const 16
                            i32.add
                            local.get 0
                            i32.const 56
                            i32.add
                            i64.load align=4
                            i64.store align=4
                            local.get 0
                            i32.const 8
                            i32.add
                            local.get 0
                            i32.const 48
                            i32.add
                            i64.load align=4
                            i64.store align=4
                          end
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u offset=28
                            i32.const 1
                            i32.sub
                            br_table 8 (;@4;) 1 (;@11;) 0 (;@12;) 3 (;@9;)
                          end
                          local.get 0
                          i32.const 24
                          i32.add
                          local.set 9
                          local.get 0
                          i32.load8_u offset=24
                          i32.const 1
                          i32.sub
                          br_table 5 (;@6;) 0 (;@11;) 4 (;@7;) 1 (;@10;)
                        end
                        unreachable
                      end
                      local.get 0
                      i32.load offset=12
                      local.set 4
                      local.get 0
                      i32.load offset=8
                      local.tee 6
                      local.get 0
                      i32.load offset=16
                      local.tee 3
                      i32.le_u
                      if  ;; label = @10
                        local.get 4
                        local.set 2
                        br 2 (;@8;)
                      end
                      local.get 3
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1
                        local.set 2
                        local.get 4
                        local.get 6
                        i32.const 1
                        call 112
                        i32.const 0
                        local.set 3
                        br 2 (;@8;)
                      end
                      local.get 4
                      local.get 6
                      i32.const 1
                      local.get 3
                      call 97
                      local.tee 2
                      br_if 1 (;@8;)
                      i32.const 1
                      local.get 3
                      call 96
                      unreachable
                    end
                    local.get 0
                    i32.const 0
                    i32.store8 offset=24
                    local.get 0
                    local.get 0
                    i32.load offset=4
                    local.tee 3
                    i32.store offset=16
                    local.get 0
                    local.get 0
                    i32.load
                    local.tee 2
                    i32.store offset=12
                    local.get 0
                    local.get 3
                    i32.store offset=8
                    local.get 0
                    i32.const 24
                    i32.add
                    local.set 9
                  end
                  local.get 0
                  block (result i32)  ;; label = @8
                    local.get 2
                    local.get 3
                    call 0
                    local.set 4
                    global.get 0
                    i32.const -64
                    i32.add
                    local.tee 2
                    global.set 0
                    i32.const 1060473
                    i32.load8_u
                    drop
                    local.get 2
                    local.get 4
                    i32.store offset=12
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 52
                          i32.const 4
                          call 105
                          local.tee 4
                          if  ;; label = @12
                            local.get 4
                            i32.const 0
                            i32.store offset=28
                            local.get 4
                            i32.const 0
                            i32.store offset=20
                            local.get 4
                            i64.const 8589934592
                            i64.store offset=8 align=4
                            local.get 4
                            i64.const 4294967298
                            i64.store align=4
                            i32.const 1060473
                            i32.load8_u
                            drop
                            i32.const 4
                            i32.const 4
                            call 105
                            local.tee 3
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 3
                            local.get 4
                            i32.store
                            local.get 3
                            i32.const 1049072
                            call 115
                            local.set 6
                            local.get 4
                            local.get 4
                            i32.load
                            i32.const 1
                            i32.add
                            local.tee 7
                            i32.store
                            local.get 2
                            i32.const 1049072
                            i32.store offset=20
                            local.get 2
                            local.get 3
                            i32.store offset=16
                            local.get 2
                            local.get 6
                            i32.store offset=24
                            local.get 7
                            i32.eqz
                            br_if 2 (;@10;)
                            i32.const 1060473
                            i32.load8_u
                            drop
                            i32.const 4
                            i32.const 4
                            call 105
                            local.tee 3
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 3
                            local.get 4
                            i32.store
                            local.get 3
                            i32.const 1049052
                            call 115
                            local.set 6
                            local.get 2
                            i32.const 1049052
                            i32.store offset=32
                            local.get 2
                            local.get 3
                            i32.store offset=28
                            local.get 2
                            local.get 6
                            i32.store offset=36
                            local.get 2
                            i32.const 12
                            i32.add
                            i32.load
                            local.get 2
                            i32.const 16
                            i32.add
                            i32.load offset=8
                            local.get 2
                            i32.const 28
                            i32.add
                            i32.load offset=8
                            call 18
                            local.tee 3
                            i32.const 132
                            i32.ge_u
                            if  ;; label = @13
                              local.get 3
                              call 1
                            end
                            local.get 2
                            i32.const 48
                            i32.add
                            local.get 2
                            i32.const 24
                            i32.add
                            i32.load
                            i32.store
                            local.get 2
                            i32.const 60
                            i32.add
                            local.get 2
                            i32.const 36
                            i32.add
                            i32.load
                            i32.store
                            local.get 2
                            local.get 2
                            i64.load offset=16 align=4
                            i64.store offset=40
                            local.get 2
                            local.get 2
                            i64.load offset=28 align=4
                            i64.store offset=52 align=4
                            local.get 4
                            i32.load offset=8
                            i32.eqz
                            if  ;; label = @13
                              local.get 4
                              i32.const 28
                              i32.add
                              local.set 3
                              local.get 4
                              i32.const -1
                              i32.store offset=8
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=28
                                local.tee 6
                                i32.eqz
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=36
                                  call 2
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 4
                                  i32.load offset=32
                                  local.tee 7
                                  i32.load
                                  local.tee 8
                                  if  ;; label = @16
                                    local.get 6
                                    local.get 8
                                    call_indirect (type 0)
                                  end
                                  local.get 7
                                  i32.load offset=4
                                  local.tee 8
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 6
                                  local.get 8
                                  local.get 7
                                  i32.load offset=8
                                  call 112
                                end
                                local.get 4
                                i32.load offset=48
                                call 2
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 4
                                i32.load offset=40
                                local.set 6
                                local.get 4
                                i32.load offset=44
                                local.tee 7
                                i32.load
                                local.tee 8
                                if  ;; label = @15
                                  local.get 6
                                  local.get 8
                                  call_indirect (type 0)
                                end
                                local.get 7
                                i32.load offset=4
                                local.tee 8
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 6
                                local.get 8
                                local.get 7
                                i32.load offset=8
                                call 112
                              end
                              local.get 3
                              local.get 2
                              i64.load offset=40
                              i64.store align=4
                              local.get 3
                              i32.const 16
                              i32.add
                              local.get 2
                              i32.const 56
                              i32.add
                              i64.load
                              i64.store align=4
                              local.get 3
                              i32.const 8
                              i32.add
                              local.get 2
                              i32.const 48
                              i32.add
                              i64.load
                              i64.store align=4
                              local.get 4
                              local.get 4
                              i32.load offset=8
                              i32.const 1
                              i32.add
                              i32.store offset=8
                              local.get 2
                              i32.load offset=12
                              local.tee 3
                              i32.const 132
                              i32.ge_u
                              if  ;; label = @14
                                local.get 3
                                call 1
                              end
                              local.get 2
                              i32.const -64
                              i32.sub
                              global.set 0
                              local.get 4
                              br 5 (;@8;)
                            end
                            i32.const 1049376
                            call 67
                            unreachable
                          end
                          i32.const 4
                          i32.const 52
                          call 119
                          unreachable
                        end
                        i32.const 4
                        i32.const 4
                        call 119
                      end
                      unreachable
                    end
                    i32.const 4
                    i32.const 4
                    call 119
                    unreachable
                  end
                  i32.store offset=20
                end
                local.get 5
                i32.const 16
                i32.add
                local.set 3
                global.get 0
                i32.const 16
                i32.sub
                local.tee 4
                global.set 0
                block  ;; label = @7
                  local.get 0
                  i32.const 20
                  i32.add
                  local.tee 7
                  i32.load
                  local.tee 2
                  i32.load offset=8
                  i32.eqz
                  if  ;; label = @8
                    local.get 2
                    i32.load offset=12
                    local.set 6
                    local.get 2
                    i64.const 12884901887
                    i64.store offset=8 align=4
                    local.get 2
                    i32.load offset=16
                    local.set 8
                    local.get 2
                    local.get 6
                    i32.const 2
                    i32.eq
                    if (result i32)  ;; label = @9
                      local.get 4
                      i32.const 8
                      i32.add
                      local.get 1
                      i32.load
                      local.tee 1
                      i32.load offset=4
                      local.get 1
                      i32.load
                      i32.load
                      call_indirect (type 2)
                      local.get 4
                      i32.load offset=12
                      local.set 1
                      local.get 4
                      i32.load offset=8
                      local.set 10
                      local.get 2
                      i32.load offset=20
                      local.tee 11
                      if  ;; label = @10
                        local.get 2
                        i32.const 24
                        i32.add
                        i32.load
                        local.get 11
                        i32.load offset=12
                        call_indirect (type 0)
                      end
                      local.get 2
                      local.get 1
                      i32.store offset=24
                      local.get 2
                      local.get 10
                      i32.store offset=20
                      local.get 2
                      i32.load offset=8
                      i32.const 1
                      i32.add
                    else
                      i32.const 0
                    end
                    i32.store offset=8
                    local.get 3
                    local.get 8
                    i32.store offset=4
                    local.get 3
                    local.get 6
                    i32.store
                    local.get 4
                    i32.const 16
                    i32.add
                    global.set 0
                    br 1 (;@7;)
                  end
                  i32.const 1049408
                  call 67
                  unreachable
                end
                block  ;; label = @7
                  local.get 5
                  i32.load offset=16
                  local.tee 2
                  i32.const 2
                  i32.ne
                  if  ;; label = @8
                    local.get 5
                    i32.load offset=20
                    local.set 1
                    local.get 7
                    i32.load
                    call 48
                    local.get 2
                    br_if 3 (;@5;)
                    local.get 5
                    local.get 1
                    i32.store offset=28
                    local.get 5
                    local.get 5
                    i32.const 28
                    i32.add
                    i32.load
                    call 20
                    local.tee 6
                    i32.store offset=44
                    local.get 5
                    i32.const 32
                    i32.add
                    local.set 2
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 5
                          i32.const 44
                          i32.add
                          i32.load
                          local.tee 7
                          call 22
                          local.tee 1
                          i32.eqz
                          if  ;; label = @12
                            i32.const 1
                            local.set 4
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 3
                          local.get 1
                          i32.const 0
                          i32.lt_s
                          br_if 1 (;@10;)
                          i32.const 1060473
                          i32.load8_u
                          drop
                          i32.const 1
                          local.set 3
                          local.get 1
                          i32.const 1
                          call 105
                          local.tee 4
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        call 25
                        local.tee 8
                        call 19
                        local.tee 10
                        call 20
                        local.set 3
                        local.get 10
                        i32.const 132
                        i32.ge_u
                        if  ;; label = @11
                          local.get 10
                          call 1
                        end
                        local.get 3
                        local.get 7
                        local.get 4
                        call 21
                        local.get 3
                        i32.const 132
                        i32.ge_u
                        if  ;; label = @11
                          local.get 3
                          call 1
                        end
                        local.get 8
                        i32.const 132
                        i32.ge_u
                        if  ;; label = @11
                          local.get 8
                          call 1
                        end
                        local.get 2
                        local.get 7
                        call 22
                        i32.store offset=8
                        local.get 2
                        local.get 4
                        i32.store offset=4
                        local.get 2
                        local.get 1
                        i32.store
                        br 1 (;@9;)
                      end
                      local.get 3
                      local.get 1
                      call 96
                      unreachable
                    end
                    local.get 6
                    i32.const 132
                    i32.ge_u
                    if  ;; label = @9
                      local.get 6
                      call 1
                    end
                    local.get 5
                    i32.load offset=28
                    local.tee 1
                    i32.const 132
                    i32.ge_u
                    if  ;; label = @9
                      local.get 1
                      call 1
                    end
                    local.get 5
                    i64.load offset=36 align=4
                    local.set 12
                    local.get 5
                    i32.load offset=32
                    local.set 3
                    local.get 9
                    i32.const 1
                    i32.store8
                    local.get 3
                    i32.const -2147483648
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 12
                    i32.wrap_i64
                    local.set 4
                    local.get 12
                    i64.const 32
                    i64.shr_u
                    i32.wrap_i64
                    local.tee 1
                    local.get 3
                    i32.ge_u
                    if  ;; label = @9
                      local.get 4
                      local.set 2
                      br 7 (;@2;)
                    end
                    local.get 12
                    i64.const 4294967295
                    i64.le_u
                    if  ;; label = @9
                      i32.const 1
                      local.set 2
                      local.get 4
                      local.get 3
                      i32.const 1
                      call 112
                      i32.const 0
                      local.set 1
                      br 7 (;@2;)
                    end
                    local.get 4
                    local.get 3
                    i32.const 1
                    local.get 1
                    call 97
                    local.tee 2
                    br_if 6 (;@2;)
                    i32.const 1
                    local.get 1
                    call 96
                    unreachable
                  end
                  local.get 9
                  i32.const 3
                  i32.store8
                end
                i32.const 3
                local.set 3
                local.get 0
                i32.const 3
                i32.store8 offset=28
                i32.const 1
                local.set 1
                br 5 (;@1;)
              end
              i32.const 1048932
              call 81
              unreachable
            end
            local.get 5
            local.get 1
            i32.store offset=44
            global.get 0
            i32.const -64
            i32.add
            local.tee 0
            global.set 0
            local.get 0
            i32.const 43
            i32.store offset=12
            local.get 0
            i32.const 1048796
            i32.store offset=8
            local.get 0
            i32.const 1048780
            i32.store offset=20
            local.get 0
            local.get 5
            i32.const 44
            i32.add
            i32.store offset=16
            local.get 0
            i32.const 2
            i32.store offset=28
            local.get 0
            i32.const 1050180
            i32.store offset=24
            local.get 0
            i64.const 2
            i64.store offset=36 align=4
            local.get 0
            local.get 0
            i32.const 16
            i32.add
            i64.extend_i32_u
            i64.const 236223201280
            i64.or
            i64.store offset=56
            local.get 0
            local.get 0
            i32.const 8
            i32.add
            i64.extend_i32_u
            i64.const 240518168576
            i64.or
            i64.store offset=48
            local.get 0
            local.get 0
            i32.const 48
            i32.add
            i32.store offset=32
            local.get 0
            i32.const 24
            i32.add
            i32.const 1048948
            call 69
            unreachable
          end
          i32.const 1048964
          call 81
          unreachable
        end
        i32.const 1048764
        call 81
        unreachable
      end
      local.get 2
      local.get 1
      call 26
      local.set 1
      local.get 0
      i32.const 1
      i32.store8 offset=28
      local.get 5
      local.get 1
      i32.store offset=44
      local.get 5
      i32.const 128
      i32.store offset=32
      global.get 0
      i32.const 16
      i32.sub
      local.tee 1
      global.set 0
      local.get 0
      i32.const 32
      i32.add
      local.tee 2
      i32.load
      local.get 5
      i32.const 32
      i32.add
      i32.load
      local.get 5
      i32.const 44
      i32.add
      i32.load
      call 14
      local.set 4
      local.get 1
      i32.const 8
      i32.add
      call 73
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 5
      i32.const 8
      i32.add
      local.tee 9
      local.get 1
      i32.load offset=8
      local.tee 6
      i32.store
      local.get 9
      local.get 3
      local.get 4
      local.get 6
      select
      i32.store offset=4
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      local.get 5
      i32.load offset=8
      if  ;; label = @2
        i32.const 1048839
        i32.const 49
        call 116
        unreachable
      end
      block  ;; label = @2
        local.get 5
        i32.load offset=12
        local.tee 1
        i32.const 132
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        call 1
        local.get 5
        i32.load offset=32
        local.tee 1
        i32.const 132
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        call 1
      end
      local.get 5
      i32.load offset=44
      local.tee 1
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 1
        call 1
      end
      local.get 2
      i32.load
      local.tee 1
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 1
        call 1
      end
      i32.const 1
      local.set 3
      i32.const 0
      local.set 1
      local.get 0
      i32.load offset=36
      local.tee 2
      i32.const 132
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      call 1
    end
    local.get 0
    local.get 3
    i32.store8 offset=72
    local.get 5
    i32.const 48
    i32.add
    global.set 0
    local.get 1)
  (func (;31;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 8
    i32.sub
    local.tee 1
    local.get 0
    i32.const 4
    i32.sub
    i32.load
    local.tee 3
    i32.const -8
    i32.and
    local.tee 0
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load
        local.tee 3
        local.get 0
        i32.add
        local.set 0
        local.get 1
        local.get 3
        i32.sub
        local.tee 1
        i32.const 1060964
        i32.load
        i32.eq
        if  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          i32.const 1060956
          local.get 0
          i32.store
          local.get 2
          local.get 2
          i32.load offset=4
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 0
          i32.store
          return
        end
        local.get 1
        local.get 3
        call 38
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=4
                local.tee 3
                i32.const 2
                i32.and
                i32.eqz
                if  ;; label = @7
                  local.get 2
                  i32.const 1060968
                  i32.load
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1060964
                  i32.load
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 2
                  local.get 3
                  i32.const -8
                  i32.and
                  local.tee 2
                  call 38
                  local.get 1
                  local.get 0
                  local.get 2
                  i32.add
                  local.tee 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.add
                  local.get 0
                  i32.store
                  local.get 1
                  i32.const 1060964
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1060956
                  local.get 0
                  i32.store
                  return
                end
                local.get 2
                local.get 3
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 1
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 1
                i32.add
                local.get 0
                i32.store
              end
              local.get 0
              i32.const 256
              i32.lt_u
              br_if 2 (;@3;)
              local.get 1
              local.get 0
              call 41
              i32.const 0
              local.set 1
              i32.const 1060988
              i32.const 1060988
              i32.load
              i32.const 1
              i32.sub
              local.tee 0
              i32.store
              local.get 0
              br_if 4 (;@1;)
              i32.const 1060676
              i32.load
              local.tee 0
              if  ;; label = @6
                loop  ;; label = @7
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  local.get 0
                  i32.load offset=8
                  local.tee 0
                  br_if 0 (;@7;)
                end
              end
              i32.const 1060988
              i32.const 4095
              local.get 1
              local.get 1
              i32.const 4095
              i32.le_u
              select
              i32.store
              return
            end
            i32.const 1060968
            local.get 1
            i32.store
            i32.const 1060960
            i32.const 1060960
            i32.load
            local.get 0
            i32.add
            local.tee 0
            i32.store
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 1060964
            i32.load
            local.get 1
            i32.eq
            if  ;; label = @5
              i32.const 1060956
              i32.const 0
              i32.store
              i32.const 1060964
              i32.const 0
              i32.store
            end
            local.get 0
            i32.const 1060980
            i32.load
            local.tee 3
            i32.le_u
            br_if 3 (;@1;)
            i32.const 1060968
            i32.load
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            local.set 0
            i32.const 1060960
            i32.load
            local.tee 4
            i32.const 41
            i32.lt_u
            br_if 2 (;@2;)
            i32.const 1060668
            local.set 1
            loop  ;; label = @5
              local.get 2
              local.get 1
              i32.load
              local.tee 5
              i32.ge_u
              if  ;; label = @6
                local.get 2
                local.get 5
                local.get 1
                i32.load offset=4
                i32.add
                i32.lt_u
                br_if 4 (;@2;)
              end
              local.get 1
              i32.load offset=8
              local.set 1
              br 0 (;@5;)
            end
            unreachable
          end
          i32.const 1060964
          local.get 1
          i32.store
          i32.const 1060956
          i32.const 1060956
          i32.load
          local.get 0
          i32.add
          local.tee 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 1
          i32.add
          local.get 0
          i32.store
          return
        end
        local.get 0
        i32.const 248
        i32.and
        i32.const 1060684
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 1060948
          i32.load
          local.tee 3
          i32.const 1
          local.get 0
          i32.const 3
          i32.shr_u
          i32.shl
          local.tee 0
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 1060948
            local.get 0
            local.get 3
            i32.or
            i32.store
            local.get 2
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
        end
        local.set 0
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        return
      end
      i32.const 1060676
      i32.load
      local.tee 1
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.load offset=8
          local.tee 1
          br_if 0 (;@3;)
        end
      end
      i32.const 1060988
      i32.const 4095
      local.get 0
      local.get 0
      i32.const 4095
      i32.le_u
      select
      i32.store
      local.get 3
      local.get 4
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 1060980
      i32.const -1
      i32.store
    end)
  (func (;32;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 3
    i32.store8 offset=44
    local.get 3
    i32.const 32
    i32.store offset=28
    local.get 3
    i32.const 0
    i32.store offset=40
    local.get 3
    local.get 1
    i32.store offset=36
    local.get 3
    local.get 0
    i32.store offset=32
    local.get 3
    i32.const 0
    i32.store offset=20
    local.get 3
    i32.const 0
    i32.store offset=12
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=16
            local.tee 10
            i32.eqz
            if  ;; label = @5
              local.get 2
              i32.load offset=12
              local.tee 0
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=8
              local.set 1
              local.get 0
              i32.const 3
              i32.shl
              local.set 5
              local.get 0
              i32.const 1
              i32.sub
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 7
              local.get 2
              i32.load
              local.set 0
              loop  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 4
                if  ;; label = @7
                  local.get 3
                  i32.load offset=32
                  local.get 0
                  i32.load
                  local.get 4
                  local.get 3
                  i32.load offset=36
                  i32.load offset=12
                  call_indirect (type 3)
                  br_if 4 (;@3;)
                end
                local.get 1
                i32.load
                local.get 3
                i32.const 12
                i32.add
                local.get 1
                i32.load offset=4
                call_indirect (type 1)
                br_if 3 (;@3;)
                local.get 1
                i32.const 8
                i32.add
                local.set 1
                local.get 0
                i32.const 8
                i32.add
                local.set 0
                local.get 5
                i32.const 8
                i32.sub
                local.tee 5
                br_if 0 (;@6;)
              end
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=20
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 5
            i32.shl
            local.set 11
            local.get 0
            i32.const 1
            i32.sub
            i32.const 134217727
            i32.and
            i32.const 1
            i32.add
            local.set 7
            local.get 2
            i32.load offset=8
            local.set 8
            local.get 2
            i32.load
            local.set 0
            loop  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 1
              if  ;; label = @6
                local.get 3
                i32.load offset=32
                local.get 0
                i32.load
                local.get 1
                local.get 3
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 3)
                br_if 3 (;@3;)
              end
              local.get 3
              local.get 5
              local.get 10
              i32.add
              local.tee 1
              i32.const 16
              i32.add
              i32.load
              i32.store offset=28
              local.get 3
              local.get 1
              i32.const 28
              i32.add
              i32.load8_u
              i32.store8 offset=44
              local.get 3
              local.get 1
              i32.const 24
              i32.add
              i32.load
              i32.store offset=40
              local.get 1
              i32.const 12
              i32.add
              i32.load
              local.set 4
              i32.const 0
              local.set 9
              i32.const 0
              local.set 6
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 8
                    i32.add
                    i32.load
                    i32.const 1
                    i32.sub
                    br_table 0 (;@8;) 2 (;@6;) 1 (;@7;)
                  end
                  local.get 4
                  i32.const 3
                  i32.shl
                  local.get 8
                  i32.add
                  local.tee 12
                  i32.load offset=4
                  br_if 1 (;@6;)
                  local.get 12
                  i32.load
                  local.set 4
                end
                i32.const 1
                local.set 6
              end
              local.get 3
              local.get 4
              i32.store offset=16
              local.get 3
              local.get 6
              i32.store offset=12
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.set 4
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.load
                    i32.const 1
                    i32.sub
                    br_table 0 (;@8;) 2 (;@6;) 1 (;@7;)
                  end
                  local.get 4
                  i32.const 3
                  i32.shl
                  local.get 8
                  i32.add
                  local.tee 6
                  i32.load offset=4
                  br_if 1 (;@6;)
                  local.get 6
                  i32.load
                  local.set 4
                end
                i32.const 1
                local.set 9
              end
              local.get 3
              local.get 4
              i32.store offset=24
              local.get 3
              local.get 9
              i32.store offset=20
              local.get 8
              local.get 1
              i32.const 20
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 1
              i32.load
              local.get 3
              i32.const 12
              i32.add
              local.get 1
              i32.load offset=4
              call_indirect (type 1)
              br_if 2 (;@3;)
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 11
              local.get 5
              i32.const 32
              i32.add
              local.tee 5
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 7
          local.get 2
          i32.load offset=4
          i32.ge_u
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=32
          local.get 2
          i32.load
          local.get 7
          i32.const 3
          i32.shl
          i32.add
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          local.get 3
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 3)
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        br 1 (;@1;)
      end
      i32.const 0
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;33;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 6
    global.set 0
    local.get 0
    i32.load
    local.tee 3
    i32.const 0
    i32.store8 offset=28
    block  ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 2147483646
      i32.le_u
      if  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=24
          local.tee 7
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            i32.load offset=8
            br_if 3 (;@1;)
            local.get 3
            i32.const -1
            i32.store offset=8
            local.get 3
            i32.load offset=24
            local.tee 0
            i32.eqz
            if  ;; label = @5
              local.get 3
              i32.const 0
              i32.store offset=8
              br 2 (;@3;)
            end
            local.get 3
            local.get 0
            i32.const 1
            i32.sub
            i32.store offset=24
            local.get 3
            i32.load offset=16
            local.get 3
            i32.load offset=20
            local.tee 2
            i32.const 2
            i32.shl
            i32.add
            i32.load
            local.set 0
            local.get 3
            i32.const 0
            i32.store offset=8
            local.get 3
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            local.get 3
            i32.load offset=12
            local.tee 4
            i32.const 0
            local.get 2
            local.get 4
            i32.ge_u
            select
            i32.sub
            i32.store offset=20
            local.get 0
            block (result i32)  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=8
                i32.eqz
                if  ;; label = @7
                  local.get 0
                  i32.const -1
                  i32.store offset=8
                  local.get 0
                  i32.load offset=12
                  local.tee 2
                  br_if 1 (;@6;)
                  i32.const 0
                  br 2 (;@5;)
                end
                i32.const 1049556
                call 67
                unreachable
              end
              local.get 0
              i32.const 0
              i32.store8 offset=28
              local.get 6
              i32.const 0
              i32.store offset=8
              local.get 6
              local.get 0
              i32.const 20
              i32.add
              local.tee 4
              i32.store offset=4
              local.get 6
              local.get 4
              i32.store
              local.get 2
              local.get 6
              local.get 0
              i32.load offset=16
              i32.load offset=12
              call_indirect (type 1)
              i32.eqz
              if  ;; label = @6
                local.get 0
                i32.load offset=12
                local.tee 2
                if  ;; label = @7
                  local.get 0
                  i32.load offset=16
                  local.tee 4
                  i32.load
                  local.tee 5
                  if  ;; label = @8
                    local.get 2
                    local.get 5
                    call_indirect (type 0)
                  end
                  local.get 4
                  i32.load offset=4
                  local.tee 5
                  if  ;; label = @8
                    local.get 2
                    local.get 5
                    local.get 4
                    i32.load offset=8
                    call 112
                  end
                  local.get 0
                  i32.load offset=24
                  local.get 0
                  i32.load offset=20
                  i32.load offset=12
                  call_indirect (type 0)
                end
                local.get 0
                i32.const 0
                i32.store offset=12
              end
              local.get 0
              i32.load offset=8
              i32.const 1
              i32.add
            end
            i32.store offset=8
            local.get 0
            local.get 0
            i32.load
            i32.const 1
            i32.sub
            local.tee 2
            i32.store
            block  ;; label = @5
              local.get 2
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=12
              local.tee 2
              if  ;; label = @6
                local.get 0
                i32.load offset=16
                local.tee 4
                i32.load
                local.tee 5
                if  ;; label = @7
                  local.get 2
                  local.get 5
                  call_indirect (type 0)
                end
                local.get 4
                i32.load offset=4
                local.tee 5
                if  ;; label = @7
                  local.get 2
                  local.get 5
                  local.get 4
                  i32.load offset=8
                  call 112
                end
                local.get 0
                i32.load offset=24
                local.get 0
                i32.load offset=20
                i32.load offset=12
                call_indirect (type 0)
              end
              local.get 0
              i32.const 4
              i32.add
              local.tee 2
              local.get 2
              i32.load
              i32.const 1
              i32.sub
              local.tee 2
              i32.store
              local.get 2
              br_if 0 (;@5;)
              local.get 0
              i32.const 32
              i32.const 4
              call 112
            end
            local.get 7
            i32.const 1
            i32.sub
            local.tee 7
            br_if 0 (;@4;)
          end
        end
        local.get 1
        i32.const 132
        i32.ge_u
        if  ;; label = @3
          local.get 1
          call 1
        end
        local.get 6
        i32.const 16
        i32.add
        global.set 0
        return
      end
      global.get 0
      i32.const 48
      i32.sub
      local.tee 0
      global.set 0
      local.get 0
      i32.const 1
      i32.store offset=12
      local.get 0
      i32.const 1050168
      i32.store offset=8
      local.get 0
      i64.const 1
      i64.store offset=20 align=4
      local.get 0
      local.get 0
      i32.const 47
      i32.add
      i64.extend_i32_u
      i64.const 231928233984
      i64.or
      i64.store offset=32
      local.get 0
      local.get 0
      i32.const 32
      i32.add
      i32.store offset=16
      local.get 0
      i32.const 8
      i32.add
      i32.const 1049240
      call 69
      unreachable
    end
    i32.const 1049224
    call 67
    unreachable)
  (func (;34;) (type 2) (param i32 i32)
    (local i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        local.get 0
        local.get 3
        i32.sub
        local.tee 0
        i32.const 1060964
        i32.load
        i32.eq
        if  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          i32.const 1060956
          local.get 1
          i32.store
          local.get 2
          local.get 2
          i32.load offset=4
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        local.get 3
        call 38
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            local.tee 3
            i32.const 2
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 2
              i32.const 1060968
              i32.load
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 1060964
              i32.load
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 2
              call 38
              local.get 0
              local.get 1
              local.get 2
              i32.add
              local.tee 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              local.get 0
              i32.const 1060964
              i32.load
              i32.ne
              br_if 1 (;@4;)
              i32.const 1060956
              local.get 1
              i32.store
              return
            end
            local.get 2
            local.get 3
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
          end
          local.get 1
          i32.const 256
          i32.ge_u
          if  ;; label = @4
            local.get 0
            local.get 1
            call 41
            return
          end
          local.get 1
          i32.const 248
          i32.and
          i32.const 1060684
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1060948
            i32.load
            local.tee 3
            i32.const 1
            local.get 1
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 1
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 1060948
              local.get 1
              local.get 3
              i32.or
              i32.store
              local.get 2
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
          end
          local.set 1
          local.get 2
          local.get 0
          i32.store offset=8
          local.get 1
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 2
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=8
          return
        end
        i32.const 1060968
        local.get 0
        i32.store
        i32.const 1060960
        i32.const 1060960
        i32.load
        local.get 1
        i32.add
        local.tee 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        i32.const 1060964
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1060956
        i32.const 0
        i32.store
        i32.const 1060964
        i32.const 0
        i32.store
        return
      end
      i32.const 1060964
      local.get 0
      i32.store
      i32.const 1060956
      i32.const 1060956
      i32.load
      local.get 1
      i32.add
      local.tee 1
      i32.store
      local.get 0
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.get 1
      i32.store
    end)
  (func (;35;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 7
    global.set 0
    i32.const 1060473
    i32.load8_u
    drop
    block  ;; label = @1
      i32.const 32
      i32.const 4
      call 105
      local.tee 5
      if  ;; label = @2
        local.get 5
        i64.const 0
        i64.store offset=20 align=4
        local.get 5
        i64.const 17179869184
        i64.store offset=12 align=4
        local.get 5
        i64.const 1
        i64.store offset=4 align=4
        local.get 5
        i32.const 28
        i32.add
        i32.const 0
        i32.store8
        i32.const 1060476
        i32.load
        if (result i32)  ;; label = @3
          i32.const 1060480
        else
          global.get 0
          i32.const 48
          i32.sub
          local.tee 2
          global.set 0
          call 9
          local.set 0
          local.get 2
          i32.const 40
          i32.add
          call 73
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=40
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=44
                local.set 1
                call 10
                local.set 0
                local.get 2
                i32.const 32
                i32.add
                call 73
                local.get 2
                i32.load offset=36
                local.set 4
                local.get 2
                i32.load offset=32
                local.get 1
                i32.const 132
                i32.ge_u
                if  ;; label = @7
                  local.get 1
                  call 1
                end
                i32.eqz
                br_if 0 (;@6;)
                call 11
                local.set 0
                local.get 2
                i32.const 24
                i32.add
                call 73
                local.get 2
                i32.load offset=28
                local.set 1
                local.get 2
                i32.load offset=24
                local.get 4
                i32.const 132
                i32.ge_u
                if  ;; label = @7
                  local.get 4
                  call 1
                end
                i32.eqz
                br_if 0 (;@6;)
                call 12
                local.set 0
                local.get 2
                i32.const 16
                i32.add
                call 73
                local.get 2
                i32.load offset=16
                local.set 4
                local.get 2
                i32.load offset=20
                local.get 1
                i32.const 132
                i32.ge_u
                if  ;; label = @7
                  local.get 1
                  call 1
                end
                local.get 0
                local.get 4
                select
                local.set 0
                i32.const 1
                local.set 6
                local.get 4
                i32.const 1
                i32.and
                br_if 1 (;@5;)
              end
              i32.const 1
              local.set 3
              local.get 0
              call 13
              i32.const 1
              i32.ne
              if  ;; label = @6
                local.get 0
                local.set 1
                br 2 (;@4;)
              end
              i32.const 0
              local.set 6
              local.get 0
              i32.const 132
              i32.lt_u
              br_if 0 (;@5;)
              local.get 0
              call 1
            end
            i32.const 1049572
            i32.const 11
            call 6
            local.tee 1
            i32.const 128
            call 7
            local.set 4
            local.get 2
            i32.const 8
            i32.add
            call 73
            block  ;; label = @5
              local.get 2
              i32.load offset=8
              local.tee 8
              i32.const 1
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=12
              local.get 4
              local.get 8
              select
              local.tee 9
              i32.const 131
              i32.le_u
              br_if 0 (;@5;)
              local.get 9
              call 1
            end
            local.get 1
            i32.const 132
            i32.ge_u
            if  ;; label = @5
              local.get 1
              call 1
            end
            i32.const 128
            local.get 4
            local.get 8
            select
            local.set 1
            block  ;; label = @5
              local.get 3
              if  ;; label = @6
                local.get 6
                local.get 0
                i32.const 131
                i32.gt_u
                i32.and
                i32.eqz
                br_if 2 (;@4;)
                br 1 (;@5;)
              end
              local.get 0
              i32.const 131
              i32.le_u
              br_if 1 (;@4;)
            end
            local.get 0
            call 1
          end
          local.get 2
          i32.const 48
          i32.add
          global.set 0
          i32.const 1060480
          i32.load
          local.set 0
          i32.const 1060480
          local.get 1
          i32.store
          i32.const 1060476
          i32.load
          i32.const 1060476
          i32.const 1
          i32.store
          i32.eqz
          local.get 0
          i32.const 132
          i32.lt_u
          i32.or
          i32.eqz
          if  ;; label = @4
            local.get 0
            call 1
          end
          i32.const 1060480
        end
        i32.load
        call 8
        local.tee 0
        call 3
        local.tee 1
        call 4
        local.set 3
        local.get 1
        i32.const 132
        i32.ge_u
        if  ;; label = @3
          local.get 1
          call 1
        end
        local.get 0
        i32.const 132
        i32.ge_u
        if  ;; label = @3
          local.get 0
          call 1
        end
        local.get 7
        i32.const 128
        i32.store offset=12
        local.get 7
        i32.const 12
        i32.add
        i32.load
        call 16
        local.set 4
        local.get 5
        i32.const 2
        i32.store
        i32.const 1060473
        i32.load8_u
        drop
        i32.const 4
        i32.const 4
        call 105
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 5
        i32.store
        local.get 1
        i32.const 1049032
        call 115
        local.set 6
        local.get 7
        i32.load offset=12
        local.tee 0
        i32.const 132
        i32.ge_u
        if  ;; label = @3
          local.get 0
          call 1
        end
        i32.const 1050440
        i32.load
        local.set 0
        i32.const 1050440
        local.get 5
        i32.store
        i32.const 1050444
        i32.load
        local.set 2
        i32.const 1050444
        local.get 1
        i32.store
        i32.const 1050448
        i32.load
        local.set 1
        i32.const 1050448
        i32.const 1049032
        i32.store
        i32.const 1050452
        i32.load
        local.set 8
        i32.const 1050452
        local.get 6
        i32.store
        i32.const 1050456
        i32.load
        local.set 5
        i32.const 1050456
        local.get 4
        i32.store
        i32.const 1050460
        i32.load8_u
        local.set 4
        i32.const 1050460
        local.get 3
        i32.const 1
        i32.eq
        i32.store8
        block  ;; label = @3
          local.get 4
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.load
          i32.const 1
          i32.sub
          local.tee 3
          i32.store
          block  ;; label = @4
            local.get 3
            br_if 0 (;@4;)
            local.get 0
            i32.const 12
            i32.add
            call 36
            local.get 0
            i32.load offset=12
            local.tee 3
            if  ;; label = @5
              local.get 0
              i32.load offset=16
              local.get 3
              i32.const 2
              i32.shl
              i32.const 4
              call 112
            end
            local.get 0
            i32.const 4
            i32.add
            local.tee 3
            local.get 3
            i32.load
            i32.const 1
            i32.sub
            local.tee 3
            i32.store
            local.get 3
            br_if 0 (;@4;)
            local.get 0
            i32.const 32
            i32.const 4
            call 112
          end
          local.get 5
          i32.const 132
          i32.ge_u
          if  ;; label = @4
            local.get 5
            call 1
          end
          local.get 8
          call 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load
          local.tee 0
          if  ;; label = @4
            local.get 2
            local.get 0
            call_indirect (type 0)
          end
          local.get 1
          i32.load offset=4
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 0
          local.get 1
          i32.load offset=8
          call 112
        end
        local.get 7
        i32.const 16
        i32.add
        global.set 0
        return
      end
      i32.const 4
      i32.const 32
      call 119
      unreachable
    end
    i32.const 4
    i32.const 4
    call 119
    unreachable)
  (func (;36;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=12
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.set 6
      local.get 0
      i32.load
      local.tee 2
      local.get 0
      i32.load offset=8
      local.tee 0
      local.get 2
      i32.const 0
      local.get 0
      local.get 2
      i32.ge_u
      select
      i32.sub
      local.tee 0
      local.get 1
      i32.add
      local.get 1
      local.get 2
      local.get 0
      i32.sub
      local.tee 5
      i32.gt_u
      select
      local.tee 2
      local.get 0
      i32.ne
      if  ;; label = @2
        local.get 2
        local.get 0
        i32.sub
        local.set 4
        local.get 6
        local.get 0
        i32.const 2
        i32.shl
        i32.add
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.load
          local.tee 0
          local.get 0
          i32.load
          i32.const 1
          i32.sub
          local.tee 3
          i32.store
          block  ;; label = @4
            local.get 3
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=12
            local.tee 3
            if  ;; label = @5
              local.get 0
              i32.load offset=16
              local.tee 8
              i32.load
              local.tee 7
              if  ;; label = @6
                local.get 3
                local.get 7
                call_indirect (type 0)
              end
              local.get 8
              i32.load offset=4
              local.tee 7
              if  ;; label = @6
                local.get 3
                local.get 7
                local.get 8
                i32.load offset=8
                call 112
              end
              local.get 0
              i32.load offset=24
              local.get 0
              i32.load offset=20
              i32.load offset=12
              call_indirect (type 0)
            end
            local.get 0
            i32.const 4
            i32.add
            local.tee 3
            local.get 3
            i32.load
            i32.const 1
            i32.sub
            local.tee 3
            i32.store
            local.get 3
            br_if 0 (;@4;)
            local.get 0
            i32.const 32
            i32.const 4
            call 112
          end
          local.get 2
          i32.const 4
          i32.add
          local.set 2
          local.get 4
          i32.const 1
          i32.sub
          local.tee 4
          br_if 0 (;@3;)
        end
      end
      local.get 1
      local.get 5
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      local.get 5
      i32.sub
      local.tee 0
      i32.const 0
      local.get 0
      local.get 1
      i32.le_u
      select
      local.set 2
      loop  ;; label = @2
        local.get 6
        i32.load
        local.tee 0
        local.get 0
        i32.load
        i32.const 1
        i32.sub
        local.tee 1
        i32.store
        block  ;; label = @3
          local.get 1
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=12
          local.tee 1
          if  ;; label = @4
            local.get 0
            i32.load offset=16
            local.tee 5
            i32.load
            local.tee 4
            if  ;; label = @5
              local.get 1
              local.get 4
              call_indirect (type 0)
            end
            local.get 5
            i32.load offset=4
            local.tee 4
            if  ;; label = @5
              local.get 1
              local.get 4
              local.get 5
              i32.load offset=8
              call 112
            end
            local.get 0
            i32.load offset=24
            local.get 0
            i32.load offset=20
            i32.load offset=12
            call_indirect (type 0)
          end
          local.get 0
          i32.const 4
          i32.add
          local.tee 1
          local.get 1
          i32.load
          i32.const 1
          i32.sub
          local.tee 1
          i32.store
          local.get 1
          br_if 0 (;@3;)
          local.get 0
          i32.const 32
          i32.const 4
          call 112
        end
        local.get 6
        i32.const 4
        i32.add
        local.set 6
        local.get 2
        i32.const 1
        i32.sub
        local.tee 2
        br_if 0 (;@2;)
      end
    end)
  (func (;37;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      i32.const -65587
      i32.const 16
      local.get 0
      local.get 0
      i32.const 16
      i32.le_u
      select
      local.tee 0
      i32.sub
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      local.get 1
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 4
      i32.add
      i32.const 12
      i32.add
      call 28
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 8
      i32.sub
      local.set 1
      block  ;; label = @2
        local.get 0
        i32.const 1
        i32.sub
        local.tee 3
        local.get 2
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 1
          local.set 0
          br 1 (;@2;)
        end
        local.get 2
        i32.const 4
        i32.sub
        local.tee 5
        i32.load
        local.tee 6
        i32.const -8
        i32.and
        local.get 2
        local.get 3
        i32.add
        i32.const 0
        local.get 0
        i32.sub
        i32.and
        i32.const 8
        i32.sub
        local.tee 2
        local.get 0
        i32.const 0
        local.get 2
        local.get 1
        i32.sub
        i32.const 16
        i32.le_u
        select
        i32.add
        local.tee 0
        local.get 1
        i32.sub
        local.tee 2
        i32.sub
        local.set 3
        local.get 6
        i32.const 3
        i32.and
        if  ;; label = @3
          local.get 0
          local.get 3
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.tee 3
          local.get 3
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 5
          local.get 2
          local.get 5
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 1
          local.get 2
          i32.add
          local.tee 3
          local.get 3
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 2
          call 34
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 1
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 0
        local.get 1
        local.get 2
        i32.add
        i32.store
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const -8
        i32.and
        local.tee 2
        local.get 4
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        local.get 1
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store offset=4
        local.get 0
        local.get 4
        i32.add
        local.tee 1
        local.get 2
        local.get 4
        i32.sub
        local.tee 4
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 4
        call 34
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3)
  (func (;38;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load offset=12
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 256
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i32.load offset=24
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 2
              i32.eq
              if  ;; label = @6
                local.get 0
                i32.const 20
                i32.const 16
                local.get 0
                i32.load offset=20
                local.tee 2
                select
                i32.add
                i32.load
                local.tee 1
                br_if 1 (;@5;)
                i32.const 0
                local.set 2
                br 2 (;@4;)
              end
              local.get 0
              i32.load offset=8
              local.tee 1
              local.get 2
              i32.store offset=12
              local.get 2
              local.get 1
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 0
            i32.const 20
            i32.add
            local.get 0
            i32.const 16
            i32.add
            local.get 2
            select
            local.set 4
            loop  ;; label = @5
              local.get 4
              local.set 5
              local.get 1
              local.tee 2
              i32.const 20
              i32.add
              local.get 2
              i32.const 16
              i32.add
              local.get 2
              i32.load offset=20
              local.tee 1
              select
              local.set 4
              local.get 2
              i32.const 20
              i32.const 16
              local.get 1
              select
              i32.add
              i32.load
              local.tee 1
              br_if 0 (;@5;)
            end
            local.get 5
            i32.const 0
            i32.store
          end
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 0
          i32.load offset=28
          i32.const 2
          i32.shl
          i32.const 1060540
          i32.add
          local.tee 1
          i32.load
          i32.ne
          if  ;; label = @4
            local.get 3
            i32.const 16
            i32.const 20
            local.get 3
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 2
            i32.store
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            br 2 (;@2;)
          end
          local.get 1
          local.get 2
          i32.store
          local.get 2
          br_if 1 (;@2;)
          i32.const 1060952
          i32.const 1060952
          i32.load
          i32.const -2
          local.get 0
          i32.load offset=28
          i32.rotl
          i32.and
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=8
        local.tee 0
        local.get 2
        i32.ne
        if  ;; label = @3
          local.get 0
          local.get 2
          i32.store offset=12
          local.get 2
          local.get 0
          i32.store offset=8
          return
        end
        i32.const 1060948
        i32.const 1060948
        i32.load
        i32.const -2
        local.get 1
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
        return
      end
      local.get 2
      local.get 3
      i32.store offset=24
      local.get 0
      i32.load offset=16
      local.tee 1
      if  ;; label = @2
        local.get 2
        local.get 1
        i32.store offset=16
        local.get 1
        local.get 2
        i32.store offset=24
      end
      local.get 0
      i32.load offset=20
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.store offset=20
      local.get 0
      local.get 2
      i32.store offset=24
    end)
  (func (;39;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.const 16
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      local.get 4
      if  ;; label = @2
        local.get 0
        local.set 3
        local.get 1
        local.set 6
        loop  ;; label = @3
          local.get 3
          local.get 6
          i32.load8_u
          i32.store8
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 8
      i32.const -4
      i32.and
      local.tee 7
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 1
        local.get 4
        i32.add
        local.tee 4
        i32.const 3
        i32.and
        if  ;; label = @3
          local.get 7
          i32.const 0
          i32.le_s
          br_if 1 (;@2;)
          local.get 4
          i32.const 3
          i32.shl
          local.tee 2
          i32.const 24
          i32.and
          local.set 9
          local.get 4
          i32.const -4
          i32.and
          local.tee 6
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 2
          i32.sub
          i32.const 24
          i32.and
          local.set 2
          local.get 6
          i32.load
          local.set 6
          loop  ;; label = @4
            local.get 5
            local.get 6
            local.get 9
            i32.shr_u
            local.get 1
            i32.load
            local.tee 6
            local.get 2
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
          end
          br 1 (;@2;)
        end
        local.get 7
        i32.const 0
        i32.le_s
        br_if 0 (;@2;)
        local.get 4
        local.set 1
        loop  ;; label = @3
          local.get 5
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 3
      i32.and
      local.set 2
      local.get 4
      local.get 7
      i32.add
      local.set 1
    end
    local.get 2
    if  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;40;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 128
          i32.ge_u
          if  ;; label = @4
            local.get 3
            i32.const 0
            i32.store offset=12
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 65536
            i32.lt_u
            if  ;; label = @5
              local.get 3
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 3
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8 offset=12
              local.get 3
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              i32.const 3
              br 3 (;@2;)
            end
            local.get 3
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 3
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8 offset=12
            local.get 3
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 3
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 4
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=8
          local.tee 7
          local.get 0
          i32.load
          i32.eq
          if  ;; label = @4
            global.get 0
            i32.const 32
            i32.sub
            local.tee 2
            global.set 0
            local.get 0
            i32.load
            local.tee 4
            i32.const -1
            i32.eq
            if  ;; label = @5
              i32.const 0
              i32.const 0
              call 96
              unreachable
            end
            i32.const 8
            local.get 4
            i32.const 1
            i32.shl
            local.tee 5
            local.get 4
            i32.const 1
            i32.add
            local.tee 6
            local.get 5
            local.get 6
            i32.gt_u
            select
            local.tee 5
            local.get 5
            i32.const 8
            i32.le_u
            select
            local.tee 5
            i32.const -1
            i32.xor
            i32.const 31
            i32.shr_u
            local.set 6
            local.get 2
            local.get 4
            if (result i32)  ;; label = @5
              local.get 2
              local.get 4
              i32.store offset=28
              local.get 2
              local.get 0
              i32.load offset=4
              i32.store offset=20
              i32.const 1
            else
              i32.const 0
            end
            i32.store offset=24
            local.get 2
            i32.const 8
            i32.add
            local.get 6
            local.get 5
            local.get 2
            i32.const 20
            i32.add
            call 54
            local.get 2
            i32.load offset=8
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 2
              i32.load offset=12
              local.get 2
              i32.load offset=16
              call 96
              unreachable
            end
            local.get 2
            i32.load offset=12
            local.set 4
            local.get 0
            local.get 5
            i32.store
            local.get 0
            local.get 4
            i32.store offset=4
            local.get 2
            i32.const 32
            i32.add
            global.set 0
          end
          local.get 0
          local.get 7
          i32.const 1
          i32.add
          i32.store offset=8
          local.get 0
          i32.load offset=4
          local.get 7
          i32.add
          local.get 1
          i32.store8
          br 2 (;@1;)
        end
        local.get 3
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 3
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
      end
      local.set 1
      local.get 1
      local.get 0
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.sub
      i32.gt_u
      if  ;; label = @2
        local.get 0
        local.get 2
        local.get 1
        call 50
        local.get 0
        i32.load offset=8
        local.set 2
      end
      local.get 0
      i32.load offset=4
      local.get 2
      i32.add
      local.get 3
      i32.const 12
      i32.add
      local.get 1
      call 39
      drop
      local.get 0
      local.get 1
      local.get 2
      i32.add
      i32.store offset=8
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func (;41;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    block (result i32)  ;; label = @1
      i32.const 0
      local.get 1
      i32.const 256
      i32.lt_u
      br_if 0 (;@1;)
      drop
      i32.const 31
      local.get 1
      i32.const 16777215
      i32.gt_u
      br_if 0 (;@1;)
      drop
      local.get 1
      i32.const 6
      local.get 1
      i32.const 8
      i32.shr_u
      i32.clz
      local.tee 3
      i32.sub
      i32.shr_u
      i32.const 1
      i32.and
      local.get 3
      i32.const 1
      i32.shl
      i32.sub
      i32.const 62
      i32.add
    end
    local.tee 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1060540
    i32.add
    local.set 4
    i32.const 1
    local.get 2
    i32.shl
    local.tee 3
    i32.const 1060952
    i32.load
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 4
      local.get 0
      i32.store
      local.get 0
      local.get 4
      i32.store offset=24
      local.get 0
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 0
      i32.store offset=8
      i32.const 1060952
      i32.const 1060952
      i32.load
      local.get 3
      i32.or
      i32.store
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 4
        i32.load
        local.tee 3
        i32.load offset=4
        i32.const -8
        i32.and
        i32.eq
        if  ;; label = @3
          local.get 3
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        i32.const 0
        local.get 2
        i32.const 31
        i32.ne
        select
        i32.shl
        local.set 5
        loop  ;; label = @3
          local.get 3
          local.get 5
          i32.const 29
          i32.shr_u
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 4
          i32.load
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 5
          i32.const 1
          i32.shl
          local.set 5
          local.get 2
          local.set 3
          local.get 2
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
      return
    end
    local.get 4
    local.get 0
    i32.store
    local.get 0
    local.get 3
    i32.store offset=24
    local.get 0
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.store offset=8)
  (func (;42;) (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      if  ;; label = @2
        i32.const 1050472
        local.set 0
        loop  ;; label = @3
          i32.const -10000
          local.set 1
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.add
            local.tee 3
            i32.const 10200
            i32.add
            i32.const -1
            i32.store align=1
            local.get 3
            i32.const 10000
            i32.add
            i32.const -1
            i32.store align=1
            local.get 1
            i32.const 400
            i32.add
            local.tee 1
            br_if 0 (;@4;)
          end
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          i32.const 1
          local.set 1
          local.get 2
          i32.const 1
          i32.add
          local.tee 2
          i32.const 50
          i32.ne
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      i32.const 1050468
      i32.const 1050468
      i32.load
      local.get 0
      i32.add
      local.tee 0
      i32.store
      local.get 0
      i32.const 500
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 1050472
      local.set 0
      loop  ;; label = @2
        i32.const -10000
        local.set 1
        loop  ;; label = @3
          local.get 0
          local.get 1
          i32.add
          local.tee 3
          i32.const 10200
          i32.add
          i32.const -1
          i32.store align=1
          local.get 3
          i32.const 10000
          i32.add
          i32.const -1
          i32.store align=1
          local.get 1
          i32.const 400
          i32.add
          local.tee 1
          br_if 0 (;@3;)
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
        br_if 0 (;@2;)
      end
      i32.const 1050465
      i32.load8_u
      local.tee 2
      i32.const 200
      i32.mul
      i32.const 1050464
      i32.load8_u
      local.tee 3
      i32.const 2
      i32.shl
      i32.add
      local.tee 0
      i32.const 1050472
      i32.add
      i32.const 255
      i32.store8
      local.get 0
      i32.const 1050473
      i32.add
      i32.const 0
      i32.store8
      local.get 0
      i32.const 1050474
      i32.add
      i32.const 0
      i32.store8
      local.get 0
      i32.const 1050475
      i32.add
      i32.const 255
      i32.store8
      i32.const 1
      local.set 1
      i32.const 1050464
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
      i32.const 1050465
      local.get 2
      i32.const 1
      i32.add
      i32.const 0
      local.get 0
      select
      i32.store8
      i32.const 1050468
      i32.const 0
      i32.store
    end
    local.get 1)
  (func (;43;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i32.load
    local.tee 0
    i32.load8_u offset=28
    local.set 4
    local.get 0
    i32.const 4
    i32.store8 offset=28
    block  ;; label = @1
      local.get 4
      i32.const 4
      i32.ne
      if  ;; label = @2
        local.get 3
        i32.const 40
        i32.add
        local.tee 5
        local.get 0
        i32.const 24
        i32.add
        i32.load
        i32.store
        local.get 3
        i32.const 32
        i32.add
        local.tee 6
        local.get 0
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 3
        i32.const 24
        i32.add
        local.tee 7
        local.get 0
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 3
        local.get 0
        i64.load align=4
        i64.store offset=16
        local.get 3
        i32.const 14
        i32.add
        local.tee 8
        local.get 0
        i32.const 31
        i32.add
        i32.load8_u
        i32.store8
        i32.const 1060473
        i32.load8_u
        drop
        local.get 3
        local.get 0
        i32.load16_u offset=29 align=1
        i32.store16 offset=12
        i32.const 76
        i32.const 4
        call 105
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.store offset=36
        local.get 0
        local.get 1
        i32.store offset=32
        local.get 0
        local.get 3
        i64.load offset=16
        i64.store offset=40 align=4
        local.get 0
        local.get 4
        i32.store8 offset=68
        local.get 0
        local.get 3
        i32.load16_u offset=12
        i32.store16 offset=69 align=1
        local.get 0
        i32.const 0
        i32.store8 offset=72
        local.get 0
        i32.const 48
        i32.add
        local.get 7
        i64.load
        i64.store align=4
        local.get 0
        i32.const 56
        i32.add
        local.get 6
        i64.load
        i64.store align=4
        local.get 0
        i32.const -64
        i32.sub
        local.get 5
        i32.load
        i32.store
        local.get 0
        i32.const 71
        i32.add
        local.get 8
        i32.load8_u
        i32.store8
        local.get 0
        call 63
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        return
      end
      i32.const 1048612
      i32.const 49
      call 116
      unreachable
    end
    i32.const 4
    i32.const 76
    call 119
    unreachable)
  (func (;44;) (type 2) (param i32 i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 1
    i32.load
    i32.const -2147483648
    i32.eq
    if  ;; label = @1
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 36
      i32.add
      local.tee 4
      i32.const 0
      i32.store
      local.get 2
      i64.const 4294967296
      i64.store offset=28 align=4
      local.get 2
      i32.const 56
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 48
      i32.add
      local.get 3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 3
      i64.load align=4
      i64.store offset=40
      local.get 2
      i32.const 28
      i32.add
      i32.const 1049660
      local.get 2
      i32.const 40
      i32.add
      call 32
      drop
      local.get 2
      i32.const 24
      i32.add
      local.get 4
      i32.load
      local.tee 3
      i32.store
      local.get 2
      local.get 2
      i64.load offset=28 align=4
      local.tee 5
      i64.store offset=16
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i32.store
      local.get 1
      local.get 5
      i64.store align=4
    end
    local.get 1
    i64.load align=4
    local.set 5
    local.get 1
    i64.const 4294967296
    i64.store align=4
    local.get 2
    i32.const 8
    i32.add
    local.tee 3
    local.get 1
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    i32.store
    local.get 1
    i32.const 0
    i32.store
    i32.const 1060473
    i32.load8_u
    drop
    local.get 2
    local.get 5
    i64.store
    i32.const 12
    i32.const 4
    call 105
    local.tee 1
    if  ;; label = @1
      local.get 1
      local.get 2
      i64.load
      i64.store align=4
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i32.load
      i32.store
      local.get 0
      i32.const 1049936
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const -64
      i32.sub
      global.set 0
      return
    end
    i32.const 4
    i32.const 12
    call 119
    unreachable)
  (func (;45;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i32.load
    local.tee 0
    i32.load8_u offset=28
    local.set 4
    local.get 0
    i32.const 4
    i32.store8 offset=28
    block  ;; label = @1
      local.get 4
      i32.const 4
      i32.ne
      if  ;; label = @2
        local.get 3
        i32.const 40
        i32.add
        local.tee 5
        local.get 0
        i32.const 24
        i32.add
        i32.load
        i32.store
        local.get 3
        i32.const 32
        i32.add
        local.tee 6
        local.get 0
        i32.const 16
        i32.add
        i64.load align=4
        i64.store
        local.get 3
        i32.const 24
        i32.add
        local.tee 7
        local.get 0
        i32.const 8
        i32.add
        i64.load align=4
        i64.store
        local.get 3
        local.get 0
        i64.load align=4
        i64.store offset=16
        local.get 3
        i32.const 14
        i32.add
        local.tee 8
        local.get 0
        i32.const 31
        i32.add
        i32.load8_u
        i32.store8
        i32.const 1060473
        i32.load8_u
        drop
        local.get 3
        local.get 0
        i32.load16_u offset=29 align=1
        i32.store16 offset=12
        i32.const 76
        i32.const 4
        call 105
        local.tee 0
        br_if 1 (;@1;)
        i32.const 4
        i32.const 76
        call 119
        unreachable
      end
      i32.const 1048612
      i32.const 49
      call 116
      unreachable
    end
    local.get 0
    local.get 2
    i32.store offset=36
    local.get 0
    local.get 1
    i32.store offset=32
    local.get 0
    local.get 3
    i64.load offset=16
    i64.store offset=40 align=4
    local.get 0
    local.get 4
    i32.store8 offset=68
    local.get 0
    local.get 3
    i32.load16_u offset=12
    i32.store16 offset=69 align=1
    local.get 0
    i32.const 0
    i32.store8 offset=72
    local.get 0
    i32.const 48
    i32.add
    local.get 7
    i64.load
    i64.store align=4
    local.get 0
    i32.const 56
    i32.add
    local.get 6
    i64.load
    i64.store align=4
    local.get 0
    i32.const -64
    i32.sub
    local.get 5
    i32.load
    i32.store
    local.get 0
    i32.const 71
    i32.add
    local.get 8
    i32.load8_u
    i32.store8
    local.get 0
    call 63
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;46;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.const -1
      i32.store
      local.get 0
      i32.load offset=20
      local.set 3
      local.get 0
      i32.const 0
      i32.store offset=20
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=40
        local.get 0
        i32.load offset=36
        local.set 4
        local.get 0
        i32.load offset=32
        local.set 7
        local.get 0
        i32.load offset=24
        local.set 5
        block  ;; label = @3
          local.get 0
          i32.load offset=28
          call 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load
          local.tee 6
          if  ;; label = @4
            local.get 3
            local.get 6
            call_indirect (type 0)
          end
          local.get 5
          i32.load offset=4
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 6
          local.get 5
          i32.load offset=8
          call 112
        end
        call 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load
        local.tee 3
        if  ;; label = @3
          local.get 7
          local.get 3
          call_indirect (type 0)
        end
        local.get 4
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 3
        local.get 4
        i32.load offset=8
        call 112
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        i32.const 2
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        i32.load
        local.tee 4
        i32.const 132
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        call 1
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 3
      local.get 2
      i32.store
      local.get 0
      i32.load offset=12
      local.set 1
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 0
      local.get 0
      i32.load
      i32.const 1
      i32.add
      i32.store
      local.get 1
      if  ;; label = @2
        local.get 0
        i32.load offset=16
        local.get 1
        i32.load offset=4
        call_indirect (type 0)
      end
      return
    end
    i32.const 1049392
    call 67
    unreachable)
  (func (;47;) (type 0) (param i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    local.tee 0
    local.get 0
    i32.load
    i32.const 1
    i32.sub
    local.tee 1
    i32.store
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=12
        i32.const 2
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=16
        local.tee 1
        i32.const 132
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        call 1
      end
      local.get 0
      i32.load offset=20
      local.tee 1
      if  ;; label = @2
        local.get 0
        i32.load offset=24
        local.get 1
        i32.load offset=12
        call_indirect (type 0)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=28
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=36
          call 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=32
          local.tee 3
          i32.load
          local.tee 2
          if  ;; label = @4
            local.get 1
            local.get 2
            call_indirect (type 0)
          end
          local.get 3
          i32.load offset=4
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          local.get 3
          i32.load offset=8
          call 112
        end
        local.get 0
        i32.load offset=48
        call 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=40
        local.set 1
        local.get 0
        i32.load offset=44
        local.tee 3
        i32.load
        local.tee 2
        if  ;; label = @3
          local.get 1
          local.get 2
          call_indirect (type 0)
        end
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        local.get 3
        i32.load offset=8
        call 112
      end
      local.get 0
      i32.const 4
      i32.add
      local.tee 1
      local.get 1
      i32.load
      i32.const 1
      i32.sub
      local.tee 1
      i32.store
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 52
      i32.const 4
      call 112
    end)
  (func (;48;) (type 0) (param i32)
    (local i32 i32 i32)
    local.get 0
    local.get 0
    i32.load
    i32.const 1
    i32.sub
    local.tee 1
    i32.store
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=12
        i32.const 2
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=16
        local.tee 1
        i32.const 132
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        call 1
      end
      local.get 0
      i32.load offset=20
      local.tee 1
      if  ;; label = @2
        local.get 0
        i32.load offset=24
        local.get 1
        i32.load offset=12
        call_indirect (type 0)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=28
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=36
          call 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=32
          local.tee 3
          i32.load
          local.tee 2
          if  ;; label = @4
            local.get 1
            local.get 2
            call_indirect (type 0)
          end
          local.get 3
          i32.load offset=4
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          local.get 3
          i32.load offset=8
          call 112
        end
        local.get 0
        i32.load offset=48
        call 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=40
        local.set 1
        local.get 0
        i32.load offset=44
        local.tee 3
        i32.load
        local.tee 2
        if  ;; label = @3
          local.get 1
          local.get 2
          call_indirect (type 0)
        end
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        local.get 3
        i32.load offset=8
        call 112
      end
      local.get 0
      i32.const 4
      i32.add
      local.tee 1
      local.get 1
      i32.load
      i32.const 1
      i32.sub
      local.tee 1
      i32.store
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 52
      i32.const 4
      call 112
    end)
  (func (;49;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    i32.const 1060536
    i32.const 1060536
    i32.load
    local.tee 6
    i32.const 1
    i32.add
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1060996
        i32.load8_u
        br_if 1 (;@1;)
        i32.const 1060996
        i32.const 1
        i32.store8
        i32.const 1060992
        i32.const 1060992
        i32.load
        i32.const 1
        i32.add
        i32.store
        i32.const 1060524
        i32.load
        local.tee 6
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1060524
        local.get 6
        i32.const 1
        i32.add
        i32.store
        i32.const 1060524
        i32.const 1060528
        i32.load
        if (result i32)  ;; label = @3
          local.get 5
          i32.const 8
          i32.add
          local.get 0
          local.get 1
          i32.load offset=20
          call_indirect (type 2)
          local.get 5
          local.get 4
          i32.store8 offset=29
          local.get 5
          local.get 3
          i32.store8 offset=28
          local.get 5
          local.get 2
          i32.store offset=24
          local.get 5
          local.get 5
          i64.load offset=8
          i64.store offset=16 align=4
          i32.const 1060528
          i32.load
          local.get 5
          i32.const 16
          i32.add
          i32.const 1060532
          i32.load
          i32.load offset=20
          call_indirect (type 2)
          i32.const 1060524
          i32.load
          i32.const 1
          i32.sub
        else
          local.get 6
        end
        i32.store
        i32.const 1060996
        i32.const 0
        i32.store8
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        unreachable
      end
      unreachable
    end
    local.get 5
    local.get 0
    local.get 1
    i32.load offset=24
    call_indirect (type 2)
    unreachable)
  (func (;50;) (type 5) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 1
    local.get 1
    local.get 2
    i32.add
    local.tee 2
    i32.gt_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      call 96
      unreachable
    end
    i32.const 8
    local.get 0
    i32.load
    local.tee 1
    i32.const 1
    i32.shl
    local.tee 4
    local.get 2
    local.get 2
    local.get 4
    i32.lt_u
    select
    local.tee 2
    local.get 2
    i32.const 8
    i32.le_u
    select
    local.tee 2
    i32.const -1
    i32.xor
    i32.const 31
    i32.shr_u
    local.set 4
    local.get 3
    local.get 1
    if (result i32)  ;; label = @1
      local.get 3
      local.get 1
      i32.store offset=28
      local.get 3
      local.get 0
      i32.load offset=4
      i32.store offset=20
      i32.const 1
    else
      i32.const 0
    end
    i32.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 4
    local.get 2
    local.get 3
    i32.const 20
    i32.add
    call 54
    local.get 3
    i32.load offset=8
    i32.const 1
    i32.eq
    if  ;; label = @1
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=16
      call 96
      unreachable
    end
    local.get 3
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;51;) (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=72
            br_table 0 (;@4;) 3 (;@1;) 3 (;@1;) 1 (;@3;) 3 (;@1;)
          end
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=68
            i32.const 3
            i32.ne
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=64
                br_table 0 (;@6;) 2 (;@4;) 2 (;@4;) 1 (;@5;) 2 (;@4;)
              end
              local.get 0
              i32.load offset=48
              local.tee 1
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=52
              local.get 1
              i32.const 1
              call 112
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=60
            call 48
          end
          local.get 0
          i32.load offset=32
          local.tee 1
          i32.const 132
          i32.ge_u
          if  ;; label = @4
            local.get 1
            call 1
          end
          local.get 0
          i32.load offset=36
          local.tee 0
          i32.const 131
          i32.gt_u
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=28
          i32.const 3
          i32.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u offset=24
              br_table 0 (;@5;) 2 (;@3;) 2 (;@3;) 1 (;@4;) 2 (;@3;)
            end
            local.get 0
            i32.load offset=8
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.load offset=12
            local.get 1
            i32.const 1
            call 112
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=20
          call 48
        end
        local.get 0
        i32.load offset=32
        local.tee 1
        i32.const 132
        i32.ge_u
        if  ;; label = @3
          local.get 1
          call 1
        end
        local.get 0
        i32.load offset=36
        local.tee 0
        i32.const 131
        i32.le_u
        br_if 1 (;@1;)
      end
      local.get 0
      call 1
    end)
  (func (;52;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1050440
    i32.load
    local.tee 7
    i32.load offset=8
    i32.eqz
    if  ;; label = @1
      local.get 7
      i32.const -1
      i32.store offset=8
      local.get 7
      i32.load offset=24
      local.tee 2
      local.get 7
      i32.load offset=12
      local.tee 1
      i32.eq
      if  ;; label = @2
        local.get 7
        i32.const 12
        i32.add
        local.tee 9
        i32.load
        local.set 3
        global.get 0
        i32.const 32
        i32.sub
        local.tee 1
        global.set 0
        local.get 9
        i32.load
        local.tee 2
        i32.const -1
        i32.eq
        if  ;; label = @3
          i32.const 0
          i32.const 0
          call 96
          unreachable
        end
        i32.const 4
        local.get 2
        i32.const 1
        i32.shl
        local.get 2
        i32.const 1
        i32.add
        local.get 2
        i32.const 0
        i32.gt_s
        select
        local.tee 4
        local.get 4
        i32.const 4
        i32.le_u
        select
        local.tee 5
        i32.const 2
        i32.shl
        local.set 6
        local.get 1
        local.get 2
        if (result i32)  ;; label = @3
          local.get 1
          local.get 2
          i32.const 2
          i32.shl
          i32.store offset=28
          local.get 1
          local.get 9
          i32.load offset=4
          i32.store offset=20
          i32.const 4
        else
          i32.const 0
        end
        i32.store offset=24
        local.get 1
        i32.const 8
        i32.add
        local.get 4
        i32.const 536870912
        i32.lt_u
        i32.const 2
        i32.shl
        local.get 6
        local.get 1
        i32.const 20
        i32.add
        call 54
        local.get 1
        i32.load offset=8
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 1
          i32.load offset=12
          local.get 1
          i32.load offset=16
          call 96
          unreachable
        end
        local.get 1
        i32.load offset=12
        local.set 2
        local.get 9
        local.get 5
        i32.store
        local.get 9
        local.get 2
        i32.store offset=4
        local.get 1
        i32.const 32
        i32.add
        global.set 0
        local.get 9
        i32.load offset=8
        local.tee 2
        local.get 3
        local.get 9
        i32.load offset=12
        local.tee 4
        i32.sub
        i32.gt_u
        if  ;; label = @3
          block  ;; label = @4
            local.get 3
            local.get 2
            i32.sub
            local.tee 1
            local.get 4
            local.get 1
            i32.sub
            local.tee 4
            i32.gt_u
            local.get 9
            i32.load
            local.tee 8
            local.get 3
            i32.sub
            local.get 4
            i32.ge_u
            i32.and
            i32.eqz
            if  ;; label = @5
              block  ;; label = @6
                block (result i32)  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 2
                    i32.shl
                    local.tee 5
                    local.tee 6
                    local.get 9
                    i32.load offset=4
                    local.tee 4
                    local.get 8
                    local.get 1
                    i32.sub
                    local.tee 13
                    i32.const 2
                    i32.shl
                    i32.add
                    local.tee 3
                    local.get 4
                    local.get 2
                    i32.const 2
                    i32.shl
                    i32.add
                    local.tee 1
                    i32.sub
                    i32.gt_u
                    if  ;; label = @9
                      local.get 1
                      local.get 5
                      i32.add
                      local.set 4
                      local.get 3
                      local.get 5
                      i32.add
                      local.set 2
                      local.get 3
                      local.get 6
                      i32.const 16
                      i32.lt_u
                      br_if 2 (;@7;)
                      drop
                      local.get 2
                      i32.const -4
                      i32.and
                      local.set 5
                      i32.const 0
                      local.get 2
                      i32.const 3
                      i32.and
                      local.tee 8
                      i32.sub
                      local.set 10
                      local.get 8
                      if  ;; label = @10
                        local.get 4
                        i32.const 1
                        i32.sub
                        local.set 3
                        loop  ;; label = @11
                          local.get 2
                          i32.const 1
                          i32.sub
                          local.tee 2
                          local.get 3
                          i32.load8_u
                          i32.store8
                          local.get 3
                          i32.const 1
                          i32.sub
                          local.set 3
                          local.get 2
                          local.get 5
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 5
                      local.get 6
                      local.get 8
                      i32.sub
                      local.tee 8
                      i32.const -4
                      i32.and
                      local.tee 6
                      i32.sub
                      local.set 2
                      local.get 4
                      local.get 10
                      i32.add
                      local.tee 4
                      i32.const 3
                      i32.and
                      if  ;; label = @10
                        local.get 6
                        i32.const 0
                        i32.le_s
                        br_if 2 (;@8;)
                        local.get 4
                        i32.const 3
                        i32.shl
                        local.tee 3
                        i32.const 24
                        i32.and
                        local.set 10
                        local.get 4
                        i32.const -4
                        i32.and
                        local.tee 11
                        i32.const 4
                        i32.sub
                        local.set 1
                        i32.const 0
                        local.get 3
                        i32.sub
                        i32.const 24
                        i32.and
                        local.set 12
                        local.get 11
                        i32.load
                        local.set 3
                        loop  ;; label = @11
                          local.get 5
                          i32.const 4
                          i32.sub
                          local.tee 5
                          local.get 3
                          local.get 12
                          i32.shl
                          local.get 1
                          i32.load
                          local.tee 3
                          local.get 10
                          i32.shr_u
                          i32.or
                          i32.store
                          local.get 1
                          i32.const 4
                          i32.sub
                          local.set 1
                          local.get 2
                          local.get 5
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                        br 2 (;@8;)
                      end
                      local.get 6
                      i32.const 0
                      i32.le_s
                      br_if 1 (;@8;)
                      local.get 1
                      local.get 8
                      i32.add
                      i32.const 4
                      i32.sub
                      local.set 1
                      loop  ;; label = @10
                        local.get 5
                        i32.const 4
                        i32.sub
                        local.tee 5
                        local.get 1
                        i32.load
                        i32.store
                        local.get 1
                        i32.const 4
                        i32.sub
                        local.set 1
                        local.get 2
                        local.get 5
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    block  ;; label = @9
                      local.get 6
                      i32.const 16
                      i32.lt_u
                      if  ;; label = @10
                        local.get 3
                        local.set 2
                        br 1 (;@9;)
                      end
                      local.get 3
                      i32.const 0
                      local.get 3
                      i32.sub
                      i32.const 3
                      i32.and
                      local.tee 4
                      i32.add
                      local.set 5
                      local.get 4
                      if  ;; label = @10
                        local.get 3
                        local.set 2
                        local.get 1
                        local.set 3
                        loop  ;; label = @11
                          local.get 2
                          local.get 3
                          i32.load8_u
                          i32.store8
                          local.get 3
                          i32.const 1
                          i32.add
                          local.set 3
                          local.get 2
                          i32.const 1
                          i32.add
                          local.tee 2
                          local.get 5
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 5
                      local.get 6
                      local.get 4
                      i32.sub
                      local.tee 6
                      i32.const -4
                      i32.and
                      local.tee 8
                      i32.add
                      local.set 2
                      block  ;; label = @10
                        local.get 1
                        local.get 4
                        i32.add
                        local.tee 4
                        i32.const 3
                        i32.and
                        if  ;; label = @11
                          local.get 8
                          i32.const 0
                          i32.le_s
                          br_if 1 (;@10;)
                          local.get 4
                          i32.const 3
                          i32.shl
                          local.tee 3
                          i32.const 24
                          i32.and
                          local.set 10
                          local.get 4
                          i32.const -4
                          i32.and
                          local.tee 11
                          i32.const 4
                          i32.add
                          local.set 1
                          i32.const 0
                          local.get 3
                          i32.sub
                          i32.const 24
                          i32.and
                          local.set 12
                          local.get 11
                          i32.load
                          local.set 3
                          loop  ;; label = @12
                            local.get 5
                            local.get 3
                            local.get 10
                            i32.shr_u
                            local.get 1
                            i32.load
                            local.tee 3
                            local.get 12
                            i32.shl
                            i32.or
                            i32.store
                            local.get 1
                            i32.const 4
                            i32.add
                            local.set 1
                            local.get 5
                            i32.const 4
                            i32.add
                            local.tee 5
                            local.get 2
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          br 1 (;@10;)
                        end
                        local.get 8
                        i32.const 0
                        i32.le_s
                        br_if 0 (;@10;)
                        local.get 4
                        local.set 1
                        loop  ;; label = @11
                          local.get 5
                          local.get 1
                          i32.load
                          i32.store
                          local.get 1
                          i32.const 4
                          i32.add
                          local.set 1
                          local.get 5
                          i32.const 4
                          i32.add
                          local.tee 5
                          local.get 2
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 6
                      i32.const 3
                      i32.and
                      local.set 6
                      local.get 4
                      local.get 8
                      i32.add
                      local.set 1
                    end
                    local.get 6
                    i32.eqz
                    br_if 2 (;@6;)
                    local.get 2
                    local.get 6
                    i32.add
                    local.set 3
                    loop  ;; label = @9
                      local.get 2
                      local.get 1
                      i32.load8_u
                      i32.store8
                      local.get 1
                      i32.const 1
                      i32.add
                      local.set 1
                      local.get 2
                      i32.const 1
                      i32.add
                      local.tee 2
                      local.get 3
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    br 2 (;@6;)
                  end
                  local.get 8
                  i32.const 3
                  i32.and
                  local.tee 1
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 4
                  local.get 6
                  i32.sub
                  local.set 4
                  local.get 2
                  local.get 1
                  i32.sub
                end
                local.set 3
                local.get 4
                i32.const 1
                i32.sub
                local.set 1
                loop  ;; label = @7
                  local.get 2
                  i32.const 1
                  i32.sub
                  local.tee 2
                  local.get 1
                  i32.load8_u
                  i32.store8
                  local.get 1
                  i32.const 1
                  i32.sub
                  local.set 1
                  local.get 2
                  local.get 3
                  i32.gt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 9
              local.get 13
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 9
            i32.load offset=4
            local.tee 1
            local.get 3
            i32.const 2
            i32.shl
            i32.add
            local.get 1
            local.get 4
            i32.const 2
            i32.shl
            call 39
            drop
          end
        end
        local.get 7
        i32.load offset=24
        local.set 2
        local.get 7
        i32.load offset=12
        local.set 1
      end
      local.get 7
      i32.load offset=16
      local.get 7
      i32.load offset=20
      local.get 2
      i32.add
      local.tee 2
      local.get 1
      i32.const 0
      local.get 1
      local.get 2
      i32.le_u
      select
      i32.sub
      i32.const 2
      i32.shl
      i32.add
      local.get 0
      i32.store
      local.get 7
      i32.load8_u offset=28
      local.set 0
      local.get 7
      i32.const 1
      i32.store8 offset=28
      local.get 7
      local.get 7
      i32.load offset=24
      i32.const 1
      i32.add
      i32.store offset=24
      local.get 7
      local.get 7
      i32.load offset=8
      i32.const 1
      i32.add
      i32.store offset=8
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          br_if 0 (;@3;)
          i32.const 1050460
          i32.load8_u
          br_if 1 (;@2;)
          i32.const 1050456
          i32.load
          i32.const 1050452
          i32.load
          call 17
          local.tee 0
          i32.const 132
          i32.lt_u
          br_if 0 (;@3;)
          local.get 0
          call 1
        end
        return
      end
      i32.const 1050452
      i32.load
      call 5
      return
    end
    i32.const 1049256
    call 67
    unreachable)
  (func (;53;) (type 2) (param i32 i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load
    i32.const -2147483648
    i32.eq
    if  ;; label = @1
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 20
      i32.add
      local.tee 4
      i32.const 0
      i32.store
      local.get 2
      i64.const 4294967296
      i64.store offset=12 align=4
      local.get 2
      i32.const 40
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 32
      i32.add
      local.get 3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 3
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 12
      i32.add
      i32.const 1049660
      local.get 2
      i32.const 24
      i32.add
      call 32
      drop
      local.get 2
      i32.const 8
      i32.add
      local.get 4
      i32.load
      local.tee 3
      i32.store
      local.get 2
      local.get 2
      i64.load offset=12 align=4
      local.tee 5
      i64.store
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i32.store
      local.get 1
      local.get 5
      i64.store align=4
    end
    local.get 0
    i32.const 1049936
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;54;) (type 9) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        if  ;; label = @3
          local.get 2
          i32.const 0
          i32.lt_s
          br_if 1 (;@2;)
          block (result i32)  ;; label = @4
            local.get 3
            i32.load offset=4
            if  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=8
                local.tee 4
                i32.eqz
                if  ;; label = @7
                  br 1 (;@6;)
                end
                local.get 3
                i32.load
                local.get 4
                local.get 1
                local.get 2
                call 97
                br 2 (;@4;)
              end
            end
            local.get 1
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            drop
            i32.const 1060473
            i32.load8_u
            drop
            local.get 2
            local.get 1
            call 105
          end
          local.tee 3
          if  ;; label = @4
            local.get 0
            local.get 2
            i32.store offset=8
            local.get 0
            local.get 3
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.store
            return
          end
          local.get 0
          local.get 2
          i32.store offset=8
          local.get 0
          local.get 1
          i32.store offset=4
          br 2 (;@1;)
        end
        local.get 0
        i32.const 0
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=4
    end
    local.get 0
    i32.const 1
    i32.store)
  (func (;55;) (type 0) (param i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load8_u offset=20
    local.get 0
    i32.const 1
    i32.store8 offset=20
    local.get 0
    i32.const 8
    i32.sub
    local.set 2
    i32.eqz
    if  ;; label = @1
      i32.const 1050460
      i32.load8_u
      i32.const 2
      i32.eq
      if  ;; label = @2
        call 35
      end
      local.get 2
      call 52
      return
    end
    local.get 2
    local.get 2
    i32.load
    i32.const 1
    i32.sub
    local.tee 1
    i32.store
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.tee 1
      if  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 4
        i32.load
        local.tee 3
        if  ;; label = @3
          local.get 1
          local.get 3
          call_indirect (type 0)
        end
        local.get 4
        i32.load offset=4
        local.tee 3
        if  ;; label = @3
          local.get 1
          local.get 3
          local.get 4
          i32.load offset=8
          call 112
        end
        local.get 0
        i32.load offset=16
        local.get 0
        i32.load offset=12
        i32.load offset=12
        call_indirect (type 0)
      end
      local.get 0
      i32.const 4
      i32.sub
      local.tee 0
      local.get 0
      i32.load
      i32.const 1
      i32.sub
      local.tee 0
      i32.store
      local.get 0
      br_if 0 (;@1;)
      local.get 2
      i32.const 32
      i32.const 4
      call 112
    end)
  (func (;56;) (type 12) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 6
    global.set 0
    block  ;; label = @1
      local.get 1
      if  ;; label = @2
        local.get 6
        i32.const 4
        i32.add
        local.get 1
        local.get 3
        local.get 4
        local.get 5
        local.get 2
        i32.load offset=16
        call_indirect (type 8)
        block  ;; label = @3
          local.get 6
          i32.load offset=4
          local.tee 2
          local.get 6
          i32.load offset=12
          local.tee 1
          i32.le_u
          if  ;; label = @4
            local.get 6
            i32.load offset=8
            local.set 5
            br 1 (;@3;)
          end
          local.get 2
          i32.const 2
          i32.shl
          local.set 2
          local.get 6
          i32.load offset=8
          local.set 3
          local.get 1
          i32.eqz
          if  ;; label = @4
            i32.const 4
            local.set 5
            local.get 3
            local.get 2
            i32.const 4
            call 112
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.const 4
          local.get 1
          i32.const 2
          i32.shl
          local.tee 2
          call 97
          local.tee 5
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 5
        i32.store
        local.get 6
        i32.const 16
        i32.add
        global.set 0
        return
      end
      i32.const 1049583
      i32.const 50
      call 116
      unreachable
    end
    i32.const 4
    local.get 2
    call 96
    unreachable)
  (func (;57;) (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    local.get 2
    i64.const 0
    i64.store offset=56
    local.get 2
    i32.const 56
    i32.add
    local.get 0
    call 23
    local.get 2
    local.get 2
    i32.load offset=60
    local.tee 0
    i32.store offset=52
    local.get 2
    local.get 2
    i32.load offset=56
    i32.store offset=48
    local.get 2
    local.get 0
    i32.store offset=44
    local.get 2
    local.get 2
    i32.const 44
    i32.add
    i64.extend_i32_u
    i64.const 150323855360
    i64.or
    i64.store offset=32
    local.get 2
    i32.const 2
    i32.store offset=12
    local.get 2
    i32.const 1049644
    i32.store offset=8
    local.get 2
    i64.const 1
    i64.store offset=20 align=4
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 1
    i32.load offset=20
    local.get 1
    i32.load offset=24
    local.get 2
    i32.const 8
    i32.add
    call 32
    local.get 2
    i32.load offset=44
    local.tee 1
    if  ;; label = @1
      local.get 2
      i32.load offset=48
      local.get 1
      i32.const 1
      call 112
    end
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func (;58;) (type 0) (param i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 8
    i32.sub
    local.tee 3
    local.get 3
    i32.load
    i32.const 1
    i32.sub
    local.tee 1
    i32.store
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.tee 1
      if  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 4
        i32.load
        local.tee 2
        if  ;; label = @3
          local.get 1
          local.get 2
          call_indirect (type 0)
        end
        local.get 4
        i32.load offset=4
        local.tee 2
        if  ;; label = @3
          local.get 1
          local.get 2
          local.get 4
          i32.load offset=8
          call 112
        end
        local.get 0
        i32.load offset=16
        local.get 0
        i32.load offset=12
        i32.load offset=12
        call_indirect (type 0)
      end
      local.get 0
      i32.const 4
      i32.sub
      local.tee 0
      local.get 0
      i32.load
      i32.const 1
      i32.sub
      local.tee 0
      i32.store
      local.get 0
      br_if 0 (;@1;)
      local.get 3
      i32.const 32
      i32.const 4
      call 112
    end)
  (func (;59;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    local.tee 0
    i32.store offset=12
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call 33
    local.get 0
    local.get 0
    i32.load
    i32.const 1
    i32.sub
    local.tee 1
    i32.store
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 12
      i32.add
      call 36
      local.get 0
      i32.load offset=12
      local.tee 1
      if  ;; label = @2
        local.get 0
        i32.load offset=16
        local.get 1
        i32.const 2
        i32.shl
        i32.const 4
        call 112
      end
      local.get 0
      i32.const 4
      i32.add
      local.tee 1
      local.get 1
      i32.load
      i32.const 1
      i32.sub
      local.tee 1
      i32.store
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.const 4
      call 112
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;60;) (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block (result i32)  ;; label = @1
      local.get 0
      i32.load
      i32.const -2147483648
      i32.ne
      if  ;; label = @2
        local.get 1
        local.get 0
        i32.load offset=4
        local.get 0
        i32.load offset=8
        call 101
        br 1 (;@1;)
      end
      local.get 2
      i32.const 24
      i32.add
      local.get 0
      i32.load offset=12
      local.tee 0
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 16
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 0
      i64.load align=4
      i64.store offset=8
      local.get 1
      i32.load offset=20
      local.get 1
      i32.load offset=24
      local.get 2
      i32.const 8
      i32.add
      call 32
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;61;) (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store8 offset=40
    local.get 2
    local.get 1
    i32.store offset=16
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 2
    i32.const 12
    i32.add
    i32.store offset=44
    local.get 2
    i32.const 44
    i32.add
    i32.const 1048576
    call 15
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=40
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load8_u offset=36
          br_table 0 (;@3;) 2 (;@1;) 2 (;@1;) 1 (;@2;) 2 (;@1;)
        end
        local.get 2
        i32.load offset=20
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=24
        local.get 1
        i32.const 1
        call 112
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=32
      call 48
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;62;) (type 2) (param i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1060472
    i32.load8_u
    if  ;; label = @1
      local.get 0
      i32.const 2
      i32.store offset=12
      local.get 0
      i32.const 1049888
      i32.store offset=8
      local.get 0
      i64.const 1
      i64.store offset=20 align=4
      local.get 0
      local.get 1
      i32.store offset=44
      local.get 0
      local.get 0
      i32.const 44
      i32.add
      i64.extend_i32_u
      i64.const 154618822656
      i64.or
      i64.store offset=32
      local.get 0
      local.get 0
      i32.const 32
      i32.add
      i32.store offset=16
      local.get 0
      i32.const 8
      i32.add
      i32.const 1049920
      call 69
      unreachable
    end
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;63;) (type 0) (param i32)
    (local i32)
    i32.const 1060473
    i32.load8_u
    drop
    i32.const 32
    i32.const 4
    call 105
    local.tee 1
    if  ;; label = @1
      local.get 1
      i32.const 1
      i32.store8 offset=28
      local.get 1
      i64.const 1
      i64.store offset=4 align=4
      local.get 1
      i32.const 2
      i32.store
      local.get 1
      i32.const 1049540
      i32.store offset=20
      local.get 1
      i32.const 1048596
      i32.store offset=16
      local.get 1
      local.get 0
      i32.store offset=12
      local.get 1
      local.get 1
      i32.const 8
      i32.add
      i32.store offset=24
      i32.const 1050460
      i32.load8_u
      i32.const 2
      i32.eq
      if  ;; label = @2
        call 35
      end
      local.get 1
      call 52
      return
    end
    i32.const 4
    i32.const 32
    call 119
    unreachable)
  (func (;64;) (type 0) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 0
    local.get 0
    i32.load
    i32.const 1
    i32.sub
    local.tee 1
    i32.store
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 12
      i32.add
      call 36
      local.get 0
      i32.load offset=12
      local.tee 1
      if  ;; label = @2
        local.get 0
        i32.load offset=16
        local.get 1
        i32.const 2
        i32.shl
        i32.const 4
        call 112
      end
      local.get 0
      i32.const 4
      i32.add
      local.tee 1
      local.get 1
      i32.load
      i32.const 1
      i32.sub
      local.tee 1
      i32.store
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.const 4
      call 112
    end)
  (func (;65;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 3
    local.get 0
    i32.const 0
    i32.store
    local.get 3
    if  ;; label = @1
      local.get 2
      local.get 3
      i32.store offset=12
      local.get 3
      i32.const 8
      i32.add
      i32.const 1
      local.get 1
      call 46
      local.get 2
      i32.const 12
      i32.add
      call 47
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1049092
    i32.const 28
    call 116
    unreachable)
  (func (;66;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 3
    local.get 0
    i32.const 0
    i32.store
    local.get 3
    if  ;; label = @1
      local.get 2
      local.get 3
      i32.store offset=12
      local.get 3
      i32.const 8
      i32.add
      i32.const 0
      local.get 1
      call 46
      local.get 2
      i32.const 12
      i32.add
      call 47
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1049092
    i32.const 28
    call 116
    unreachable)
  (func (;67;) (type 0) (param i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 1050132
    i32.store offset=8
    local.get 1
    i64.const 1
    i64.store offset=20 align=4
    local.get 1
    local.get 1
    i32.const 47
    i32.add
    i64.extend_i32_u
    i64.const 227633266688
    i64.or
    i64.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call 69
    unreachable)
  (func (;68;) (type 0) (param i32)
    (local i32)
    local.get 0
    i32.load8_u offset=20
    local.set 1
    local.get 0
    i32.const 1
    i32.store8 offset=20
    block  ;; label = @1
      local.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 8
        i32.sub
        local.tee 0
        local.get 0
        i32.load
        i32.const 1
        i32.add
        local.tee 1
        i32.store
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        i32.const 1050460
        i32.load8_u
        i32.const 2
        i32.eq
        if  ;; label = @3
          call 35
        end
        local.get 0
        call 52
      end
      return
    end
    unreachable)
  (func (;69;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 16
    i32.add
    local.tee 3
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    local.tee 4
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 1
    i32.store16 offset=28
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    local.get 0
    i64.load align=4
    i64.store
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    local.get 2
    i32.load offset=24
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i64.load align=4
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 4
    i64.load align=4
    i64.store
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=24
    local.get 0
    local.get 2
    i64.load align=4
    i64.store
    i32.const 0
    local.set 2
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load offset=12
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          local.get 3
          br_if 1 (;@2;)
          i32.const 1
          local.set 3
          br 2 (;@1;)
        end
        local.get 3
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.tee 3
        i32.load offset=4
        local.set 2
        local.get 3
        i32.load
        local.set 3
        br 1 (;@1;)
      end
      local.get 1
      i32.const -2147483648
      i32.store
      local.get 1
      local.get 0
      i32.store offset=12
      local.get 1
      i32.const 1049996
      local.get 0
      i32.load offset=24
      local.get 0
      i32.load offset=28
      local.tee 0
      i32.load8_u offset=28
      local.get 0
      i32.load8_u offset=29
      call 49
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    i32.const 1049968
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.tee 0
    i32.load8_u offset=28
    local.get 0
    i32.load8_u offset=29
    call 49
    unreachable)
  (func (;70;) (type 2) (param i32 i32)
    (local i32 i32)
    i32.const 1060473
    i32.load8_u
    drop
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    i32.const 8
    i32.const 4
    call 105
    local.tee 1
    if  ;; label = @1
      local.get 1
      local.get 2
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 0
      i32.const 1049952
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      return
    end
    i32.const 4
    i32.const 8
    call 119
    unreachable)
  (func (;71;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049092
      i32.const 28
      call 116
      unreachable
    end
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const 8
    i32.add
    i32.const 1
    local.get 1
    call 46
    local.get 2
    i32.const 12
    i32.add
    call 47
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;72;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049092
      i32.const 28
      call 116
      unreachable
    end
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    local.get 1
    call 46
    local.get 2
    i32.const 12
    i32.add
    call 47
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;73;) (type 0) (param i32)
    (local i32 i32)
    block  ;; label = @1
      i32.const 1060508
      i32.load8_u
      i32.eqz
      if  ;; label = @2
        i32.const 1060508
        i32.const 1
        i32.store8
        br 1 (;@1;)
      end
      i32.const 1060512
      i32.load
      i32.const 1
      i32.eq
      local.set 1
      i32.const 1060516
      i32.load
      local.set 2
    end
    i32.const 1060516
    i32.const 0
    i32.store
    i32.const 1060512
    i32.const 0
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;74;) (type 3) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.tee 3
    i32.sub
    i32.gt_u
    if  ;; label = @1
      local.get 0
      local.get 3
      local.get 2
      call 50
      local.get 0
      i32.load offset=8
      local.set 3
    end
    local.get 0
    i32.load offset=4
    local.get 3
    i32.add
    local.get 1
    local.get 2
    call 39
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;75;) (type 0) (param i32)
    (local i32)
    i32.const 1060473
    i32.load8_u
    drop
    i32.const 7
    i32.const 1
    call 105
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 1
      i32.const 7
      call 96
      unreachable
    end
    local.get 1
    i32.const 3
    i32.add
    i32.const 1048891
    i32.load align=1
    i32.store align=1
    local.get 1
    i32.const 1048888
    i32.load align=1
    i32.store align=1
    local.get 0
    local.get 1
    i32.store
    local.get 0
    i32.const 7
    i32.store offset=4)
  (func (;76;) (type 1) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 1
      i32.popcnt
      i32.const 1
      i32.ne
      i32.const -2147483648
      local.get 1
      i32.sub
      local.get 0
      i32.lt_u
      i32.or
      br_if 0 (;@1;)
      local.get 0
      if  ;; label = @2
        i32.const 1060473
        i32.load8_u
        drop
        local.get 0
        local.get 1
        call 105
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      return
    end
    unreachable)
  (func (;77;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=16
    local.get 2
    i32.const 1
    i32.store offset=4
    local.get 2
    i64.const 4
    i64.store offset=8 align=4
    local.get 2
    i32.const 46
    i32.store offset=28
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 24
    i32.add
    i32.store
    local.get 2
    local.get 1
    call 69
    unreachable)
  (func (;78;) (type 7) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 1)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 3
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.get 3
    i32.const 0
    local.get 1
    i32.load offset=12
    call_indirect (type 3))
  (func (;79;) (type 7) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 3
      i32.popcnt
      i32.const 1
      i32.ne
      i32.const -2147483648
      local.get 3
      i32.sub
      local.get 1
      i32.lt_u
      i32.or
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 3
      local.get 2
      call 97
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      return
    end
    unreachable)
  (func (;80;) (type 2) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.tee 2
      if  ;; label = @2
        local.get 0
        local.get 2
        call_indirect (type 0)
      end
      local.get 1
      i32.load offset=4
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=8
      call 112
    end)
  (func (;81;) (type 0) (param i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 1050432
    i32.store offset=8
    local.get 1
    i64.const 4
    i64.store offset=16 align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call 69
    unreachable)
  (func (;82;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    i32.const 8
    i32.sub
    local.tee 2
    local.get 2
    i32.load
    i32.const 1
    i32.add
    local.tee 2
    i32.store
    local.get 2
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 1049540
    i32.store)
  (func (;83;) (type 13) (param i32 i32 i32 i32 i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049583
      i32.const 50
      call 116
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 1
    i32.load offset=16
    call_indirect (type 10))
  (func (;84;) (type 14) (param i32 i32 i64 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049583
      i32.const 50
      call 116
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 15))
  (func (;85;) (type 8) (param i32 i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049583
      i32.const 50
      call 116
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 9))
  (func (;86;) (type 16) (param i32 i32 f32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049583
      i32.const 50
      call 116
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 17))
  (func (;87;) (type 18) (param i32 i32 f64 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049583
      i32.const 50
      call 116
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 19))
  (func (;88;) (type 10) (param i32 i32 i32 i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049583
      i32.const 50
      call 116
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 7))
  (func (;89;) (type 0) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 1
    i32.const -2147483648
    i32.or
    i32.const -2147483648
    i32.ne
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.const 1
      call 112
    end)
  (func (;90;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049583
      i32.const 50
      call 116
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 1
    i32.load offset=16
    call_indirect (type 5))
  (func (;91;) (type 0) (param i32)
    i32.const 1060508
    i32.load8_u
    i32.eqz
    if  ;; label = @1
      i32.const 1060508
      i32.const 1
      i32.store8
    end
    i32.const 1060516
    local.get 0
    i32.store
    i32.const 1060512
    i32.const 1
    i32.store)
  (func (;92;) (type 5) (param i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1048980
      i32.const 50
      call 116
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.load offset=16
    call_indirect (type 2))
  (func (;93;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049583
      i32.const 50
      call 116
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.load offset=16
    call_indirect (type 1))
  (func (;94;) (type 0) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 1
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.const 1
      call 112
    end)
  (func (;95;) (type 0) (param i32)
    local.get 0
    i32.load
    local.tee 0
    i32.const 132
    i32.ge_u
    if  ;; label = @1
      local.get 0
      call 1
    end)
  (func (;96;) (type 2) (param i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      global.get 0
      i32.const 32
      i32.sub
      local.tee 0
      global.set 0
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      i32.const 1
      i32.store offset=12
      local.get 0
      i32.const 1050044
      i32.store offset=8
      local.get 0
      i64.const 4
      i64.store offset=16 align=4
      local.get 0
      i32.const 8
      i32.add
      i32.const 1050072
      call 69
      unreachable
    end
    local.get 0
    local.get 1
    call 119
    unreachable)
  (func (;97;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 4
                i32.sub
                local.tee 5
                i32.load
                local.tee 6
                i32.const -8
                i32.and
                local.tee 4
                i32.const 4
                i32.const 8
                local.get 6
                i32.const 3
                i32.and
                local.tee 7
                select
                local.get 1
                i32.add
                i32.ge_u
                if  ;; label = @7
                  local.get 7
                  i32.const 0
                  local.get 1
                  i32.const 39
                  i32.add
                  local.tee 9
                  local.get 4
                  i32.lt_u
                  select
                  br_if 1 (;@6;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.const 9
                      i32.ge_u
                      if  ;; label = @10
                        local.get 2
                        local.get 3
                        call 37
                        local.tee 8
                        br_if 1 (;@9;)
                        i32.const 0
                        br 9 (;@1;)
                      end
                      local.get 3
                      i32.const -65588
                      i32.gt_u
                      br_if 1 (;@8;)
                      i32.const 16
                      local.get 3
                      i32.const 11
                      i32.add
                      i32.const -8
                      i32.and
                      local.get 3
                      i32.const 11
                      i32.lt_u
                      select
                      local.set 1
                      block  ;; label = @10
                        local.get 7
                        i32.eqz
                        if  ;; label = @11
                          local.get 1
                          i32.const 256
                          i32.lt_u
                          local.get 4
                          local.get 1
                          i32.const 4
                          i32.or
                          i32.lt_u
                          i32.or
                          local.get 4
                          local.get 1
                          i32.sub
                          i32.const 131073
                          i32.ge_u
                          i32.or
                          br_if 1 (;@10;)
                          br 9 (;@2;)
                        end
                        local.get 0
                        i32.const 8
                        i32.sub
                        local.tee 2
                        local.get 4
                        i32.add
                        local.set 7
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                local.get 4
                                i32.gt_u
                                if  ;; label = @15
                                  local.get 7
                                  i32.const 1060968
                                  i32.load
                                  i32.eq
                                  br_if 4 (;@11;)
                                  local.get 7
                                  i32.const 1060964
                                  i32.load
                                  i32.eq
                                  br_if 2 (;@13;)
                                  local.get 7
                                  i32.load offset=4
                                  local.tee 6
                                  i32.const 2
                                  i32.and
                                  br_if 5 (;@10;)
                                  local.get 6
                                  i32.const -8
                                  i32.and
                                  local.tee 6
                                  local.get 4
                                  i32.add
                                  local.tee 4
                                  local.get 1
                                  i32.lt_u
                                  br_if 5 (;@10;)
                                  local.get 7
                                  local.get 6
                                  call 38
                                  local.get 4
                                  local.get 1
                                  i32.sub
                                  local.tee 3
                                  i32.const 16
                                  i32.lt_u
                                  br_if 1 (;@14;)
                                  local.get 5
                                  local.get 1
                                  local.get 5
                                  i32.load
                                  i32.const 1
                                  i32.and
                                  i32.or
                                  i32.const 2
                                  i32.or
                                  i32.store
                                  local.get 1
                                  local.get 2
                                  i32.add
                                  local.tee 1
                                  local.get 3
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 2
                                  local.get 4
                                  i32.add
                                  local.tee 2
                                  local.get 2
                                  i32.load offset=4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  local.get 1
                                  local.get 3
                                  call 34
                                  br 13 (;@2;)
                                end
                                local.get 4
                                local.get 1
                                i32.sub
                                local.tee 3
                                i32.const 15
                                i32.gt_u
                                br_if 2 (;@12;)
                                br 12 (;@2;)
                              end
                              local.get 5
                              local.get 4
                              local.get 5
                              i32.load
                              i32.const 1
                              i32.and
                              i32.or
                              i32.const 2
                              i32.or
                              i32.store
                              local.get 2
                              local.get 4
                              i32.add
                              local.tee 1
                              local.get 1
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 11 (;@2;)
                            end
                            i32.const 1060956
                            i32.load
                            local.get 4
                            i32.add
                            local.tee 4
                            local.get 1
                            i32.lt_u
                            br_if 2 (;@10;)
                            block  ;; label = @13
                              local.get 4
                              local.get 1
                              i32.sub
                              local.tee 3
                              i32.const 15
                              i32.le_u
                              if  ;; label = @14
                                local.get 5
                                local.get 6
                                i32.const 1
                                i32.and
                                local.get 4
                                i32.or
                                i32.const 2
                                i32.or
                                i32.store
                                local.get 2
                                local.get 4
                                i32.add
                                local.tee 1
                                local.get 1
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                i32.const 0
                                local.set 3
                                i32.const 0
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 5
                              local.get 1
                              local.get 6
                              i32.const 1
                              i32.and
                              i32.or
                              i32.const 2
                              i32.or
                              i32.store
                              local.get 1
                              local.get 2
                              i32.add
                              local.tee 1
                              local.get 3
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 2
                              local.get 4
                              i32.add
                              local.tee 2
                              local.get 3
                              i32.store
                              local.get 2
                              local.get 2
                              i32.load offset=4
                              i32.const -2
                              i32.and
                              i32.store offset=4
                            end
                            i32.const 1060964
                            local.get 1
                            i32.store
                            i32.const 1060956
                            local.get 3
                            i32.store
                            br 10 (;@2;)
                          end
                          local.get 5
                          local.get 1
                          local.get 6
                          i32.const 1
                          i32.and
                          i32.or
                          i32.const 2
                          i32.or
                          i32.store
                          local.get 1
                          local.get 2
                          i32.add
                          local.tee 1
                          local.get 3
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 7
                          local.get 7
                          i32.load offset=4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 1
                          local.get 3
                          call 34
                          br 9 (;@2;)
                        end
                        i32.const 1060960
                        i32.load
                        local.get 4
                        i32.add
                        local.tee 4
                        local.get 1
                        i32.gt_u
                        br_if 7 (;@3;)
                      end
                      local.get 3
                      call 28
                      local.tee 1
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 1
                      local.get 0
                      i32.const -4
                      i32.const -8
                      local.get 5
                      i32.load
                      local.tee 1
                      i32.const 3
                      i32.and
                      select
                      local.get 1
                      i32.const -8
                      i32.and
                      i32.add
                      local.tee 1
                      local.get 3
                      local.get 1
                      local.get 3
                      i32.lt_u
                      select
                      call 39
                      local.get 0
                      call 31
                      br 8 (;@1;)
                    end
                    local.get 8
                    local.get 0
                    local.get 1
                    local.get 3
                    local.get 1
                    local.get 3
                    i32.lt_u
                    select
                    call 39
                    drop
                    local.get 5
                    i32.load
                    local.tee 2
                    i32.const -8
                    i32.and
                    local.tee 3
                    local.get 1
                    i32.const 4
                    i32.const 8
                    local.get 2
                    i32.const 3
                    i32.and
                    local.tee 2
                    select
                    i32.add
                    i32.lt_u
                    br_if 3 (;@5;)
                    local.get 2
                    i32.const 0
                    local.get 3
                    local.get 9
                    i32.gt_u
                    select
                    br_if 4 (;@4;)
                    local.get 0
                    call 31
                  end
                  local.get 8
                  br 6 (;@1;)
                end
                i32.const 1049725
                i32.const 1049772
                call 77
                unreachable
              end
              i32.const 1049788
              i32.const 1049836
              call 77
              unreachable
            end
            i32.const 1049725
            i32.const 1049772
            call 77
            unreachable
          end
          i32.const 1049788
          i32.const 1049836
          call 77
          unreachable
        end
        local.get 5
        local.get 1
        local.get 6
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 1
        local.get 2
        i32.add
        local.tee 2
        local.get 4
        local.get 1
        i32.sub
        local.tee 1
        i32.const 1
        i32.or
        i32.store offset=4
        i32.const 1060960
        local.get 1
        i32.store
        i32.const 1060968
        local.get 2
        i32.store
        local.get 0
        br 1 (;@1;)
      end
      local.get 0
    end)
  (func (;98;) (type 5) (param i32 i32 i32)
    local.get 1
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call 112
    end)
  (func (;99;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1050088
    i32.const 11
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 3))
  (func (;100;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1050099
    i32.const 14
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 3))
  (func (;101;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load offset=20
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 3))
  (func (;102;) (type 0) (param i32)
    local.get 0
    i32.load
    if  ;; label = @1
      local.get 0
      call 47
    end)
  (func (;103;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func (;104;) (type 5) (param i32 i32 i32)
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;105;) (type 1) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 9
      i32.ge_u
      if  ;; label = @2
        local.get 1
        local.get 0
        call 37
        br 1 (;@1;)
      end
      local.get 0
      call 28
    end)
  (func (;106;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call 29)
  (func (;107;) (type 2) (param i32 i32)
    local.get 0
    i64.const -3919642737356208210
    i64.store offset=8
    local.get 0
    i64.const -7298455189511714633
    i64.store)
  (func (;108;) (type 2) (param i32 i32)
    local.get 0
    i64.const 7199936582794304877
    i64.store offset=8
    local.get 0
    i64.const -5076933981314334344
    i64.store)
  (func (;109;) (type 2) (param i32 i32)
    local.get 0
    i32.const 1049952
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;110;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 101)
  (func (;111;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 29)
  (func (;112;) (type 5) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 4
        i32.sub
        i32.load
        local.tee 2
        i32.const -8
        i32.and
        local.tee 3
        i32.const 4
        i32.const 8
        local.get 2
        i32.const 3
        i32.and
        local.tee 2
        select
        local.get 1
        i32.add
        i32.ge_u
        if  ;; label = @3
          local.get 2
          i32.const 0
          local.get 3
          local.get 1
          i32.const 39
          i32.add
          i32.gt_u
          select
          br_if 1 (;@2;)
          local.get 0
          call 31
          br 2 (;@1;)
        end
        i32.const 1049725
        i32.const 1049772
        call 77
        unreachable
      end
      i32.const 1049788
      i32.const 1049836
      call 77
      unreachable
    end)
  (func (;113;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    local.get 0
    i64.load32_u
    local.set 13
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    i32.const 39
    local.set 2
    block  ;; label = @1
      local.get 13
      i64.const 10000
      i64.lt_u
      if  ;; label = @2
        local.get 13
        local.set 14
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 4
        i32.const 9
        i32.add
        local.get 2
        i32.add
        local.tee 3
        i32.const 4
        i32.sub
        local.get 13
        local.get 13
        i64.const 10000
        i64.div_u
        local.tee 14
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 5
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 0
        i32.const 1
        i32.shl
        i32.const 1050196
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        i32.const 2
        i32.sub
        local.get 5
        local.get 0
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1050196
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 2
        i32.const 4
        i32.sub
        local.set 2
        local.get 13
        i64.const 99999999
        i64.gt_u
        local.get 14
        local.set 13
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 14
      i64.const 99
      i64.le_u
      if  ;; label = @2
        local.get 14
        i32.wrap_i64
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 2
      i32.sub
      local.tee 2
      local.get 4
      i32.const 9
      i32.add
      i32.add
      local.get 14
      i32.wrap_i64
      local.tee 0
      local.get 0
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1050196
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      local.get 0
      i32.const 10
      i32.ge_u
      if  ;; label = @2
        local.get 2
        i32.const 2
        i32.sub
        local.tee 2
        local.get 4
        i32.const 9
        i32.add
        i32.add
        local.get 0
        i32.const 1
        i32.shl
        i32.const 1050196
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1
      i32.sub
      local.tee 2
      local.get 4
      i32.const 9
      i32.add
      i32.add
      local.get 0
      i32.const 48
      i32.or
      i32.store8
    end
    block (result i32)  ;; label = @1
      local.get 4
      i32.const 9
      i32.add
      local.get 2
      i32.add
      local.set 7
      i32.const 39
      local.get 2
      i32.sub
      local.set 6
      i32.const 43
      i32.const 1114112
      local.get 1
      i32.load offset=28
      local.tee 2
      i32.const 1
      i32.and
      local.tee 0
      select
      local.set 8
      local.get 2
      i32.const 4
      i32.and
      i32.eqz
      i32.eqz
      local.set 9
      local.get 1
      i32.load
      i32.eqz
      if  ;; label = @2
        i32.const 1
        local.get 1
        i32.load offset=20
        local.tee 2
        local.get 1
        i32.load offset=24
        local.tee 0
        local.get 8
        local.get 9
        call 78
        br_if 1 (;@1;)
        drop
        local.get 2
        local.get 7
        local.get 6
        local.get 0
        i32.load offset=12
        call_indirect (type 3)
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.tee 10
            local.get 0
            local.get 6
            i32.add
            local.tee 11
            i32.le_u
            if  ;; label = @5
              local.get 1
              i32.load offset=20
              local.tee 2
              local.get 1
              i32.load offset=24
              local.tee 0
              local.get 8
              local.get 9
              call 78
              i32.eqz
              br_if 1 (;@4;)
              i32.const 1
              br 4 (;@1;)
            end
            local.get 2
            i32.const 8
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.load offset=16
            local.set 5
            local.get 1
            i32.const 48
            i32.store offset=16
            local.get 1
            i32.load8_u offset=32
            local.set 0
            i32.const 1
            local.set 2
            local.get 1
            i32.const 1
            i32.store8 offset=32
            local.get 1
            i32.load offset=20
            local.tee 12
            local.get 1
            i32.load offset=24
            local.tee 3
            local.get 8
            local.get 9
            call 78
            br_if 2 (;@2;)
            local.get 10
            local.get 11
            i32.sub
            i32.const 1
            i32.add
            local.set 2
            block  ;; label = @5
              loop  ;; label = @6
                local.get 2
                i32.const 1
                i32.sub
                local.tee 2
                i32.eqz
                br_if 1 (;@5;)
                local.get 12
                i32.const 48
                local.get 3
                i32.load offset=16
                call_indirect (type 1)
                i32.eqz
                br_if 0 (;@6;)
              end
              i32.const 1
              br 4 (;@1;)
            end
            i32.const 1
            local.get 12
            local.get 7
            local.get 6
            local.get 3
            i32.load offset=12
            call_indirect (type 3)
            br_if 3 (;@1;)
            drop
            local.get 1
            local.get 0
            i32.store8 offset=32
            local.get 1
            local.get 5
            i32.store offset=16
            i32.const 0
            br 3 (;@1;)
          end
          local.get 2
          local.get 7
          local.get 6
          local.get 0
          i32.load offset=12
          call_indirect (type 3)
          local.set 2
          br 1 (;@2;)
        end
        local.get 10
        local.get 11
        i32.sub
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load8_u offset=32
              local.tee 2
              i32.const 1
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 0 (;@5;) 2 (;@3;)
            end
            local.get 0
            local.set 2
            i32.const 0
            local.set 0
            br 1 (;@3;)
          end
          local.get 0
          i32.const 1
          i32.shr_u
          local.set 2
          local.get 0
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 0
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 1
        i32.load offset=16
        local.set 5
        local.get 1
        i32.load offset=24
        local.set 3
        local.get 1
        i32.load offset=20
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            local.get 2
            i32.const 1
            i32.sub
            local.tee 2
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            local.get 5
            local.get 3
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          br 2 (;@1;)
        end
        i32.const 1
        local.set 2
        local.get 1
        local.get 3
        local.get 8
        local.get 9
        call 78
        br_if 0 (;@2;)
        local.get 1
        local.get 7
        local.get 6
        local.get 3
        i32.load offset=12
        call_indirect (type 3)
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        loop  ;; label = @3
          i32.const 0
          local.get 0
          local.get 2
          i32.eq
          br_if 2 (;@1;)
          drop
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 1
          local.get 5
          local.get 3
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 1
        i32.sub
        local.get 0
        i32.lt_u
        br 1 (;@1;)
      end
      local.get 2
    end
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;114;) (type 4) (param i32) (result i32)
    local.get 0
    global.get 0
    i32.add
    global.set 0
    global.get 0)
  (func (;115;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 7
    call 27)
  (func (;116;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call 24
    unreachable)
  (func (;117;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1049660
    local.get 1
    call 32)
  (func (;118;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;119;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1060520
    i32.load
    local.tee 0
    i32.const 37
    local.get 0
    select
    call_indirect (type 2)
    unreachable)
  (func (;120;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func (;121;) (type 6) (result i32)
    i32.const 1050472)
  (func (;122;) (type 6) (result i32)
    i32.const 50)
  (func (;123;) (type 6) (result i32)
    i32.const 10)
  (func (;124;) (type 6) (result i32)
    i32.const 500)
  (table (;0;) 57 57 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "smart_nft_view_canvas_get_buffer" (func 121))
  (export "smart_nft_view_canvas_get_height" (func 122))
  (export "smart_nft_view_canvas_get_scale" (func 123))
  (export "smart_nft_view_canvas_get_tick" (func 124))
  (export "smart_nft_view_canvas" (func 42))
  (export "smart_nft_view_command" (func 61))
  (export "smart_nft_view_name" (func 75))
  (export "smart_nft_main" (func 104))
  (export "smart_nft_view_canvas_get_width" (func 122))
  (export "__wbindgen_malloc" (func 76))
  (export "__wbindgen_realloc" (func 79))
  (export "__wbindgen_free" (func 98))
  (export "__wbindgen_export_3" (table 0))
  (export "_dyn_core__ops__function__FnMut__A____Output___R_as_wasm_bindgen__closure__WasmClosure___describe__invoke__h307f2dd11aa8560b" (func 92))
  (export "__wbindgen_add_to_stack_pointer" (func 114))
  (export "__wbindgen_exn_store" (func 91))
  (export "wasm_bindgen__convert__closures__invoke2_mut__h4d50a97fac60d907" (func 90))
  (elem (;0;) (i32.const 1) func 45 43 51 30 95 57)
  (elem (;1;) (i32.const 8) func 92 80 92 64 59 33 102 71 65 72 66 82 55 68 58 88 56 85 88 83 93 90 85 85 86 87 84 106 113 62 94 74 40 117 107 108 110 70 109 118 89 60 44 53 120 100 99 103 111)
  (data (;0;) (i32.const 1048580) "\04\00\00\00\04\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00L\00\00\00\04\00\00\00\04\00\00\00called `Option::unwrap_throw()` on a `None` value/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-futures-0.4.43/src/lib.rs\00U\00\10\00f\00\00\00\df\00\00\00\15\00\00\00\05\00\00\00\04\00\00\00\04\00\00\00\06\00\00\00called `Result::unwrap()` on an `Err` valuecalled `Result::unwrap_throw()` on an `Err` valueCommandsrc/program_basic_canvas/src/lib.rs\00\00?\01\10\00#\00\00\00k\00\00\00B\00\00\00?\01\10\00#\00\00\00n\00\00\000\00\00\00?\01\10\00#\00\00\00j\00\00\00\01\00\00\00closure invoked recursively or after being dropped\00\00\0b\00\00\00\04\00\00\00\04\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00\04\00\00\00\04\00\00\00\0f\00\00\00\10\00\00\00\0e\00\00\00\04\00\00\00\04\00\00\00\11\00\00\00\12\00\00\00FnOnce called more than once/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-futures-0.4.43/src/queue.rs \02\10\00h\00\00\00(\00\00\00)\00\00\00 \02\10\00h\00\00\00%\00\00\00.\00\00\00 \02\10\00h\00\00\00>\00\00\00\1a\00\00\00/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-futures-0.4.43/src/lib.rs\00\00\b8\02\10\00f\00\00\00\aa\00\00\00\0f\00\00\00\b8\02\10\00f\00\00\00\8a\00\00\00'\00\00\00\b8\02\10\00f\00\00\00\b4\00\00\00$\00\00\00/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-futures-0.4.43/src/task/singlethread.rs\13\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00P\03\10\00t\00\00\00f\00\00\00%\00\00\00return thisclosure invoked recursively or after being droppedJsValue()\00\00!\04\10\00\08\00\00\00)\04\10\00\01\00\00\00&\00\00\00\0c\00\00\00\04\00\00\00'\00\00\00(\00\00\00)\00\00\00/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00T\04\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00T\04\10\00)\00\00\00\ae\04\00\00\0d\00\00\00memory allocation of  bytes failed\00\00\fc\04\10\00\15\00\00\00\11\05\10\00\0d\00\00\00std/src/alloc.rs0\05\10\00\10\00\00\00c\01\00\00\09\00\00\00&\00\00\00\0c\00\00\00\04\00\00\00*\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00+\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00,\00\00\00-\00\00\00.\00\00\00/\00\00\000\00\00\00\10\00\00\00\04\00\00\001\00\00\002\00\00\003\00\00\004\00\00\00capacity overflow\00\00\00\a8\05\10\00\11\00\00\00alloc/src/raw_vec.rs\c4\05\10\00\14\00\00\00\18\00\00\00\05\00\00\00BorrowErrorBorrowMutErroralready borrowed: \00\01\06\10\00\12\00\00\00already mutably borrowed: \00\00\1c\06\10\00\1a\00\00\00: \00\00\01\00\00\00\00\00\00\00@\06\10\00\02\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899`async fn` resumed after completion\00\1c\07\10\00#")
  (data (;1;) (i32.const 1050460) "\02"))
