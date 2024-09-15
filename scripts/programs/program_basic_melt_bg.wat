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
  (type (;9;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 f32 i32 i32)))
  (type (;15;) (func (param i32 f32 i32 i32)))
  (type (;16;) (func (param i32 i32 f64 i32 i32)))
  (type (;17;) (func (param i32 f64 i32 i32)))
  (type (;18;) (func (param i32 i32 i64 i32 i32)))
  (type (;19;) (func (param i32 i64 i32 i32)))
  (import "wbg" "__wbg_smartnftmainrunasync_3ec98f095d252977" (func (;0;) (type 1)))
  (import "wbg" "__wbg_then_876bb3c633745cc6" (func (;1;) (type 3)))
  (import "wbg" "__wbindgen_object_drop_ref" (func (;2;) (type 0)))
  (import "wbg" "__wbg_new_ea1883e1e5e86686" (func (;3;) (type 4)))
  (import "wbg" "__wbg_length_8339fcf5d8ecd12e" (func (;4;) (type 4)))
  (import "wbg" "__wbindgen_memory" (func (;5;) (type 6)))
  (import "wbg" "__wbg_buffer_b7b08af79b0b0974" (func (;6;) (type 4)))
  (import "wbg" "__wbg_set_d1e79e2388520f18" (func (;7;) (type 5)))
  (import "wbg" "__wbindgen_uint8_array_new" (func (;8;) (type 1)))
  (import "wbg" "__wbg_call_89af060b4e1523f2" (func (;9;) (type 3)))
  (import "wbg" "__wbg_new_b85e72ed1bfd57f9" (func (;10;) (type 1)))
  (import "wbg" "__wbg_self_3093d5d1f7bcb682" (func (;11;) (type 6)))
  (import "wbg" "__wbg_window_3bcfc4d31bc012f8" (func (;12;) (type 6)))
  (import "wbg" "__wbg_globalThis_86b222e13bdf32ed" (func (;13;) (type 6)))
  (import "wbg" "__wbg_global_e5a3fe56f8be9485" (func (;14;) (type 6)))
  (import "wbg" "__wbindgen_is_undefined" (func (;15;) (type 4)))
  (import "wbg" "__wbg_newnoargs_76313bd6ff35d0f2" (func (;16;) (type 1)))
  (import "wbg" "__wbg_call_1084a111329e68ce" (func (;17;) (type 1)))
  (import "wbg" "__wbindgen_debug_string" (func (;18;) (type 2)))
  (import "wbg" "__wbindgen_throw" (func (;19;) (type 2)))
  (import "wbg" "__wbindgen_object_clone_ref" (func (;20;) (type 4)))
  (import "wbg" "__wbg_queueMicrotask_48421b3cc9052b68" (func (;21;) (type 4)))
  (import "wbg" "__wbindgen_is_function" (func (;22;) (type 4)))
  (import "wbg" "__wbg_resolve_570458cb99d56a43" (func (;23;) (type 4)))
  (import "wbg" "__wbindgen_cb_drop" (func (;24;) (type 4)))
  (import "wbg" "__wbg_then_95e6edc0f89b73b1" (func (;25;) (type 1)))
  (import "wbg" "__wbg_queueMicrotask_12a30234db4045d3" (func (;26;) (type 0)))
  (import "wbg" "__wbindgen_closure_wrapper37" (func (;27;) (type 3)))
  (func (;28;) (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.const 245
                      i32.ge_u
                      if  ;; label = @10
                        local.get 0
                        i32.const -65587
                        i32.ge_u
                        br_if 5 (;@5;)
                        local.get 0
                        i32.const 11
                        i32.add
                        local.tee 1
                        i32.const -8
                        i32.and
                        local.set 5
                        i32.const 1050340
                        i32.load
                        local.tee 8
                        i32.eqz
                        br_if 4 (;@6;)
                        i32.const 31
                        local.set 7
                        i32.const 0
                        local.get 5
                        i32.sub
                        local.set 3
                        local.get 0
                        i32.const 16777204
                        i32.le_u
                        if  ;; label = @11
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
                        i32.const 1049928
                        i32.add
                        i32.load
                        local.tee 1
                        i32.eqz
                        if  ;; label = @11
                          i32.const 0
                          local.set 0
                          br 2 (;@9;)
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
                        local.set 4
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.tee 6
                            local.get 5
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 6
                            local.get 5
                            i32.sub
                            local.tee 6
                            local.get 3
                            i32.ge_u
                            br_if 0 (;@12;)
                            local.get 1
                            local.set 2
                            local.get 6
                            local.tee 3
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 3
                            local.get 1
                            local.set 0
                            br 4 (;@8;)
                          end
                          local.get 1
                          i32.load offset=20
                          local.tee 6
                          local.get 0
                          local.get 6
                          local.get 1
                          local.get 4
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
                          local.get 4
                          i32.const 1
                          i32.shl
                          local.set 4
                          local.get 1
                          br_if 0 (;@11;)
                        end
                        br 1 (;@9;)
                      end
                      i32.const 1050336
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
                      if  ;; label = @10
                        block  ;; label = @11
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
                          i32.const 1050072
                          i32.add
                          local.tee 4
                          local.get 0
                          i32.const 1050080
                          i32.add
                          i32.load
                          local.tee 1
                          i32.load offset=8
                          local.tee 3
                          i32.ne
                          if  ;; label = @12
                            local.get 3
                            local.get 4
                            i32.store offset=12
                            local.get 4
                            local.get 3
                            i32.store offset=8
                            br 1 (;@11;)
                          end
                          i32.const 1050336
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
                        br 8 (;@2;)
                      end
                      local.get 5
                      i32.const 1050344
                      i32.load
                      i32.le_u
                      br_if 3 (;@6;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.eqz
                          if  ;; label = @12
                            i32.const 1050340
                            i32.load
                            local.tee 0
                            i32.eqz
                            br_if 6 (;@6;)
                            local.get 0
                            i32.ctz
                            i32.const 2
                            i32.shl
                            i32.const 1049928
                            i32.add
                            i32.load
                            local.tee 2
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 5
                            i32.sub
                            local.set 3
                            local.get 2
                            local.set 1
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 2
                                i32.load offset=16
                                local.tee 0
                                br_if 0 (;@14;)
                                local.get 2
                                i32.load offset=20
                                local.tee 0
                                br_if 0 (;@14;)
                                local.get 1
                                i32.load offset=24
                                local.set 7
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 1
                                    local.get 1
                                    i32.load offset=12
                                    local.tee 0
                                    i32.eq
                                    if  ;; label = @17
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
                                      br_if 1 (;@16;)
                                      i32.const 0
                                      local.set 0
                                      br 2 (;@15;)
                                    end
                                    local.get 1
                                    i32.load offset=8
                                    local.tee 2
                                    local.get 0
                                    i32.store offset=12
                                    local.get 0
                                    local.get 2
                                    i32.store offset=8
                                    br 1 (;@15;)
                                  end
                                  local.get 1
                                  i32.const 20
                                  i32.add
                                  local.get 1
                                  i32.const 16
                                  i32.add
                                  local.get 0
                                  select
                                  local.set 4
                                  loop  ;; label = @16
                                    local.get 4
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
                                    local.set 4
                                    local.get 0
                                    i32.const 20
                                    i32.const 16
                                    local.get 2
                                    select
                                    i32.add
                                    i32.load
                                    local.tee 2
                                    br_if 0 (;@16;)
                                  end
                                  local.get 6
                                  i32.const 0
                                  i32.store
                                end
                                local.get 7
                                i32.eqz
                                br_if 4 (;@10;)
                                local.get 1
                                local.get 1
                                i32.load offset=28
                                i32.const 2
                                i32.shl
                                i32.const 1049928
                                i32.add
                                local.tee 2
                                i32.load
                                i32.ne
                                if  ;; label = @15
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
                                  br_if 5 (;@10;)
                                  br 4 (;@11;)
                                end
                                local.get 2
                                local.get 0
                                i32.store
                                local.get 0
                                br_if 3 (;@11;)
                                i32.const 1050340
                                i32.const 1050340
                                i32.load
                                i32.const -2
                                local.get 1
                                i32.load offset=28
                                i32.rotl
                                i32.and
                                i32.store
                                br 4 (;@10;)
                              end
                              local.get 0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 5
                              i32.sub
                              local.tee 2
                              local.get 3
                              local.get 2
                              local.get 3
                              i32.lt_u
                              local.tee 2
                              select
                              local.set 3
                              local.get 0
                              local.get 1
                              local.get 2
                              select
                              local.set 1
                              local.get 0
                              local.set 2
                              br 0 (;@13;)
                            end
                            unreachable
                          end
                          block  ;; label = @12
                            i32.const 2
                            local.get 0
                            i32.shl
                            local.tee 4
                            i32.const 0
                            local.get 4
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
                            i32.const 1050072
                            i32.add
                            local.tee 4
                            local.get 1
                            i32.const 1050080
                            i32.add
                            i32.load
                            local.tee 0
                            i32.load offset=8
                            local.tee 3
                            i32.ne
                            if  ;; label = @13
                              local.get 3
                              local.get 4
                              i32.store offset=12
                              local.get 4
                              local.get 3
                              i32.store offset=8
                              br 1 (;@12;)
                            end
                            i32.const 1050336
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
                          local.tee 4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 1
                          i32.add
                          local.get 4
                          i32.store
                          i32.const 1050344
                          i32.load
                          local.tee 3
                          if  ;; label = @12
                            local.get 3
                            i32.const -8
                            i32.and
                            i32.const 1050072
                            i32.add
                            local.set 1
                            i32.const 1050352
                            i32.load
                            local.set 2
                            block (result i32)  ;; label = @13
                              i32.const 1050336
                              i32.load
                              local.tee 5
                              i32.const 1
                              local.get 3
                              i32.const 3
                              i32.shr_u
                              i32.shl
                              local.tee 3
                              i32.and
                              i32.eqz
                              if  ;; label = @14
                                i32.const 1050336
                                local.get 3
                                local.get 5
                                i32.or
                                i32.store
                                local.get 1
                                br 1 (;@13;)
                              end
                              local.get 1
                              i32.load offset=8
                            end
                            local.set 3
                            local.get 1
                            local.get 2
                            i32.store offset=8
                            local.get 3
                            local.get 2
                            i32.store offset=12
                            local.get 2
                            local.get 1
                            i32.store offset=12
                            local.get 2
                            local.get 3
                            i32.store offset=8
                          end
                          i32.const 1050352
                          local.get 6
                          i32.store
                          i32.const 1050344
                          local.get 4
                          i32.store
                          br 10 (;@1;)
                        end
                        local.get 0
                        local.get 7
                        i32.store offset=24
                        local.get 1
                        i32.load offset=16
                        local.tee 2
                        if  ;; label = @11
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
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 2
                        i32.store offset=20
                        local.get 2
                        local.get 0
                        i32.store offset=24
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          i32.const 16
                          i32.ge_u
                          if  ;; label = @12
                            local.get 1
                            local.get 5
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 1
                            local.get 5
                            i32.add
                            local.tee 4
                            local.get 3
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 3
                            local.get 4
                            i32.add
                            local.get 3
                            i32.store
                            i32.const 1050344
                            i32.load
                            local.tee 6
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 6
                            i32.const -8
                            i32.and
                            i32.const 1050072
                            i32.add
                            local.set 0
                            i32.const 1050352
                            i32.load
                            local.set 2
                            block (result i32)  ;; label = @13
                              i32.const 1050336
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
                              if  ;; label = @14
                                i32.const 1050336
                                local.get 5
                                local.get 6
                                i32.or
                                i32.store
                                local.get 0
                                br 1 (;@13;)
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
                            br 1 (;@11;)
                          end
                          local.get 1
                          local.get 3
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
                          br 1 (;@10;)
                        end
                        i32.const 1050352
                        local.get 4
                        i32.store
                        i32.const 1050344
                        local.get 3
                        i32.store
                      end
                      br 7 (;@2;)
                    end
                    local.get 0
                    local.get 2
                    i32.or
                    i32.eqz
                    if  ;; label = @9
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
                      local.get 8
                      i32.and
                      local.tee 0
                      i32.eqz
                      br_if 3 (;@6;)
                      local.get 0
                      i32.ctz
                      i32.const 2
                      i32.shl
                      i32.const 1049928
                      i32.add
                      i32.load
                      local.set 0
                    end
                    local.get 0
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  loop  ;; label = @8
                    local.get 0
                    local.get 2
                    local.get 0
                    i32.load offset=4
                    i32.const -8
                    i32.and
                    local.tee 4
                    local.get 5
                    i32.sub
                    local.tee 6
                    local.get 3
                    i32.lt_u
                    local.tee 7
                    select
                    local.set 8
                    local.get 0
                    i32.load offset=16
                    local.tee 1
                    i32.eqz
                    if  ;; label = @9
                      local.get 0
                      i32.load offset=20
                      local.set 1
                    end
                    local.get 2
                    local.get 8
                    local.get 4
                    local.get 5
                    i32.lt_u
                    local.tee 0
                    select
                    local.set 2
                    local.get 3
                    local.get 6
                    local.get 3
                    local.get 7
                    select
                    local.get 0
                    select
                    local.set 3
                    local.get 1
                    local.tee 0
                    br_if 0 (;@8;)
                  end
                end
                local.get 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.const 1050344
                i32.load
                local.tee 0
                i32.le_u
                local.get 3
                local.get 0
                local.get 5
                i32.sub
                i32.ge_u
                i32.and
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=24
                local.set 7
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    local.get 2
                    i32.load offset=12
                    local.tee 0
                    i32.eq
                    if  ;; label = @9
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
                      br_if 1 (;@8;)
                      i32.const 0
                      local.set 0
                      br 2 (;@7;)
                    end
                    local.get 2
                    i32.load offset=8
                    local.tee 1
                    local.get 0
                    i32.store offset=12
                    local.get 0
                    local.get 1
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  local.get 2
                  i32.const 20
                  i32.add
                  local.get 2
                  i32.const 16
                  i32.add
                  local.get 0
                  select
                  local.set 4
                  loop  ;; label = @8
                    local.get 4
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
                    local.set 4
                    local.get 0
                    i32.const 20
                    i32.const 16
                    local.get 1
                    select
                    i32.add
                    i32.load
                    local.tee 1
                    br_if 0 (;@8;)
                  end
                  local.get 6
                  i32.const 0
                  i32.store
                end
                local.get 7
                i32.eqz
                br_if 3 (;@3;)
                local.get 2
                local.get 2
                i32.load offset=28
                i32.const 2
                i32.shl
                i32.const 1049928
                i32.add
                local.tee 1
                i32.load
                i32.ne
                if  ;; label = @7
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
                  br_if 4 (;@3;)
                  br 3 (;@4;)
                end
                local.get 1
                local.get 0
                i32.store
                local.get 0
                br_if 2 (;@4;)
                i32.const 1050340
                i32.const 1050340
                i32.load
                i32.const -2
                local.get 2
                i32.load offset=28
                i32.rotl
                i32.and
                i32.store
                br 3 (;@3;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 5
                      i32.const 1050344
                      i32.load
                      local.tee 1
                      i32.gt_u
                      if  ;; label = @10
                        local.get 5
                        i32.const 1050348
                        i32.load
                        local.tee 0
                        i32.ge_u
                        if  ;; label = @11
                          i32.const 0
                          local.set 3
                          local.get 5
                          i32.const 65583
                          i32.add
                          local.tee 0
                          i32.const 16
                          i32.shr_u
                          memory.grow
                          local.tee 1
                          i32.const -1
                          i32.eq
                          local.tee 2
                          br_if 6 (;@5;)
                          local.get 1
                          i32.const 16
                          i32.shl
                          local.tee 1
                          i32.eqz
                          br_if 6 (;@5;)
                          i32.const 1050360
                          i32.const 0
                          local.get 0
                          i32.const -65536
                          i32.and
                          local.get 2
                          select
                          local.tee 3
                          i32.const 1050360
                          i32.load
                          i32.add
                          local.tee 0
                          i32.store
                          i32.const 1050364
                          i32.const 1050364
                          i32.load
                          local.tee 2
                          local.get 0
                          local.get 0
                          local.get 2
                          i32.lt_u
                          select
                          i32.store
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 1050356
                              i32.load
                              local.tee 2
                              if  ;; label = @14
                                i32.const 1050056
                                local.set 0
                                loop  ;; label = @15
                                  local.get 0
                                  i32.load
                                  local.tee 4
                                  local.get 0
                                  i32.load offset=4
                                  local.tee 6
                                  i32.add
                                  local.get 1
                                  i32.eq
                                  br_if 2 (;@13;)
                                  local.get 0
                                  i32.load offset=8
                                  local.tee 0
                                  br_if 0 (;@15;)
                                end
                                br 2 (;@12;)
                              end
                              i32.const 1050372
                              i32.load
                              local.tee 0
                              i32.const 0
                              local.get 0
                              local.get 1
                              i32.le_u
                              select
                              i32.eqz
                              if  ;; label = @14
                                i32.const 1050372
                                local.get 1
                                i32.store
                              end
                              i32.const 1050376
                              i32.const 4095
                              i32.store
                              i32.const 1050060
                              local.get 3
                              i32.store
                              i32.const 1050056
                              local.get 1
                              i32.store
                              i32.const 1050084
                              i32.const 1050072
                              i32.store
                              i32.const 1050092
                              i32.const 1050080
                              i32.store
                              i32.const 1050080
                              i32.const 1050072
                              i32.store
                              i32.const 1050100
                              i32.const 1050088
                              i32.store
                              i32.const 1050088
                              i32.const 1050080
                              i32.store
                              i32.const 1050108
                              i32.const 1050096
                              i32.store
                              i32.const 1050096
                              i32.const 1050088
                              i32.store
                              i32.const 1050116
                              i32.const 1050104
                              i32.store
                              i32.const 1050104
                              i32.const 1050096
                              i32.store
                              i32.const 1050124
                              i32.const 1050112
                              i32.store
                              i32.const 1050112
                              i32.const 1050104
                              i32.store
                              i32.const 1050132
                              i32.const 1050120
                              i32.store
                              i32.const 1050120
                              i32.const 1050112
                              i32.store
                              i32.const 1050140
                              i32.const 1050128
                              i32.store
                              i32.const 1050128
                              i32.const 1050120
                              i32.store
                              i32.const 1050068
                              i32.const 0
                              i32.store
                              i32.const 1050148
                              i32.const 1050136
                              i32.store
                              i32.const 1050136
                              i32.const 1050128
                              i32.store
                              i32.const 1050144
                              i32.const 1050136
                              i32.store
                              i32.const 1050156
                              i32.const 1050144
                              i32.store
                              i32.const 1050152
                              i32.const 1050144
                              i32.store
                              i32.const 1050164
                              i32.const 1050152
                              i32.store
                              i32.const 1050160
                              i32.const 1050152
                              i32.store
                              i32.const 1050172
                              i32.const 1050160
                              i32.store
                              i32.const 1050168
                              i32.const 1050160
                              i32.store
                              i32.const 1050180
                              i32.const 1050168
                              i32.store
                              i32.const 1050176
                              i32.const 1050168
                              i32.store
                              i32.const 1050188
                              i32.const 1050176
                              i32.store
                              i32.const 1050184
                              i32.const 1050176
                              i32.store
                              i32.const 1050196
                              i32.const 1050184
                              i32.store
                              i32.const 1050192
                              i32.const 1050184
                              i32.store
                              i32.const 1050204
                              i32.const 1050192
                              i32.store
                              i32.const 1050200
                              i32.const 1050192
                              i32.store
                              i32.const 1050212
                              i32.const 1050200
                              i32.store
                              i32.const 1050220
                              i32.const 1050208
                              i32.store
                              i32.const 1050208
                              i32.const 1050200
                              i32.store
                              i32.const 1050228
                              i32.const 1050216
                              i32.store
                              i32.const 1050216
                              i32.const 1050208
                              i32.store
                              i32.const 1050236
                              i32.const 1050224
                              i32.store
                              i32.const 1050224
                              i32.const 1050216
                              i32.store
                              i32.const 1050244
                              i32.const 1050232
                              i32.store
                              i32.const 1050232
                              i32.const 1050224
                              i32.store
                              i32.const 1050252
                              i32.const 1050240
                              i32.store
                              i32.const 1050240
                              i32.const 1050232
                              i32.store
                              i32.const 1050260
                              i32.const 1050248
                              i32.store
                              i32.const 1050248
                              i32.const 1050240
                              i32.store
                              i32.const 1050268
                              i32.const 1050256
                              i32.store
                              i32.const 1050256
                              i32.const 1050248
                              i32.store
                              i32.const 1050276
                              i32.const 1050264
                              i32.store
                              i32.const 1050264
                              i32.const 1050256
                              i32.store
                              i32.const 1050284
                              i32.const 1050272
                              i32.store
                              i32.const 1050272
                              i32.const 1050264
                              i32.store
                              i32.const 1050292
                              i32.const 1050280
                              i32.store
                              i32.const 1050280
                              i32.const 1050272
                              i32.store
                              i32.const 1050300
                              i32.const 1050288
                              i32.store
                              i32.const 1050288
                              i32.const 1050280
                              i32.store
                              i32.const 1050308
                              i32.const 1050296
                              i32.store
                              i32.const 1050296
                              i32.const 1050288
                              i32.store
                              i32.const 1050316
                              i32.const 1050304
                              i32.store
                              i32.const 1050304
                              i32.const 1050296
                              i32.store
                              i32.const 1050324
                              i32.const 1050312
                              i32.store
                              i32.const 1050312
                              i32.const 1050304
                              i32.store
                              i32.const 1050332
                              i32.const 1050320
                              i32.store
                              i32.const 1050320
                              i32.const 1050312
                              i32.store
                              i32.const 1050356
                              local.get 1
                              i32.store
                              i32.const 1050328
                              i32.const 1050320
                              i32.store
                              i32.const 1050348
                              local.get 3
                              i32.const 40
                              i32.sub
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
                              i32.const 40
                              i32.store offset=4
                              i32.const 1050368
                              i32.const 2097152
                              i32.store
                              br 7 (;@6;)
                            end
                            local.get 2
                            local.get 4
                            i32.lt_u
                            local.get 1
                            local.get 2
                            i32.le_u
                            i32.or
                            br_if 0 (;@12;)
                            local.get 0
                            i32.load offset=12
                            i32.eqz
                            br_if 3 (;@9;)
                          end
                          i32.const 1050372
                          i32.const 1050372
                          i32.load
                          local.tee 0
                          local.get 1
                          local.get 0
                          local.get 1
                          i32.lt_u
                          select
                          i32.store
                          local.get 1
                          local.get 3
                          i32.add
                          local.set 4
                          i32.const 1050056
                          local.set 0
                          block  ;; label = @12
                            block  ;; label = @13
                              loop  ;; label = @14
                                local.get 4
                                local.get 0
                                i32.load
                                local.tee 6
                                i32.ne
                                if  ;; label = @15
                                  local.get 0
                                  i32.load offset=8
                                  local.tee 0
                                  br_if 1 (;@14;)
                                  br 2 (;@13;)
                                end
                              end
                              local.get 0
                              i32.load offset=12
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            i32.const 1050056
                            local.set 0
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 2
                                local.get 0
                                i32.load
                                local.tee 4
                                i32.ge_u
                                if  ;; label = @15
                                  local.get 2
                                  local.get 4
                                  local.get 0
                                  i32.load offset=4
                                  i32.add
                                  local.tee 6
                                  i32.lt_u
                                  br_if 1 (;@14;)
                                end
                                local.get 0
                                i32.load offset=8
                                local.set 0
                                br 1 (;@13;)
                              end
                            end
                            i32.const 1050356
                            local.get 1
                            i32.store
                            i32.const 1050348
                            local.get 3
                            i32.const 40
                            i32.sub
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
                            i32.const 40
                            i32.store offset=4
                            i32.const 1050368
                            i32.const 2097152
                            i32.store
                            local.get 2
                            local.get 6
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
                            local.tee 4
                            i32.const 27
                            i32.store offset=4
                            i32.const 1050056
                            i64.load align=4
                            local.set 9
                            local.get 4
                            i32.const 16
                            i32.add
                            i32.const 1050064
                            i64.load align=4
                            i64.store align=4
                            local.get 4
                            local.get 9
                            i64.store offset=8 align=4
                            i32.const 1050060
                            local.get 3
                            i32.store
                            i32.const 1050056
                            local.get 1
                            i32.store
                            i32.const 1050064
                            local.get 4
                            i32.const 8
                            i32.add
                            i32.store
                            i32.const 1050068
                            i32.const 0
                            i32.store
                            local.get 4
                            i32.const 28
                            i32.add
                            local.set 0
                            loop  ;; label = @13
                              local.get 0
                              i32.const 7
                              i32.store
                              local.get 0
                              i32.const 4
                              i32.add
                              local.tee 0
                              local.get 6
                              i32.lt_u
                              br_if 0 (;@13;)
                            end
                            local.get 2
                            local.get 4
                            i32.eq
                            br_if 6 (;@6;)
                            local.get 4
                            local.get 4
                            i32.load offset=4
                            i32.const -2
                            i32.and
                            i32.store offset=4
                            local.get 2
                            local.get 4
                            local.get 2
                            i32.sub
                            local.tee 0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 0
                            i32.store
                            local.get 0
                            i32.const 256
                            i32.ge_u
                            if  ;; label = @13
                              local.get 2
                              local.get 0
                              call 39
                              br 7 (;@6;)
                            end
                            local.get 0
                            i32.const 248
                            i32.and
                            i32.const 1050072
                            i32.add
                            local.set 1
                            block (result i32)  ;; label = @13
                              i32.const 1050336
                              i32.load
                              local.tee 4
                              i32.const 1
                              local.get 0
                              i32.const 3
                              i32.shr_u
                              i32.shl
                              local.tee 0
                              i32.and
                              i32.eqz
                              if  ;; label = @14
                                i32.const 1050336
                                local.get 0
                                local.get 4
                                i32.or
                                i32.store
                                local.get 1
                                br 1 (;@13;)
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
                            br 6 (;@6;)
                          end
                          local.get 0
                          local.get 1
                          i32.store
                          local.get 0
                          local.get 0
                          i32.load offset=4
                          local.get 3
                          i32.add
                          i32.store offset=4
                          local.get 1
                          local.get 5
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 6
                          i32.const 15
                          i32.add
                          i32.const -8
                          i32.and
                          i32.const 8
                          i32.sub
                          local.tee 3
                          local.get 1
                          local.get 5
                          i32.add
                          local.tee 0
                          i32.sub
                          local.set 5
                          local.get 3
                          i32.const 1050356
                          i32.load
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 3
                          i32.const 1050352
                          i32.load
                          i32.eq
                          br_if 4 (;@7;)
                          local.get 3
                          i32.load offset=4
                          local.tee 2
                          i32.const 3
                          i32.and
                          i32.const 1
                          i32.eq
                          if  ;; label = @12
                            local.get 3
                            local.get 2
                            i32.const -8
                            i32.and
                            local.tee 2
                            call 36
                            local.get 2
                            local.get 5
                            i32.add
                            local.set 5
                            local.get 2
                            local.get 3
                            i32.add
                            local.tee 3
                            i32.load offset=4
                            local.set 2
                          end
                          local.get 3
                          local.get 2
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
                          if  ;; label = @12
                            local.get 0
                            local.get 5
                            call 39
                            br 10 (;@2;)
                          end
                          local.get 5
                          i32.const 248
                          i32.and
                          i32.const 1050072
                          i32.add
                          local.set 2
                          block (result i32)  ;; label = @12
                            i32.const 1050336
                            i32.load
                            local.tee 4
                            i32.const 1
                            local.get 5
                            i32.const 3
                            i32.shr_u
                            i32.shl
                            local.tee 3
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1050336
                              local.get 3
                              local.get 4
                              i32.or
                              i32.store
                              local.get 2
                              br 1 (;@12;)
                            end
                            local.get 2
                            i32.load offset=8
                          end
                          local.set 4
                          local.get 2
                          local.get 0
                          i32.store offset=8
                          local.get 4
                          local.get 0
                          i32.store offset=12
                          local.get 0
                          local.get 2
                          i32.store offset=12
                          local.get 0
                          local.get 4
                          i32.store offset=8
                          br 9 (;@2;)
                        end
                        i32.const 1050348
                        local.get 0
                        local.get 5
                        i32.sub
                        local.tee 1
                        i32.store
                        i32.const 1050356
                        i32.const 1050356
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
                        local.set 3
                        br 5 (;@5;)
                      end
                      i32.const 1050352
                      i32.load
                      local.set 0
                      block  ;; label = @10
                        local.get 1
                        local.get 5
                        i32.sub
                        local.tee 2
                        i32.const 15
                        i32.le_u
                        if  ;; label = @11
                          i32.const 1050352
                          i32.const 0
                          i32.store
                          i32.const 1050344
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
                          br 1 (;@10;)
                        end
                        i32.const 1050344
                        local.get 2
                        i32.store
                        i32.const 1050352
                        local.get 0
                        local.get 5
                        i32.add
                        local.tee 4
                        i32.store
                        local.get 4
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
                      br 8 (;@1;)
                    end
                    local.get 0
                    local.get 3
                    local.get 6
                    i32.add
                    i32.store offset=4
                    i32.const 1050356
                    i32.const 1050356
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
                    i32.const 1050348
                    i32.const 1050348
                    i32.load
                    local.get 3
                    i32.add
                    local.tee 4
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
                    local.get 4
                    i32.add
                    i32.const 40
                    i32.store offset=4
                    i32.const 1050368
                    i32.const 2097152
                    i32.store
                    br 2 (;@6;)
                  end
                  i32.const 1050356
                  local.get 0
                  i32.store
                  i32.const 1050348
                  i32.const 1050348
                  i32.load
                  local.get 5
                  i32.add
                  local.tee 2
                  i32.store
                  local.get 0
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  br 5 (;@2;)
                end
                i32.const 1050352
                local.get 0
                i32.store
                i32.const 1050344
                i32.const 1050344
                i32.load
                local.get 5
                i32.add
                local.tee 2
                i32.store
                local.get 0
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 2
                i32.add
                local.get 2
                i32.store
                br 4 (;@2;)
              end
              i32.const 0
              local.set 3
              i32.const 1050348
              i32.load
              local.tee 0
              local.get 5
              i32.le_u
              br_if 0 (;@5;)
              i32.const 1050348
              local.get 0
              local.get 5
              i32.sub
              local.tee 1
              i32.store
              i32.const 1050356
              i32.const 1050356
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
              br 4 (;@1;)
            end
            local.get 3
            return
          end
          local.get 0
          local.get 7
          i32.store offset=24
          local.get 2
          i32.load offset=16
          local.tee 1
          if  ;; label = @4
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
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.store offset=20
          local.get 1
          local.get 0
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 3
          i32.const 16
          i32.ge_u
          if  ;; label = @4
            local.get 2
            local.get 5
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 2
            local.get 5
            i32.add
            local.tee 0
            local.get 3
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.get 3
            i32.store
            local.get 3
            i32.const 256
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 3
              call 39
              br 2 (;@3;)
            end
            local.get 3
            i32.const 248
            i32.and
            i32.const 1050072
            i32.add
            local.set 1
            block (result i32)  ;; label = @5
              i32.const 1050336
              i32.load
              local.tee 4
              i32.const 1
              local.get 3
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 3
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 1050336
                local.get 3
                local.get 4
                i32.or
                i32.store
                local.get 1
                br 1 (;@5;)
              end
              local.get 1
              i32.load offset=8
            end
            local.set 4
            local.get 1
            local.get 0
            i32.store offset=8
            local.get 4
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 1
            i32.store offset=12
            local.get 0
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
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
        return
      end
      local.get 1
      i32.const 8
      i32.add
      return
    end
    local.get 0
    i32.const 8
    i32.add)
  (func (;29;) (type 3) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          i32.const 1
          i32.and
          i32.eqz
          local.tee 3
          local.get 0
          i32.load
          local.tee 6
          i32.eqz
          i32.and
          i32.eqz
          if  ;; label = @4
            block  ;; label = @5
              local.get 3
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              i32.add
              local.set 9
              block  ;; label = @6
                local.get 0
                i32.load offset=12
                local.tee 10
                i32.eqz
                if  ;; label = @7
                  local.get 1
                  local.set 3
                  br 1 (;@6;)
                end
                local.get 1
                local.set 3
                loop  ;; label = @7
                  local.get 3
                  local.tee 4
                  local.get 9
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 5
                  block (result i32)  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.get 3
                    i32.load8_s
                    local.tee 5
                    i32.const 0
                    i32.ge_s
                    br_if 0 (;@8;)
                    drop
                    local.get 3
                    i32.const 2
                    i32.add
                    local.get 5
                    i32.const -32
                    i32.lt_u
                    br_if 0 (;@8;)
                    drop
                    local.get 3
                    i32.const 3
                    i32.add
                    local.get 5
                    i32.const -16
                    i32.lt_u
                    br_if 0 (;@8;)
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
                  local.get 10
                  local.get 8
                  i32.const 1
                  i32.add
                  local.tee 8
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 3
              local.get 9
              i32.eq
              br_if 0 (;@5;)
              local.get 3
              i32.load8_s
              drop
              local.get 5
              local.get 2
              block (result i32)  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 2
                  local.get 5
                  i32.gt_u
                  if  ;; label = @8
                    local.get 1
                    local.get 5
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    br_if 1 (;@7;)
                    i32.const 0
                    br 2 (;@6;)
                  end
                  local.get 2
                  local.get 5
                  i32.eq
                  br_if 0 (;@7;)
                  i32.const 0
                  br 1 (;@6;)
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
            local.get 6
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            i32.load offset=4
            local.set 13
            local.get 2
            i32.const 16
            i32.ge_u
            if  ;; label = @5
              local.get 2
              local.get 1
              local.get 1
              i32.const 3
              i32.add
              i32.const -4
              i32.and
              local.tee 5
              i32.sub
              local.tee 8
              i32.add
              local.tee 10
              i32.const 3
              i32.and
              local.set 9
              i32.const 0
              local.set 4
              local.get 1
              local.get 5
              i32.ne
              if  ;; label = @6
                local.get 8
                i32.const -4
                i32.le_u
                if  ;; label = @7
                  i32.const 0
                  local.set 6
                  loop  ;; label = @8
                    local.get 4
                    local.get 1
                    local.get 6
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
                    local.get 6
                    i32.const 4
                    i32.add
                    local.tee 6
                    br_if 0 (;@8;)
                  end
                end
                local.get 1
                local.set 3
                loop  ;; label = @7
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
                  local.get 8
                  i32.const 1
                  i32.add
                  local.tee 8
                  br_if 0 (;@7;)
                end
              end
              block  ;; label = @6
                local.get 9
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                local.get 10
                i32.const -4
                i32.and
                i32.add
                local.tee 3
                i32.load8_s
                i32.const -65
                i32.gt_s
                local.set 7
                local.get 9
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                local.get 7
                local.get 3
                i32.load8_s offset=1
                i32.const -65
                i32.gt_s
                i32.add
                local.set 7
                local.get 9
                i32.const 2
                i32.eq
                br_if 0 (;@6;)
                local.get 7
                local.get 3
                i32.load8_s offset=2
                i32.const -65
                i32.gt_s
                i32.add
                local.set 7
              end
              local.get 10
              i32.const 2
              i32.shr_u
              local.set 6
              local.get 4
              local.get 7
              i32.add
              local.set 7
              loop  ;; label = @6
                local.get 5
                local.set 10
                local.get 6
                i32.eqz
                br_if 4 (;@2;)
                i32.const 192
                local.get 6
                local.get 6
                i32.const 192
                i32.ge_u
                select
                local.tee 11
                i32.const 3
                i32.and
                local.set 12
                local.get 11
                i32.const 2
                i32.shl
                local.set 8
                i32.const 0
                local.set 3
                local.get 6
                i32.const 4
                i32.ge_u
                if  ;; label = @7
                  local.get 5
                  local.get 8
                  i32.const 1008
                  i32.and
                  i32.add
                  local.set 9
                  local.get 5
                  local.set 4
                  loop  ;; label = @8
                    local.get 3
                    local.get 4
                    i32.load
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
                    local.set 3
                    local.get 4
                    i32.const 16
                    i32.add
                    local.tee 4
                    local.get 9
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 6
                local.get 11
                i32.sub
                local.set 6
                local.get 8
                local.get 10
                i32.add
                local.set 5
                local.get 3
                i32.const 8
                i32.shr_u
                i32.const 16711935
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
                local.set 7
                local.get 12
                i32.eqz
                br_if 0 (;@6;)
              end
              local.get 10
              local.get 11
              i32.const 252
              i32.and
              i32.const 2
              i32.shl
              i32.add
              local.tee 5
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
              local.set 4
              local.get 12
              i32.const 1
              i32.eq
              br_if 2 (;@3;)
              local.get 5
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
              local.get 4
              i32.add
              local.set 4
              local.get 12
              i32.const 2
              i32.eq
              br_if 2 (;@3;)
              local.get 5
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
              local.set 4
              br 2 (;@3;)
            end
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            i32.const 3
            i32.and
            local.set 3
            block  ;; label = @5
              local.get 2
              i32.const 4
              i32.lt_u
              if  ;; label = @6
                i32.const 0
                local.set 8
                br 1 (;@5;)
              end
              local.get 1
              local.set 4
              local.get 2
              i32.const 12
              i32.and
              local.tee 8
              local.set 5
              loop  ;; label = @6
                local.get 7
                local.get 4
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
                local.get 4
                i32.const 4
                i32.add
                local.set 4
                local.get 5
                i32.const 4
                i32.sub
                local.tee 5
                br_if 0 (;@6;)
              end
            end
            local.get 3
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            local.get 8
            i32.add
            local.set 4
            loop  ;; label = @5
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
              br_if 0 (;@5;)
            end
            br 2 (;@2;)
          end
          br 2 (;@1;)
        end
        local.get 4
        i32.const 8
        i32.shr_u
        i32.const 459007
        i32.and
        local.get 4
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
      end
      block  ;; label = @2
        local.get 7
        local.get 13
        i32.lt_u
        if  ;; label = @3
          local.get 13
          local.get 7
          i32.sub
          local.set 6
          i32.const 0
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=32
                i32.const 1
                i32.sub
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;)
              end
              local.get 6
              local.set 4
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            local.get 6
            i32.const 1
            i32.shr_u
            local.set 4
            local.get 6
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 6
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 0
          i32.load offset=16
          local.set 3
          local.get 0
          i32.load offset=24
          local.set 5
          local.get 0
          i32.load offset=20
          local.set 0
          loop  ;; label = @4
            local.get 4
            i32.const 1
            i32.sub
            local.tee 4
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            local.get 3
            local.get 5
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      local.get 2
      local.get 5
      i32.load offset=12
      call_indirect (type 3)
      if  ;; label = @2
        i32.const 1
        return
      end
      i32.const 0
      local.set 4
      loop  ;; label = @2
        local.get 4
        local.get 6
        i32.eq
        if  ;; label = @3
          i32.const 0
          return
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 0
        local.get 3
        local.get 5
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 4
      i32.const 1
      i32.sub
      local.get 6
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
    call_indirect (type 3))
  (func (;30;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 3
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
                      local.get 0
                      i32.load8_u offset=72
                      i32.const 1
                      i32.sub
                      br_table 2 (;@7;) 3 (;@6;) 1 (;@8;) 0 (;@9;)
                    end
                    local.get 0
                    local.get 0
                    i64.load align=4
                    i64.store offset=40 align=4
                    local.get 0
                    i32.const -64
                    i32.sub
                    local.get 0
                    i32.const 24
                    i32.add
                    i64.load align=4
                    i64.store align=4
                    local.get 0
                    i32.const 56
                    i32.add
                    local.get 0
                    i32.const 16
                    i32.add
                    i64.load align=4
                    i64.store align=4
                    local.get 0
                    i32.const 48
                    i32.add
                    local.get 0
                    i32.const 8
                    i32.add
                    i64.load align=4
                    i64.store align=4
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u offset=68
                                  i32.const 1
                                  i32.sub
                                  br_table 7 (;@8;) 9 (;@6;) 0 (;@15;) 1 (;@14;)
                                end
                                local.get 0
                                i32.const 48
                                i32.add
                                local.set 4
                                local.get 0
                                i32.load8_u offset=64
                                i32.const 1
                                i32.sub
                                br_table 4 (;@10;) 8 (;@6;) 2 (;@12;) 1 (;@13;)
                              end
                              local.get 0
                              i32.load offset=40
                              local.set 2
                              local.get 3
                              local.get 0
                              i32.load offset=44
                              local.tee 4
                              i32.store offset=56
                              local.get 3
                              local.get 2
                              i32.store offset=52
                              local.get 3
                              local.get 4
                              i32.store offset=48
                              local.get 3
                              i32.const 24
                              i32.add
                              local.get 3
                              i32.const 48
                              i32.add
                              call 52
                              local.get 3
                              i32.load offset=24
                              local.set 4
                              local.get 3
                              i32.load offset=28
                              local.set 2
                              local.get 0
                              i32.const 0
                              i32.store8 offset=64
                              local.get 0
                              local.get 2
                              i32.store offset=56
                              local.get 0
                              local.get 4
                              i32.store offset=52
                              local.get 0
                              local.get 2
                              i32.store offset=48
                              local.get 0
                              i32.const 48
                              i32.add
                              local.set 4
                            end
                            local.get 3
                            i32.const 56
                            i32.add
                            local.get 4
                            i32.const 8
                            i32.add
                            i32.load
                            i32.store
                            local.get 3
                            local.get 4
                            i64.load align=4
                            i64.store offset=48
                            local.get 3
                            i32.const 16
                            i32.add
                            local.get 3
                            i32.const 48
                            i32.add
                            call 52
                            local.get 3
                            i32.load offset=16
                            local.get 3
                            i32.load offset=20
                            call 0
                            local.set 6
                            i32.const 1050424
                            i32.load8_u
                            drop
                            i32.const 52
                            call 28
                            local.tee 2
                            i32.eqz
                            br_if 6 (;@6;)
                            local.get 2
                            i32.const 0
                            i32.store offset=28
                            local.get 2
                            i32.const 0
                            i32.store offset=20
                            local.get 2
                            i64.const 8589934592
                            i64.store offset=8 align=4
                            local.get 2
                            i64.const 4294967298
                            i64.store align=4
                            i32.const 1050424
                            i32.load8_u
                            drop
                            i32.const 4
                            call 28
                            local.tee 7
                            i32.eqz
                            br_if 6 (;@6;)
                            local.get 7
                            local.get 2
                            i32.store
                            local.get 7
                            i32.const 1049292
                            call 94
                            local.set 8
                            local.get 2
                            local.get 2
                            i32.load
                            i32.const 1
                            i32.add
                            local.tee 5
                            i32.store
                            local.get 5
                            i32.eqz
                            br_if 6 (;@6;)
                            i32.const 1050424
                            i32.load8_u
                            drop
                            i32.const 4
                            call 28
                            local.tee 5
                            i32.eqz
                            br_if 6 (;@6;)
                            local.get 5
                            local.get 2
                            i32.store
                            local.get 6
                            local.get 8
                            local.get 5
                            i32.const 1049312
                            call 94
                            local.tee 9
                            call 1
                            local.tee 10
                            i32.const 132
                            i32.ge_u
                            if  ;; label = @13
                              local.get 10
                              call 2
                            end
                            local.get 2
                            i32.load offset=8
                            br_if 7 (;@5;)
                            local.get 2
                            i32.const -1
                            i32.store offset=8
                            local.get 2
                            i32.const 28
                            i32.add
                            call 82
                            local.get 2
                            local.get 9
                            i32.store offset=48
                            local.get 2
                            i32.const 1049312
                            i32.store offset=44
                            local.get 2
                            local.get 5
                            i32.store offset=40
                            local.get 2
                            local.get 8
                            i32.store offset=36
                            local.get 2
                            i32.const 1049292
                            i32.store offset=32
                            local.get 2
                            local.get 7
                            i32.store offset=28
                            local.get 2
                            local.get 2
                            i32.load offset=8
                            i32.const 1
                            i32.add
                            i32.store offset=8
                            local.get 6
                            i32.const 132
                            i32.ge_u
                            if  ;; label = @13
                              local.get 6
                              call 2
                            end
                            local.get 0
                            local.get 2
                            i32.store offset=60
                            br 1 (;@11;)
                          end
                          local.get 0
                          i32.load offset=60
                          local.set 2
                        end
                        local.get 2
                        i32.load offset=8
                        br_if 6 (;@4;)
                        local.get 2
                        i32.load offset=12
                        local.set 7
                        local.get 2
                        i64.const 12884901887
                        i64.store offset=8 align=4
                        local.get 7
                        i32.const 2
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 3
                        local.get 1
                        i32.load
                        local.tee 1
                        i32.load offset=4
                        local.get 1
                        i32.load
                        i32.load
                        call_indirect (type 2)
                        local.get 3
                        i32.load offset=4
                        local.set 1
                        local.get 3
                        i32.load
                        local.set 4
                        local.get 2
                        i32.load offset=20
                        local.tee 6
                        if  ;; label = @11
                          local.get 2
                          i32.load offset=24
                          local.get 6
                          i32.load offset=12
                          call_indirect (type 0)
                        end
                        local.get 2
                        local.get 1
                        i32.store offset=24
                        local.get 2
                        local.get 4
                        i32.store offset=20
                        i32.const 1
                        local.set 4
                        local.get 2
                        local.get 2
                        i32.load offset=8
                        i32.const 1
                        i32.add
                        i32.store offset=8
                        i32.const 3
                        local.set 2
                        local.get 0
                        i32.const 3
                        i32.store8 offset=64
                        local.get 0
                        i32.const 3
                        i32.store8 offset=68
                        br 9 (;@1;)
                      end
                      i32.const 1048820
                      call 61
                      unreachable
                    end
                    local.get 2
                    i32.load offset=16
                    local.set 6
                    local.get 2
                    i32.const 0
                    i32.store offset=8
                    local.get 0
                    i32.load offset=60
                    call 48
                    local.get 7
                    i32.const 1
                    i32.and
                    br_if 5 (;@3;)
                    local.get 6
                    call 3
                    local.tee 2
                    call 4
                    local.tee 1
                    i32.const 0
                    i32.ge_s
                    if (result i32)  ;; label = @9
                      local.get 1
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1
                        local.set 7
                        i32.const 0
                        local.set 1
                        br 8 (;@2;)
                      end
                      i32.const 1050424
                      i32.load8_u
                      drop
                      local.get 1
                      call 28
                      local.tee 7
                      br_if 7 (;@2;)
                      i32.const 1
                    else
                      i32.const 0
                    end
                    call 92
                    unreachable
                  end
                  i32.const 1048852
                  call 61
                  unreachable
                end
                i32.const 1048612
                call 61
                unreachable
              end
              unreachable
            end
            i32.const 1049464
            call 55
            unreachable
          end
          i32.const 1049496
          call 55
          unreachable
        end
        local.get 3
        local.get 6
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
        i32.const 1048644
        i32.store offset=8
        local.get 0
        i32.const 1048628
        i32.store offset=20
        local.get 0
        local.get 3
        i32.const 44
        i32.add
        i32.store offset=16
        local.get 0
        i32.const 2
        i32.store offset=28
        local.get 0
        i32.const 1049024
        i32.store offset=24
        local.get 0
        i64.const 2
        i64.store offset=36 align=4
        local.get 0
        local.get 0
        i32.const 16
        i32.add
        i64.extend_i32_u
        i64.const 12884901888
        i64.or
        i64.store offset=56
        local.get 0
        local.get 0
        i32.const 8
        i32.add
        i64.extend_i32_u
        i64.const 17179869184
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
        i32.const 1048836
        call 56
        unreachable
      end
      call 5
      local.tee 8
      call 6
      local.tee 9
      call 3
      local.set 5
      local.get 9
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 9
        call 2
      end
      local.get 5
      local.get 2
      local.get 7
      call 7
      local.get 5
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 5
        call 2
      end
      local.get 8
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 8
        call 2
      end
      local.get 2
      call 4
      local.set 5
      local.get 2
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 2
        call 2
      end
      local.get 6
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 6
        call 2
      end
      local.get 0
      i32.const 1
      i32.store8 offset=64
      local.get 3
      local.get 5
      i32.store offset=40
      local.get 3
      local.get 7
      i32.store offset=36
      local.get 3
      local.get 1
      i32.store offset=32
      local.get 4
      call 68
      local.get 3
      i32.const 8
      i32.add
      local.get 3
      i32.const 32
      i32.add
      call 52
      local.get 3
      i32.load offset=8
      local.get 3
      i32.load offset=12
      call 8
      local.set 1
      local.get 0
      i32.const 1
      i32.store8 offset=68
      local.get 0
      i32.load offset=32
      i32.const 128
      local.get 1
      call 9
      local.set 2
      block  ;; label = @2
        i32.const 1050388
        i32.load8_u
        if  ;; label = @3
          i32.const 1050392
          i32.load
          i32.const 1050392
          i64.const 0
          i64.store
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
          i32.const 1048736
          i32.const 49
          call 93
          unreachable
        end
        i32.const 1050392
        i64.const 0
        i64.store
        i32.const 1050388
        i32.const 1
        i32.store8
      end
      local.get 2
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 2
        call 2
      end
      local.get 1
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 1
        call 2
      end
      local.get 0
      i32.load offset=32
      local.tee 1
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 1
        call 2
      end
      i32.const 1
      local.set 2
      i32.const 0
      local.set 4
      local.get 0
      i32.load offset=36
      local.tee 1
      i32.const 132
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      call 2
    end
    local.get 0
    local.get 2
    i32.store8 offset=72
    local.get 3
    i32.const -64
    i32.sub
    global.set 0
    local.get 4)
  (func (;31;) (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 4
              i32.sub
              local.tee 5
              i32.load
              local.tee 7
              i32.const -8
              i32.and
              local.tee 4
              i32.const 4
              i32.const 8
              local.get 7
              i32.const 3
              i32.and
              local.tee 6
              select
              local.get 1
              i32.add
              i32.ge_u
              if  ;; label = @6
                local.get 6
                i32.const 0
                local.get 1
                i32.const 39
                i32.add
                local.tee 8
                local.get 4
                i32.lt_u
                select
                br_if 1 (;@5;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.const 9
                    i32.ge_u
                    if  ;; label = @9
                      local.get 2
                      local.get 3
                      call 35
                      local.tee 2
                      br_if 1 (;@8;)
                      i32.const 0
                      return
                    end
                    i32.const 0
                    local.set 2
                    local.get 3
                    i32.const -65588
                    i32.gt_u
                    br_if 1 (;@7;)
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
                    block  ;; label = @9
                      local.get 6
                      i32.eqz
                      if  ;; label = @10
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
                        br_if 1 (;@9;)
                        br 9 (;@1;)
                      end
                      local.get 0
                      i32.const 8
                      i32.sub
                      local.tee 6
                      local.get 4
                      i32.add
                      local.set 8
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              local.get 4
                              i32.gt_u
                              if  ;; label = @14
                                local.get 8
                                i32.const 1050356
                                i32.load
                                i32.eq
                                br_if 4 (;@10;)
                                local.get 8
                                i32.const 1050352
                                i32.load
                                i32.eq
                                br_if 2 (;@12;)
                                local.get 8
                                i32.load offset=4
                                local.tee 7
                                i32.const 2
                                i32.and
                                br_if 5 (;@9;)
                                local.get 7
                                i32.const -8
                                i32.and
                                local.tee 7
                                local.get 4
                                i32.add
                                local.tee 4
                                local.get 1
                                i32.lt_u
                                br_if 5 (;@9;)
                                local.get 8
                                local.get 7
                                call 36
                                local.get 4
                                local.get 1
                                i32.sub
                                local.tee 2
                                i32.const 16
                                i32.lt_u
                                br_if 1 (;@13;)
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
                                local.get 6
                                i32.add
                                local.tee 1
                                local.get 2
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 4
                                local.get 6
                                i32.add
                                local.tee 3
                                local.get 3
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 1
                                local.get 2
                                call 33
                                br 13 (;@1;)
                              end
                              local.get 4
                              local.get 1
                              i32.sub
                              local.tee 2
                              i32.const 15
                              i32.gt_u
                              br_if 2 (;@11;)
                              br 12 (;@1;)
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
                            local.get 4
                            local.get 6
                            i32.add
                            local.tee 1
                            local.get 1
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            br 11 (;@1;)
                          end
                          i32.const 1050344
                          i32.load
                          local.get 4
                          i32.add
                          local.tee 4
                          local.get 1
                          i32.lt_u
                          br_if 2 (;@9;)
                          block  ;; label = @12
                            local.get 4
                            local.get 1
                            i32.sub
                            local.tee 3
                            i32.const 15
                            i32.le_u
                            if  ;; label = @13
                              local.get 5
                              local.get 7
                              i32.const 1
                              i32.and
                              local.get 4
                              i32.or
                              i32.const 2
                              i32.or
                              i32.store
                              local.get 4
                              local.get 6
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
                              br 1 (;@12;)
                            end
                            local.get 5
                            local.get 1
                            local.get 7
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 2
                            i32.or
                            i32.store
                            local.get 1
                            local.get 6
                            i32.add
                            local.tee 1
                            local.get 3
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 6
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
                          i32.const 1050352
                          local.get 1
                          i32.store
                          i32.const 1050344
                          local.get 3
                          i32.store
                          br 10 (;@1;)
                        end
                        local.get 5
                        local.get 1
                        local.get 7
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 2
                        i32.or
                        i32.store
                        local.get 1
                        local.get 6
                        i32.add
                        local.tee 1
                        local.get 2
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 8
                        local.get 8
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 1
                        local.get 2
                        call 33
                        br 9 (;@1;)
                      end
                      i32.const 1050348
                      i32.load
                      local.get 4
                      i32.add
                      local.tee 4
                      local.get 1
                      i32.gt_u
                      br_if 7 (;@2;)
                    end
                    local.get 3
                    call 28
                    local.tee 1
                    i32.eqz
                    br_if 1 (;@7;)
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
                    call 37
                    local.get 0
                    call 32
                    return
                  end
                  local.get 2
                  local.get 0
                  local.get 1
                  local.get 3
                  local.get 1
                  local.get 3
                  i32.lt_u
                  select
                  call 37
                  drop
                  local.get 5
                  i32.load
                  local.tee 3
                  i32.const -8
                  i32.and
                  local.tee 5
                  local.get 1
                  i32.const 4
                  i32.const 8
                  local.get 3
                  i32.const 3
                  i32.and
                  local.tee 3
                  select
                  i32.add
                  i32.lt_u
                  br_if 3 (;@4;)
                  local.get 3
                  i32.const 0
                  local.get 5
                  local.get 8
                  i32.gt_u
                  select
                  br_if 4 (;@3;)
                  local.get 0
                  call 32
                end
                local.get 2
                return
              end
              i32.const 1049136
              i32.const 1049184
              call 58
              unreachable
            end
            i32.const 1049200
            i32.const 1049248
            call 58
            unreachable
          end
          i32.const 1049136
          i32.const 1049184
          call 58
          unreachable
        end
        i32.const 1049200
        i32.const 1049248
        call 58
        unreachable
      end
      local.get 5
      local.get 1
      local.get 7
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 1
      local.get 6
      i32.add
      local.tee 2
      local.get 4
      local.get 1
      i32.sub
      local.tee 1
      i32.const 1
      i32.or
      i32.store offset=4
      i32.const 1050348
      local.get 1
      i32.store
      i32.const 1050356
      local.get 2
      i32.store
      local.get 0
      return
    end
    local.get 0)
  (func (;32;) (type 0) (param i32)
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
        i32.const 1050352
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
          i32.const 1050344
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
        call 36
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
                  i32.const 1050356
                  i32.load
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1050352
                  i32.load
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 2
                  local.get 3
                  i32.const -8
                  i32.and
                  local.tee 2
                  call 36
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
                  i32.const 1050352
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1050344
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
              call 39
              i32.const 0
              local.set 1
              i32.const 1050376
              i32.const 1050376
              i32.load
              i32.const 1
              i32.sub
              local.tee 0
              i32.store
              local.get 0
              br_if 4 (;@1;)
              i32.const 1050064
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
              i32.const 1050376
              i32.const 4095
              local.get 1
              local.get 1
              i32.const 4095
              i32.le_u
              select
              i32.store
              return
            end
            i32.const 1050356
            local.get 1
            i32.store
            i32.const 1050348
            i32.const 1050348
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
            i32.const 1050352
            i32.load
            local.get 1
            i32.eq
            if  ;; label = @5
              i32.const 1050344
              i32.const 0
              i32.store
              i32.const 1050352
              i32.const 0
              i32.store
            end
            local.get 0
            i32.const 1050368
            i32.load
            local.tee 3
            i32.le_u
            br_if 3 (;@1;)
            i32.const 1050356
            i32.load
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            local.set 0
            i32.const 1050348
            i32.load
            local.tee 4
            i32.const 41
            i32.lt_u
            br_if 2 (;@2;)
            i32.const 1050056
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
          i32.const 1050352
          local.get 1
          i32.store
          i32.const 1050344
          i32.const 1050344
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
        i32.const 1050072
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 1050336
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
            i32.const 1050336
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
      i32.const 1050064
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
      i32.const 1050376
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
      i32.const 1050368
      i32.const -1
      i32.store
    end)
  (func (;33;) (type 2) (param i32 i32)
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
        i32.const 1050352
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
          i32.const 1050344
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
        call 36
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
              i32.const 1050356
              i32.load
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 1050352
              i32.load
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 2
              call 36
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
              i32.const 1050352
              i32.load
              i32.ne
              br_if 1 (;@4;)
              i32.const 1050344
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
            call 39
            return
          end
          local.get 1
          i32.const 248
          i32.and
          i32.const 1050072
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1050336
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
              i32.const 1050336
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
        i32.const 1050356
        local.get 0
        i32.store
        i32.const 1050348
        i32.const 1050348
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
        i32.const 1050352
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1050344
        i32.const 0
        i32.store
        i32.const 1050352
        i32.const 0
        i32.store
        return
      end
      i32.const 1050352
      local.get 0
      i32.store
      i32.const 1050344
      i32.const 1050344
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
  (func (;34;) (type 11)
    (local i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    i32.const 1050424
    i32.load8_u
    drop
    block  ;; label = @1
      i32.const 32
      call 28
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i64.const 0
      i64.store offset=20 align=4
      local.get 4
      i32.const 4
      i32.store offset=16
      local.get 4
      i64.const 0
      i64.store offset=8 align=4
      local.get 4
      i64.const 4294967297
      i64.store align=4
      local.get 4
      i32.const 28
      i32.add
      i32.const 0
      i32.store8
      i32.const 1049912
      i32.load8_u
      i32.eqz
      if  ;; label = @2
        call 11
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1050388
              i32.load8_u
              i32.eqz
              if  ;; label = @6
                i32.const 1050392
                i64.const 0
                i64.store
                i32.const 1050388
                i32.const 1
                i32.store8
                br 1 (;@5;)
              end
              i32.const 1050392
              i64.load
              local.set 6
              i32.const 1050392
              i64.const 0
              i64.store
              local.get 6
              i32.wrap_i64
              i32.const 1
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              local.set 2
              call 12
              local.set 0
              block (result i64)  ;; label = @6
                i32.const 1050388
                i32.load8_u
                if  ;; label = @7
                  i32.const 1050392
                  i64.load
                  br 1 (;@6;)
                end
                i32.const 1050388
                i32.const 1
                i32.store8
                i64.const 0
              end
              local.set 7
              i32.const 1050392
              i64.const 0
              i64.store
              local.get 7
              i64.const 4294967295
              i64.and
              local.tee 6
              i64.const 1
              i64.eq
              local.set 1
              local.get 2
              i32.const 132
              i32.ge_u
              if  ;; label = @6
                local.get 2
                call 2
              end
              local.get 7
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              local.get 0
              local.get 1
              select
              local.set 0
              local.get 6
              i64.const 1
              i64.ne
              br_if 0 (;@5;)
              call 13
              local.set 2
              block (result i64)  ;; label = @6
                i32.const 1050388
                i32.load8_u
                if  ;; label = @7
                  i32.const 1050392
                  i64.load
                  br 1 (;@6;)
                end
                i32.const 1050388
                i32.const 1
                i32.store8
                i64.const 0
              end
              local.set 7
              i32.const 1050392
              i64.const 0
              i64.store
              local.get 7
              i64.const 4294967295
              i64.and
              local.tee 6
              i64.const 1
              i64.eq
              local.set 1
              local.get 0
              i32.const 132
              i32.ge_u
              if  ;; label = @6
                local.get 0
                call 2
              end
              local.get 7
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              local.get 2
              local.get 1
              select
              local.set 0
              local.get 6
              i64.const 1
              i64.ne
              br_if 0 (;@5;)
              call 14
              local.set 1
              block (result i64)  ;; label = @6
                i32.const 1050388
                i32.load8_u
                if  ;; label = @7
                  i32.const 1050392
                  i64.load
                  br 1 (;@6;)
                end
                i32.const 1050388
                i32.const 1
                i32.store8
                i64.const 0
              end
              local.set 6
              i32.const 1050392
              i64.const 0
              i64.store
              local.get 0
              i32.const 132
              i32.ge_u
              if  ;; label = @6
                local.get 0
                call 2
              end
              local.get 6
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              local.get 1
              local.get 6
              i64.const 4294967295
              i64.and
              i64.const 1
              i64.eq
              local.tee 1
              select
              local.set 0
              i32.const 1
              local.set 5
              local.get 1
              br_if 1 (;@4;)
            end
            local.get 0
            call 15
            i32.const 1
            i32.ne
            if  ;; label = @5
              local.get 0
              local.set 1
              br 2 (;@3;)
            end
            i32.const 0
            local.set 5
            local.get 0
            i32.const 132
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            call 2
          end
          i32.const 1049084
          i32.const 11
          call 16
          local.tee 2
          i32.const 128
          call 17
          local.set 1
          block  ;; label = @4
            i32.const 1050388
            i32.load8_u
            i32.eqz
            if  ;; label = @5
              i32.const 1050392
              i64.const 0
              i64.store
              i32.const 1050388
              i32.const 1
              i32.store8
              br 1 (;@4;)
            end
            i32.const 1050392
            i64.load
            local.set 6
            i32.const 1050392
            i64.const 0
            i64.store
            local.get 6
            i32.wrap_i64
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            i32.const 128
            local.set 1
            local.get 6
            i64.const 566935683072
            i64.lt_u
            br_if 0 (;@4;)
            local.get 6
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            call 2
          end
          local.get 2
          i32.const 132
          i32.ge_u
          if  ;; label = @4
            local.get 2
            call 2
          end
          local.get 5
          local.get 0
          i32.const 131
          i32.gt_u
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          call 2
        end
        i32.const 1049912
        i32.load8_u
        i32.const 1049912
        i32.const 1
        i32.store8
        i32.const 1049916
        i32.load
        local.set 2
        i32.const 1049916
        local.get 1
        i32.store
        i32.eqz
        local.get 2
        i32.const 132
        i32.lt_u
        i32.or
        i32.eqz
        if  ;; label = @3
          local.get 2
          call 2
        end
      end
      i32.const 1049916
      i32.load
      call 20
      local.tee 0
      call 21
      local.tee 1
      call 22
      local.set 2
      local.get 1
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 1
        call 2
      end
      local.get 0
      i32.const 132
      i32.ge_u
      if  ;; label = @2
        local.get 0
        call 2
      end
      i32.const 128
      call 23
      local.set 0
      local.get 4
      local.get 4
      i32.load
      i32.const 1
      i32.add
      local.tee 1
      i32.store
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1050424
      i32.load8_u
      drop
      i32.const 4
      call 28
      local.tee 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      local.get 4
      i32.store
      local.get 5
      i32.const 1049564
      call 94
      local.set 1
      local.get 3
      i32.const 24
      i32.add
      i32.const 1049900
      i64.load align=4
      i64.store
      i32.const 1049884
      i64.load align=4
      local.set 7
      i32.const 1049884
      local.get 4
      i32.store
      i32.const 1049888
      local.get 5
      i32.store
      i32.const 1049892
      i64.load align=4
      local.set 6
      i32.const 1049892
      i32.const 1049564
      i32.store
      i32.const 1049896
      local.get 1
      i32.store
      i32.const 1049905
      local.get 3
      i32.load16_u offset=4
      i32.store16 align=1
      i32.const 1049900
      local.get 0
      i32.store
      i32.const 1049904
      local.get 2
      i32.const 1
      i32.eq
      i32.store8
      local.get 3
      i32.const 16
      i32.add
      local.get 6
      i64.store
      i32.const 1049907
      local.get 3
      i32.const 6
      i32.add
      i32.load8_u
      i32.store8
      local.get 3
      local.get 7
      i64.store offset=8
      local.get 3
      i32.load8_u offset=28
      i32.const 2
      i32.ne
      if  ;; label = @2
        local.get 3
        i32.load offset=8
        call 40
        local.get 3
        i32.load offset=24
        local.tee 1
        i32.const 132
        i32.ge_u
        if  ;; label = @3
          local.get 1
          call 2
        end
        local.get 3
        i32.const 8
        i32.add
        i32.const 4
        i32.or
        call 59
      end
      local.get 3
      i32.const 32
      i32.add
      global.set 0
      return
    end
    unreachable)
  (func (;35;) (type 1) (param i32 i32) (result i32)
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
          call 33
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
        call 33
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3)
  (func (;36;) (type 2) (param i32 i32)
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
          i32.const 1049928
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
          i32.const 1050340
          i32.const 1050340
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
        i32.const 1050336
        i32.const 1050336
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
  (func (;37;) (type 3) (param i32 i32 i32) (result i32)
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
  (func (;38;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 0
    i32.load
    local.tee 0
    i32.const 0
    i32.store8 offset=28
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 2
        i32.const 2147483647
        i32.lt_u
        if  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=24
            local.tee 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            br_if 2 (;@2;)
            loop  ;; label = @5
              local.get 0
              i32.const -1
              i32.store offset=8
              local.get 0
              i32.load offset=24
              local.tee 2
              i32.eqz
              if  ;; label = @6
                local.get 0
                i32.const 0
                i32.store offset=8
                br 2 (;@4;)
              end
              local.get 0
              local.get 2
              i32.const 1
              i32.sub
              i32.store offset=24
              local.get 0
              i32.load offset=16
              local.get 0
              i32.load offset=20
              local.tee 3
              i32.const 2
              i32.shl
              i32.add
              i32.load
              local.set 2
              local.get 0
              i32.const 0
              i32.store offset=8
              local.get 0
              local.get 3
              i32.const 1
              i32.add
              local.tee 3
              local.get 0
              i32.load offset=12
              local.tee 5
              i32.const 0
              local.get 3
              local.get 5
              i32.ge_u
              select
              i32.sub
              i32.store offset=20
              local.get 2
              i32.load offset=8
              br_if 4 (;@1;)
              local.get 2
              i32.const -1
              i32.store offset=8
              local.get 2
              local.get 2
              i32.load offset=12
              local.tee 3
              if (result i32)  ;; label = @6
                local.get 2
                i32.const 0
                i32.store8 offset=28
                local.get 4
                i32.const 0
                i32.store offset=8
                local.get 4
                local.get 2
                i32.const 20
                i32.add
                local.tee 5
                i32.store offset=4
                local.get 4
                local.get 5
                i32.store
                local.get 3
                local.get 4
                local.get 2
                i32.load offset=16
                i32.load offset=12
                call_indirect (type 1)
                i32.eqz
                if  ;; label = @7
                  local.get 2
                  i32.const 12
                  i32.add
                  local.tee 3
                  call 57
                  local.get 3
                  i32.const 0
                  i32.store
                end
                local.get 2
                i32.load offset=8
                i32.const 1
                i32.add
              else
                i32.const 0
              end
              i32.store offset=8
              local.get 2
              call 47
              local.get 6
              i32.const 1
              i32.sub
              local.tee 6
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=8
              i32.eqz
              br_if 0 (;@5;)
            end
            br 2 (;@2;)
          end
          local.get 1
          i32.const 132
          i32.ge_u
          if  ;; label = @4
            local.get 1
            call 2
          end
          local.get 4
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
        i32.const 1049012
        i32.store offset=8
        local.get 0
        i64.const 1
        i64.store offset=20 align=4
        local.get 0
        local.get 0
        i32.const 47
        i32.add
        i64.extend_i32_u
        i64.const 21474836480
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
        i32.const 1049688
        call 56
        unreachable
      end
      i32.const 1049704
      call 55
      unreachable
    end
    i32.const 1049868
    call 55
    unreachable)
  (func (;39;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    i32.const 31
    local.set 2
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 1
    i32.const 16777215
    i32.le_u
    if  ;; label = @1
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
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1049928
    i32.add
    local.set 4
    i32.const 1
    local.get 2
    i32.shl
    local.tee 3
    i32.const 1050340
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
      i32.const 1050340
      i32.const 1050340
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
  (func (;40;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32)
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
        i32.load offset=24
        local.tee 2
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 16
          i32.add
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        local.get 0
        i32.load offset=12
        local.tee 4
        local.get 0
        i32.load offset=20
        local.tee 1
        local.get 4
        i32.const 0
        local.get 1
        local.get 4
        i32.ge_u
        select
        i32.sub
        local.tee 1
        i32.sub
        local.tee 3
        i32.sub
        i32.const 0
        local.get 2
        local.get 3
        i32.gt_u
        local.tee 6
        select
        local.set 5
        local.get 0
        i32.load offset=16
        local.set 3
        local.get 1
        local.get 4
        local.get 1
        local.get 2
        i32.add
        local.get 6
        select
        local.tee 2
        i32.ne
        if  ;; label = @3
          local.get 2
          local.get 1
          i32.sub
          local.set 2
          local.get 3
          local.get 1
          i32.const 2
          i32.shl
          i32.add
          local.set 1
          loop  ;; label = @4
            local.get 1
            i32.load
            call 47
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.sub
            local.tee 2
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.const 16
        i32.add
        local.set 1
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          i32.load
          call 47
          local.get 3
          i32.const 4
          i32.add
          local.set 3
          local.get 5
          i32.const 1
          i32.sub
          local.tee 5
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.load offset=12
      local.tee 3
      if  ;; label = @2
        local.get 1
        i32.load
        local.get 3
        i32.const 2
        i32.shl
        call 53
      end
      local.get 0
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.sub
      local.tee 1
      i32.store offset=4
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      call 53
    end)
  (func (;41;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    local.get 0
    i32.load
    local.tee 3
    i32.load
    local.set 0
    local.get 3
    i32.const 0
    i32.store
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 4
        i32.const 24
        i32.add
        local.tee 5
        local.get 3
        i32.const 28
        i32.add
        i64.load align=4
        i64.store
        local.get 4
        i32.const 16
        i32.add
        local.tee 6
        local.get 3
        i32.const 20
        i32.add
        i64.load align=4
        i64.store
        local.get 4
        i32.const 8
        i32.add
        local.tee 0
        local.get 3
        i32.const 12
        i32.add
        i64.load align=4
        i64.store
        i32.const 1050424
        i32.load8_u
        drop
        local.get 4
        local.get 3
        i64.load offset=4 align=4
        i64.store
        i32.const 76
        call 28
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 4
        i64.load
        i64.store align=4
        local.get 3
        i32.const 0
        i32.store8 offset=72
        local.get 3
        local.get 2
        i32.store offset=36
        local.get 3
        local.get 1
        i32.store offset=32
        local.get 3
        i32.const 24
        i32.add
        local.get 5
        i64.load
        i64.store align=4
        local.get 3
        i32.const 16
        i32.add
        local.get 6
        i64.load
        i64.store align=4
        local.get 3
        i32.const 8
        i32.add
        local.get 0
        i64.load
        i64.store align=4
        i32.const 1050424
        i32.load8_u
        drop
        block  ;; label = @3
          i32.const 32
          call 28
          local.tee 0
          if  ;; label = @4
            local.get 0
            i64.const 4294967295
            i64.store offset=8 align=4
            local.get 0
            i64.const 4294967298
            i64.store align=4
            local.get 0
            i32.const 1
            i32.store8 offset=28
            local.get 0
            i32.const 12
            i32.add
            call 57
            local.get 0
            i32.const 1049852
            i32.store offset=20
            local.get 0
            i32.const 1048576
            i32.store offset=16
            local.get 0
            local.get 3
            i32.store offset=12
            local.get 0
            local.get 0
            i32.load offset=8
            i32.const 1
            i32.add
            i32.store offset=8
            local.get 0
            local.get 0
            i32.const 8
            i32.add
            i32.store offset=24
            i32.const 1049904
            i32.load8_u
            i32.const 2
            i32.eq
            if  ;; label = @5
              call 34
            end
            local.get 0
            call 43
            br 1 (;@3;)
          end
          unreachable
        end
        local.get 4
        i32.const 32
        i32.add
        global.set 0
        return
      end
      i32.const 1048687
      i32.const 49
      call 93
    end
    unreachable)
  (func (;42;) (type 5) (param i32 i32 i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i32.load
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.const -1
      i32.store
      local.get 3
      i32.const 24
      i32.add
      local.get 0
      i32.const 36
      i32.add
      i64.load align=4
      i64.store
      local.get 3
      i32.const 16
      i32.add
      local.get 0
      i32.const 28
      i32.add
      i64.load align=4
      i64.store
      local.get 0
      i64.load offset=20 align=4
      local.set 5
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 3
      local.get 5
      i64.store offset=8
      local.get 3
      i32.const 8
      i32.add
      call 82
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        i32.const 2
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=8
        local.tee 4
        i32.const 132
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        call 2
      end
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 1
      i32.store offset=4
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
      local.get 3
      i32.const 32
      i32.add
      global.set 0
      return
    end
    i32.const 1049480
    call 55
    unreachable)
  (func (;43;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1049884
    i32.load
    local.tee 9
    i32.load offset=8
    i32.eqz
    if  ;; label = @1
      local.get 9
      i32.const -1
      i32.store offset=8
      local.get 9
      i32.load offset=24
      local.tee 2
      local.get 9
      i32.load offset=12
      local.tee 3
      i32.eq
      if  ;; label = @2
        local.get 9
        i32.const 12
        i32.add
        local.tee 10
        i32.load
        local.set 7
        i32.const 0
        local.set 3
        global.get 0
        i32.const 32
        i32.sub
        local.tee 5
        global.set 0
        block  ;; label = @3
          block  ;; label = @4
            local.get 10
            i32.load
            local.tee 4
            i32.const -1
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            i32.const 1
            i32.shl
            local.tee 2
            local.get 4
            i32.const 1
            i32.add
            local.tee 1
            local.get 1
            local.get 2
            i32.lt_u
            select
            local.tee 1
            i32.const 1073741823
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 4
            local.get 1
            local.get 1
            i32.const 4
            i32.le_u
            select
            local.tee 2
            i32.const 2
            i32.shl
            local.tee 6
            i32.const 2147483644
            i32.gt_u
            br_if 0 (;@4;)
            local.get 5
            local.get 4
            if (result i32)  ;; label = @5
              local.get 5
              local.get 4
              i32.const 2
              i32.shl
              i32.store offset=28
              local.get 5
              local.get 10
              i32.load offset=4
              i32.store offset=20
              i32.const 4
            else
              i32.const 0
            end
            i32.store offset=24
            local.get 5
            i32.const 8
            i32.add
            local.set 4
            block (result i32)  ;; label = @5
              block  ;; label = @6
                block (result i32)  ;; label = @7
                  local.get 5
                  i32.const 20
                  i32.add
                  local.tee 3
                  i32.load offset=4
                  if  ;; label = @8
                    local.get 3
                    i32.load offset=8
                    local.tee 1
                    if  ;; label = @9
                      local.get 3
                      i32.load
                      local.get 1
                      i32.const 4
                      local.get 6
                      call 31
                      br 2 (;@7;)
                    end
                  end
                  local.get 6
                  i32.eqz
                  br_if 1 (;@6;)
                  i32.const 1050424
                  i32.load8_u
                  drop
                  local.get 6
                  call 28
                end
                local.tee 1
                i32.const 4
                local.get 1
                select
                local.set 3
                local.get 1
                i32.eqz
                br 1 (;@5;)
              end
              i32.const 4
              local.set 3
              i32.const 0
            end
            local.set 1
            local.get 4
            local.get 6
            i32.store offset=8
            local.get 4
            local.get 3
            i32.store offset=4
            local.get 4
            local.get 1
            i32.store
            local.get 5
            i32.load offset=8
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 5
              i32.load offset=16
              drop
              local.get 5
              i32.load offset=12
              local.set 3
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=12
            local.set 1
            local.get 10
            local.get 2
            i32.store
            local.get 10
            local.get 1
            i32.store offset=4
            local.get 5
            i32.const 32
            i32.add
            global.set 0
            br 1 (;@3;)
          end
          local.get 3
          call 92
          unreachable
        end
        local.get 10
        i32.load offset=8
        local.tee 4
        local.get 7
        local.get 10
        i32.load offset=12
        local.tee 1
        i32.sub
        i32.gt_u
        if  ;; label = @3
          block  ;; label = @4
            local.get 7
            local.get 4
            i32.sub
            local.tee 6
            local.get 1
            local.get 6
            i32.sub
            local.tee 2
            i32.gt_u
            local.get 10
            i32.load
            local.tee 1
            local.get 7
            i32.sub
            local.get 2
            i32.ge_u
            i32.and
            i32.eqz
            if  ;; label = @5
              block  ;; label = @6
                block (result i32)  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    i32.const 2
                    i32.shl
                    local.tee 3
                    local.tee 7
                    local.get 10
                    i32.load offset=4
                    local.tee 2
                    local.get 1
                    local.get 6
                    i32.sub
                    local.tee 12
                    i32.const 2
                    i32.shl
                    i32.add
                    local.tee 1
                    local.get 2
                    local.get 4
                    i32.const 2
                    i32.shl
                    i32.add
                    local.tee 2
                    i32.sub
                    i32.gt_u
                    if  ;; label = @9
                      local.get 2
                      local.get 3
                      i32.add
                      local.set 5
                      local.get 1
                      local.get 3
                      i32.add
                      local.set 3
                      local.get 1
                      local.get 7
                      i32.const 16
                      i32.lt_u
                      br_if 2 (;@7;)
                      drop
                      local.get 3
                      i32.const -4
                      i32.and
                      local.set 8
                      i32.const 0
                      local.get 3
                      i32.const 3
                      i32.and
                      local.tee 6
                      i32.sub
                      local.get 6
                      if  ;; label = @10
                        local.get 5
                        i32.const 1
                        i32.sub
                        local.set 4
                        loop  ;; label = @11
                          local.get 3
                          i32.const 1
                          i32.sub
                          local.tee 3
                          local.get 4
                          i32.load8_u
                          i32.store8
                          local.get 4
                          i32.const 1
                          i32.sub
                          local.set 4
                          local.get 3
                          local.get 8
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 8
                      local.get 7
                      local.get 6
                      i32.sub
                      local.tee 7
                      i32.const -4
                      i32.and
                      local.tee 11
                      i32.sub
                      local.set 3
                      local.get 5
                      i32.add
                      local.tee 5
                      i32.const 3
                      i32.and
                      if  ;; label = @10
                        local.get 11
                        i32.const 0
                        i32.le_s
                        br_if 2 (;@8;)
                        local.get 5
                        i32.const 3
                        i32.shl
                        local.tee 1
                        i32.const 24
                        i32.and
                        local.set 6
                        local.get 5
                        i32.const -4
                        i32.and
                        local.tee 4
                        i32.const 4
                        i32.sub
                        local.set 2
                        i32.const 0
                        local.get 1
                        i32.sub
                        i32.const 24
                        i32.and
                        local.set 1
                        local.get 4
                        i32.load
                        local.set 4
                        loop  ;; label = @11
                          local.get 8
                          i32.const 4
                          i32.sub
                          local.tee 8
                          local.get 4
                          local.get 1
                          i32.shl
                          local.get 2
                          i32.load
                          local.tee 4
                          local.get 6
                          i32.shr_u
                          i32.or
                          i32.store
                          local.get 2
                          i32.const 4
                          i32.sub
                          local.set 2
                          local.get 3
                          local.get 8
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                        br 2 (;@8;)
                      end
                      local.get 11
                      i32.const 0
                      i32.le_s
                      br_if 1 (;@8;)
                      local.get 2
                      local.get 7
                      i32.add
                      i32.const 4
                      i32.sub
                      local.set 2
                      loop  ;; label = @10
                        local.get 8
                        i32.const 4
                        i32.sub
                        local.tee 8
                        local.get 2
                        i32.load
                        i32.store
                        local.get 2
                        i32.const 4
                        i32.sub
                        local.set 2
                        local.get 3
                        local.get 8
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    block  ;; label = @9
                      local.get 7
                      i32.const 16
                      i32.lt_u
                      if  ;; label = @10
                        local.get 1
                        local.set 3
                        br 1 (;@9;)
                      end
                      local.get 1
                      i32.const 0
                      local.get 1
                      i32.sub
                      i32.const 3
                      i32.and
                      local.tee 6
                      i32.add
                      local.set 8
                      local.get 6
                      if  ;; label = @10
                        local.get 1
                        local.set 3
                        local.get 2
                        local.set 4
                        loop  ;; label = @11
                          local.get 3
                          local.get 4
                          i32.load8_u
                          i32.store8
                          local.get 4
                          i32.const 1
                          i32.add
                          local.set 4
                          local.get 3
                          i32.const 1
                          i32.add
                          local.tee 3
                          local.get 8
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 8
                      local.get 7
                      local.get 6
                      i32.sub
                      local.tee 5
                      i32.const -4
                      i32.and
                      local.tee 11
                      i32.add
                      local.set 3
                      block  ;; label = @10
                        local.get 2
                        local.get 6
                        i32.add
                        local.tee 1
                        i32.const 3
                        i32.and
                        if  ;; label = @11
                          local.get 11
                          i32.const 0
                          i32.le_s
                          br_if 1 (;@10;)
                          local.get 1
                          i32.const 3
                          i32.shl
                          local.tee 6
                          i32.const 24
                          i32.and
                          local.set 7
                          local.get 1
                          i32.const -4
                          i32.and
                          local.tee 4
                          i32.const 4
                          i32.add
                          local.set 2
                          i32.const 0
                          local.get 6
                          i32.sub
                          i32.const 24
                          i32.and
                          local.set 6
                          local.get 4
                          i32.load
                          local.set 4
                          loop  ;; label = @12
                            local.get 8
                            local.get 4
                            local.get 7
                            i32.shr_u
                            local.get 2
                            i32.load
                            local.tee 4
                            local.get 6
                            i32.shl
                            i32.or
                            i32.store
                            local.get 2
                            i32.const 4
                            i32.add
                            local.set 2
                            local.get 8
                            i32.const 4
                            i32.add
                            local.tee 8
                            local.get 3
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          br 1 (;@10;)
                        end
                        local.get 11
                        i32.const 0
                        i32.le_s
                        br_if 0 (;@10;)
                        local.get 1
                        local.set 2
                        loop  ;; label = @11
                          local.get 8
                          local.get 2
                          i32.load
                          i32.store
                          local.get 2
                          i32.const 4
                          i32.add
                          local.set 2
                          local.get 8
                          i32.const 4
                          i32.add
                          local.tee 8
                          local.get 3
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 5
                      i32.const 3
                      i32.and
                      local.set 7
                      local.get 1
                      local.get 11
                      i32.add
                      local.set 2
                    end
                    local.get 7
                    i32.eqz
                    br_if 2 (;@6;)
                    local.get 3
                    local.get 7
                    i32.add
                    local.set 1
                    loop  ;; label = @9
                      local.get 3
                      local.get 2
                      i32.load8_u
                      i32.store8
                      local.get 2
                      i32.const 1
                      i32.add
                      local.set 2
                      local.get 3
                      i32.const 1
                      i32.add
                      local.tee 3
                      local.get 1
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    br 2 (;@6;)
                  end
                  local.get 7
                  i32.const 3
                  i32.and
                  local.tee 1
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 5
                  local.get 11
                  i32.sub
                  local.set 5
                  local.get 3
                  local.get 1
                  i32.sub
                end
                local.set 1
                local.get 5
                i32.const 1
                i32.sub
                local.set 2
                loop  ;; label = @7
                  local.get 3
                  i32.const 1
                  i32.sub
                  local.tee 3
                  local.get 2
                  i32.load8_u
                  i32.store8
                  local.get 2
                  i32.const 1
                  i32.sub
                  local.set 2
                  local.get 1
                  local.get 3
                  i32.lt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 10
              local.get 12
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 10
            i32.load offset=4
            local.tee 1
            local.get 7
            i32.const 2
            i32.shl
            i32.add
            local.get 1
            local.get 2
            i32.const 2
            i32.shl
            call 37
            drop
          end
        end
        local.get 9
        i32.load offset=12
        local.set 3
        local.get 9
        i32.load offset=24
        local.set 2
      end
      local.get 9
      i32.load offset=16
      local.get 9
      i32.load offset=20
      local.get 2
      i32.add
      local.tee 1
      local.get 3
      i32.const 0
      local.get 1
      local.get 3
      i32.ge_u
      select
      i32.sub
      i32.const 2
      i32.shl
      i32.add
      local.get 0
      i32.store
      local.get 9
      local.get 2
      i32.const 1
      i32.add
      i32.store offset=24
      local.get 9
      i32.load8_u offset=28
      local.set 0
      local.get 9
      i32.const 1
      i32.store8 offset=28
      local.get 9
      local.get 9
      i32.load offset=8
      i32.const 1
      i32.add
      i32.store offset=8
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 1049904
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          i32.const 1049900
          i32.load
          i32.const 1049896
          i32.load
          call 25
          local.tee 0
          i32.const 132
          i32.lt_u
          br_if 1 (;@2;)
          local.get 0
          call 2
          return
        end
        i32.const 1049896
        i32.load
        call 26
      end
      return
    end
    i32.const 1049720
    call 55
    unreachable)
  (func (;44;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=56
    local.get 2
    i32.const 56
    i32.add
    local.get 0
    i32.load
    call 18
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
    i32.const 20
    i32.store offset=40
    local.get 2
    i32.const 2
    i32.store offset=16
    local.get 2
    i32.const 1049276
    i32.store offset=12
    local.get 2
    i64.const 1
    i64.store offset=24 align=4
    local.get 2
    local.get 2
    i32.const 44
    i32.add
    i32.store offset=36
    local.get 2
    local.get 2
    i32.const 36
    i32.add
    i32.store offset=20
    local.get 1
    i32.load offset=20
    local.set 4
    local.get 1
    i32.load offset=24
    local.set 1
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 3
    i32.store8 offset=44
    local.get 0
    i32.const 32
    i32.store offset=28
    local.get 0
    i32.const 0
    i32.store offset=40
    local.get 0
    local.get 1
    i32.store offset=36
    local.get 0
    local.get 4
    i32.store offset=32
    local.get 0
    i32.const 0
    i32.store offset=20
    local.get 0
    i32.const 0
    i32.store offset=12
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 12
            i32.add
            local.tee 4
            i32.load offset=16
            local.tee 11
            i32.eqz
            if  ;; label = @5
              local.get 4
              i32.load offset=12
              local.tee 1
              i32.eqz
              br_if 1 (;@4;)
              local.get 4
              i32.load offset=8
              local.set 3
              local.get 1
              i32.const 3
              i32.shl
              local.set 6
              local.get 1
              i32.const 1
              i32.sub
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 8
              local.get 4
              i32.load
              local.set 1
              loop  ;; label = @6
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 5
                if  ;; label = @7
                  local.get 0
                  i32.load offset=32
                  local.get 1
                  i32.load
                  local.get 5
                  local.get 0
                  i32.load offset=36
                  i32.load offset=12
                  call_indirect (type 3)
                  br_if 4 (;@3;)
                end
                local.get 3
                i32.load
                local.get 0
                i32.const 12
                i32.add
                local.get 3
                i32.load offset=4
                call_indirect (type 1)
                br_if 3 (;@3;)
                local.get 3
                i32.const 8
                i32.add
                local.set 3
                local.get 1
                i32.const 8
                i32.add
                local.set 1
                local.get 6
                i32.const 8
                i32.sub
                local.tee 6
                br_if 0 (;@6;)
              end
              br 1 (;@4;)
            end
            local.get 4
            i32.load offset=20
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 5
            i32.shl
            local.set 12
            local.get 1
            i32.const 1
            i32.sub
            i32.const 134217727
            i32.and
            i32.const 1
            i32.add
            local.set 8
            local.get 4
            i32.load offset=8
            local.set 9
            local.get 4
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 3
              if  ;; label = @6
                local.get 0
                i32.load offset=32
                local.get 1
                i32.load
                local.get 3
                local.get 0
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 3)
                br_if 3 (;@3;)
              end
              local.get 0
              local.get 6
              local.get 11
              i32.add
              local.tee 3
              i32.const 16
              i32.add
              i32.load
              i32.store offset=28
              local.get 0
              local.get 3
              i32.const 28
              i32.add
              i32.load8_u
              i32.store8 offset=44
              local.get 0
              local.get 3
              i32.const 24
              i32.add
              i32.load
              i32.store offset=40
              local.get 3
              i32.const 12
              i32.add
              i32.load
              local.set 5
              i32.const 0
              local.set 10
              i32.const 0
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const 8
                    i32.add
                    i32.load
                    i32.const 1
                    i32.sub
                    br_table 0 (;@8;) 2 (;@6;) 1 (;@7;)
                  end
                  local.get 5
                  i32.const 3
                  i32.shl
                  local.get 9
                  i32.add
                  local.tee 13
                  i32.load offset=4
                  br_if 1 (;@6;)
                  local.get 13
                  i32.load
                  local.set 5
                end
                i32.const 1
                local.set 7
              end
              local.get 0
              local.get 5
              i32.store offset=16
              local.get 0
              local.get 7
              i32.store offset=12
              local.get 3
              i32.const 4
              i32.add
              i32.load
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.load
                    i32.const 1
                    i32.sub
                    br_table 0 (;@8;) 2 (;@6;) 1 (;@7;)
                  end
                  local.get 5
                  i32.const 3
                  i32.shl
                  local.get 9
                  i32.add
                  local.tee 7
                  i32.load offset=4
                  br_if 1 (;@6;)
                  local.get 7
                  i32.load
                  local.set 5
                end
                i32.const 1
                local.set 10
              end
              local.get 0
              local.get 5
              i32.store offset=24
              local.get 0
              local.get 10
              i32.store offset=20
              local.get 9
              local.get 3
              i32.const 20
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 3
              i32.load
              local.get 0
              i32.const 12
              i32.add
              local.get 3
              i32.load offset=4
              call_indirect (type 1)
              br_if 2 (;@3;)
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              local.get 12
              local.get 6
              i32.const 32
              i32.add
              local.tee 6
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 8
          local.get 4
          i32.load offset=4
          i32.ge_u
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=32
          local.get 4
          i32.load
          local.get 8
          i32.const 3
          i32.shl
          i32.add
          local.tee 1
          i32.load
          local.get 1
          i32.load offset=4
          local.get 0
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
    local.get 0
    i32.const 48
    i32.add
    global.set 0
    local.get 2
    i32.load offset=44
    local.tee 0
    if  ;; label = @1
      local.get 2
      i32.load offset=48
      local.get 0
      call 53
    end
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func (;45;) (type 12) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 6
    global.set 0
    block  ;; label = @1
      local.get 1
      if  ;; label = @2
        local.get 6
        i32.const 20
        i32.add
        local.tee 7
        local.get 1
        local.get 3
        local.get 4
        local.get 5
        local.get 2
        i32.load offset=16
        call_indirect (type 8)
        local.get 0
        local.get 6
        i32.load offset=28
        local.tee 1
        local.get 6
        i32.load offset=20
        i32.lt_u
        if (result i32)  ;; label = @3
          local.get 6
          i32.const 8
          i32.add
          local.get 7
          local.get 1
          i32.const 4
          i32.const 4
          call 51
          local.get 6
          i32.load offset=8
          local.tee 1
          i32.const -2147483647
          i32.ne
          br_if 2 (;@1;)
          local.get 6
          i32.load offset=28
        else
          local.get 1
        end
        i32.store offset=4
        local.get 0
        local.get 6
        i32.load offset=24
        i32.store
        local.get 6
        i32.const 32
        i32.add
        global.set 0
        return
      end
      i32.const 1049512
      i32.const 50
      call 93
      unreachable
    end
    local.get 6
    i32.load offset=12
    drop
    local.get 1
    call 92
    unreachable)
  (func (;46;) (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=72
            br_table 0 (;@4;) 3 (;@1;) 3 (;@1;) 1 (;@3;) 3 (;@1;)
          end
          local.get 0
          i32.load8_u offset=28
          i32.const 3
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const 8
            i32.add
            call 68
          end
          local.get 0
          i32.load offset=32
          local.tee 1
          i32.const 132
          i32.ge_u
          if  ;; label = @4
            local.get 1
            call 2
          end
          local.get 0
          i32.load offset=36
          local.tee 0
          i32.const 131
          i32.gt_u
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        i32.load8_u offset=68
        i32.const 3
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.const 48
          i32.add
          call 68
        end
        local.get 0
        i32.load offset=32
        local.tee 1
        i32.const 132
        i32.ge_u
        if  ;; label = @3
          local.get 1
          call 2
        end
        local.get 0
        i32.load offset=36
        local.tee 0
        i32.const 131
        i32.le_u
        br_if 1 (;@1;)
      end
      local.get 0
      call 2
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
      local.get 0
      i32.load offset=12
      local.tee 1
      if  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 2
        i32.load
        local.tee 3
        if  ;; label = @3
          local.get 1
          local.get 3
          call_indirect (type 0)
        end
        local.get 2
        i32.load offset=4
        local.tee 2
        if  ;; label = @3
          local.get 1
          local.get 2
          call 53
        end
        local.get 0
        i32.load offset=24
        local.get 0
        i32.load offset=20
        i32.load offset=12
        call_indirect (type 0)
      end
      local.get 0
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.sub
      local.tee 1
      i32.store offset=4
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      call 53
    end)
  (func (;48;) (type 0) (param i32)
    (local i32)
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
        call 2
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
      local.get 0
      i32.const 28
      i32.add
      call 82
      local.get 0
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.sub
      local.tee 1
      i32.store offset=4
      local.get 1
      br_if 0 (;@1;)
      local.get 0
      i32.const 52
      call 53
    end)
  (func (;49;) (type 5) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const 1049924
    i32.const 1049924
    i32.load
    local.tee 4
    i32.const 1
    i32.add
    i32.store
    block  ;; label = @1
      local.get 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 1050384
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          i32.const 1050380
          i32.const 1050380
          i32.load
          i32.const 1
          i32.add
          i32.store
          i32.const 1049920
          i32.load
          i32.const 0
          i32.ge_s
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 3
        i32.const 8
        i32.add
        local.get 0
        local.get 1
        call_indirect (type 2)
        unreachable
      end
      i32.const 1050384
      i32.const 0
      i32.store8
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      unreachable
    end
    unreachable)
  (func (;50;) (type 1) (param i32 i32) (result i32)
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
    i32.const 1
    i32.store offset=8
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=44
    local.get 2
    i32.const 44
    i32.add
    i32.const 1048592
    call 10
    block  ;; label = @1
      local.get 2
      i32.load offset=8
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load8_u offset=40
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 20
      i32.add
      call 68
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;51;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 5
      if  ;; label = @2
        local.get 4
        local.get 5
        i32.mul
        local.set 5
        local.get 1
        i32.load offset=4
        local.set 6
        block  ;; label = @3
          local.get 2
          i32.eqz
          if  ;; label = @4
            local.get 6
            local.get 5
            call 53
            local.get 3
            local.set 5
            br 1 (;@3;)
          end
          local.get 6
          local.get 5
          local.get 3
          local.get 2
          local.get 4
          i32.mul
          local.tee 4
          call 31
          local.tee 5
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 1
        local.get 2
        i32.store
        local.get 1
        local.get 5
        i32.store offset=4
      end
      i32.const -2147483647
      local.set 3
    end
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store)
  (func (;52;) (type 2) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.load offset=8
      local.tee 3
      local.get 1
      i32.load
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        local.get 3
        i32.const 1
        i32.const 1
        call 51
        local.get 2
        i32.load offset=8
        local.tee 3
        i32.const -2147483647
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=8
      else
        local.get 3
      end
      i32.store offset=4
      local.get 0
      local.get 1
      i32.load offset=4
      i32.store
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    local.get 2
    i32.load offset=12
    drop
    local.get 3
    call 92
    unreachable)
  (func (;53;) (type 2) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
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
      if  ;; label = @2
        local.get 2
        i32.const 0
        local.get 3
        local.get 1
        i32.const 39
        i32.add
        i32.gt_u
        select
        br_if 1 (;@1;)
        local.get 0
        call 32
        return
      end
      i32.const 1049136
      i32.const 1049184
      call 58
      unreachable
    end
    i32.const 1049200
    i32.const 1049248
    call 58
    unreachable)
  (func (;54;) (type 1) (param i32 i32) (result i32)
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
        i32.const 1050424
        i32.load8_u
        drop
        block (result i32)  ;; label = @3
          local.get 1
          i32.const 9
          i32.ge_u
          if  ;; label = @4
            local.get 1
            local.get 0
            call 35
            br 1 (;@3;)
          end
          local.get 0
          call 28
        end
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      return
    end
    unreachable)
  (func (;55;) (type 0) (param i32)
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
    i32.const 1048976
    i32.store offset=8
    local.get 1
    i64.const 1
    i64.store offset=20 align=4
    local.get 1
    local.get 1
    i32.const 47
    i32.add
    i64.extend_i32_u
    i64.const 8589934592
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
    call 56
    unreachable)
  (func (;56;) (type 2) (param i32 i32)
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
      local.get 0
      i32.load offset=28
      local.tee 0
      i32.load8_u offset=28
      local.set 2
      local.get 0
      i32.load8_u offset=29
      drop
      local.get 1
      i32.const 18
      local.get 2
      call 49
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.load offset=28
    local.tee 0
    i32.load8_u offset=28
    local.set 2
    local.get 0
    i32.load8_u offset=29
    drop
    local.get 1
    i32.const 19
    local.get 2
    call 49
    unreachable)
  (func (;57;) (type 0) (param i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    local.tee 2
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.load
      local.tee 3
      if  ;; label = @2
        local.get 2
        local.get 3
        call_indirect (type 0)
      end
      local.get 1
      i32.load offset=4
      local.tee 1
      if  ;; label = @2
        local.get 2
        local.get 1
        call 53
      end
      local.get 0
      i32.load offset=12
      local.get 0
      i32.load offset=8
      i32.load offset=12
      call_indirect (type 0)
    end)
  (func (;58;) (type 2) (param i32 i32)
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
    call 56
    unreachable)
  (func (;59;) (type 0) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      call 24
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.set 1
      local.get 0
      i32.load offset=4
      local.tee 0
      i32.load
      local.tee 2
      if  ;; label = @2
        local.get 1
        local.get 2
        call_indirect (type 0)
      end
      local.get 0
      i32.load offset=4
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      call 53
    end)
  (func (;60;) (type 0) (param i32)
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
        local.get 0
        call 83
      end
      return
    end
    unreachable)
  (func (;61;) (type 0) (param i32)
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
    i32.const 1049076
    i32.store offset=8
    local.get 1
    i64.const 4
    i64.store offset=16 align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call 56
    unreachable)
  (func (;62;) (type 7) (param i32 i32 i32 i32) (result i32)
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
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 3
        local.get 2
        call 31
        local.tee 0
        br_if 1 (;@1;)
      end
      unreachable
    end
    local.get 0)
  (func (;63;) (type 2) (param i32 i32)
    (local i32)
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.const 0
    i32.store
    local.get 2
    i32.eqz
    if  ;; label = @1
      i32.const 1049332
      i32.const 28
      call 93
      unreachable
    end
    local.get 2
    i32.const 8
    i32.add
    i32.const 0
    local.get 1
    call 42
    local.get 2
    call 48)
  (func (;64;) (type 2) (param i32 i32)
    (local i32)
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.const 0
    i32.store
    local.get 2
    i32.eqz
    if  ;; label = @1
      i32.const 1049332
      i32.const 28
      call 93
      unreachable
    end
    local.get 2
    i32.const 8
    i32.add
    i32.const 1
    local.get 1
    call 42
    local.get 2
    call 48)
  (func (;65;) (type 2) (param i32 i32)
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
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call 53
    end)
  (func (;66;) (type 2) (param i32 i32)
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
    call 38
    local.get 0
    call 40
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;67;) (type 2) (param i32 i32)
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
    i32.const 1049852
    i32.store)
  (func (;68;) (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=16
          br_table 0 (;@3;) 2 (;@1;) 2 (;@1;) 1 (;@2;) 2 (;@1;)
        end
        local.get 0
        i32.load
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.get 1
        call 53
        return
      end
      local.get 0
      i32.load offset=12
      call 48
    end)
  (func (;69;) (type 0) (param i32)
    (local i32)
    local.get 0
    i32.load8_u offset=20
    local.get 0
    i32.const 1
    i32.store8 offset=20
    local.get 0
    i32.const 8
    i32.sub
    local.set 0
    i32.eqz
    if  ;; label = @1
      local.get 0
      call 83
      return
    end
    local.get 0
    call 47)
  (func (;70;) (type 2) (param i32 i32)
    local.get 0
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049332
      i32.const 28
      call 93
      unreachable
    end
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    local.get 1
    call 42
    local.get 0
    call 48)
  (func (;71;) (type 2) (param i32 i32)
    local.get 0
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049332
      i32.const 28
      call 93
      unreachable
    end
    local.get 0
    i32.const 8
    i32.add
    i32.const 1
    local.get 1
    call 42
    local.get 0
    call 48)
  (func (;72;) (type 13) (param i32 i32 i32 i32 i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049512
      i32.const 50
      call 93
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 1
    i32.load offset=16
    call_indirect (type 9))
  (func (;73;) (type 0) (param i32)
    i32.const 1050388
    i32.load8_u
    i32.eqz
    if  ;; label = @1
      i32.const 1050388
      i32.const 1
      i32.store8
    end
    i32.const 1050392
    local.get 0
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.const 1
    i64.or
    i64.store)
  (func (;74;) (type 8) (param i32 i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049512
      i32.const 50
      call 93
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 10))
  (func (;75;) (type 9) (param i32 i32 i32 i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049512
      i32.const 50
      call 93
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 7))
  (func (;76;) (type 14) (param i32 i32 f32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049512
      i32.const 50
      call 93
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 15))
  (func (;77;) (type 16) (param i32 i32 f64 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049512
      i32.const 50
      call 93
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 17))
  (func (;78;) (type 18) (param i32 i32 i64 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049512
      i32.const 50
      call 93
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=16
    call_indirect (type 19))
  (func (;79;) (type 10) (param i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049512
      i32.const 50
      call 93
      unreachable
    end
    local.get 0
    local.get 2
    local.get 3
    local.get 1
    i32.load offset=16
    call_indirect (type 5))
  (func (;80;) (type 3) (param i32 i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049512
      i32.const 50
      call 93
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.load offset=16
    call_indirect (type 1))
  (func (;81;) (type 5) (param i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1049512
      i32.const 50
      call 93
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.load offset=16
    call_indirect (type 2))
  (func (;82;) (type 0) (param i32)
    local.get 0
    i32.load
    if  ;; label = @1
      local.get 0
      call 59
      local.get 0
      i32.const 12
      i32.add
      call 59
    end)
  (func (;83;) (type 0) (param i32)
    i32.const 1049904
    i32.load8_u
    i32.const 2
    i32.eq
    if  ;; label = @1
      call 34
    end
    local.get 0
    call 43)
  (func (;84;) (type 0) (param i32)
    local.get 0
    i32.load
    local.tee 0
    i32.const 132
    i32.ge_u
    if  ;; label = @1
      local.get 0
      call 2
    end)
  (func (;85;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1048932
    i32.const 11
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 3))
  (func (;86;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1048943
    i32.const 14
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 3))
  (func (;87;) (type 0) (param i32)
    local.get 0
    i32.load
    local.tee 0
    if  ;; label = @1
      local.get 0
      call 48
    end)
  (func (;88;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func (;89;) (type 5) (param i32 i32 i32)
    local.get 1
    if  ;; label = @1
      local.get 0
      local.get 1
      call 53
    end)
  (func (;90;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 29)
  (func (;91;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call 29)
  (func (;92;) (type 0) (param i32)
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
      i32.const 1048888
      i32.store offset=8
      local.get 0
      i64.const 4
      i64.store offset=16 align=4
      local.get 0
      i32.const 8
      i32.add
      i32.const 1048916
      call 56
      unreachable
    end
    unreachable)
  (func (;93;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call 19
    unreachable)
  (func (;94;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 1
    call 27)
  (func (;95;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;96;) (type 0) (param i32)
    local.get 0
    i32.const 8
    i32.sub
    call 47)
  (func (;97;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func (;98;) (type 0) (param i32)
    local.get 0
    i32.load
    call 40)
  (table (;0;) 42 42 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "smart_nft_view_command" (func 50))
  (export "__wbindgen_free" (func 89))
  (export "__wbindgen_malloc" (func 54))
  (export "__wbindgen_realloc" (func 62))
  (export "__wbindgen_export_3" (table 0))
  (export "_dyn_core__ops__function__FnMut__A____Output___R_as_wasm_bindgen__closure__WasmClosure___describe__invoke__h4569b38807771689" (func 81))
  (export "__wbindgen_exn_store" (func 73))
  (export "wasm_bindgen__convert__closures__invoke2_mut__h1f85a77934110384" (func 79))
  (elem (;0;) (i32.const 2) func 86 88 90 85 75 45 74 75 72 80 79 74 74 76 77 78 97 95 91 81 65 81 46 30 41 41 84 44 87 70 63 71 64 98 66 38 67 69 60 96)
  (data (;0;) (i32.const 1048576) "\18\00\00\00L\00\00\00\04\00\00\00\19\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\1a\00\00\00\1b\00\00\00\10\03\10\00f\00\00\00\df\00\00\00\15\00\00\00\1c\00\00\00\04\00\00\00\04\00\00\00\1d\00\00\00called `Result::unwrap()` on an `Err` valuecalled `Option::unwrap_throw()` on a `None` valuecalled `Result::unwrap_throw()` on an `Err` valuesrc/program_basic_melt/src/lib.rs\00\00\d1\00\10\00!\00\00\00\0c\00\00\00B\00\00\00\d1\00\10\00!\00\00\00\0f\00\00\000\00\00\00\d1\00\10\00!\00\00\00\0b\00\00\00\01\00\00\00capacity overflow\00\00\00$\01\10\00\11\00\00\00alloc/src/raw_vec.rs@\01\10\00\14\00\00\00\18\00\00\00\05\00\00\00BorrowErrorBorrowMutErroralready borrowed: \00}\01\10\00\12\00\00\00already mutably borrowed: \00\00\98\01\10\00\1a\00\00\00: \00\00\01\00\00\00\00\00\00\00\bc\01\10\00\02\00\00\00`async fn` resumed after completion\00\d0\01\10\00#\00\00\00return this/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00\00\07\02\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\07\02\10\00)\00\00\00\ae\04\00\00\0d\00\00\00JsValue()\00\00\00\b0\02\10\00\08\00\00\00\b8\02\10\00\01\00\00\00\1e\00\00\00\04\00\00\00\04\00\00\00\1f\00\00\00 \00\00\00\1e\00\00\00\04\00\00\00\04\00\00\00!\00\00\00\22\00\00\00FnOnce called more than once/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-futures-0.4.43/src/lib.rs\00\00\10\03\10\00f\00\00\00\aa\00\00\00\0f\00\00\00\10\03\10\00f\00\00\00\8a\00\00\00'\00\00\00\10\03\10\00f\00\00\00\b4\00\00\00$\00\00\00closure invoked recursively or after being dropped\00\00#\00\00\00\04\00\00\00\04\00\00\00$\00\00\00%\00\00\00/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-futures-0.4.43/src/queue.rs\f0\03\10\00h\00\00\00%\00\00\00.\00\00\00\f0\03\10\00h\00\00\00(\00\00\00)\00\00\00\f0\03\10\00h\00\00\00>\00\00\00\1a\00\00\00/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-futures-0.4.43/src/task/singlethread.rs&\00\00\00'\00\00\00(\00\00\00)\00\00\00\88\04\10\00t\00\00\00f\00\00\00%")
  (data (;1;) (i32.const 1049904) "\02"))
