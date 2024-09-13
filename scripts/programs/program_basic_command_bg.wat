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
  (type (;16;) (func (param i32 i32 f64 i32 i32)))
  (type (;17;) (func (param i32 f64 i32 i32)))
  (type (;18;) (func (param i32 i32 f32 i32 i32)))
  (type (;19;) (func (param i32 f32 i32 i32)))
  (import "wbg" "__wbg_smartnftmainrunasync_6ea19f6d2110916e" (func (;0;) (type 1)))
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
  (import "wbg" "__wbindgen_closure_wrapper44" (func (;27;) (type 3)))
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
                    i32.const 1050936
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
                    i32.const 1050524
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
                  i32.const 1050932
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
                      i32.const 1050668
                      i32.add
                      local.tee 3
                      local.get 0
                      i32.const 1050676
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
                      i32.const 1050932
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
                  i32.const 1050940
                  i32.load
                  i32.le_u
                  br_if 3 (;@4;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1050936
                        i32.load
                        local.tee 0
                        i32.eqz
                        br_if 6 (;@4;)
                        local.get 0
                        i32.ctz
                        i32.const 2
                        i32.shl
                        i32.const 1050524
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
                            i32.const 1050524
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
                            i32.const 1050936
                            i32.const 1050936
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
                        i32.const 1050668
                        i32.add
                        local.tee 3
                        local.get 1
                        i32.const 1050676
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
                        i32.const 1050932
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
                      i32.const 1050940
                      i32.load
                      local.tee 4
                      if  ;; label = @10
                        local.get 4
                        i32.const -8
                        i32.and
                        i32.const 1050668
                        i32.add
                        local.set 1
                        i32.const 1050948
                        i32.load
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 1050932
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
                            i32.const 1050932
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
                      i32.const 1050948
                      local.get 6
                      i32.store
                      i32.const 1050940
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
                        i32.const 1050940
                        i32.load
                        local.tee 6
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 6
                        i32.const -8
                        i32.and
                        i32.const 1050668
                        i32.add
                        local.set 0
                        i32.const 1050948
                        i32.load
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 1050932
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
                            i32.const 1050932
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
                    i32.const 1050948
                    local.get 3
                    i32.store
                    i32.const 1050940
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
                  i32.const 1050524
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
            i32.const 1050940
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
            i32.const 1050524
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
            i32.const 1050936
            i32.const 1050936
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
                    i32.const 1050940
                    i32.load
                    local.tee 1
                    i32.gt_u
                    if  ;; label = @9
                      local.get 5
                      i32.const 1050944
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
                        i32.const 1050956
                        local.get 8
                        i32.load offset=8
                        local.tee 4
                        i32.const 1050956
                        i32.load
                        i32.add
                        local.tee 0
                        i32.store
                        i32.const 1050960
                        i32.const 1050960
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
                            i32.const 1050952
                            i32.load
                            local.tee 2
                            if  ;; label = @13
                              i32.const 1050652
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
                            i32.const 1050968
                            i32.load
                            local.tee 0
                            i32.const 0
                            local.get 0
                            local.get 1
                            i32.le_u
                            select
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1050968
                              local.get 1
                              i32.store
                            end
                            i32.const 1050972
                            i32.const 4095
                            i32.store
                            i32.const 1050664
                            local.get 6
                            i32.store
                            i32.const 1050656
                            local.get 4
                            i32.store
                            i32.const 1050652
                            local.get 1
                            i32.store
                            i32.const 1050680
                            i32.const 1050668
                            i32.store
                            i32.const 1050688
                            i32.const 1050676
                            i32.store
                            i32.const 1050676
                            i32.const 1050668
                            i32.store
                            i32.const 1050696
                            i32.const 1050684
                            i32.store
                            i32.const 1050684
                            i32.const 1050676
                            i32.store
                            i32.const 1050704
                            i32.const 1050692
                            i32.store
                            i32.const 1050692
                            i32.const 1050684
                            i32.store
                            i32.const 1050712
                            i32.const 1050700
                            i32.store
                            i32.const 1050700
                            i32.const 1050692
                            i32.store
                            i32.const 1050720
                            i32.const 1050708
                            i32.store
                            i32.const 1050708
                            i32.const 1050700
                            i32.store
                            i32.const 1050728
                            i32.const 1050716
                            i32.store
                            i32.const 1050716
                            i32.const 1050708
                            i32.store
                            i32.const 1050736
                            i32.const 1050724
                            i32.store
                            i32.const 1050724
                            i32.const 1050716
                            i32.store
                            i32.const 1050744
                            i32.const 1050732
                            i32.store
                            i32.const 1050732
                            i32.const 1050724
                            i32.store
                            i32.const 1050740
                            i32.const 1050732
                            i32.store
                            i32.const 1050752
                            i32.const 1050740
                            i32.store
                            i32.const 1050748
                            i32.const 1050740
                            i32.store
                            i32.const 1050760
                            i32.const 1050748
                            i32.store
                            i32.const 1050756
                            i32.const 1050748
                            i32.store
                            i32.const 1050768
                            i32.const 1050756
                            i32.store
                            i32.const 1050764
                            i32.const 1050756
                            i32.store
                            i32.const 1050776
                            i32.const 1050764
                            i32.store
                            i32.const 1050772
                            i32.const 1050764
                            i32.store
                            i32.const 1050784
                            i32.const 1050772
                            i32.store
                            i32.const 1050780
                            i32.const 1050772
                            i32.store
                            i32.const 1050792
                            i32.const 1050780
                            i32.store
                            i32.const 1050788
                            i32.const 1050780
                            i32.store
                            i32.const 1050800
                            i32.const 1050788
                            i32.store
                            i32.const 1050796
                            i32.const 1050788
                            i32.store
                            i32.const 1050808
                            i32.const 1050796
                            i32.store
                            i32.const 1050816
                            i32.const 1050804
                            i32.store
                            i32.const 1050804
                            i32.const 1050796
                            i32.store
                            i32.const 1050824
                            i32.const 1050812
                            i32.store
                            i32.const 1050812
                            i32.const 1050804
                            i32.store
                            i32.const 1050832
                            i32.const 1050820
                            i32.store
                            i32.const 1050820
                            i32.const 1050812
                            i32.store
                            i32.const 1050840
                            i32.const 1050828
                            i32.store
                            i32.const 1050828
                            i32.const 1050820
                            i32.store
                            i32.const 1050848
                            i32.const 1050836
                            i32.store
                            i32.const 1050836
                            i32.const 1050828
                            i32.store
                            i32.const 1050856
                            i32.const 1050844
                            i32.store
                            i32.const 1050844
                            i32.const 1050836
                            i32.store
                            i32.const 1050864
                            i32.const 1050852
                            i32.store
                            i32.const 1050852
                            i32.const 1050844
                            i32.store
                            i32.const 1050872
                            i32.const 1050860
                            i32.store
                            i32.const 1050860
                            i32.const 1050852
                            i32.store
                            i32.const 1050880
                            i32.const 1050868
                            i32.store
                            i32.const 1050868
                            i32.const 1050860
                            i32.store
                            i32.const 1050888
                            i32.const 1050876
                            i32.store
                            i32.const 1050876
                            i32.const 1050868
                            i32.store
                            i32.const 1050896
                            i32.const 1050884
                            i32.store
                            i32.const 1050884
                            i32.const 1050876
                            i32.store
                            i32.const 1050904
                            i32.const 1050892
                            i32.store
                            i32.const 1050892
                            i32.const 1050884
                            i32.store
                            i32.const 1050912
                            i32.const 1050900
                            i32.store
                            i32.const 1050900
                            i32.const 1050892
                            i32.store
                            i32.const 1050920
                            i32.const 1050908
                            i32.store
                            i32.const 1050908
                            i32.const 1050900
                            i32.store
                            i32.const 1050928
                            i32.const 1050916
                            i32.store
                            i32.const 1050916
                            i32.const 1050908
                            i32.store
                            i32.const 1050952
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
                            i32.const 1050924
                            i32.const 1050916
                            i32.store
                            i32.const 1050944
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
                            i32.const 1050964
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
                        i32.const 1050968
                        i32.const 1050968
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
                        i32.const 1050652
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
                          i32.const 1050652
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
                          i32.const 1050952
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
                          i32.const 1050944
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
                          i32.const 1050964
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
                          i32.const 1050652
                          i64.load align=4
                          local.set 10
                          local.get 3
                          i32.const 16
                          i32.add
                          i32.const 1050660
                          i64.load align=4
                          i64.store align=4
                          local.get 3
                          local.get 10
                          i64.store offset=8 align=4
                          i32.const 1050664
                          local.get 6
                          i32.store
                          i32.const 1050656
                          local.get 4
                          i32.store
                          i32.const 1050652
                          local.get 1
                          i32.store
                          i32.const 1050660
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
                          i32.const 1050668
                          i32.add
                          local.set 1
                          block (result i32)  ;; label = @12
                            i32.const 1050932
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
                              i32.const 1050932
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
                        i32.const 1050952
                        i32.load
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 4
                        i32.const 1050948
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
                        i32.const 1050668
                        i32.add
                        local.set 1
                        block (result i32)  ;; label = @11
                          i32.const 1050932
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
                            i32.const 1050932
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
                      i32.const 1050944
                      local.get 0
                      local.get 5
                      i32.sub
                      local.tee 1
                      i32.store
                      i32.const 1050952
                      i32.const 1050952
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
                    i32.const 1050948
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
                        i32.const 1050948
                        i32.const 0
                        i32.store
                        i32.const 1050940
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
                      i32.const 1050940
                      local.get 2
                      i32.store
                      i32.const 1050948
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
                  i32.const 1050952
                  i32.const 1050952
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
                  i32.const 1050944
                  i32.const 1050944
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
                  i32.const 1050964
                  i32.const 2097152
                  i32.store
                  br 3 (;@4;)
                end
                i32.const 1050952
                local.get 0
                i32.store
                i32.const 1050944
                i32.const 1050944
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
              i32.const 1050948
              local.get 0
              i32.store
              i32.const 1050940
              i32.const 1050940
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
          i32.const 1050944
          i32.load
          local.tee 0
          local.get 5
          i32.le_u
          br_if 2 (;@1;)
          drop
          i32.const 1050944
          local.get 0
          local.get 5
          i32.sub
          local.tee 1
          i32.store
          i32.const 1050952
          i32.const 1050952
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
          i32.const 1050668
          i32.add
          local.set 1
          block (result i32)  ;; label = @4
            i32.const 1050932
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
              i32.const 1050932
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
                        call 109
                        i32.const 0
                        local.set 3
                        br 2 (;@8;)
                      end
                      local.get 4
                      local.get 6
                      i32.const 1
                      local.get 3
                      call 95
                      local.tee 2
                      br_if 1 (;@8;)
                      i32.const 1
                      local.get 3
                      call 94
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
                    i32.const 1050457
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
                          call 102
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
                            i32.const 1050457
                            i32.load8_u
                            drop
                            i32.const 4
                            i32.const 4
                            call 102
                            local.tee 3
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 3
                            local.get 4
                            i32.store
                            local.get 3
                            i32.const 1049064
                            call 111
                            local.set 6
                            local.get 4
                            local.get 4
                            i32.load
                            i32.const 1
                            i32.add
                            local.tee 7
                            i32.store
                            local.get 2
                            i32.const 1049064
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
                            i32.const 1050457
                            i32.load8_u
                            drop
                            i32.const 4
                            i32.const 4
                            call 102
                            local.tee 3
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 3
                            local.get 4
                            i32.store
                            local.get 3
                            i32.const 1049044
                            call 111
                            local.set 6
                            local.get 2
                            i32.const 1049044
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
                                  call 109
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
                                call 109
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
                            i32.const 1049368
                            call 66
                            unreachable
                          end
                          i32.const 4
                          i32.const 52
                          call 115
                          unreachable
                        end
                        i32.const 4
                        i32.const 4
                        call 115
                      end
                      unreachable
                    end
                    i32.const 4
                    i32.const 4
                    call 115
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
                  i32.const 1049400
                  call 66
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
                    call 47
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
                          i32.const 1050457
                          i32.load8_u
                          drop
                          i32.const 1
                          local.set 3
                          local.get 1
                          i32.const 1
                          call 102
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
                      call 94
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
                      call 109
                      i32.const 0
                      local.set 1
                      br 7 (;@2;)
                    end
                    local.get 4
                    local.get 3
                    i32.const 1
                    local.get 1
                    call 95
                    local.tee 2
                    br_if 6 (;@2;)
                    i32.const 1
                    local.get 1
                    call 94
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
              i32.const 1048924
              call 79
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
            i32.const 1050172
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
            i32.const 1048940
            call 68
            unreachable
          end
          i32.const 1048956
          call 79
          unreachable
        end
        i32.const 1048764
        call 79
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
      call 72
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
        call 112
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
        i32.const 1050948
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
          i32.const 1050940
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
                  i32.const 1050952
                  i32.load
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1050948
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
                  i32.const 1050948
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1050940
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
              i32.const 1050972
              i32.const 1050972
              i32.load
              i32.const 1
              i32.sub
              local.tee 0
              i32.store
              local.get 0
              br_if 4 (;@1;)
              i32.const 1050660
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
              i32.const 1050972
              i32.const 4095
              local.get 1
              local.get 1
              i32.const 4095
              i32.le_u
              select
              i32.store
              return
            end
            i32.const 1050952
            local.get 1
            i32.store
            i32.const 1050944
            i32.const 1050944
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
            i32.const 1050948
            i32.load
            local.get 1
            i32.eq
            if  ;; label = @5
              i32.const 1050940
              i32.const 0
              i32.store
              i32.const 1050948
              i32.const 0
              i32.store
            end
            local.get 0
            i32.const 1050964
            i32.load
            local.tee 3
            i32.le_u
            br_if 3 (;@1;)
            i32.const 1050952
            i32.load
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            local.set 0
            i32.const 1050944
            i32.load
            local.tee 4
            i32.const 41
            i32.lt_u
            br_if 2 (;@2;)
            i32.const 1050652
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
          i32.const 1050948
          local.get 1
          i32.store
          i32.const 1050940
          i32.const 1050940
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
        i32.const 1050668
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 1050932
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
            i32.const 1050932
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
      i32.const 1050660
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
      i32.const 1050972
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
      i32.const 1050964
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
                i32.const 1049548
                call 66
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
                    call 109
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
                  call 109
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
              call 109
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
      i32.const 1050160
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
      i32.const 1049232
      call 68
      unreachable
    end
    i32.const 1049216
    call 66
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
        i32.const 1050948
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
          i32.const 1050940
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
              i32.const 1050952
              i32.load
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 1050948
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
              i32.const 1050948
              i32.load
              i32.ne
              br_if 1 (;@4;)
              i32.const 1050940
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
          i32.const 1050668
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1050932
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
              i32.const 1050932
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
        i32.const 1050952
        local.get 0
        i32.store
        i32.const 1050944
        i32.const 1050944
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
        i32.const 1050948
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1050940
        i32.const 0
        i32.store
        i32.const 1050948
        i32.const 0
        i32.store
        return
      end
      i32.const 1050948
      local.get 0
      i32.store
      i32.const 1050940
      i32.const 1050940
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
    i32.const 1050457
    i32.load8_u
    drop
    block  ;; label = @1
      i32.const 32
      i32.const 4
      call 102
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
        i32.const 1050460
        i32.load
        if (result i32)  ;; label = @3
          i32.const 1050464
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
          call 72
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
                call 72
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
                call 72
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
                call 72
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
            i32.const 1049564
            i32.const 11
            call 6
            local.tee 1
            i32.const 128
            call 7
            local.set 4
            local.get 2
            i32.const 8
            i32.add
            call 72
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
          i32.const 1050464
          i32.load
          local.set 0
          i32.const 1050464
          local.get 1
          i32.store
          i32.const 1050460
          i32.load
          i32.const 1050460
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
          i32.const 1050464
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
        i32.const 1050457
        i32.load8_u
        drop
        i32.const 4
        i32.const 4
        call 102
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 5
        i32.store
        local.get 1
        i32.const 1049024
        call 111
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
        i32.const 1050432
        i32.load
        local.set 0
        i32.const 1050432
        local.get 5
        i32.store
        i32.const 1050436
        i32.load
        local.set 2
        i32.const 1050436
        local.get 1
        i32.store
        i32.const 1050440
        i32.load
        local.set 1
        i32.const 1050440
        i32.const 1049024
        i32.store
        i32.const 1050444
        i32.load
        local.set 8
        i32.const 1050444
        local.get 6
        i32.store
        i32.const 1050448
        i32.load
        local.set 5
        i32.const 1050448
        local.get 4
        i32.store
        i32.const 1050452
        i32.load8_u
        local.set 4
        i32.const 1050452
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
              call 109
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
            call 109
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
          call 109
        end
        local.get 7
        i32.const 16
        i32.add
        global.set 0
        return
      end
      i32.const 4
      i32.const 32
      call 115
      unreachable
    end
    i32.const 4
    i32.const 4
    call 115
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
                call 109
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
            call 109
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
              call 109
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
          call 109
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
          i32.const 1050524
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
          i32.const 1050936
          i32.const 1050936
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
        i32.const 1050932
        i32.const 1050932
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
              call 94
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
            call 53
            local.get 2
            i32.load offset=8
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 2
              i32.load offset=12
              local.get 2
              i32.load offset=16
              call 94
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
        call 49
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
    i32.const 1050524
    i32.add
    local.set 4
    i32.const 1
    local.get 2
    i32.shl
    local.tee 3
    i32.const 1050936
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
      i32.const 1050936
      i32.const 1050936
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
  (func (;42;) (type 5) (param i32 i32 i32)
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
        i32.const 1050457
        i32.load8_u
        drop
        local.get 3
        local.get 0
        i32.load16_u offset=29 align=1
        i32.store16 offset=12
        i32.const 76
        i32.const 4
        call 102
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
        call 62
        local.get 3
        i32.const 48
        i32.add
        global.set 0
        return
      end
      i32.const 1048612
      i32.const 49
      call 112
      unreachable
    end
    i32.const 4
    i32.const 76
    call 115
    unreachable)
  (func (;43;) (type 2) (param i32 i32)
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
      i32.const 1049652
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
    i32.const 1050457
    i32.load8_u
    drop
    local.get 2
    local.get 5
    i64.store
    i32.const 12
    i32.const 4
    call 102
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
      i32.const 1049928
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
    call 115
    unreachable)
  (func (;44;) (type 5) (param i32 i32 i32)
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
        i32.const 1050457
        i32.load8_u
        drop
        local.get 3
        local.get 0
        i32.load16_u offset=29 align=1
        i32.store16 offset=12
        i32.const 76
        i32.const 4
        call 102
        local.tee 0
        br_if 1 (;@1;)
        i32.const 4
        i32.const 76
        call 115
        unreachable
      end
      i32.const 1048612
      i32.const 49
      call 112
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
    call 62
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;45;) (type 5) (param i32 i32 i32)
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
          call 109
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
        call 109
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
    i32.const 1049384
    call 66
    unreachable)
  (func (;46;) (type 0) (param i32)
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
          call 109
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
        call 109
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
      call 109
    end)
  (func (;47;) (type 0) (param i32)
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
          call 109
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
        call 109
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
      call 109
    end)
  (func (;48;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    i32.const 1050520
    i32.const 1050520
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
        i32.const 1050980
        i32.load8_u
        br_if 1 (;@1;)
        i32.const 1050980
        i32.const 1
        i32.store8
        i32.const 1050976
        i32.const 1050976
        i32.load
        i32.const 1
        i32.add
        i32.store
        i32.const 1050508
        i32.load
        local.tee 6
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1050508
        local.get 6
        i32.const 1
        i32.add
        i32.store
        i32.const 1050508
        i32.const 1050512
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
          i32.const 1050512
          i32.load
          local.get 5
          i32.const 16
          i32.add
          i32.const 1050516
          i32.load
          i32.load offset=20
          call_indirect (type 2)
          i32.const 1050508
          i32.load
          i32.const 1
          i32.sub
        else
          local.get 6
        end
        i32.store
        i32.const 1050980
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
  (func (;49;) (type 5) (param i32 i32 i32)
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
      call 94
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
    call 53
    local.get 3
    i32.load offset=8
    i32.const 1
    i32.eq
    if  ;; label = @1
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=16
      call 94
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
  (func (;50;) (type 0) (param i32)
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
              call 109
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=60
            call 47
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
            call 109
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=20
          call 47
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
  (func (;51;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1050432
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
          call 94
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
        call 53
        local.get 1
        i32.load offset=8
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 1
          i32.load offset=12
          local.get 1
          i32.load offset=16
          call 94
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
          i32.const 1050452
          i32.load8_u
          br_if 1 (;@2;)
          i32.const 1050448
          i32.load
          i32.const 1050444
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
      i32.const 1050444
      i32.load
      call 5
      return
    end
    i32.const 1049248
    call 66
    unreachable)
  (func (;52;) (type 2) (param i32 i32)
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
      i32.const 1049652
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
    i32.const 1049928
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;53;) (type 9) (param i32 i32 i32 i32)
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
                call 95
                br 2 (;@4;)
              end
            end
            local.get 1
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            drop
            i32.const 1050457
            i32.load8_u
            drop
            local.get 2
            local.get 1
            call 102
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
  (func (;54;) (type 0) (param i32)
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
      i32.const 1050452
      i32.load8_u
      i32.const 2
      i32.eq
      if  ;; label = @2
        call 35
      end
      local.get 2
      call 51
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
          call 109
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
      call 109
    end)
  (func (;55;) (type 12) (param i32 i32 i32 i32 i32 i32)
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
            call 109
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.const 4
          local.get 1
          i32.const 2
          i32.shl
          local.tee 2
          call 95
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
      i32.const 1049575
      i32.const 50
      call 112
      unreachable
    end
    i32.const 4
    local.get 2
    call 94
    unreachable)
  (func (;56;) (type 1) (param i32 i32) (result i32)
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
    i32.const 1049636
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
      call 109
    end
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func (;57;) (type 0) (param i32)
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
          call 109
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
      call 109
    end)
  (func (;58;) (type 2) (param i32 i32)
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
        call 109
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
      call 109
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;59;) (type 1) (param i32 i32) (result i32)
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
        call 99
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
  (func (;60;) (type 1) (param i32 i32) (result i32)
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
        call 109
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=32
      call 47
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;61;) (type 2) (param i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1050456
    i32.load8_u
    if  ;; label = @1
      local.get 0
      i32.const 2
      i32.store offset=12
      local.get 0
      i32.const 1049880
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
      i32.const 1049912
      call 68
      unreachable
    end
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;62;) (type 0) (param i32)
    (local i32)
    i32.const 1050457
    i32.load8_u
    drop
    i32.const 32
    i32.const 4
    call 102
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
      i32.const 1049532
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
      i32.const 1050452
      i32.load8_u
      i32.const 2
      i32.eq
      if  ;; label = @2
        call 35
      end
      local.get 1
      call 51
      return
    end
    i32.const 4
    i32.const 32
    call 115
    unreachable)
  (func (;63;) (type 0) (param i32)
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
        call 109
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
      call 109
    end)
  (func (;64;) (type 2) (param i32 i32)
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
      call 45
      local.get 2
      i32.const 12
      i32.add
      call 46
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1049084
    i32.const 28
    call 112
    unreachable)
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
      i32.const 0
      local.get 1
      call 45
      local.get 2
      i32.const 12
      i32.add
      call 46
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1049084
    i32.const 28
    call 112
    unreachable)
  (func (;66;) (type 0) (param i32)
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
    i32.const 1050124
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
    call 68
    unreachable)
  (func (;67;) (type 0) (param i32)
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
        i32.const 1050452
        i32.load8_u
        i32.const 2
        i32.eq
        if  ;; label = @3
          call 35
        end
        local.get 0
        call 51
      end
      return
    end
    unreachable)
  (func (;68;) (type 2) (param i32 i32)
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
      i32.const 1049988
      local.get 0
      i32.load offset=24
      local.get 0
      i32.load offset=28
      local.tee 0
      i32.load8_u offset=28
      local.get 0
      i32.load8_u offset=29
      call 48
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    i32.const 1049960
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.tee 0
    i32.load8_u offset=28
    local.get 0
    i32.load8_u offset=29
    call 48
    unreachable)
  (func (;69;) (type 2) (param i32 i32)
    (local i32 i32)
    i32.const 1050457
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
    call 102
    local.tee 1
    if  ;; label = @1
      local.get 1
      local.get 2
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 0
      i32.const 1049944
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      return
    end
    i32.const 4
    i32.const 8
    call 115
    unreachable)
  (func (;70;) (type 2) (param i32 i32)
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
      i32.const 1049084
      i32.const 28
      call 112
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
    call 45
    local.get 2
    i32.const 12
    i32.add
    call 46
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
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
      i32.const 1049084
      i32.const 28
      call 112
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
    call 45
    local.get 2
    i32.const 12
    i32.add
    call 46
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;72;) (type 0) (param i32)
    (local i32 i32)
    block  ;; label = @1
      i32.const 1050492
      i32.load8_u
      i32.eqz
      if  ;; label = @2
        i32.const 1050492
        i32.const 1
        i32.store8
        br 1 (;@1;)
      end
      i32.const 1050496
      i32.load
      i32.const 1
      i32.eq
      local.set 1
      i32.const 1050500
      i32.load
      local.set 2
    end
    i32.const 1050500
    i32.const 0
    i32.store
    i32.const 1050496
    i32.const 0
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;73;) (type 3) (param i32 i32 i32) (result i32)
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
      call 49
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
  (func (;74;) (type 1) (param i32 i32) (result i32)
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
        i32.const 1050457
        i32.load8_u
        drop
        local.get 0
        local.get 1
        call 102
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      return
    end
    unreachable)
  (func (;75;) (type 2) (param i32 i32)
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
    call 68
    unreachable)
  (func (;76;) (type 7) (param i32 i32 i32 i32) (result i32)
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
  (func (;77;) (type 7) (param i32 i32 i32 i32) (result i32)
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
      call 95
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      return
    end
    unreachable)
  (func (;78;) (type 2) (param i32 i32)
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
      call 109
    end)
  (func (;79;) (type 0) (param i32)
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
    i32.const 1050424
    i32.store offset=8
    local.get 1
    i64.const 4
    i64.store offset=16 align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call 68
    unreachable)
  (func (;80;) (type 2) (param i32 i32)
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
    i32.const 1049532
    i32.store)
  (func (;81;) (type 13) (param i32 i32 i32 i32 i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049575
      i32.const 50
      call 112
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
  (func (;82;) (type 10) (param i32 i32 i32 i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049575
      i32.const 50
      call 112
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 7))
  (func (;83;) (type 8) (param i32 i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049575
      i32.const 50
      call 112
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 9))
  (func (;84;) (type 14) (param i32 i32 i64 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049575
      i32.const 50
      call 112
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 15))
  (func (;85;) (type 16) (param i32 i32 f64 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049575
      i32.const 50
      call 112
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 17))
  (func (;86;) (type 18) (param i32 i32 f32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049575
      i32.const 50
      call 112
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 19))
  (func (;87;) (type 0) (param i32)
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
      call 109
    end)
  (func (;88;) (type 9) (param i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049575
      i32.const 50
      call 112
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 1
    i32.load offset=16
    call_indirect (type 5))
  (func (;89;) (type 0) (param i32)
    i32.const 1050492
    i32.load8_u
    i32.eqz
    if  ;; label = @1
      i32.const 1050492
      i32.const 1
      i32.store8
    end
    i32.const 1050500
    local.get 0
    i32.store
    i32.const 1050496
    i32.const 1
    i32.store)
  (func (;90;) (type 5) (param i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1048972
      i32.const 50
      call 112
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.load offset=16
    call_indirect (type 2))
  (func (;91;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049575
      i32.const 50
      call 112
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.load offset=16
    call_indirect (type 1))
  (func (;92;) (type 0) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 1
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.const 1
      call 109
    end)
  (func (;93;) (type 0) (param i32)
    local.get 0
    i32.load
    local.tee 0
    i32.const 132
    i32.ge_u
    if  ;; label = @1
      local.get 0
      call 1
    end)
  (func (;94;) (type 2) (param i32 i32)
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
      i32.const 1050036
      i32.store offset=8
      local.get 0
      i64.const 4
      i64.store offset=16 align=4
      local.get 0
      i32.const 8
      i32.add
      i32.const 1050064
      call 68
      unreachable
    end
    local.get 0
    local.get 1
    call 115
    unreachable)
  (func (;95;) (type 7) (param i32 i32 i32 i32) (result i32)
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
                                  i32.const 1050952
                                  i32.load
                                  i32.eq
                                  br_if 4 (;@11;)
                                  local.get 7
                                  i32.const 1050948
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
                            i32.const 1050940
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
                            i32.const 1050948
                            local.get 1
                            i32.store
                            i32.const 1050940
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
                        i32.const 1050944
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
                i32.const 1049717
                i32.const 1049764
                call 75
                unreachable
              end
              i32.const 1049780
              i32.const 1049828
              call 75
              unreachable
            end
            i32.const 1049717
            i32.const 1049764
            call 75
            unreachable
          end
          i32.const 1049780
          i32.const 1049828
          call 75
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
        i32.const 1050944
        local.get 1
        i32.store
        i32.const 1050952
        local.get 2
        i32.store
        local.get 0
        br 1 (;@1;)
      end
      local.get 0
    end)
  (func (;96;) (type 5) (param i32 i32 i32)
    local.get 1
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call 109
    end)
  (func (;97;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1050080
    i32.const 11
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 3))
  (func (;98;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1050091
    i32.const 14
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 3))
  (func (;99;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load offset=20
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 3))
  (func (;100;) (type 0) (param i32)
    local.get 0
    i32.load
    if  ;; label = @1
      local.get 0
      call 46
    end)
  (func (;101;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func (;102;) (type 1) (param i32 i32) (result i32)
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
  (func (;103;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call 29)
  (func (;104;) (type 2) (param i32 i32)
    local.get 0
    i64.const -3919642737356208210
    i64.store offset=8
    local.get 0
    i64.const -7298455189511714633
    i64.store)
  (func (;105;) (type 2) (param i32 i32)
    local.get 0
    i64.const 7199936582794304877
    i64.store offset=8
    local.get 0
    i64.const -5076933981314334344
    i64.store)
  (func (;106;) (type 2) (param i32 i32)
    local.get 0
    i32.const 1049944
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;107;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 99)
  (func (;108;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 29)
  (func (;109;) (type 5) (param i32 i32 i32)
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
        i32.const 1049717
        i32.const 1049764
        call 75
        unreachable
      end
      i32.const 1049780
      i32.const 1049828
      call 75
      unreachable
    end)
  (func (;110;) (type 1) (param i32 i32) (result i32)
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
        i32.const 1050188
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
        i32.const 1050188
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
      i32.const 1050188
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
        i32.const 1050188
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
        call 76
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
              call 76
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
            call 76
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
        call 76
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
  (func (;111;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 7
    call 27)
  (func (;112;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call 24
    unreachable)
  (func (;113;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1049652
    local.get 1
    call 32)
  (func (;114;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;115;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1050504
    i32.load
    local.tee 0
    i32.const 37
    local.get 0
    select
    call_indirect (type 2)
    unreachable)
  (func (;116;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (table (;0;) 57 57 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "smart_nft_view_command" (func 60))
  (export "__wbindgen_malloc" (func 74))
  (export "__wbindgen_realloc" (func 77))
  (export "__wbindgen_free" (func 96))
  (export "__wbindgen_export_3" (table 0))
  (export "_dyn_core__ops__function__FnMut__A____Output___R_as_wasm_bindgen__closure__WasmClosure___describe__invoke__hd633b0858f9c6e90" (func 90))
  (export "__wbindgen_exn_store" (func 89))
  (export "wasm_bindgen__convert__closures__invoke2_mut__hcb90f526d04a9687" (func 88))
  (elem (;0;) (i32.const 1) func 44 42 50 30 93 56)
  (elem (;1;) (i32.const 8) func 90 78 90 63 58 33 100 70 64 71 65 80 54 67 57 82 55 83 82 81 91 88 83 83 86 85 84 103 110 61 92 73 40 113 104 105 107 69 106 114 87 59 43 52 116 98 97 101 108)
  (data (;0;) (i32.const 1048580) "\04\00\00\00\04\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00L\00\00\00\04\00\00\00\04\00\00\00called `Option::unwrap_throw()` on a `None` value/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-futures-0.4.43/src/lib.rs\00U\00\10\00f\00\00\00\df\00\00\00\15\00\00\00\05\00\00\00\04\00\00\00\04\00\00\00\06\00\00\00called `Result::unwrap()` on an `Err` valuecalled `Result::unwrap_throw()` on an `Err` valuesrc/program_basic_command/src/lib.rs8\01\10\00$\00\00\00\0c\00\00\00B\00\00\008\01\10\00$\00\00\00\0f\00\00\000\00\00\008\01\10\00$\00\00\00\0b\00\00\00\01\00\00\00closure invoked recursively or after being dropped\00\00\0b\00\00\00\04\00\00\00\04\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00\04\00\00\00\04\00\00\00\0f\00\00\00\10\00\00\00\0e\00\00\00\04\00\00\00\04\00\00\00\11\00\00\00\12\00\00\00FnOnce called more than once/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-futures-0.4.43/src/queue.rs\18\02\10\00h\00\00\00(\00\00\00)\00\00\00\18\02\10\00h\00\00\00%\00\00\00.\00\00\00\18\02\10\00h\00\00\00>\00\00\00\1a\00\00\00/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-futures-0.4.43/src/lib.rs\00\00\b0\02\10\00f\00\00\00\aa\00\00\00\0f\00\00\00\b0\02\10\00f\00\00\00\8a\00\00\00'\00\00\00\b0\02\10\00f\00\00\00\b4\00\00\00$\00\00\00/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-futures-0.4.43/src/task/singlethread.rs\13\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00H\03\10\00t\00\00\00f\00\00\00%\00\00\00return thisclosure invoked recursively or after being droppedJsValue()\00\00\19\04\10\00\08\00\00\00!\04\10\00\01\00\00\00&\00\00\00\0c\00\00\00\04\00\00\00'\00\00\00(\00\00\00)\00\00\00/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00L\04\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00L\04\10\00)\00\00\00\ae\04\00\00\0d\00\00\00memory allocation of  bytes failed\00\00\f4\04\10\00\15\00\00\00\09\05\10\00\0d\00\00\00std/src/alloc.rs(\05\10\00\10\00\00\00c\01\00\00\09\00\00\00&\00\00\00\0c\00\00\00\04\00\00\00*\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00+\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00,\00\00\00-\00\00\00.\00\00\00/\00\00\000\00\00\00\10\00\00\00\04\00\00\001\00\00\002\00\00\003\00\00\004\00\00\00capacity overflow\00\00\00\a0\05\10\00\11\00\00\00alloc/src/raw_vec.rs\bc\05\10\00\14\00\00\00\18\00\00\00\05\00\00\00BorrowErrorBorrowMutErroralready borrowed: \00\f9\05\10\00\12\00\00\00already mutably borrowed: \00\00\14\06\10\00\1a\00\00\00: \00\00\01\00\00\00\00\00\00\008\06\10\00\02\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899`async fn` resumed after completion\00\14\07\10\00#")
  (data (;1;) (i32.const 1050452) "\02"))
