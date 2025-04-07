(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i64) (result i32)))
  (type (;10;) (func (param i64)))
  (type (;11;) (func))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32)))
  (import "smart_nft" "smart_nft_mint" (func (;0;) (type 4)))
  (import "smart_nft" "smart_nft_mint_exec" (func (;1;) (type 4)))
  (func (;2;) (type 6) (result i32)
    i32.const 1049848)
  (func (;3;) (type 6) (result i32)
    i32.const 513049848)
  (func (;4;) (type 4) (param i32) (result i32)
    i32.const 545049848)
  (func (;5;) (type 3) (param i32))
  (func (;6;) (type 6) (result i32)
    i32.const 545050848)
  (func (;7;) (type 9) (param i64) (result i32)
    i32.const 545051848)
  (func (;8;) (type 10) (param i64))
  (func (;9;) (type 6) (result i32)
    i32.const 545052848)
  (func (;10;) (type 11))
  (func (;11;) (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 272
    i32.sub
    local.tee 11
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 512000001
              i32.lt_u
              if  ;; label = @6
                global.get 0
                i32.const 80
                i32.sub
                local.tee 25
                global.set 0
                local.get 25
                i32.const 8
                i32.add
                local.set 24
                global.get 0
                i32.const 96
                i32.sub
                local.tee 17
                global.set 0
                local.get 17
                i32.const 8
                i32.add
                i32.const 545052848
                local.get 0
                call 19
                local.get 17
                local.get 17
                i64.load offset=8
                i64.store offset=16 align=4
                local.get 17
                i32.const 24
                i32.add
                local.set 21
                global.get 0
                i32.const 80
                i32.sub
                local.tee 13
                global.set 0
                local.get 17
                i32.const 16
                i32.add
                local.tee 3
                i32.load offset=4
                local.set 4
                local.get 3
                i32.load
                local.set 8
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      loop  ;; label = @10
                        i32.const 5
                        local.set 1
                        local.get 5
                        i32.const 5
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 4
                        local.get 5
                        local.get 8
                        i32.add
                        local.tee 2
                        i32.eq
                        if  ;; label = @11
                          i32.const 4
                          local.set 1
                          br 2 (;@9;)
                        end
                        local.get 3
                        local.get 2
                        i32.const 1
                        i32.add
                        i32.store
                        local.get 5
                        i32.const 1
                        i32.add
                        local.set 5
                        local.get 2
                        i32.load8_s
                        local.tee 2
                        i32.const 127
                        i32.and
                        local.get 7
                        i32.shl
                        local.get 6
                        i32.or
                        local.set 6
                        local.get 7
                        i32.const 7
                        i32.add
                        local.set 7
                        local.get 2
                        i32.const 0
                        i32.lt_s
                        br_if 0 (;@10;)
                      end
                      local.get 5
                      i32.const 5
                      i32.eq
                      local.get 2
                      i32.const 255
                      i32.and
                      i32.const 15
                      i32.gt_u
                      i32.and
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 5
                      global.get 0
                      i32.const 16
                      i32.sub
                      local.tee 1
                      global.set 0
                      local.get 13
                      block (result i32)  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          i64.extend_i32_u
                          local.tee 28
                          i64.const 1
                          i64.le_u
                          if  ;; label = @12
                            i32.const 0
                            local.get 28
                            i32.wrap_i64
                            i32.const 1
                            i32.sub
                            br_if 2 (;@10;)
                            drop
                            br 1 (;@11;)
                          end
                          i32.const 1
                          local.set 5
                          local.get 1
                          i32.const 1
                          i32.store8
                          local.get 1
                          local.get 28
                          i64.store offset=8
                          i32.const 14
                          br 1 (;@10;)
                        end
                        i32.const 1
                      end
                      i32.store8 offset=1
                      local.get 13
                      local.get 5
                      i32.store8
                      local.get 1
                      i32.const 16
                      i32.add
                      global.set 0
                      local.get 13
                      i32.load8_u offset=1
                      local.set 1
                      local.get 13
                      i32.load8_u
                      i32.eqz
                      br_if 1 (;@8;)
                    end
                    local.get 21
                    i64.const 3
                    i64.store
                    local.get 21
                    local.get 1
                    i32.store8 offset=8
                    br 1 (;@7;)
                  end
                  local.get 1
                  i32.const 1
                  i32.and
                  i32.eqz
                  if  ;; label = @8
                    local.get 13
                    i32.const 8
                    i32.add
                    local.set 9
                    i32.const 0
                    local.set 7
                    i32.const 0
                    local.set 8
                    global.get 0
                    i32.const 32
                    i32.sub
                    local.tee 4
                    global.set 0
                    local.get 3
                    i32.load offset=4
                    local.set 10
                    local.get 3
                    i32.load
                    local.set 1
                    block  ;; label = @9
                      block  ;; label = @10
                        loop  ;; label = @11
                          i32.const 5
                          local.set 6
                          local.get 7
                          i32.const 35
                          i32.eq
                          br_if 1 (;@10;)
                          local.get 1
                          local.get 10
                          i32.eq
                          if  ;; label = @12
                            i32.const 4
                            local.set 6
                            br 2 (;@10;)
                          end
                          local.get 3
                          local.get 1
                          i32.const 1
                          i32.add
                          local.tee 5
                          i32.store
                          local.get 1
                          i32.load8_s
                          local.tee 2
                          i32.const 127
                          i32.and
                          local.get 7
                          i32.shl
                          local.get 8
                          i32.or
                          local.set 8
                          local.get 7
                          i32.const 7
                          i32.add
                          local.set 7
                          local.get 5
                          local.set 1
                          local.get 2
                          i32.const 0
                          i32.lt_s
                          br_if 0 (;@11;)
                        end
                        local.get 7
                        i32.const 35
                        i32.eq
                        local.get 2
                        i32.const 15
                        i32.gt_u
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 14
                        local.set 6
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 8
                            br_table 0 (;@12;) 1 (;@11;) 2 (;@10;)
                          end
                          local.get 4
                          i32.const 20
                          i32.add
                          local.get 3
                          call 18
                          local.get 4
                          i32.load8_u offset=24
                          local.set 1
                          local.get 4
                          i32.load offset=20
                          local.tee 5
                          i32.const -2147483648
                          i32.eq
                          if  ;; label = @12
                            local.get 9
                            i32.const 2
                            i32.store
                            local.get 9
                            local.get 1
                            i32.store8 offset=4
                            br 3 (;@9;)
                          end
                          local.get 4
                          local.get 5
                          i32.store offset=8
                          local.get 4
                          local.get 1
                          i64.extend_i32_u
                          i64.const 255
                          i64.and
                          local.get 4
                          i64.load32_u offset=25 align=1
                          local.get 4
                          i32.const 31
                          i32.add
                          local.tee 5
                          i64.load8_u
                          i64.const 48
                          i64.shl
                          local.get 4
                          i32.const 29
                          i32.add
                          local.tee 2
                          i64.load16_u align=1
                          i64.const 32
                          i64.shl
                          i64.or
                          i64.or
                          i64.const 8
                          i64.shl
                          i64.or
                          i64.store offset=12 align=4
                          local.get 4
                          i32.const 20
                          i32.add
                          local.get 3
                          call 18
                          local.get 4
                          i32.load8_u offset=24
                          local.set 1
                          local.get 4
                          i32.load offset=20
                          local.tee 3
                          i32.const -2147483648
                          i32.eq
                          if  ;; label = @12
                            local.get 9
                            i32.const 2
                            i32.store
                            local.get 9
                            local.get 1
                            i32.store8 offset=4
                            local.get 4
                            i32.const 8
                            i32.add
                            call 27
                            br 3 (;@9;)
                          end
                          local.get 5
                          i64.load8_u
                          local.set 28
                          local.get 2
                          i64.load16_u align=1
                          local.set 29
                          local.get 4
                          i64.load32_u offset=25 align=1
                          local.set 30
                          local.get 9
                          i32.const 12
                          i32.add
                          local.get 4
                          i32.const 16
                          i32.add
                          i32.load
                          i32.store
                          local.get 9
                          local.get 4
                          i64.load offset=8 align=4
                          i64.store offset=4 align=4
                          local.get 9
                          local.get 3
                          i32.store offset=16
                          local.get 9
                          i32.const 0
                          i32.store
                          local.get 9
                          local.get 1
                          i64.extend_i32_u
                          i64.const 255
                          i64.and
                          local.get 30
                          local.get 28
                          i64.const 48
                          i64.shl
                          local.get 29
                          i64.const 32
                          i64.shl
                          i64.or
                          i64.or
                          i64.const 8
                          i64.shl
                          i64.or
                          i64.store offset=20 align=4
                          br 2 (;@9;)
                        end
                        local.get 4
                        i32.const 20
                        i32.add
                        local.get 3
                        call 18
                        local.get 4
                        i32.load8_u offset=24
                        local.set 1
                        local.get 4
                        i32.load offset=20
                        local.tee 5
                        i32.const -2147483648
                        i32.eq
                        if  ;; label = @11
                          local.get 9
                          i32.const 2
                          i32.store
                          local.get 9
                          local.get 1
                          i32.store8 offset=4
                          br 2 (;@9;)
                        end
                        local.get 4
                        local.get 5
                        i32.store offset=8
                        local.get 4
                        local.get 1
                        i64.extend_i32_u
                        i64.const 255
                        i64.and
                        local.get 4
                        i64.load32_u offset=25 align=1
                        local.get 4
                        i32.const 31
                        i32.add
                        local.tee 12
                        i64.load8_u
                        i64.const 48
                        i64.shl
                        local.get 4
                        i32.const 29
                        i32.add
                        local.tee 14
                        i64.load16_u align=1
                        i64.const 32
                        i64.shl
                        i64.or
                        i64.or
                        i64.const 8
                        i64.shl
                        i64.or
                        i64.store offset=12 align=4
                        local.get 4
                        i32.const 20
                        i32.add
                        local.set 7
                        i32.const 0
                        local.set 1
                        i32.const 0
                        local.set 6
                        local.get 3
                        i32.load offset=4
                        local.set 16
                        local.get 3
                        i32.load
                        local.set 5
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              i32.const 5
                              local.set 8
                              local.get 6
                              i32.const 35
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 5
                              local.get 16
                              i32.eq
                              if  ;; label = @14
                                i32.const 4
                                local.set 8
                                br 2 (;@12;)
                              end
                              local.get 3
                              local.get 5
                              i32.const 1
                              i32.add
                              local.tee 2
                              i32.store
                              local.get 5
                              i32.load8_s
                              local.tee 10
                              i32.const 127
                              i32.and
                              local.get 6
                              i32.shl
                              local.get 1
                              i32.or
                              local.set 1
                              local.get 6
                              i32.const 7
                              i32.add
                              local.set 6
                              local.get 2
                              local.set 5
                              local.get 10
                              i32.const 0
                              i32.lt_s
                              br_if 0 (;@13;)
                            end
                            local.get 6
                            i32.const 35
                            i32.eq
                            local.get 10
                            i32.const 15
                            i32.gt_u
                            i32.and
                            br_if 0 (;@12;)
                            global.get 0
                            i32.const 32
                            i32.sub
                            local.tee 2
                            global.set 0
                            local.get 2
                            i32.const 20
                            i32.add
                            i32.const 1048576
                            local.get 1
                            local.tee 5
                            local.get 1
                            i32.const 1048576
                            i32.ge_u
                            select
                            i32.const 0
                            local.get 3
                            i32.load offset=4
                            local.tee 8
                            local.get 3
                            i32.load
                            local.tee 10
                            i32.sub
                            local.get 1
                            i32.ge_u
                            select
                            i32.const 1
                            i32.const 1
                            call 26
                            local.get 2
                            i32.load offset=24
                            local.set 6
                            block  ;; label = @13
                              local.get 2
                              i32.load offset=20
                              i32.const 1
                              i32.ne
                              if  ;; label = @14
                                local.get 2
                                i32.const 0
                                i32.store offset=16
                                local.get 2
                                local.get 2
                                i32.load offset=28
                                i32.store offset=12
                                local.get 2
                                local.get 6
                                i32.store offset=8
                                block  ;; label = @15
                                  local.get 1
                                  if  ;; label = @16
                                    i32.const 0
                                    local.set 1
                                    loop  ;; label = @17
                                      local.get 8
                                      local.get 1
                                      local.get 10
                                      i32.add
                                      local.tee 6
                                      i32.eq
                                      if  ;; label = @18
                                        local.get 7
                                        i32.const -2147483648
                                        i32.store
                                        local.get 7
                                        i32.const 4
                                        i32.store8 offset=4
                                        local.get 2
                                        i32.const 8
                                        i32.add
                                        call 27
                                        br 3 (;@15;)
                                      end
                                      local.get 3
                                      local.get 6
                                      i32.const 1
                                      i32.add
                                      i32.store
                                      local.get 6
                                      i32.load8_u
                                      local.set 6
                                      local.get 2
                                      i32.load offset=8
                                      local.get 1
                                      i32.eq
                                      if  ;; label = @18
                                        local.get 2
                                        i32.const 8
                                        i32.add
                                        call 24
                                      end
                                      local.get 2
                                      i32.load offset=12
                                      local.get 1
                                      i32.add
                                      local.get 6
                                      i32.store8
                                      local.get 2
                                      local.get 1
                                      i32.const 1
                                      i32.add
                                      local.tee 1
                                      i32.store offset=16
                                      local.get 1
                                      local.get 5
                                      i32.ne
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  local.get 7
                                  local.get 2
                                  i64.load offset=8 align=4
                                  i64.store align=4
                                  local.get 7
                                  i32.const 8
                                  i32.add
                                  local.get 2
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  i32.store
                                end
                                local.get 2
                                i32.const 32
                                i32.add
                                global.set 0
                                br 1 (;@13;)
                              end
                              local.get 6
                              local.get 2
                              i32.load offset=28
                              call 52
                              unreachable
                            end
                            br 1 (;@11;)
                          end
                          local.get 7
                          i32.const -2147483648
                          i32.store
                          local.get 7
                          local.get 8
                          i32.store8 offset=4
                        end
                        local.get 4
                        i32.load8_u offset=24
                        local.set 1
                        local.get 4
                        i32.load offset=20
                        local.tee 5
                        i32.const -2147483648
                        i32.eq
                        if  ;; label = @11
                          local.get 9
                          i32.const 2
                          i32.store
                          local.get 9
                          local.get 1
                          i32.store8 offset=4
                          local.get 4
                          i32.const 8
                          i32.add
                          call 27
                          br 2 (;@9;)
                        end
                        local.get 12
                        i64.load8_u
                        local.set 28
                        local.get 14
                        i64.load16_u align=1
                        local.set 29
                        local.get 4
                        i64.load32_u offset=25 align=1
                        local.set 30
                        local.get 9
                        i32.const 12
                        i32.add
                        local.get 4
                        i32.const 16
                        i32.add
                        i32.load
                        i32.store
                        local.get 9
                        local.get 4
                        i64.load offset=8 align=4
                        i64.store offset=4 align=4
                        local.get 9
                        local.get 5
                        i32.store offset=16
                        local.get 9
                        i32.const 1
                        i32.store
                        local.get 9
                        local.get 1
                        i64.extend_i32_u
                        i64.const 255
                        i64.and
                        local.get 30
                        local.get 28
                        i64.const 48
                        i64.shl
                        local.get 29
                        i64.const 32
                        i64.shl
                        i64.or
                        i64.or
                        i64.const 8
                        i64.shl
                        i64.or
                        i64.store offset=20 align=4
                        br 1 (;@9;)
                      end
                      local.get 9
                      i32.const 2
                      i32.store
                      local.get 9
                      local.get 6
                      i32.store8 offset=4
                    end
                    local.get 4
                    i32.const 32
                    i32.add
                    global.set 0
                    local.get 21
                    i32.const 8
                    i32.add
                    local.set 1
                    local.get 21
                    block (result i64)  ;; label = @9
                      local.get 13
                      i32.load offset=8
                      i32.const 2
                      i32.ne
                      if  ;; label = @10
                        local.get 1
                        local.get 13
                        i64.load offset=8 align=4
                        i64.store align=4
                        local.get 1
                        i32.const 24
                        i32.add
                        local.get 13
                        i32.const 32
                        i32.add
                        i32.load
                        i32.store
                        local.get 1
                        i32.const 16
                        i32.add
                        local.get 13
                        i32.const 24
                        i32.add
                        i64.load align=4
                        i64.store align=4
                        local.get 1
                        i32.const 8
                        i32.add
                        local.get 13
                        i32.const 16
                        i32.add
                        i64.load align=4
                        i64.store align=4
                        i64.const 2
                        br 1 (;@9;)
                      end
                      local.get 1
                      local.get 13
                      i32.load8_u offset=12
                      i32.store8
                      i64.const 3
                    end
                    i64.store
                    br 1 (;@7;)
                  end
                  local.get 13
                  i32.const 8
                  i32.add
                  local.set 9
                  i32.const 0
                  local.set 8
                  i32.const 0
                  local.set 4
                  i64.const 0
                  local.set 28
                  global.get 0
                  i32.const -64
                  i32.add
                  local.tee 7
                  global.set 0
                  local.get 7
                  i32.const 48
                  i32.add
                  local.get 3
                  call 18
                  local.get 7
                  i32.load8_u offset=52
                  local.set 1
                  block  ;; label = @8
                    local.get 7
                    i32.load offset=48
                    local.tee 5
                    i32.const -2147483648
                    i32.eq
                    if  ;; label = @9
                      local.get 9
                      i64.const 2
                      i64.store
                      local.get 9
                      local.get 1
                      i32.store8 offset=8
                      br 1 (;@8;)
                    end
                    local.get 7
                    local.get 5
                    i32.store offset=12
                    local.get 7
                    local.get 1
                    i64.extend_i32_u
                    i64.const 255
                    i64.and
                    local.get 7
                    i64.load32_u offset=53 align=1
                    local.get 7
                    i32.const 59
                    i32.add
                    i64.load8_u
                    i64.const 48
                    i64.shl
                    local.get 7
                    i32.const 57
                    i32.add
                    i64.load16_u align=1
                    i64.const 32
                    i64.shl
                    i64.or
                    i64.or
                    i64.const 8
                    i64.shl
                    i64.or
                    i64.store offset=16 align=4
                    local.get 7
                    i32.const 48
                    i32.add
                    local.set 2
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            i32.load
                            local.tee 5
                            local.get 3
                            i32.load offset=4
                            local.tee 12
                            i32.ne
                            if  ;; label = @13
                              local.get 3
                              local.get 5
                              i32.const 1
                              i32.add
                              local.tee 1
                              i32.store
                              local.get 5
                              i32.load8_u
                              br_table 4 (;@9;) 2 (;@11;) 1 (;@12;)
                            end
                            local.get 2
                            i32.const 4
                            i32.store8 offset=8
                            br 2 (;@10;)
                          end
                          local.get 2
                          i32.const 9
                          i32.store8 offset=8
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          loop  ;; label = @12
                            i32.const 5
                            local.set 6
                            local.get 4
                            i32.const 70
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 1
                            local.get 12
                            i32.eq
                            if  ;; label = @13
                              i32.const 4
                              local.set 6
                              br 2 (;@11;)
                            end
                            local.get 3
                            local.get 1
                            i32.const 1
                            i32.add
                            local.tee 5
                            i32.store
                            local.get 1
                            i32.load8_s
                            local.tee 10
                            i32.const 127
                            i32.and
                            i64.extend_i32_u
                            local.get 4
                            i32.const 63
                            i32.and
                            i64.extend_i32_u
                            i64.shl
                            local.get 28
                            i64.or
                            local.set 28
                            local.get 4
                            i32.const 7
                            i32.add
                            local.set 4
                            local.get 5
                            local.set 1
                            local.get 10
                            i32.const 0
                            i32.lt_s
                            br_if 0 (;@12;)
                          end
                          local.get 4
                          i32.const 70
                          i32.eq
                          local.get 10
                          i32.const 1
                          i32.gt_u
                          i32.and
                          br_if 0 (;@11;)
                          local.get 2
                          local.get 28
                          i64.store offset=8
                          i64.const 1
                          local.set 28
                          br 2 (;@9;)
                        end
                        local.get 2
                        local.get 6
                        i32.store8 offset=8
                      end
                      i64.const 2
                      local.set 28
                    end
                    local.get 2
                    local.get 28
                    i64.store
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 7
                          i64.load offset=48
                          local.tee 30
                          i64.const 2
                          i64.ne
                          if  ;; label = @12
                            local.get 7
                            i64.load offset=56
                            local.set 31
                            local.get 7
                            i32.const 8
                            i32.add
                            local.set 6
                            i32.const 1
                            local.set 4
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 3
                                i32.load
                                local.tee 2
                                local.get 3
                                i32.load offset=4
                                local.tee 5
                                i32.ne
                                if  ;; label = @15
                                  local.get 3
                                  local.get 2
                                  i32.const 1
                                  i32.add
                                  local.tee 10
                                  i32.store
                                  i32.const 9
                                  local.set 1
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 2
                                      i32.load8_u
                                      br_table 0 (;@17;) 1 (;@16;) 4 (;@13;)
                                    end
                                    i32.const 0
                                    local.set 4
                                    i32.const 2
                                    local.set 1
                                    br 3 (;@13;)
                                  end
                                  local.get 5
                                  local.get 10
                                  i32.ne
                                  br_if 1 (;@14;)
                                end
                                i32.const 4
                                local.set 1
                                br 1 (;@13;)
                              end
                              local.get 3
                              local.get 2
                              i32.const 2
                              i32.add
                              i32.store
                              i32.const 6
                              local.set 1
                              i32.const 0
                              local.set 5
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 2
                                  i32.load8_u offset=1
                                  br_table 1 (;@14;) 0 (;@15;) 2 (;@13;)
                                end
                                i32.const 1
                                local.set 5
                              end
                              local.get 5
                              local.set 1
                              i32.const 0
                              local.set 4
                            end
                            local.get 6
                            local.get 1
                            i32.store8 offset=1
                            local.get 6
                            local.get 4
                            i32.store8
                            local.get 7
                            i32.load8_u offset=9
                            local.set 26
                            local.get 7
                            i32.load8_u offset=8
                            br_if 1 (;@11;)
                            local.get 26
                            i32.const 3
                            i32.eq
                            if  ;; label = @13
                              local.get 9
                              i64.const 2
                              i64.store
                              local.get 9
                              i32.const 14
                              i32.store8 offset=8
                              br 4 (;@9;)
                            end
                            local.get 7
                            i32.const 48
                            i32.add
                            local.set 19
                            i32.const 0
                            local.set 5
                            local.get 3
                            i32.load offset=4
                            local.set 10
                            local.get 3
                            i32.load
                            local.set 1
                            block  ;; label = @13
                              block  ;; label = @14
                                loop  ;; label = @15
                                  i32.const 5
                                  local.set 6
                                  local.get 8
                                  i32.const 35
                                  i32.eq
                                  br_if 1 (;@14;)
                                  local.get 1
                                  local.get 10
                                  i32.eq
                                  if  ;; label = @16
                                    i32.const 4
                                    local.set 6
                                    br 2 (;@14;)
                                  end
                                  local.get 3
                                  local.get 1
                                  i32.const 1
                                  i32.add
                                  local.tee 2
                                  i32.store
                                  local.get 1
                                  i32.load8_s
                                  local.tee 4
                                  i32.const 127
                                  i32.and
                                  local.get 8
                                  i32.shl
                                  local.get 5
                                  i32.or
                                  local.set 5
                                  local.get 8
                                  i32.const 7
                                  i32.add
                                  local.set 8
                                  local.get 2
                                  local.set 1
                                  local.get 4
                                  i32.const 0
                                  i32.lt_s
                                  br_if 0 (;@15;)
                                end
                                local.get 8
                                i32.const 35
                                i32.eq
                                local.get 4
                                i32.const 15
                                i32.gt_u
                                i32.and
                                br_if 0 (;@14;)
                                global.get 0
                                i32.const 80
                                i32.sub
                                local.tee 8
                                global.set 0
                                local.get 8
                                i32.const 48
                                i32.add
                                i32.const 32768
                                local.get 5
                                local.get 5
                                i32.const 32768
                                i32.ge_u
                                select
                                i32.const 0
                                local.get 3
                                i32.load offset=4
                                local.get 3
                                i32.load
                                i32.sub
                                local.get 5
                                i32.ge_u
                                select
                                i32.const 4
                                i32.const 32
                                call 26
                                local.get 8
                                i32.load offset=52
                                local.set 1
                                block  ;; label = @15
                                  local.get 8
                                  i32.load offset=48
                                  i32.const 1
                                  i32.ne
                                  if  ;; label = @16
                                    local.get 8
                                    i32.const 0
                                    i32.store offset=12
                                    local.get 8
                                    local.get 8
                                    i32.load offset=56
                                    i32.store offset=8
                                    local.get 8
                                    local.get 1
                                    i32.store offset=4
                                    block  ;; label = @17
                                      local.get 5
                                      if  ;; label = @18
                                        local.get 8
                                        i32.const 53
                                        i32.add
                                        local.set 22
                                        loop  ;; label = @19
                                          local.get 8
                                          i32.const 48
                                          i32.add
                                          local.set 12
                                          i32.const 0
                                          local.set 4
                                          i32.const 0
                                          local.set 27
                                          global.get 0
                                          i32.const 32
                                          i32.sub
                                          local.tee 10
                                          global.set 0
                                          local.get 3
                                          i32.load offset=4
                                          local.set 16
                                          local.get 3
                                          i32.load
                                          local.set 1
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              loop  ;; label = @22
                                                i32.const 5
                                                local.set 6
                                                local.get 4
                                                i32.const 35
                                                i32.eq
                                                br_if 1 (;@21;)
                                                local.get 1
                                                local.get 16
                                                i32.eq
                                                if  ;; label = @23
                                                  i32.const 4
                                                  local.set 6
                                                  br 2 (;@21;)
                                                end
                                                local.get 3
                                                local.get 1
                                                i32.const 1
                                                i32.add
                                                local.tee 2
                                                i32.store
                                                local.get 1
                                                i32.load8_s
                                                local.tee 14
                                                i32.const 127
                                                i32.and
                                                local.get 4
                                                i32.shl
                                                local.get 27
                                                i32.or
                                                local.set 27
                                                local.get 4
                                                i32.const 7
                                                i32.add
                                                local.set 4
                                                local.get 2
                                                local.set 1
                                                local.get 14
                                                i32.const 0
                                                i32.lt_s
                                                br_if 0 (;@22;)
                                              end
                                              local.get 4
                                              i32.const 35
                                              i32.eq
                                              local.get 14
                                              i32.const 15
                                              i32.gt_u
                                              i32.and
                                              br_if 0 (;@21;)
                                              local.get 10
                                              i32.const 16
                                              i32.add
                                              local.get 3
                                              call 18
                                              local.get 10
                                              i32.load8_u offset=20
                                              local.set 1
                                              local.get 10
                                              i32.load offset=16
                                              local.tee 2
                                              i32.const -2147483648
                                              i32.eq
                                              if  ;; label = @22
                                                local.get 12
                                                i32.const -2147483648
                                                i32.store
                                                local.get 12
                                                local.get 1
                                                i32.store8 offset=4
                                                br 2 (;@20;)
                                              end
                                              local.get 10
                                              local.get 2
                                              i32.store offset=4
                                              local.get 10
                                              local.get 1
                                              i64.extend_i32_u
                                              i64.const 255
                                              i64.and
                                              local.get 10
                                              i64.load32_u offset=21 align=1
                                              local.get 10
                                              i32.const 27
                                              i32.add
                                              i64.load8_u
                                              i64.const 48
                                              i64.shl
                                              local.get 10
                                              i32.const 25
                                              i32.add
                                              i64.load16_u align=1
                                              i64.const 32
                                              i64.shl
                                              i64.or
                                              i64.or
                                              i64.const 8
                                              i64.shl
                                              i64.or
                                              i64.store offset=8 align=4
                                              local.get 10
                                              i32.const 16
                                              i32.add
                                              local.set 6
                                              i32.const 0
                                              local.set 1
                                              i32.const 0
                                              local.set 14
                                              i32.const 0
                                              local.set 16
                                              global.get 0
                                              i32.const 32
                                              i32.sub
                                              local.tee 4
                                              global.set 0
                                              local.get 3
                                              i32.load offset=4
                                              local.set 20
                                              local.get 3
                                              i32.load
                                              local.set 2
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  loop  ;; label = @24
                                                    i32.const 5
                                                    local.set 18
                                                    local.get 1
                                                    i32.const 5
                                                    i32.eq
                                                    br_if 1 (;@23;)
                                                    local.get 20
                                                    local.get 1
                                                    local.get 2
                                                    i32.add
                                                    local.tee 18
                                                    i32.eq
                                                    if  ;; label = @25
                                                      i32.const 4
                                                      local.set 18
                                                      br 2 (;@23;)
                                                    end
                                                    local.get 3
                                                    local.get 18
                                                    i32.const 1
                                                    i32.add
                                                    i32.store
                                                    local.get 1
                                                    i32.const 1
                                                    i32.add
                                                    local.set 1
                                                    local.get 18
                                                    i32.load8_s
                                                    local.tee 23
                                                    i32.const 127
                                                    i32.and
                                                    local.get 14
                                                    i32.shl
                                                    local.get 16
                                                    i32.or
                                                    local.set 16
                                                    local.get 14
                                                    i32.const 7
                                                    i32.add
                                                    local.set 14
                                                    local.get 23
                                                    i32.const 0
                                                    i32.lt_s
                                                    br_if 0 (;@24;)
                                                  end
                                                  i32.const 5
                                                  local.set 18
                                                  local.get 1
                                                  i32.const 5
                                                  i32.eq
                                                  local.get 23
                                                  i32.const 15
                                                  i32.gt_u
                                                  i32.and
                                                  br_if 0 (;@23;)
                                                  local.get 1
                                                  local.get 2
                                                  i32.add
                                                  local.set 1
                                                  i32.const 14
                                                  local.set 18
                                                  local.get 6
                                                  block (result i32)  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      local.get 16
                                                                      br_table 0 (;@33;) 1 (;@32;) 2 (;@31;) 3 (;@30;) 4 (;@29;) 5 (;@28;) 6 (;@27;) 7 (;@26;) 10 (;@23;)
                                                                    end
                                                                    i32.const 0
                                                                    local.set 1
                                                                    i32.const 1
                                                                    local.set 18
                                                                    block  ;; label = @33
                                                                      local.get 3
                                                                      i32.load
                                                                      local.tee 14
                                                                      local.get 3
                                                                      i32.load offset=4
                                                                      i32.eq
                                                                      if  ;; label = @34
                                                                        i32.const 4
                                                                        local.set 2
                                                                        br 1 (;@33;)
                                                                      end
                                                                      local.get 3
                                                                      local.get 14
                                                                      i32.const 1
                                                                      i32.add
                                                                      i32.store
                                                                      i32.const 6
                                                                      local.set 2
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          local.get 14
                                                                          i32.load8_u
                                                                          br_table 1 (;@34;) 0 (;@35;) 2 (;@33;)
                                                                        end
                                                                        i32.const 1
                                                                        local.set 1
                                                                      end
                                                                      local.get 1
                                                                      local.set 2
                                                                      i32.const 0
                                                                      local.set 18
                                                                    end
                                                                    local.get 4
                                                                    local.get 2
                                                                    i32.store8 offset=1
                                                                    local.get 4
                                                                    local.get 18
                                                                    i32.store8
                                                                    local.get 4
                                                                    i32.load8_u offset=1
                                                                    local.set 1
                                                                    local.get 6
                                                                    i32.const 8
                                                                    i32.const 0
                                                                    local.get 4
                                                                    i32.load8_u
                                                                    local.tee 2
                                                                    select
                                                                    i32.store8
                                                                    local.get 6
                                                                    local.get 1
                                                                    local.get 1
                                                                    i32.const 1
                                                                    i32.and
                                                                    local.get 2
                                                                    select
                                                                    i32.store8 offset=1
                                                                    br 10 (;@22;)
                                                                  end
                                                                  i32.const 0
                                                                  local.set 14
                                                                  i32.const 0
                                                                  local.set 16
                                                                  loop  ;; label = @32
                                                                    i32.const 5
                                                                    local.set 18
                                                                    local.get 14
                                                                    i32.const 35
                                                                    i32.eq
                                                                    br_if 7 (;@25;)
                                                                    local.get 1
                                                                    local.get 20
                                                                    i32.eq
                                                                    if  ;; label = @33
                                                                      i32.const 4
                                                                      local.set 18
                                                                      br 8 (;@25;)
                                                                    end
                                                                    local.get 3
                                                                    local.get 1
                                                                    i32.const 1
                                                                    i32.add
                                                                    local.tee 2
                                                                    i32.store
                                                                    local.get 1
                                                                    i32.load8_s
                                                                    local.tee 23
                                                                    i32.const 127
                                                                    i32.and
                                                                    local.get 14
                                                                    i32.shl
                                                                    local.get 16
                                                                    i32.or
                                                                    local.set 16
                                                                    local.get 14
                                                                    i32.const 7
                                                                    i32.add
                                                                    local.set 14
                                                                    local.get 2
                                                                    local.set 1
                                                                    local.get 23
                                                                    i32.const 0
                                                                    i32.lt_s
                                                                    br_if 0 (;@32;)
                                                                  end
                                                                  local.get 14
                                                                  i32.const 35
                                                                  i32.eq
                                                                  local.get 23
                                                                  i32.const 15
                                                                  i32.gt_u
                                                                  i32.and
                                                                  br_if 6 (;@25;)
                                                                  local.get 6
                                                                  i32.const 0
                                                                  local.get 16
                                                                  i32.const 1
                                                                  i32.and
                                                                  i32.sub
                                                                  local.get 16
                                                                  i32.const 1
                                                                  i32.shr_u
                                                                  i32.xor
                                                                  i32.store offset=4
                                                                  i32.const 1
                                                                  br 7 (;@24;)
                                                                end
                                                                local.get 4
                                                                i32.const 4
                                                                i32.add
                                                                local.get 3
                                                                call 18
                                                                local.get 6
                                                                block (result i32)  ;; label = @31
                                                                  local.get 4
                                                                  i32.load offset=4
                                                                  i32.const -2147483648
                                                                  i32.ne
                                                                  if  ;; label = @32
                                                                    local.get 4
                                                                    i32.const 28
                                                                    i32.add
                                                                    local.get 4
                                                                    i32.const 12
                                                                    i32.add
                                                                    i32.load
                                                                    i32.store align=1
                                                                    local.get 4
                                                                    local.get 4
                                                                    i64.load offset=4 align=4
                                                                    i64.store offset=20 align=1
                                                                    local.get 6
                                                                    local.get 4
                                                                    i64.load offset=17 align=1
                                                                    i64.store offset=1 align=1
                                                                    local.get 6
                                                                    i32.const 8
                                                                    i32.add
                                                                    local.get 4
                                                                    i32.const 24
                                                                    i32.add
                                                                    i64.load align=1
                                                                    i64.store align=1
                                                                    i32.const 2
                                                                    br 1 (;@31;)
                                                                  end
                                                                  local.get 6
                                                                  local.get 4
                                                                  i32.load8_u offset=8
                                                                  i32.store8 offset=1
                                                                  i32.const 8
                                                                end
                                                                i32.store8
                                                                br 8 (;@22;)
                                                              end
                                                              local.get 4
                                                              i32.const 4
                                                              i32.add
                                                              local.get 3
                                                              call 18
                                                              local.get 6
                                                              block (result i32)  ;; label = @30
                                                                local.get 4
                                                                i32.load offset=4
                                                                i32.const -2147483648
                                                                i32.ne
                                                                if  ;; label = @31
                                                                  local.get 4
                                                                  i32.const 28
                                                                  i32.add
                                                                  local.get 4
                                                                  i32.const 12
                                                                  i32.add
                                                                  i32.load
                                                                  i32.store align=1
                                                                  local.get 4
                                                                  local.get 4
                                                                  i64.load offset=4 align=4
                                                                  i64.store offset=20 align=1
                                                                  local.get 6
                                                                  local.get 4
                                                                  i64.load offset=17 align=1
                                                                  i64.store offset=1 align=1
                                                                  local.get 6
                                                                  i32.const 8
                                                                  i32.add
                                                                  local.get 4
                                                                  i32.const 24
                                                                  i32.add
                                                                  i64.load align=1
                                                                  i64.store align=1
                                                                  i32.const 3
                                                                  br 1 (;@30;)
                                                                end
                                                                local.get 6
                                                                local.get 4
                                                                i32.load8_u offset=8
                                                                i32.store8 offset=1
                                                                i32.const 8
                                                              end
                                                              i32.store8
                                                              br 7 (;@22;)
                                                            end
                                                            local.get 4
                                                            i32.const 4
                                                            i32.add
                                                            local.get 3
                                                            call 18
                                                            local.get 6
                                                            block (result i32)  ;; label = @29
                                                              local.get 4
                                                              i32.load offset=4
                                                              i32.const -2147483648
                                                              i32.ne
                                                              if  ;; label = @30
                                                                local.get 4
                                                                i32.const 28
                                                                i32.add
                                                                local.get 4
                                                                i32.const 12
                                                                i32.add
                                                                i32.load
                                                                i32.store align=1
                                                                local.get 4
                                                                local.get 4
                                                                i64.load offset=4 align=4
                                                                i64.store offset=20 align=1
                                                                local.get 6
                                                                local.get 4
                                                                i64.load offset=17 align=1
                                                                i64.store offset=1 align=1
                                                                local.get 6
                                                                i32.const 8
                                                                i32.add
                                                                local.get 4
                                                                i32.const 24
                                                                i32.add
                                                                i64.load align=1
                                                                i64.store align=1
                                                                i32.const 4
                                                                br 1 (;@29;)
                                                              end
                                                              local.get 6
                                                              local.get 4
                                                              i32.load8_u offset=8
                                                              i32.store8 offset=1
                                                              i32.const 8
                                                            end
                                                            i32.store8
                                                            br 6 (;@22;)
                                                          end
                                                          local.get 4
                                                          i32.const 4
                                                          i32.add
                                                          local.get 3
                                                          call 18
                                                          local.get 6
                                                          block (result i32)  ;; label = @28
                                                            local.get 4
                                                            i32.load offset=4
                                                            i32.const -2147483648
                                                            i32.ne
                                                            if  ;; label = @29
                                                              local.get 4
                                                              i32.const 28
                                                              i32.add
                                                              local.get 4
                                                              i32.const 12
                                                              i32.add
                                                              i32.load
                                                              i32.store align=1
                                                              local.get 4
                                                              local.get 4
                                                              i64.load offset=4 align=4
                                                              i64.store offset=20 align=1
                                                              local.get 6
                                                              local.get 4
                                                              i64.load offset=17 align=1
                                                              i64.store offset=1 align=1
                                                              local.get 6
                                                              i32.const 8
                                                              i32.add
                                                              local.get 4
                                                              i32.const 24
                                                              i32.add
                                                              i64.load align=1
                                                              i64.store align=1
                                                              i32.const 5
                                                              br 1 (;@28;)
                                                            end
                                                            local.get 6
                                                            local.get 4
                                                            i32.load8_u offset=8
                                                            i32.store8 offset=1
                                                            i32.const 8
                                                          end
                                                          i32.store8
                                                          br 5 (;@22;)
                                                        end
                                                        local.get 4
                                                        i32.const 4
                                                        i32.add
                                                        local.get 3
                                                        call 18
                                                        local.get 6
                                                        block (result i32)  ;; label = @27
                                                          local.get 4
                                                          i32.load offset=4
                                                          i32.const -2147483648
                                                          i32.ne
                                                          if  ;; label = @28
                                                            local.get 4
                                                            i32.const 28
                                                            i32.add
                                                            local.get 4
                                                            i32.const 12
                                                            i32.add
                                                            i32.load
                                                            i32.store align=1
                                                            local.get 4
                                                            local.get 4
                                                            i64.load offset=4 align=4
                                                            i64.store offset=20 align=1
                                                            local.get 6
                                                            local.get 4
                                                            i64.load offset=17 align=1
                                                            i64.store offset=1 align=1
                                                            local.get 6
                                                            i32.const 8
                                                            i32.add
                                                            local.get 4
                                                            i32.const 24
                                                            i32.add
                                                            i64.load align=1
                                                            i64.store align=1
                                                            i32.const 6
                                                            br 1 (;@27;)
                                                          end
                                                          local.get 6
                                                          local.get 4
                                                          i32.load8_u offset=8
                                                          i32.store8 offset=1
                                                          i32.const 8
                                                        end
                                                        i32.store8
                                                        br 4 (;@22;)
                                                      end
                                                      local.get 1
                                                      local.get 20
                                                      i32.eq
                                                      if  ;; label = @26
                                                        local.get 6
                                                        i32.const 1032
                                                        i32.store16
                                                        br 4 (;@22;)
                                                      end
                                                      local.get 3
                                                      local.get 1
                                                      i32.const 1
                                                      i32.add
                                                      local.tee 2
                                                      i32.store
                                                      local.get 2
                                                      local.get 20
                                                      i32.eq
                                                      if  ;; label = @26
                                                        local.get 6
                                                        i32.const 1032
                                                        i32.store16
                                                        br 4 (;@22;)
                                                      end
                                                      local.get 1
                                                      i32.load8_u
                                                      local.set 16
                                                      local.get 3
                                                      local.get 1
                                                      i32.const 2
                                                      i32.add
                                                      local.tee 14
                                                      i32.store
                                                      local.get 14
                                                      local.get 20
                                                      i32.eq
                                                      if  ;; label = @26
                                                        local.get 6
                                                        i32.const 1032
                                                        i32.store16
                                                        br 4 (;@22;)
                                                      end
                                                      local.get 2
                                                      i32.load8_u
                                                      local.set 18
                                                      local.get 3
                                                      local.get 1
                                                      i32.const 3
                                                      i32.add
                                                      local.tee 2
                                                      i32.store
                                                      local.get 2
                                                      local.get 20
                                                      i32.eq
                                                      if  ;; label = @26
                                                        local.get 6
                                                        i32.const 1032
                                                        i32.store16
                                                        br 4 (;@22;)
                                                      end
                                                      local.get 6
                                                      local.get 14
                                                      i32.load8_u
                                                      i32.store8 offset=3
                                                      local.get 6
                                                      local.get 18
                                                      i32.store8 offset=2
                                                      local.get 6
                                                      local.get 16
                                                      i32.store8 offset=1
                                                      local.get 6
                                                      i32.const 7
                                                      i32.store8
                                                      local.get 3
                                                      local.get 1
                                                      i32.const 4
                                                      i32.add
                                                      i32.store
                                                      local.get 6
                                                      local.get 2
                                                      i32.load8_u
                                                      i32.store8 offset=4
                                                      br 3 (;@22;)
                                                    end
                                                    local.get 6
                                                    local.get 18
                                                    i32.store8 offset=1
                                                    i32.const 8
                                                  end
                                                  i32.store8
                                                  br 1 (;@22;)
                                                end
                                                local.get 6
                                                i32.const 8
                                                i32.store8
                                                local.get 6
                                                local.get 18
                                                i32.store8 offset=1
                                              end
                                              local.get 4
                                              i32.const 32
                                              i32.add
                                              global.set 0
                                              local.get 10
                                              i32.load8_u offset=17
                                              local.set 1
                                              local.get 10
                                              i32.load8_u offset=16
                                              local.tee 2
                                              i32.const 8
                                              i32.ne
                                              if  ;; label = @22
                                                local.get 12
                                                local.get 10
                                                i64.load offset=18 align=2
                                                i64.store offset=14 align=2
                                                local.get 12
                                                i32.const 20
                                                i32.add
                                                local.get 10
                                                i32.const 24
                                                i32.add
                                                i64.load align=2
                                                i64.store align=2
                                                local.get 12
                                                i32.const 8
                                                i32.add
                                                local.get 10
                                                i32.const 12
                                                i32.add
                                                i32.load
                                                i32.store
                                                local.get 12
                                                local.get 10
                                                i64.load offset=4 align=4
                                                i64.store align=4
                                                local.get 12
                                                local.get 27
                                                i32.store offset=28
                                                local.get 12
                                                local.get 1
                                                i32.store8 offset=13
                                                local.get 12
                                                local.get 2
                                                i32.store8 offset=12
                                                br 2 (;@20;)
                                              end
                                              local.get 12
                                              i32.const -2147483648
                                              i32.store
                                              local.get 12
                                              local.get 1
                                              i32.store8 offset=4
                                              local.get 10
                                              i32.const 4
                                              i32.add
                                              call 27
                                              br 1 (;@20;)
                                            end
                                            local.get 12
                                            i32.const -2147483648
                                            i32.store
                                            local.get 12
                                            local.get 6
                                            i32.store8 offset=4
                                          end
                                          local.get 10
                                          i32.const 32
                                          i32.add
                                          global.set 0
                                          local.get 8
                                          i32.load8_u offset=52
                                          local.set 2
                                          local.get 8
                                          i32.load offset=48
                                          local.tee 6
                                          i32.const -2147483648
                                          i32.eq
                                          if  ;; label = @20
                                            local.get 19
                                            i32.const -2147483648
                                            i32.store
                                            local.get 19
                                            local.get 2
                                            i32.store8 offset=4
                                            local.get 8
                                            i32.load offset=12
                                            local.tee 1
                                            if  ;; label = @21
                                              local.get 8
                                              i32.load offset=8
                                              local.set 5
                                              loop  ;; label = @22
                                                local.get 5
                                                call 15
                                                local.get 5
                                                i32.const 32
                                                i32.add
                                                local.set 5
                                                local.get 1
                                                i32.const 1
                                                i32.sub
                                                local.tee 1
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 8
                                            i32.const 4
                                            i32.add
                                            i32.const 32
                                            call 25
                                            br 3 (;@17;)
                                          end
                                          local.get 8
                                          i32.const 39
                                          i32.add
                                          local.tee 10
                                          local.get 22
                                          i32.const 23
                                          i32.add
                                          i32.load align=1
                                          i32.store align=1
                                          local.get 8
                                          i32.const 32
                                          i32.add
                                          local.tee 12
                                          local.get 22
                                          i32.const 16
                                          i32.add
                                          i64.load align=1
                                          i64.store
                                          local.get 8
                                          i32.const 24
                                          i32.add
                                          local.tee 14
                                          local.get 22
                                          i32.const 8
                                          i32.add
                                          i64.load align=1
                                          i64.store
                                          local.get 8
                                          local.get 22
                                          i64.load align=1
                                          i64.store offset=16
                                          local.get 8
                                          i32.load offset=12
                                          local.tee 4
                                          local.get 8
                                          i32.load offset=4
                                          i32.eq
                                          if  ;; label = @20
                                            global.get 0
                                            i32.const 16
                                            i32.sub
                                            local.tee 1
                                            global.set 0
                                            local.get 1
                                            i32.const 8
                                            i32.add
                                            local.get 8
                                            i32.const 4
                                            i32.add
                                            local.tee 16
                                            local.get 16
                                            i32.load
                                            i32.const 1
                                            i32.const 4
                                            i32.const 32
                                            call 23
                                            local.get 1
                                            i32.load offset=8
                                            local.tee 16
                                            i32.const -2147483647
                                            i32.ne
                                            if  ;; label = @21
                                              local.get 16
                                              local.get 1
                                              i32.load offset=12
                                              call 52
                                              unreachable
                                            end
                                            local.get 1
                                            i32.const 16
                                            i32.add
                                            global.set 0
                                          end
                                          local.get 8
                                          i32.load offset=8
                                          local.get 4
                                          i32.const 5
                                          i32.shl
                                          i32.add
                                          local.tee 1
                                          local.get 2
                                          i32.store8 offset=4
                                          local.get 1
                                          local.get 6
                                          i32.store
                                          local.get 1
                                          local.get 8
                                          i64.load offset=16
                                          i64.store offset=5 align=1
                                          local.get 1
                                          i32.const 13
                                          i32.add
                                          local.get 14
                                          i64.load
                                          i64.store align=1
                                          local.get 1
                                          i32.const 21
                                          i32.add
                                          local.get 12
                                          i64.load
                                          i64.store align=1
                                          local.get 1
                                          i32.const 28
                                          i32.add
                                          local.get 10
                                          i32.load align=1
                                          i32.store align=1
                                          local.get 8
                                          local.get 4
                                          i32.const 1
                                          i32.add
                                          i32.store offset=12
                                          local.get 5
                                          i32.const 1
                                          i32.sub
                                          local.tee 5
                                          br_if 0 (;@19;)
                                        end
                                      end
                                      local.get 19
                                      local.get 8
                                      i64.load offset=4 align=4
                                      i64.store align=4
                                      local.get 19
                                      i32.const 8
                                      i32.add
                                      local.get 8
                                      i32.const 12
                                      i32.add
                                      i32.load
                                      i32.store
                                    end
                                    local.get 8
                                    i32.const 80
                                    i32.add
                                    global.set 0
                                    br 1 (;@15;)
                                  end
                                  local.get 1
                                  local.get 8
                                  i32.load offset=56
                                  call 52
                                  unreachable
                                end
                                br 1 (;@13;)
                              end
                              local.get 19
                              i32.const -2147483648
                              i32.store
                              local.get 19
                              local.get 6
                              i32.store8 offset=4
                            end
                            local.get 7
                            i32.load8_u offset=52
                            local.set 1
                            local.get 7
                            i32.load offset=48
                            local.tee 5
                            i32.const -2147483648
                            i32.eq
                            if  ;; label = @13
                              local.get 9
                              i64.const 2
                              i64.store
                              local.get 9
                              local.get 1
                              i32.store8 offset=8
                              br 4 (;@9;)
                            end
                            local.get 7
                            local.get 5
                            i32.store offset=24
                            local.get 7
                            local.get 1
                            i64.extend_i32_u
                            i64.const 255
                            i64.and
                            local.get 7
                            i64.load32_u offset=53 align=1
                            local.get 7
                            i32.const 59
                            i32.add
                            local.tee 12
                            i64.load8_u
                            i64.const 48
                            i64.shl
                            local.get 7
                            i32.const 57
                            i32.add
                            local.tee 14
                            i64.load16_u align=1
                            i64.const 32
                            i64.shl
                            i64.or
                            i64.or
                            local.tee 28
                            i64.const 8
                            i64.shl
                            i64.or
                            local.tee 32
                            i64.store offset=28 align=4
                            local.get 7
                            i32.const 48
                            i32.add
                            local.set 10
                            i32.const 0
                            local.set 8
                            i32.const 0
                            local.set 5
                            local.get 3
                            i32.load offset=4
                            local.set 16
                            local.get 3
                            i32.load
                            local.set 1
                            block  ;; label = @13
                              block  ;; label = @14
                                loop  ;; label = @15
                                  i32.const 5
                                  local.set 6
                                  local.get 8
                                  i32.const 35
                                  i32.eq
                                  br_if 1 (;@14;)
                                  local.get 1
                                  local.get 16
                                  i32.eq
                                  if  ;; label = @16
                                    i32.const 4
                                    local.set 6
                                    br 2 (;@14;)
                                  end
                                  local.get 3
                                  local.get 1
                                  i32.const 1
                                  i32.add
                                  local.tee 2
                                  i32.store
                                  local.get 1
                                  i32.load8_s
                                  local.tee 4
                                  i32.const 127
                                  i32.and
                                  local.get 8
                                  i32.shl
                                  local.get 5
                                  i32.or
                                  local.set 5
                                  local.get 8
                                  i32.const 7
                                  i32.add
                                  local.set 8
                                  local.get 2
                                  local.set 1
                                  local.get 4
                                  i32.const 0
                                  i32.lt_s
                                  br_if 0 (;@15;)
                                end
                                local.get 8
                                i32.const 35
                                i32.eq
                                local.get 4
                                i32.const 15
                                i32.gt_u
                                i32.and
                                br_if 0 (;@14;)
                                global.get 0
                                i32.const -64
                                i32.add
                                local.tee 2
                                global.set 0
                                local.get 2
                                i32.const 40
                                i32.add
                                i32.const 43690
                                local.get 5
                                local.get 5
                                i32.const 43690
                                i32.ge_u
                                select
                                i32.const 0
                                local.get 3
                                i32.load offset=4
                                local.get 3
                                i32.load
                                i32.sub
                                local.get 5
                                i32.ge_u
                                select
                                i32.const 4
                                i32.const 24
                                call 26
                                local.get 2
                                i32.load offset=44
                                local.set 1
                                block  ;; label = @15
                                  local.get 2
                                  i32.load offset=40
                                  i32.const 1
                                  i32.ne
                                  if  ;; label = @16
                                    local.get 2
                                    i32.const 0
                                    i32.store offset=12
                                    local.get 2
                                    local.get 2
                                    i32.load offset=48
                                    i32.store offset=8
                                    local.get 2
                                    local.get 1
                                    i32.store offset=4
                                    block  ;; label = @17
                                      local.get 5
                                      if  ;; label = @18
                                        local.get 2
                                        i32.const 45
                                        i32.add
                                        local.set 6
                                        loop  ;; label = @19
                                          local.get 2
                                          i32.const 40
                                          i32.add
                                          local.set 4
                                          global.get 0
                                          i32.const 32
                                          i32.sub
                                          local.tee 1
                                          global.set 0
                                          local.get 1
                                          i32.const 20
                                          i32.add
                                          local.get 3
                                          call 18
                                          local.get 1
                                          i32.load8_u offset=24
                                          local.set 8
                                          block  ;; label = @20
                                            local.get 1
                                            i32.load offset=20
                                            local.tee 16
                                            i32.const -2147483648
                                            i32.eq
                                            if  ;; label = @21
                                              local.get 4
                                              i32.const -2147483648
                                              i32.store
                                              local.get 4
                                              local.get 8
                                              i32.store8 offset=4
                                              br 1 (;@20;)
                                            end
                                            local.get 1
                                            local.get 16
                                            i32.store offset=8
                                            local.get 1
                                            local.get 8
                                            i64.extend_i32_u
                                            i64.const 255
                                            i64.and
                                            local.get 1
                                            i64.load32_u offset=25 align=1
                                            local.get 1
                                            i32.const 31
                                            i32.add
                                            local.tee 16
                                            i64.load8_u
                                            i64.const 48
                                            i64.shl
                                            local.get 1
                                            i32.const 29
                                            i32.add
                                            local.tee 18
                                            i64.load16_u align=1
                                            i64.const 32
                                            i64.shl
                                            i64.or
                                            i64.or
                                            i64.const 8
                                            i64.shl
                                            i64.or
                                            i64.store offset=12 align=4
                                            local.get 1
                                            i32.const 20
                                            i32.add
                                            local.get 3
                                            call 18
                                            local.get 1
                                            i32.load8_u offset=24
                                            local.set 8
                                            local.get 1
                                            i32.load offset=20
                                            local.tee 19
                                            i32.const -2147483648
                                            i32.eq
                                            if  ;; label = @21
                                              local.get 4
                                              i32.const -2147483648
                                              i32.store
                                              local.get 4
                                              local.get 8
                                              i32.store8 offset=4
                                              local.get 1
                                              i32.const 8
                                              i32.add
                                              call 27
                                              br 1 (;@20;)
                                            end
                                            local.get 16
                                            i64.load8_u
                                            local.set 29
                                            local.get 18
                                            i64.load16_u align=1
                                            local.set 33
                                            local.get 1
                                            i64.load32_u offset=25 align=1
                                            local.set 34
                                            local.get 4
                                            i32.const 8
                                            i32.add
                                            local.get 1
                                            i32.const 16
                                            i32.add
                                            i32.load
                                            i32.store
                                            local.get 4
                                            local.get 1
                                            i64.load offset=8 align=4
                                            i64.store align=4
                                            local.get 4
                                            local.get 19
                                            i32.store offset=12
                                            local.get 4
                                            local.get 8
                                            i64.extend_i32_u
                                            i64.const 255
                                            i64.and
                                            local.get 34
                                            local.get 29
                                            i64.const 48
                                            i64.shl
                                            local.get 33
                                            i64.const 32
                                            i64.shl
                                            i64.or
                                            i64.or
                                            i64.const 8
                                            i64.shl
                                            i64.or
                                            i64.store offset=16 align=4
                                          end
                                          local.get 1
                                          i32.const 32
                                          i32.add
                                          global.set 0
                                          local.get 2
                                          i32.load8_u offset=44
                                          local.set 4
                                          local.get 2
                                          i32.load offset=40
                                          local.tee 16
                                          i32.const -2147483648
                                          i32.eq
                                          if  ;; label = @20
                                            local.get 10
                                            i32.const -2147483648
                                            i32.store
                                            local.get 10
                                            local.get 4
                                            i32.store8 offset=4
                                            local.get 2
                                            i32.load offset=12
                                            local.tee 1
                                            if  ;; label = @21
                                              local.get 2
                                              i32.load offset=8
                                              local.set 5
                                              loop  ;; label = @22
                                                local.get 5
                                                call 17
                                                local.get 5
                                                i32.const 24
                                                i32.add
                                                local.set 5
                                                local.get 1
                                                i32.const 1
                                                i32.sub
                                                local.tee 1
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 2
                                            i32.const 4
                                            i32.add
                                            i32.const 24
                                            call 25
                                            br 3 (;@17;)
                                          end
                                          local.get 2
                                          i32.const 31
                                          i32.add
                                          local.tee 18
                                          local.get 6
                                          i32.const 15
                                          i32.add
                                          i32.load align=1
                                          i32.store align=1
                                          local.get 2
                                          i32.const 24
                                          i32.add
                                          local.tee 19
                                          local.get 6
                                          i32.const 8
                                          i32.add
                                          i64.load align=1
                                          i64.store
                                          local.get 2
                                          local.get 6
                                          i64.load align=1
                                          i64.store offset=16
                                          local.get 2
                                          i32.load offset=12
                                          local.tee 8
                                          local.get 2
                                          i32.load offset=4
                                          i32.eq
                                          if  ;; label = @20
                                            global.get 0
                                            i32.const 16
                                            i32.sub
                                            local.tee 1
                                            global.set 0
                                            local.get 1
                                            i32.const 8
                                            i32.add
                                            local.get 2
                                            i32.const 4
                                            i32.add
                                            local.tee 20
                                            local.get 20
                                            i32.load
                                            i32.const 1
                                            i32.const 4
                                            i32.const 24
                                            call 23
                                            local.get 1
                                            i32.load offset=8
                                            local.tee 20
                                            i32.const -2147483647
                                            i32.ne
                                            if  ;; label = @21
                                              local.get 20
                                              local.get 1
                                              i32.load offset=12
                                              call 52
                                              unreachable
                                            end
                                            local.get 1
                                            i32.const 16
                                            i32.add
                                            global.set 0
                                          end
                                          local.get 2
                                          i32.load offset=8
                                          local.get 8
                                          i32.const 24
                                          i32.mul
                                          i32.add
                                          local.tee 1
                                          local.get 4
                                          i32.store8 offset=4
                                          local.get 1
                                          local.get 16
                                          i32.store
                                          local.get 1
                                          local.get 2
                                          i64.load offset=16
                                          i64.store offset=5 align=1
                                          local.get 1
                                          i32.const 13
                                          i32.add
                                          local.get 19
                                          i64.load
                                          i64.store align=1
                                          local.get 1
                                          i32.const 20
                                          i32.add
                                          local.get 18
                                          i32.load align=1
                                          i32.store align=1
                                          local.get 2
                                          local.get 8
                                          i32.const 1
                                          i32.add
                                          i32.store offset=12
                                          local.get 5
                                          i32.const 1
                                          i32.sub
                                          local.tee 5
                                          br_if 0 (;@19;)
                                        end
                                      end
                                      local.get 10
                                      local.get 2
                                      i64.load offset=4 align=4
                                      i64.store align=4
                                      local.get 10
                                      i32.const 8
                                      i32.add
                                      local.get 2
                                      i32.const 12
                                      i32.add
                                      i32.load
                                      i32.store
                                    end
                                    local.get 2
                                    i32.const -64
                                    i32.sub
                                    global.set 0
                                    br 1 (;@15;)
                                  end
                                  local.get 1
                                  local.get 2
                                  i32.load offset=48
                                  call 52
                                  unreachable
                                end
                                br 1 (;@13;)
                              end
                              local.get 10
                              i32.const -2147483648
                              i32.store
                              local.get 10
                              local.get 6
                              i32.store8 offset=4
                            end
                            local.get 7
                            i32.load8_u offset=52
                            local.set 1
                            block  ;; label = @13
                              local.get 7
                              i32.load offset=48
                              local.tee 5
                              i32.const -2147483648
                              i32.eq
                              if  ;; label = @14
                                local.get 9
                                i64.const 2
                                i64.store
                                local.get 9
                                local.get 1
                                i32.store8 offset=8
                                br 1 (;@13;)
                              end
                              local.get 7
                              local.get 5
                              i32.store offset=36
                              local.get 7
                              local.get 1
                              i64.extend_i32_u
                              i64.const 255
                              i64.and
                              local.get 7
                              i64.load32_u offset=53 align=1
                              local.get 12
                              i64.load8_u
                              i64.const 48
                              i64.shl
                              local.get 14
                              i64.load16_u align=1
                              i64.const 32
                              i64.shl
                              i64.or
                              i64.or
                              local.tee 29
                              i64.const 8
                              i64.shl
                              i64.or
                              local.tee 33
                              i64.store offset=40 align=4
                              local.get 7
                              i32.const 48
                              i32.add
                              local.set 10
                              i32.const 0
                              local.set 8
                              i32.const 0
                              local.set 5
                              local.get 3
                              local.tee 1
                              i32.load offset=4
                              local.set 12
                              local.get 1
                              i32.load
                              local.set 3
                              block  ;; label = @14
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    i32.const 5
                                    local.set 6
                                    local.get 8
                                    i32.const 35
                                    i32.eq
                                    br_if 1 (;@15;)
                                    local.get 3
                                    local.get 12
                                    i32.eq
                                    if  ;; label = @17
                                      i32.const 4
                                      local.set 6
                                      br 2 (;@15;)
                                    end
                                    local.get 1
                                    local.get 3
                                    i32.const 1
                                    i32.add
                                    local.tee 2
                                    i32.store
                                    local.get 3
                                    i32.load8_s
                                    local.tee 4
                                    i32.const 127
                                    i32.and
                                    local.get 8
                                    i32.shl
                                    local.get 5
                                    i32.or
                                    local.set 5
                                    local.get 8
                                    i32.const 7
                                    i32.add
                                    local.set 8
                                    local.get 2
                                    local.set 3
                                    local.get 4
                                    i32.const 0
                                    i32.lt_s
                                    br_if 0 (;@16;)
                                  end
                                  local.get 8
                                  i32.const 35
                                  i32.eq
                                  local.get 4
                                  i32.const 15
                                  i32.gt_u
                                  i32.and
                                  br_if 0 (;@15;)
                                  global.get 0
                                  i32.const 48
                                  i32.sub
                                  local.tee 4
                                  global.set 0
                                  local.get 4
                                  i32.const 32
                                  i32.add
                                  i32.const 65536
                                  local.get 5
                                  local.get 5
                                  i32.const 65536
                                  i32.ge_u
                                  select
                                  i32.const 0
                                  local.get 1
                                  i32.load offset=4
                                  local.get 1
                                  i32.load
                                  i32.sub
                                  local.get 5
                                  i32.ge_u
                                  select
                                  i32.const 4
                                  i32.const 16
                                  call 26
                                  local.get 4
                                  i32.load offset=36
                                  local.set 3
                                  block  ;; label = @16
                                    local.get 4
                                    i32.load offset=32
                                    i32.const 1
                                    i32.ne
                                    if  ;; label = @17
                                      local.get 4
                                      i32.const 0
                                      i32.store offset=12
                                      local.get 4
                                      local.get 4
                                      i32.load offset=40
                                      i32.store offset=8
                                      local.get 4
                                      local.get 3
                                      i32.store offset=4
                                      block  ;; label = @18
                                        local.get 5
                                        if  ;; label = @19
                                          local.get 4
                                          i32.const 37
                                          i32.add
                                          local.tee 19
                                          i32.const 7
                                          i32.add
                                          local.set 20
                                          loop  ;; label = @20
                                            local.get 4
                                            i32.const 32
                                            i32.add
                                            local.set 6
                                            i32.const 0
                                            local.set 12
                                            i32.const 0
                                            local.set 14
                                            global.get 0
                                            i32.const 16
                                            i32.sub
                                            local.tee 8
                                            global.set 0
                                            local.get 1
                                            i32.load offset=4
                                            local.set 22
                                            local.get 1
                                            i32.load
                                            local.set 3
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                loop  ;; label = @23
                                                  i32.const 5
                                                  local.set 16
                                                  local.get 12
                                                  i32.const 35
                                                  i32.eq
                                                  br_if 1 (;@22;)
                                                  local.get 3
                                                  local.get 22
                                                  i32.eq
                                                  if  ;; label = @24
                                                    i32.const 4
                                                    local.set 16
                                                    br 2 (;@22;)
                                                  end
                                                  local.get 1
                                                  local.get 3
                                                  i32.const 1
                                                  i32.add
                                                  local.tee 2
                                                  i32.store
                                                  local.get 3
                                                  i32.load8_s
                                                  local.tee 18
                                                  i32.const 127
                                                  i32.and
                                                  local.get 12
                                                  i32.shl
                                                  local.get 14
                                                  i32.or
                                                  local.set 14
                                                  local.get 12
                                                  i32.const 7
                                                  i32.add
                                                  local.set 12
                                                  local.get 2
                                                  local.set 3
                                                  local.get 18
                                                  i32.const 0
                                                  i32.lt_s
                                                  br_if 0 (;@23;)
                                                end
                                                local.get 12
                                                i32.const 35
                                                i32.eq
                                                local.get 18
                                                i32.const 15
                                                i32.gt_u
                                                i32.and
                                                br_if 0 (;@22;)
                                                local.get 8
                                                i32.const 4
                                                i32.add
                                                local.set 3
                                                global.get 0
                                                i32.const 16
                                                i32.sub
                                                local.tee 2
                                                global.set 0
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        local.get 1
                                                        i32.load
                                                        local.tee 12
                                                        local.get 1
                                                        i32.load offset=4
                                                        i32.ne
                                                        if  ;; label = @27
                                                          local.get 1
                                                          local.get 12
                                                          i32.const 1
                                                          i32.add
                                                          i32.store
                                                          local.get 12
                                                          i32.load8_u
                                                          br_table 2 (;@25;) 3 (;@24;) 1 (;@26;)
                                                        end
                                                        local.get 3
                                                        i32.const -2147483647
                                                        i32.store
                                                        local.get 3
                                                        i32.const 4
                                                        i32.store8 offset=4
                                                        br 3 (;@23;)
                                                      end
                                                      local.get 3
                                                      i32.const -2147483647
                                                      i32.store
                                                      local.get 3
                                                      i32.const 9
                                                      i32.store8 offset=4
                                                      br 2 (;@23;)
                                                    end
                                                    local.get 3
                                                    i32.const -2147483648
                                                    i32.store
                                                    br 1 (;@23;)
                                                  end
                                                  local.get 2
                                                  i32.const 4
                                                  i32.add
                                                  local.get 1
                                                  call 18
                                                  local.get 2
                                                  i32.load offset=4
                                                  i32.const -2147483648
                                                  i32.ne
                                                  if  ;; label = @24
                                                    local.get 3
                                                    local.get 2
                                                    i64.load offset=4 align=4
                                                    i64.store align=4
                                                    local.get 3
                                                    i32.const 8
                                                    i32.add
                                                    local.get 2
                                                    i32.const 12
                                                    i32.add
                                                    i32.load
                                                    i32.store
                                                    br 1 (;@23;)
                                                  end
                                                  local.get 3
                                                  local.get 2
                                                  i32.load8_u offset=8
                                                  i32.store8 offset=4
                                                  local.get 3
                                                  i32.const -2147483647
                                                  i32.store
                                                end
                                                local.get 2
                                                i32.const 16
                                                i32.add
                                                global.set 0
                                                local.get 8
                                                i32.load8_u offset=8
                                                local.set 3
                                                local.get 8
                                                i32.load offset=4
                                                local.tee 2
                                                i32.const -2147483647
                                                i32.eq
                                                if  ;; label = @23
                                                  local.get 6
                                                  i32.const -2147483647
                                                  i32.store
                                                  local.get 6
                                                  local.get 3
                                                  i32.store8 offset=4
                                                  br 2 (;@21;)
                                                end
                                                local.get 8
                                                i32.const 15
                                                i32.add
                                                i64.load8_u
                                                local.set 34
                                                local.get 8
                                                i32.const 13
                                                i32.add
                                                i64.load16_u align=1
                                                local.set 35
                                                local.get 8
                                                i64.load32_u offset=9 align=1
                                                local.set 36
                                                local.get 6
                                                local.get 14
                                                i32.store offset=12
                                                local.get 6
                                                local.get 2
                                                i32.store
                                                local.get 6
                                                local.get 3
                                                i64.extend_i32_u
                                                i64.const 255
                                                i64.and
                                                local.get 36
                                                local.get 34
                                                i64.const 48
                                                i64.shl
                                                local.get 35
                                                i64.const 32
                                                i64.shl
                                                i64.or
                                                i64.or
                                                i64.const 8
                                                i64.shl
                                                i64.or
                                                i64.store offset=4 align=4
                                                br 1 (;@21;)
                                              end
                                              local.get 6
                                              i32.const -2147483647
                                              i32.store
                                              local.get 6
                                              local.get 16
                                              i32.store8 offset=4
                                            end
                                            local.get 8
                                            i32.const 16
                                            i32.add
                                            global.set 0
                                            local.get 4
                                            i32.load8_u offset=36
                                            local.set 2
                                            local.get 4
                                            i32.load offset=32
                                            local.tee 8
                                            i32.const -2147483647
                                            i32.eq
                                            if  ;; label = @21
                                              local.get 10
                                              i32.const -2147483648
                                              i32.store
                                              local.get 10
                                              local.get 2
                                              i32.store8 offset=4
                                              local.get 4
                                              i32.load offset=12
                                              local.tee 3
                                              if  ;; label = @22
                                                local.get 4
                                                i32.load offset=8
                                                local.set 1
                                                loop  ;; label = @23
                                                  local.get 1
                                                  call 16
                                                  local.get 1
                                                  i32.const 16
                                                  i32.add
                                                  local.set 1
                                                  local.get 3
                                                  i32.const 1
                                                  i32.sub
                                                  local.tee 3
                                                  br_if 0 (;@23;)
                                                end
                                              end
                                              local.get 4
                                              i32.const 4
                                              i32.add
                                              i32.const 16
                                              call 25
                                              br 3 (;@18;)
                                            end
                                            local.get 4
                                            local.get 19
                                            i64.load align=1
                                            i64.store offset=16
                                            local.get 4
                                            local.get 20
                                            i32.load align=1
                                            i32.store offset=23 align=1
                                            local.get 4
                                            i32.load offset=12
                                            local.tee 6
                                            local.get 4
                                            i32.load offset=4
                                            i32.eq
                                            if  ;; label = @21
                                              global.get 0
                                              i32.const 16
                                              i32.sub
                                              local.tee 3
                                              global.set 0
                                              local.get 3
                                              i32.const 8
                                              i32.add
                                              local.get 4
                                              i32.const 4
                                              i32.add
                                              local.tee 12
                                              local.get 12
                                              i32.load
                                              i32.const 1
                                              i32.const 4
                                              i32.const 16
                                              call 23
                                              local.get 3
                                              i32.load offset=8
                                              local.tee 12
                                              i32.const -2147483647
                                              i32.ne
                                              if  ;; label = @22
                                                local.get 12
                                                local.get 3
                                                i32.load offset=12
                                                call 52
                                                unreachable
                                              end
                                              local.get 3
                                              i32.const 16
                                              i32.add
                                              global.set 0
                                            end
                                            local.get 4
                                            i32.load offset=8
                                            local.get 6
                                            i32.const 4
                                            i32.shl
                                            i32.add
                                            local.tee 3
                                            local.get 2
                                            i32.store8 offset=4
                                            local.get 3
                                            local.get 8
                                            i32.store
                                            local.get 3
                                            local.get 4
                                            i64.load offset=16
                                            i64.store offset=5 align=1
                                            local.get 3
                                            i32.const 12
                                            i32.add
                                            local.get 4
                                            i32.load offset=23 align=1
                                            i32.store align=1
                                            local.get 4
                                            local.get 6
                                            i32.const 1
                                            i32.add
                                            i32.store offset=12
                                            local.get 5
                                            i32.const 1
                                            i32.sub
                                            local.tee 5
                                            br_if 0 (;@20;)
                                          end
                                        end
                                        local.get 10
                                        local.get 4
                                        i64.load offset=4 align=4
                                        i64.store align=4
                                        local.get 10
                                        i32.const 8
                                        i32.add
                                        local.get 4
                                        i32.const 12
                                        i32.add
                                        i32.load
                                        i32.store
                                      end
                                      local.get 4
                                      i32.const 48
                                      i32.add
                                      global.set 0
                                      br 1 (;@16;)
                                    end
                                    local.get 3
                                    local.get 4
                                    i32.load offset=40
                                    call 52
                                    unreachable
                                  end
                                  br 1 (;@14;)
                                end
                                local.get 10
                                i32.const -2147483648
                                i32.store
                                local.get 10
                                local.get 6
                                i32.store8 offset=4
                              end
                              local.get 7
                              i32.load8_u offset=52
                              local.set 1
                              local.get 7
                              i32.load offset=48
                              local.tee 5
                              i32.const -2147483648
                              i32.ne
                              br_if 3 (;@10;)
                              local.get 9
                              i64.const 2
                              i64.store
                              local.get 9
                              local.get 1
                              i32.store8 offset=8
                              local.get 29
                              i64.const 16777216
                              i64.ge_u
                              if  ;; label = @14
                                local.get 29
                                i64.const 24
                                i64.shr_u
                                i32.wrap_i64
                                local.set 3
                                local.get 33
                                i32.wrap_i64
                                local.set 1
                                loop  ;; label = @15
                                  local.get 1
                                  call 17
                                  local.get 1
                                  i32.const 24
                                  i32.add
                                  local.set 1
                                  local.get 3
                                  i32.const 1
                                  i32.sub
                                  local.tee 3
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 7
                              i32.const 36
                              i32.add
                              i32.const 24
                              call 25
                            end
                            local.get 28
                            i64.const 16777216
                            i64.ge_u
                            if  ;; label = @13
                              local.get 28
                              i64.const 24
                              i64.shr_u
                              i32.wrap_i64
                              local.set 3
                              local.get 32
                              i32.wrap_i64
                              local.set 1
                              loop  ;; label = @14
                                local.get 1
                                call 15
                                local.get 1
                                i32.const 32
                                i32.add
                                local.set 1
                                local.get 3
                                i32.const 1
                                i32.sub
                                local.tee 3
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 7
                            i32.const 24
                            i32.add
                            i32.const 32
                            call 25
                            br 3 (;@9;)
                          end
                          local.get 7
                          i32.load8_u offset=56
                          local.set 1
                          local.get 9
                          i64.const 2
                          i64.store
                          local.get 9
                          local.get 1
                          i32.store8 offset=8
                          br 2 (;@9;)
                        end
                        local.get 9
                        i64.const 2
                        i64.store
                        local.get 9
                        local.get 26
                        i32.store8 offset=8
                        br 1 (;@9;)
                      end
                      local.get 7
                      i32.const 59
                      i32.add
                      i64.load8_u
                      local.set 28
                      local.get 7
                      i32.const 57
                      i32.add
                      i64.load16_u align=1
                      local.set 29
                      local.get 7
                      i64.load32_u offset=53 align=1
                      local.set 32
                      local.get 9
                      i32.const 24
                      i32.add
                      local.get 7
                      i32.const 20
                      i32.add
                      i32.load
                      i32.store
                      local.get 9
                      local.get 7
                      i64.load offset=12 align=4
                      i64.store offset=16 align=4
                      local.get 9
                      local.get 7
                      i64.load offset=24 align=4
                      i64.store offset=28 align=4
                      local.get 9
                      i32.const 36
                      i32.add
                      local.get 7
                      i32.const 32
                      i32.add
                      i32.load
                      i32.store
                      local.get 9
                      local.get 7
                      i64.load offset=36 align=4
                      i64.store offset=40 align=4
                      local.get 9
                      i32.const 48
                      i32.add
                      local.get 7
                      i32.const 44
                      i32.add
                      i32.load
                      i32.store
                      local.get 9
                      local.get 26
                      i32.store8 offset=64
                      local.get 9
                      local.get 5
                      i32.store offset=52
                      local.get 9
                      local.get 31
                      i64.store offset=8
                      local.get 9
                      local.get 30
                      i64.store
                      local.get 9
                      local.get 1
                      i64.extend_i32_u
                      i64.const 255
                      i64.and
                      local.get 32
                      local.get 28
                      i64.const 48
                      i64.shl
                      local.get 29
                      i64.const 32
                      i64.shl
                      i64.or
                      i64.or
                      i64.const 8
                      i64.shl
                      i64.or
                      i64.store offset=56
                      br 1 (;@8;)
                    end
                    local.get 7
                    i32.const 12
                    i32.add
                    call 27
                  end
                  local.get 7
                  i32.const -64
                  i32.sub
                  global.set 0
                  local.get 13
                  i64.load offset=8
                  i64.const 2
                  i64.ne
                  if  ;; label = @8
                    local.get 21
                    local.get 9
                    i32.const 72
                    call 61
                    drop
                    br 1 (;@7;)
                  end
                  local.get 21
                  local.get 13
                  i32.load8_u offset=16
                  i32.store8 offset=8
                  local.get 21
                  i64.const 3
                  i64.store
                end
                local.get 13
                i32.const 80
                i32.add
                global.set 0
                local.get 17
                i32.load8_u offset=32
                local.set 5
                local.get 17
                i64.load offset=24
                local.tee 28
                i64.const 3
                i64.ne
                if  ;; label = @7
                  local.get 24
                  i32.const 9
                  i32.add
                  local.get 17
                  i32.const 33
                  i32.add
                  i32.const 63
                  call 61
                  drop
                end
                local.get 11
                i32.const 16
                i32.add
                local.set 1
                local.get 24
                local.get 28
                i64.store
                local.get 24
                local.get 5
                i32.store8 offset=8
                local.get 17
                i32.const 96
                i32.add
                global.set 0
                block  ;; label = @7
                  local.get 25
                  i64.load offset=8
                  i64.const 3
                  i64.ne
                  if  ;; label = @8
                    local.get 1
                    local.get 24
                    i32.const 72
                    call 61
                    drop
                    br 1 (;@7;)
                  end
                  local.get 1
                  i64.const 3
                  i64.store
                end
                local.get 25
                i32.const 80
                i32.add
                global.set 0
                local.get 11
                i64.load offset=16
                local.tee 28
                i64.const 3
                i64.eq
                if  ;; label = @7
                  i32.const 6
                  local.set 1
                  br 6 (;@1;)
                end
                local.get 11
                i32.const 24
                i32.add
                local.set 0
                local.get 28
                i64.const 2
                i64.eq
                br_if 4 (;@2;)
                local.get 11
                i32.const 152
                i32.add
                local.get 0
                i32.const 8
                i32.add
                i64.load
                i64.store
                local.get 11
                i32.const 160
                i32.add
                local.get 0
                i32.const 16
                i32.add
                i64.load
                i64.store
                local.get 11
                i32.const 168
                i32.add
                local.get 0
                i32.const 24
                i32.add
                i32.load
                i32.store
                local.get 11
                local.get 28
                i64.store offset=136
                local.get 11
                local.get 0
                i64.load
                i64.store offset=144
                local.get 11
                i32.const 172
                i32.add
                local.get 11
                i32.const 52
                i32.add
                i32.const 36
                call 61
                drop
                global.get 0
                i32.const 32
                i32.sub
                local.tee 9
                global.set 0
                local.get 9
                i32.const 20
                i32.add
                local.tee 0
                call 20
                global.get 0
                i32.const 16
                i32.sub
                local.tee 2
                global.set 0
                local.get 2
                i32.const 8
                i32.add
                local.get 0
                i32.const 8
                i32.add
                i32.load
                i32.store
                local.get 2
                local.get 0
                i64.load align=4
                i64.store
                i32.const 0
                local.set 3
                i32.const 0
                local.set 4
                global.get 0
                i32.const 32
                i32.sub
                local.tee 10
                global.set 0
                local.get 11
                i32.const 136
                i32.add
                local.tee 8
                i32.load offset=24
                local.set 1
                local.get 8
                i32.load offset=20
                local.set 7
                local.get 10
                i32.const 12
                i32.add
                i32.const 0
                i32.store8
                local.get 10
                i32.const 0
                i32.store offset=8
                local.get 1
                local.set 0
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 10
                      i32.const 8
                      i32.add
                      local.get 4
                      i32.add
                      local.tee 5
                      local.get 0
                      i32.store8
                      local.get 0
                      i32.const 128
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 0
                      i32.const 128
                      i32.or
                      i32.store8
                      local.get 0
                      i32.const 7
                      i32.shr_u
                      local.set 0
                      i32.const 5
                      local.set 5
                      local.get 4
                      i32.const 1
                      i32.add
                      local.tee 4
                      i32.const 5
                      i32.ne
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 5
                end
                local.get 2
                local.get 10
                i32.const 8
                i32.add
                local.get 5
                call 22
                local.get 2
                local.get 7
                local.get 1
                call 22
                block  ;; label = @7
                  local.get 8
                  i32.load
                  i32.eqz
                  if  ;; label = @8
                    local.get 2
                    i32.load offset=8
                    local.tee 0
                    local.get 2
                    i32.load
                    i32.eq
                    if  ;; label = @9
                      local.get 2
                      call 24
                    end
                    local.get 2
                    i32.load offset=4
                    local.get 0
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 2
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  local.get 2
                  i32.load offset=8
                  local.tee 0
                  local.get 2
                  i32.load
                  i32.eq
                  if  ;; label = @8
                    local.get 2
                    call 24
                  end
                  local.get 2
                  i32.load offset=4
                  local.get 0
                  i32.add
                  i32.const 1
                  i32.store8
                  local.get 2
                  local.get 0
                  i32.const 1
                  i32.add
                  i32.store offset=8
                  local.get 8
                  i64.load offset=8
                  local.set 28
                  i32.const 0
                  local.set 0
                  local.get 10
                  i32.const 24
                  i32.add
                  i32.const 0
                  i32.store16
                  local.get 10
                  i64.const 0
                  i64.store offset=16
                  block  ;; label = @8
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 10
                        i32.const 16
                        i32.add
                        local.get 0
                        i32.add
                        local.tee 1
                        local.get 28
                        i32.wrap_i64
                        local.tee 5
                        i32.store8
                        local.get 28
                        i64.const 128
                        i64.lt_u
                        br_if 0 (;@10;)
                        local.get 1
                        local.get 5
                        i32.const 128
                        i32.or
                        i32.store8
                        local.get 28
                        i64.const 7
                        i64.shr_u
                        local.set 28
                        i32.const 10
                        local.set 4
                        local.get 0
                        i32.const 1
                        i32.add
                        local.tee 0
                        i32.const 10
                        i32.ne
                        br_if 1 (;@9;)
                        br 2 (;@8;)
                      end
                    end
                    local.get 0
                    i32.const 1
                    i32.add
                    local.set 4
                  end
                  local.get 2
                  local.get 10
                  i32.const 16
                  i32.add
                  local.get 4
                  call 22
                  local.get 2
                  i32.load offset=8
                  local.set 0
                end
                local.get 2
                i32.load
                local.set 1
                block  ;; label = @7
                  local.get 8
                  i32.load8_u offset=64
                  local.tee 4
                  i32.const 2
                  i32.eq
                  if  ;; label = @8
                    local.get 0
                    local.get 1
                    i32.eq
                    if  ;; label = @9
                      local.get 2
                      call 24
                    end
                    i32.const 1
                    local.set 1
                    i32.const 0
                    local.set 4
                    local.get 0
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 0
                  local.get 1
                  i32.eq
                  if  ;; label = @8
                    local.get 2
                    call 24
                  end
                  local.get 2
                  i32.load offset=4
                  local.get 0
                  i32.add
                  i32.const 1
                  i32.store8
                  local.get 2
                  local.get 0
                  i32.const 1
                  i32.add
                  local.tee 5
                  i32.store offset=8
                  i32.const 2
                  local.set 1
                  local.get 5
                  local.get 2
                  i32.load
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 2
                  call 24
                end
                local.get 2
                i32.load offset=4
                local.get 5
                i32.add
                local.get 4
                i32.store8
                local.get 2
                local.get 0
                local.get 1
                i32.add
                i32.store offset=8
                global.get 0
                i32.const 16
                i32.sub
                local.tee 15
                global.set 0
                local.get 8
                i32.const 28
                i32.add
                local.tee 1
                i32.load offset=8
                local.set 0
                local.get 1
                i32.load offset=4
                local.set 4
                local.get 15
                i32.const 12
                i32.add
                i32.const 0
                i32.store8
                local.get 15
                i32.const 0
                i32.store offset=8
                local.get 0
                local.set 1
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 15
                      i32.const 8
                      i32.add
                      local.get 3
                      i32.add
                      local.tee 5
                      local.get 1
                      i32.store8
                      local.get 1
                      i32.const 128
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 1
                      i32.const 128
                      i32.or
                      i32.store8
                      local.get 1
                      i32.const 7
                      i32.shr_u
                      local.set 1
                      i32.const 5
                      local.set 5
                      local.get 3
                      i32.const 1
                      i32.add
                      local.tee 3
                      i32.const 5
                      i32.ne
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 5
                end
                local.get 2
                local.get 15
                i32.const 8
                i32.add
                local.get 5
                call 22
                local.get 0
                if  ;; label = @7
                  local.get 0
                  i32.const 5
                  i32.shl
                  local.set 1
                  loop  ;; label = @8
                    i32.const 0
                    local.set 6
                    global.get 0
                    i32.const 16
                    i32.sub
                    local.tee 13
                    global.set 0
                    local.get 4
                    i32.load offset=28
                    local.set 0
                    local.get 13
                    i32.const 4
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 13
                    i32.const 0
                    i32.store
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          local.get 13
                          i32.add
                          local.tee 5
                          local.get 0
                          i32.store8
                          local.get 0
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 5
                          local.get 0
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 0
                          i32.const 7
                          i32.shr_u
                          local.set 0
                          i32.const 5
                          local.set 7
                          local.get 6
                          i32.const 1
                          i32.add
                          local.tee 6
                          i32.const 5
                          i32.ne
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                      end
                      local.get 6
                      i32.const 1
                      i32.add
                      local.set 7
                    end
                    local.get 2
                    local.get 13
                    local.get 7
                    call 22
                    local.get 4
                    i32.load offset=8
                    local.set 5
                    local.get 4
                    i32.load offset=4
                    local.set 3
                    i32.const 0
                    local.set 6
                    local.get 13
                    i32.const 12
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 13
                    i32.const 0
                    i32.store offset=8
                    local.get 5
                    local.set 0
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 13
                          i32.const 8
                          i32.add
                          local.get 6
                          i32.add
                          local.tee 7
                          local.get 0
                          i32.store8
                          local.get 0
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 7
                          local.get 0
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 0
                          i32.const 7
                          i32.shr_u
                          local.set 0
                          i32.const 5
                          local.set 7
                          local.get 6
                          i32.const 1
                          i32.add
                          local.tee 6
                          i32.const 5
                          i32.ne
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                      end
                      local.get 6
                      i32.const 1
                      i32.add
                      local.set 7
                    end
                    local.get 2
                    local.get 13
                    i32.const 8
                    i32.add
                    local.get 7
                    call 22
                    local.get 2
                    local.get 3
                    local.get 5
                    call 22
                    i32.const 0
                    local.set 6
                    global.get 0
                    i32.const 16
                    i32.sub
                    local.tee 3
                    global.set 0
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 4
                                      i32.const 12
                                      i32.add
                                      local.tee 0
                                      i32.load8_u
                                      i32.const 1
                                      i32.sub
                                      br_table 1 (;@16;) 2 (;@15;) 3 (;@14;) 4 (;@13;) 5 (;@12;) 6 (;@11;) 7 (;@10;) 0 (;@17;)
                                    end
                                    local.get 3
                                    i32.const 12
                                    i32.add
                                    i32.const 0
                                    i32.store8
                                    local.get 3
                                    i32.const 0
                                    i32.store offset=8
                                    local.get 2
                                    local.get 3
                                    i32.const 8
                                    i32.add
                                    i32.const 1
                                    call 22
                                    local.get 0
                                    i32.load8_u offset=1
                                    local.set 5
                                    local.get 2
                                    i32.load offset=8
                                    local.tee 0
                                    local.get 2
                                    i32.load
                                    i32.eq
                                    if  ;; label = @17
                                      local.get 2
                                      call 24
                                    end
                                    local.get 2
                                    i32.load offset=4
                                    local.get 0
                                    i32.add
                                    local.get 5
                                    i32.store8
                                    local.get 2
                                    local.get 0
                                    i32.const 1
                                    i32.add
                                    i32.store offset=8
                                    br 7 (;@9;)
                                  end
                                  local.get 3
                                  i32.const 1
                                  i32.store8 offset=8
                                  local.get 3
                                  i32.const 0
                                  i32.store offset=9 align=1
                                  local.get 2
                                  local.get 3
                                  i32.const 8
                                  i32.add
                                  i32.const 1
                                  call 22
                                  local.get 0
                                  i32.load offset=4
                                  local.set 0
                                  local.get 3
                                  i32.const 12
                                  i32.add
                                  i32.const 0
                                  i32.store8
                                  local.get 3
                                  i32.const 0
                                  i32.store offset=8
                                  local.get 0
                                  i32.const 1
                                  i32.shl
                                  local.get 0
                                  i32.const 31
                                  i32.shr_s
                                  i32.xor
                                  local.set 0
                                  block  ;; label = @16
                                    loop  ;; label = @17
                                      block  ;; label = @18
                                        local.get 3
                                        i32.const 8
                                        i32.add
                                        local.get 6
                                        i32.add
                                        local.tee 5
                                        local.get 0
                                        i32.store8
                                        local.get 0
                                        i32.const 128
                                        i32.lt_u
                                        br_if 0 (;@18;)
                                        local.get 5
                                        local.get 0
                                        i32.const 128
                                        i32.or
                                        i32.store8
                                        local.get 0
                                        i32.const 7
                                        i32.shr_u
                                        local.set 0
                                        i32.const 5
                                        local.set 7
                                        local.get 6
                                        i32.const 1
                                        i32.add
                                        local.tee 6
                                        i32.const 5
                                        i32.ne
                                        br_if 1 (;@17;)
                                        br 2 (;@16;)
                                      end
                                    end
                                    local.get 6
                                    i32.const 1
                                    i32.add
                                    local.set 7
                                  end
                                  local.get 2
                                  local.get 3
                                  i32.const 8
                                  i32.add
                                  local.get 7
                                  call 22
                                  br 6 (;@9;)
                                end
                                local.get 3
                                i32.const 2
                                i32.store8 offset=8
                                local.get 3
                                i32.const 0
                                i32.store offset=9 align=1
                                local.get 2
                                local.get 3
                                i32.const 8
                                i32.add
                                i32.const 1
                                call 22
                                local.get 0
                                i32.load offset=12
                                local.set 5
                                local.get 0
                                i32.load offset=8
                                local.set 12
                                local.get 3
                                i32.const 12
                                i32.add
                                i32.const 0
                                i32.store8
                                local.get 3
                                i32.const 0
                                i32.store offset=8
                                local.get 5
                                local.set 0
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 3
                                      i32.const 8
                                      i32.add
                                      local.get 6
                                      i32.add
                                      local.tee 7
                                      local.get 0
                                      i32.store8
                                      local.get 0
                                      i32.const 128
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      local.get 7
                                      local.get 0
                                      i32.const 128
                                      i32.or
                                      i32.store8
                                      local.get 0
                                      i32.const 7
                                      i32.shr_u
                                      local.set 0
                                      i32.const 5
                                      local.set 7
                                      local.get 6
                                      i32.const 1
                                      i32.add
                                      local.tee 6
                                      i32.const 5
                                      i32.ne
                                      br_if 1 (;@16;)
                                      br 2 (;@15;)
                                    end
                                  end
                                  local.get 6
                                  i32.const 1
                                  i32.add
                                  local.set 7
                                end
                                local.get 2
                                local.get 3
                                i32.const 8
                                i32.add
                                local.get 7
                                call 22
                                local.get 2
                                local.get 12
                                local.get 5
                                call 22
                                br 5 (;@9;)
                              end
                              local.get 3
                              i32.const 3
                              i32.store8 offset=8
                              local.get 3
                              i32.const 0
                              i32.store offset=9 align=1
                              local.get 2
                              local.get 3
                              i32.const 8
                              i32.add
                              i32.const 1
                              call 22
                              local.get 0
                              i32.load offset=12
                              local.set 5
                              local.get 0
                              i32.load offset=8
                              local.set 12
                              local.get 3
                              i32.const 12
                              i32.add
                              i32.const 0
                              i32.store8
                              local.get 3
                              i32.const 0
                              i32.store offset=8
                              local.get 5
                              local.set 0
                              block  ;; label = @14
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 3
                                    i32.const 8
                                    i32.add
                                    local.get 6
                                    i32.add
                                    local.tee 7
                                    local.get 0
                                    i32.store8
                                    local.get 0
                                    i32.const 128
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                    local.get 7
                                    local.get 0
                                    i32.const 128
                                    i32.or
                                    i32.store8
                                    local.get 0
                                    i32.const 7
                                    i32.shr_u
                                    local.set 0
                                    i32.const 5
                                    local.set 7
                                    local.get 6
                                    i32.const 1
                                    i32.add
                                    local.tee 6
                                    i32.const 5
                                    i32.ne
                                    br_if 1 (;@15;)
                                    br 2 (;@14;)
                                  end
                                end
                                local.get 6
                                i32.const 1
                                i32.add
                                local.set 7
                              end
                              local.get 2
                              local.get 3
                              i32.const 8
                              i32.add
                              local.get 7
                              call 22
                              local.get 2
                              local.get 12
                              local.get 5
                              call 22
                              br 4 (;@9;)
                            end
                            local.get 3
                            i32.const 0
                            i32.store offset=9 align=1
                            local.get 3
                            i32.const 4
                            i32.store8 offset=8
                            local.get 2
                            local.get 3
                            i32.const 8
                            i32.add
                            i32.const 1
                            call 22
                            local.get 0
                            i32.load offset=12
                            local.set 5
                            local.get 0
                            i32.load offset=8
                            local.set 12
                            local.get 3
                            i32.const 12
                            i32.add
                            i32.const 0
                            i32.store8
                            local.get 3
                            i32.const 0
                            i32.store offset=8
                            local.get 5
                            local.set 0
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 3
                                  i32.const 8
                                  i32.add
                                  local.get 6
                                  i32.add
                                  local.tee 7
                                  local.get 0
                                  i32.store8
                                  local.get 0
                                  i32.const 128
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 7
                                  local.get 0
                                  i32.const 128
                                  i32.or
                                  i32.store8
                                  local.get 0
                                  i32.const 7
                                  i32.shr_u
                                  local.set 0
                                  i32.const 5
                                  local.set 7
                                  local.get 6
                                  i32.const 1
                                  i32.add
                                  local.tee 6
                                  i32.const 5
                                  i32.ne
                                  br_if 1 (;@14;)
                                  br 2 (;@13;)
                                end
                              end
                              local.get 6
                              i32.const 1
                              i32.add
                              local.set 7
                            end
                            local.get 2
                            local.get 3
                            i32.const 8
                            i32.add
                            local.get 7
                            call 22
                            local.get 2
                            local.get 12
                            local.get 5
                            call 22
                            br 3 (;@9;)
                          end
                          local.get 3
                          i32.const 5
                          i32.store8 offset=8
                          local.get 3
                          i32.const 0
                          i32.store offset=9 align=1
                          local.get 2
                          local.get 3
                          i32.const 8
                          i32.add
                          i32.const 1
                          call 22
                          local.get 0
                          i32.load offset=12
                          local.set 5
                          local.get 0
                          i32.load offset=8
                          local.set 12
                          local.get 3
                          i32.const 12
                          i32.add
                          i32.const 0
                          i32.store8
                          local.get 3
                          i32.const 0
                          i32.store offset=8
                          local.get 5
                          local.set 0
                          block  ;; label = @12
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 3
                                i32.const 8
                                i32.add
                                local.get 6
                                i32.add
                                local.tee 7
                                local.get 0
                                i32.store8
                                local.get 0
                                i32.const 128
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 7
                                local.get 0
                                i32.const 128
                                i32.or
                                i32.store8
                                local.get 0
                                i32.const 7
                                i32.shr_u
                                local.set 0
                                i32.const 5
                                local.set 7
                                local.get 6
                                i32.const 1
                                i32.add
                                local.tee 6
                                i32.const 5
                                i32.ne
                                br_if 1 (;@13;)
                                br 2 (;@12;)
                              end
                            end
                            local.get 6
                            i32.const 1
                            i32.add
                            local.set 7
                          end
                          local.get 2
                          local.get 3
                          i32.const 8
                          i32.add
                          local.get 7
                          call 22
                          local.get 2
                          local.get 12
                          local.get 5
                          call 22
                          br 2 (;@9;)
                        end
                        local.get 3
                        i32.const 6
                        i32.store8 offset=8
                        local.get 3
                        i32.const 0
                        i32.store offset=9 align=1
                        local.get 2
                        local.get 3
                        i32.const 8
                        i32.add
                        i32.const 1
                        call 22
                        local.get 0
                        i32.load offset=12
                        local.set 5
                        local.get 0
                        i32.load offset=8
                        local.set 12
                        local.get 3
                        i32.const 12
                        i32.add
                        i32.const 0
                        i32.store8
                        local.get 3
                        i32.const 0
                        i32.store offset=8
                        local.get 5
                        local.set 0
                        block  ;; label = @11
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              i32.const 8
                              i32.add
                              local.get 6
                              i32.add
                              local.tee 7
                              local.get 0
                              i32.store8
                              local.get 0
                              i32.const 128
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 7
                              local.get 0
                              i32.const 128
                              i32.or
                              i32.store8
                              local.get 0
                              i32.const 7
                              i32.shr_u
                              local.set 0
                              i32.const 5
                              local.set 7
                              local.get 6
                              i32.const 1
                              i32.add
                              local.tee 6
                              i32.const 5
                              i32.ne
                              br_if 1 (;@12;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 6
                          i32.const 1
                          i32.add
                          local.set 7
                        end
                        local.get 2
                        local.get 3
                        i32.const 8
                        i32.add
                        local.get 7
                        call 22
                        local.get 2
                        local.get 12
                        local.get 5
                        call 22
                        br 1 (;@9;)
                      end
                      local.get 3
                      i32.const 7
                      i32.store8 offset=8
                      local.get 3
                      i32.const 0
                      i32.store offset=9 align=1
                      local.get 2
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.const 1
                      call 22
                      local.get 0
                      i32.load8_u offset=1
                      local.set 7
                      local.get 2
                      i32.load offset=8
                      local.tee 5
                      local.get 2
                      i32.load
                      i32.eq
                      if  ;; label = @10
                        local.get 2
                        call 24
                      end
                      local.get 2
                      i32.load offset=4
                      local.get 5
                      i32.add
                      local.get 7
                      i32.store8
                      local.get 2
                      local.get 5
                      i32.const 1
                      i32.add
                      local.tee 7
                      i32.store offset=8
                      local.get 0
                      i32.load8_u offset=2
                      local.set 6
                      local.get 2
                      i32.load
                      local.get 7
                      i32.eq
                      if  ;; label = @10
                        local.get 2
                        call 24
                      end
                      local.get 2
                      i32.load offset=4
                      local.get 7
                      i32.add
                      local.get 6
                      i32.store8
                      local.get 2
                      local.get 5
                      i32.const 2
                      i32.add
                      local.tee 7
                      i32.store offset=8
                      local.get 0
                      i32.load8_u offset=3
                      local.set 6
                      local.get 2
                      i32.load
                      local.get 7
                      i32.eq
                      if  ;; label = @10
                        local.get 2
                        call 24
                      end
                      local.get 2
                      i32.load offset=4
                      local.get 7
                      i32.add
                      local.get 6
                      i32.store8
                      local.get 2
                      local.get 5
                      i32.const 3
                      i32.add
                      local.tee 7
                      i32.store offset=8
                      local.get 0
                      i32.load8_u offset=4
                      local.set 0
                      local.get 2
                      i32.load
                      local.get 7
                      i32.eq
                      if  ;; label = @10
                        local.get 2
                        call 24
                      end
                      local.get 2
                      i32.load offset=4
                      local.get 7
                      i32.add
                      local.get 0
                      i32.store8
                      local.get 2
                      local.get 5
                      i32.const 4
                      i32.add
                      i32.store offset=8
                    end
                    local.get 3
                    i32.const 16
                    i32.add
                    global.set 0
                    local.get 13
                    i32.const 16
                    i32.add
                    global.set 0
                    local.get 4
                    i32.const 32
                    i32.add
                    local.set 4
                    local.get 1
                    i32.const 32
                    i32.sub
                    local.tee 1
                    br_if 0 (;@8;)
                  end
                end
                local.get 11
                i32.const 236
                i32.add
                local.set 12
                local.get 9
                i32.const 8
                i32.add
                local.set 13
                local.get 15
                i32.const 16
                i32.add
                global.set 0
                i32.const 0
                local.set 3
                global.get 0
                i32.const 16
                i32.sub
                local.tee 15
                global.set 0
                local.get 8
                i32.const 40
                i32.add
                local.tee 1
                i32.load offset=8
                local.set 0
                local.get 1
                i32.load offset=4
                local.set 4
                local.get 15
                i32.const 12
                i32.add
                i32.const 0
                i32.store8
                local.get 15
                i32.const 0
                i32.store offset=8
                local.get 0
                local.set 1
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 15
                      i32.const 8
                      i32.add
                      local.get 3
                      i32.add
                      local.tee 5
                      local.get 1
                      i32.store8
                      local.get 1
                      i32.const 128
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 1
                      i32.const 128
                      i32.or
                      i32.store8
                      local.get 1
                      i32.const 7
                      i32.shr_u
                      local.set 1
                      i32.const 5
                      local.set 5
                      local.get 3
                      i32.const 1
                      i32.add
                      local.tee 3
                      i32.const 5
                      i32.ne
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 5
                end
                local.get 2
                local.get 15
                i32.const 8
                i32.add
                local.get 5
                call 22
                local.get 0
                if  ;; label = @7
                  local.get 0
                  i32.const 24
                  i32.mul
                  local.set 1
                  loop  ;; label = @8
                    i32.const 0
                    local.set 3
                    global.get 0
                    i32.const 16
                    i32.sub
                    local.tee 7
                    global.set 0
                    local.get 4
                    i32.load offset=8
                    local.set 5
                    local.get 4
                    i32.load offset=4
                    local.set 17
                    local.get 7
                    i32.const 4
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 7
                    i32.const 0
                    i32.store
                    local.get 5
                    local.set 0
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          local.get 7
                          i32.add
                          local.tee 6
                          local.get 0
                          i32.store8
                          local.get 0
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 6
                          local.get 0
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 0
                          i32.const 7
                          i32.shr_u
                          local.set 0
                          i32.const 5
                          local.set 6
                          local.get 3
                          i32.const 1
                          i32.add
                          local.tee 3
                          i32.const 5
                          i32.ne
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                      end
                      local.get 3
                      i32.const 1
                      i32.add
                      local.set 6
                    end
                    local.get 2
                    local.get 7
                    local.get 6
                    call 22
                    local.get 2
                    local.get 17
                    local.get 5
                    call 22
                    local.get 4
                    i32.load offset=20
                    local.set 5
                    local.get 4
                    i32.load offset=16
                    local.set 17
                    i32.const 0
                    local.set 3
                    local.get 7
                    i32.const 12
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 7
                    i32.const 0
                    i32.store offset=8
                    local.get 5
                    local.set 0
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 7
                          i32.const 8
                          i32.add
                          local.get 3
                          i32.add
                          local.tee 6
                          local.get 0
                          i32.store8
                          local.get 0
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 6
                          local.get 0
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 0
                          i32.const 7
                          i32.shr_u
                          local.set 0
                          i32.const 5
                          local.set 6
                          local.get 3
                          i32.const 1
                          i32.add
                          local.tee 3
                          i32.const 5
                          i32.ne
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                      end
                      local.get 3
                      i32.const 1
                      i32.add
                      local.set 6
                    end
                    local.get 2
                    local.get 7
                    i32.const 8
                    i32.add
                    local.get 6
                    call 22
                    local.get 2
                    local.get 17
                    local.get 5
                    call 22
                    local.get 7
                    i32.const 16
                    i32.add
                    global.set 0
                    local.get 4
                    i32.const 24
                    i32.add
                    local.set 4
                    local.get 1
                    i32.const 24
                    i32.sub
                    local.tee 1
                    br_if 0 (;@8;)
                  end
                end
                local.get 15
                i32.const 16
                i32.add
                global.set 0
                i32.const 0
                local.set 4
                global.get 0
                i32.const 16
                i32.sub
                local.tee 15
                global.set 0
                local.get 8
                i32.const 52
                i32.add
                local.tee 0
                i32.load offset=8
                local.set 3
                local.get 0
                i32.load offset=4
                local.set 5
                local.get 15
                i32.const 12
                i32.add
                i32.const 0
                i32.store8
                local.get 15
                i32.const 0
                i32.store offset=8
                local.get 3
                local.set 0
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 15
                      i32.const 8
                      i32.add
                      local.get 4
                      i32.add
                      local.tee 1
                      local.get 0
                      i32.store8
                      local.get 0
                      i32.const 128
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 0
                      i32.const 128
                      i32.or
                      i32.store8
                      local.get 0
                      i32.const 7
                      i32.shr_u
                      local.set 0
                      i32.const 5
                      local.set 1
                      local.get 4
                      i32.const 1
                      i32.add
                      local.tee 4
                      i32.const 5
                      i32.ne
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 1
                end
                local.get 2
                local.get 15
                i32.const 8
                i32.add
                local.get 1
                call 22
                local.get 3
                if  ;; label = @7
                  local.get 3
                  i32.const 4
                  i32.shl
                  local.set 0
                  loop  ;; label = @8
                    i32.const 0
                    local.set 4
                    global.get 0
                    i32.const 16
                    i32.sub
                    local.tee 6
                    global.set 0
                    local.get 5
                    i32.load offset=12
                    local.set 1
                    local.get 6
                    i32.const 4
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 6
                    i32.const 0
                    i32.store
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 4
                          local.get 6
                          i32.add
                          local.tee 3
                          local.get 1
                          i32.store8
                          local.get 1
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 3
                          local.get 1
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 1
                          i32.const 7
                          i32.shr_u
                          local.set 1
                          i32.const 5
                          local.set 7
                          local.get 4
                          i32.const 1
                          i32.add
                          local.tee 4
                          i32.const 5
                          i32.ne
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                      end
                      local.get 4
                      i32.const 1
                      i32.add
                      local.set 7
                    end
                    local.get 2
                    local.get 6
                    local.get 7
                    call 22
                    block  ;; label = @9
                      local.get 5
                      i32.load
                      i32.const -2147483648
                      i32.eq
                      if  ;; label = @10
                        local.get 2
                        i32.load offset=8
                        local.tee 1
                        local.get 2
                        i32.load
                        i32.eq
                        if  ;; label = @11
                          local.get 2
                          call 24
                        end
                        local.get 2
                        i32.load offset=4
                        local.get 1
                        i32.add
                        i32.const 0
                        i32.store8
                        local.get 2
                        local.get 1
                        i32.const 1
                        i32.add
                        i32.store offset=8
                        br 1 (;@9;)
                      end
                      local.get 2
                      i32.load offset=8
                      local.tee 1
                      local.get 2
                      i32.load
                      i32.eq
                      if  ;; label = @10
                        local.get 2
                        call 24
                      end
                      local.get 2
                      i32.load offset=4
                      local.get 1
                      i32.add
                      i32.const 1
                      i32.store8
                      local.get 2
                      local.get 1
                      i32.const 1
                      i32.add
                      i32.store offset=8
                      local.get 5
                      i32.load offset=4
                      local.set 17
                      local.get 5
                      i32.load offset=8
                      local.set 3
                      i32.const 0
                      local.set 4
                      local.get 6
                      i32.const 12
                      i32.add
                      i32.const 0
                      i32.store8
                      local.get 6
                      i32.const 0
                      i32.store offset=8
                      local.get 3
                      local.set 1
                      block  ;; label = @10
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 6
                            i32.const 8
                            i32.add
                            local.get 4
                            i32.add
                            local.tee 7
                            local.get 1
                            i32.store8
                            local.get 1
                            i32.const 128
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 7
                            local.get 1
                            i32.const 128
                            i32.or
                            i32.store8
                            local.get 1
                            i32.const 7
                            i32.shr_u
                            local.set 1
                            i32.const 5
                            local.set 7
                            local.get 4
                            i32.const 1
                            i32.add
                            local.tee 4
                            i32.const 5
                            i32.ne
                            br_if 1 (;@11;)
                            br 2 (;@10;)
                          end
                        end
                        local.get 4
                        i32.const 1
                        i32.add
                        local.set 7
                      end
                      local.get 2
                      local.get 6
                      i32.const 8
                      i32.add
                      local.get 7
                      call 22
                      local.get 2
                      local.get 17
                      local.get 3
                      call 22
                    end
                    local.get 6
                    i32.const 16
                    i32.add
                    global.set 0
                    local.get 5
                    i32.const 16
                    i32.add
                    local.set 5
                    local.get 0
                    i32.const 16
                    i32.sub
                    local.tee 0
                    br_if 0 (;@8;)
                  end
                end
                local.get 15
                i32.const 16
                i32.add
                global.set 0
                local.get 10
                i32.const 32
                i32.add
                global.set 0
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load
                    local.tee 0
                    i32.const -2147483648
                    i32.ne
                    if  ;; label = @9
                      local.get 13
                      local.get 2
                      i64.load offset=4 align=4
                      i64.store offset=4 align=4
                      br 1 (;@8;)
                    end
                    local.get 13
                    i32.const 2
                    i32.store8 offset=4
                  end
                  local.get 13
                  local.get 0
                  i32.store
                  br 0 (;@7;)
                end
                local.get 2
                i32.const 16
                i32.add
                global.set 0
                local.get 9
                i32.const 0
                i32.store offset=28
                local.get 9
                i64.const 4294967296
                i64.store offset=20 align=4
                block  ;; label = @7
                  local.get 9
                  i32.load offset=8
                  i32.const -2147483648
                  i32.eq
                  if  ;; label = @8
                    local.get 12
                    local.get 9
                    i64.load offset=20 align=4
                    i64.store align=4
                    local.get 12
                    i32.const 8
                    i32.add
                    local.get 9
                    i32.const 28
                    i32.add
                    i32.load
                    i32.store
                    br 1 (;@7;)
                  end
                  local.get 12
                  local.get 9
                  i64.load offset=8 align=4
                  i64.store align=4
                  local.get 12
                  i32.const 8
                  i32.add
                  local.get 9
                  i32.const 16
                  i32.add
                  i32.load
                  i32.store
                  local.get 9
                  i32.const 20
                  i32.add
                  call 27
                end
                local.get 8
                i32.const 16
                i32.add
                call 27
                local.get 8
                i32.load offset=36
                local.tee 3
                if  ;; label = @7
                  local.get 8
                  i32.load offset=32
                  local.set 1
                  loop  ;; label = @8
                    local.get 1
                    call 15
                    local.get 1
                    i32.const 32
                    i32.add
                    local.set 1
                    local.get 3
                    i32.const 1
                    i32.sub
                    local.tee 3
                    br_if 0 (;@8;)
                  end
                end
                local.get 8
                i32.const 28
                i32.add
                i32.const 32
                call 25
                local.get 8
                i32.load offset=48
                local.tee 3
                if  ;; label = @7
                  local.get 8
                  i32.load offset=44
                  local.set 1
                  loop  ;; label = @8
                    local.get 1
                    call 17
                    local.get 1
                    i32.const 24
                    i32.add
                    local.set 1
                    local.get 3
                    i32.const 1
                    i32.sub
                    local.tee 3
                    br_if 0 (;@8;)
                  end
                end
                local.get 8
                i32.const 40
                i32.add
                i32.const 24
                call 25
                local.get 8
                i32.load offset=60
                local.tee 3
                if  ;; label = @7
                  local.get 8
                  i32.load offset=56
                  local.set 1
                  loop  ;; label = @8
                    local.get 1
                    call 16
                    local.get 1
                    i32.const 16
                    i32.add
                    local.set 1
                    local.get 3
                    i32.const 1
                    i32.sub
                    local.tee 3
                    br_if 0 (;@8;)
                  end
                end
                local.get 8
                i32.const 52
                i32.add
                i32.const 16
                call 25
                local.get 9
                i32.const 32
                i32.add
                global.set 0
                local.get 11
                i32.load offset=244
                local.tee 0
                i32.const 32000001
                i32.ge_u
                br_if 1 (;@5;)
                i32.const 513049848
                local.get 0
                local.get 11
                i32.load offset=240
                local.get 0
                i32.const 1048696
                call 21
                local.get 0
                call 0
                local.tee 0
                i32.const 32000001
                i32.ge_u
                br_if 2 (;@4;)
                local.get 11
                i32.const 248
                i32.add
                local.get 0
                i32.const 1
                i32.const 1
                call 26
                local.get 11
                i32.load offset=252
                local.set 1
                local.get 11
                i32.load offset=248
                i32.const 1
                i32.eq
                br_if 3 (;@3;)
                local.get 11
                i32.load offset=256
                i32.const 513049848
                local.get 0
                call 61
                local.set 15
                local.get 11
                local.get 0
                i32.store offset=256
                local.get 11
                local.get 15
                i32.store offset=252
                local.get 11
                local.get 1
                i32.store offset=248
                global.get 0
                i32.const 32
                i32.sub
                local.tee 7
                global.set 0
                local.get 7
                i32.const 8
                i32.add
                local.set 10
                global.get 0
                i32.const 48
                i32.sub
                local.tee 2
                global.set 0
                local.get 2
                i32.const 8
                i32.add
                local.get 15
                local.get 0
                call 19
                local.get 2
                local.get 2
                i64.load offset=8
                i64.store offset=16 align=4
                i32.const 0
                local.set 3
                i32.const 0
                local.set 6
                i64.const 0
                local.set 29
                i64.const 0
                local.set 30
                global.get 0
                i32.const 32
                i32.sub
                local.tee 4
                global.set 0
                local.get 2
                i32.const 16
                i32.add
                local.tee 9
                i32.load offset=4
                local.set 12
                local.get 9
                i32.load
                local.set 5
                local.get 2
                i32.const 24
                i32.add
                local.tee 13
                block (result i32)  ;; label = @7
                  block  ;; label = @8
                    loop  ;; label = @9
                      i32.const 5
                      local.set 8
                      local.get 3
                      i32.const 35
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 5
                      local.get 12
                      i32.eq
                      if  ;; label = @10
                        i32.const 4
                        local.set 8
                        br 2 (;@8;)
                      end
                      local.get 9
                      local.get 5
                      i32.const 1
                      i32.add
                      local.tee 1
                      i32.store
                      local.get 5
                      i32.load8_s
                      local.tee 17
                      i32.const 127
                      i32.and
                      local.get 3
                      i32.shl
                      local.get 6
                      i32.or
                      local.set 6
                      local.get 3
                      i32.const 7
                      i32.add
                      local.set 3
                      local.get 1
                      local.set 5
                      local.get 17
                      i32.const 0
                      i32.lt_s
                      br_if 0 (;@9;)
                    end
                    local.get 3
                    i32.const 35
                    i32.eq
                    local.get 17
                    i32.const 15
                    i32.gt_u
                    i32.and
                    br_if 0 (;@8;)
                    i32.const 14
                    local.set 8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          br_table 0 (;@11;) 1 (;@10;) 3 (;@8;)
                        end
                        local.get 4
                        i32.const 16
                        i32.add
                        local.set 14
                        i32.const 0
                        local.set 3
                        loop  ;; label = @11
                          i32.const 5
                          local.set 6
                          local.get 3
                          i32.const 133
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 1
                          local.get 12
                          i32.eq
                          if  ;; label = @12
                            i32.const 4
                            local.set 6
                            br 3 (;@9;)
                          end
                          local.get 9
                          local.get 1
                          i32.const 1
                          i32.add
                          local.tee 5
                          i32.store
                          local.get 4
                          i32.const 8
                          i32.add
                          local.set 8
                          local.get 1
                          i32.load8_s
                          local.tee 17
                          i32.const 127
                          i32.and
                          i64.extend_i32_u
                          local.set 28
                          i64.const 0
                          local.set 31
                          block  ;; label = @12
                            local.get 3
                            i32.const 127
                            i32.and
                            local.tee 1
                            i32.const 64
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              local.get 1
                              i32.eqz
                              br_if 1 (;@12;)
                              i64.const 0
                              local.get 1
                              i32.const 63
                              i32.and
                              i64.extend_i32_u
                              local.tee 32
                              i64.shl
                              local.get 28
                              i32.const 0
                              local.get 1
                              i32.sub
                              i32.const 63
                              i32.and
                              i64.extend_i32_u
                              i64.shr_u
                              i64.or
                              local.set 31
                              local.get 28
                              local.get 32
                              i64.shl
                              local.set 28
                              br 1 (;@12;)
                            end
                            local.get 28
                            local.get 1
                            i32.const 63
                            i32.and
                            i64.extend_i32_u
                            i64.shl
                            local.set 31
                            i64.const 0
                            local.set 28
                          end
                          local.get 8
                          local.get 28
                          i64.store
                          local.get 8
                          local.get 31
                          i64.store offset=8
                          local.get 3
                          i32.const 7
                          i32.add
                          local.set 3
                          local.get 14
                          i64.load
                          local.get 29
                          i64.or
                          local.set 29
                          local.get 4
                          i64.load offset=8
                          local.get 30
                          i64.or
                          local.set 30
                          local.get 5
                          local.set 1
                          local.get 17
                          i32.const 0
                          i32.lt_s
                          br_if 0 (;@11;)
                        end
                        local.get 3
                        i32.const 133
                        i32.eq
                        local.get 17
                        i32.const 3
                        i32.gt_u
                        i32.and
                        br_if 1 (;@9;)
                        local.get 13
                        local.get 30
                        i64.store offset=8
                        local.get 13
                        local.get 29
                        i64.store offset=16
                        i32.const 0
                        br 3 (;@7;)
                      end
                      local.get 4
                      i32.const 24
                      i32.add
                      local.set 12
                      i32.const 0
                      local.set 3
                      i32.const 0
                      local.set 6
                      local.get 9
                      i32.load offset=4
                      local.set 16
                      local.get 9
                      i32.load
                      local.set 1
                      i32.const 1
                      local.set 17
                      block  ;; label = @10
                        loop  ;; label = @11
                          i32.const 5
                          local.set 8
                          local.get 3
                          i32.const 35
                          i32.eq
                          br_if 1 (;@10;)
                          local.get 1
                          local.get 16
                          i32.eq
                          if  ;; label = @12
                            i32.const 4
                            local.set 8
                            br 2 (;@10;)
                          end
                          local.get 9
                          local.get 1
                          i32.const 1
                          i32.add
                          local.tee 5
                          i32.store
                          local.get 1
                          i32.load8_s
                          local.tee 14
                          i32.const 127
                          i32.and
                          local.get 3
                          i32.shl
                          local.get 6
                          i32.or
                          local.set 6
                          local.get 3
                          i32.const 7
                          i32.add
                          local.set 3
                          local.get 5
                          local.set 1
                          local.get 14
                          i32.const 0
                          i32.lt_s
                          br_if 0 (;@11;)
                        end
                        local.get 3
                        i32.const 35
                        i32.eq
                        local.get 14
                        i32.const 15
                        i32.gt_u
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 14
                        local.get 6
                        local.get 6
                        i32.const 3
                        i32.gt_u
                        local.tee 17
                        select
                        local.set 8
                      end
                      local.get 12
                      local.get 8
                      i32.store8 offset=1
                      local.get 12
                      local.get 17
                      i32.store8
                      local.get 4
                      i32.load8_u offset=24
                      local.set 1
                      local.get 13
                      local.get 4
                      i32.load8_u offset=25
                      i32.store8 offset=1
                      i32.const 2
                      i32.const 1
                      local.get 1
                      select
                      br 2 (;@7;)
                    end
                    local.get 13
                    local.get 6
                    i32.store8 offset=1
                    i32.const 2
                    br 1 (;@7;)
                  end
                  local.get 13
                  local.get 8
                  i32.store8 offset=1
                  i32.const 2
                end
                i32.store8
                local.get 4
                i32.const 32
                i32.add
                global.set 0
                local.get 2
                i32.load8_u offset=25
                local.set 5
                local.get 2
                i32.load8_u offset=24
                local.tee 3
                i32.const 2
                i32.ne
                if  ;; label = @7
                  local.get 10
                  local.get 2
                  i64.load offset=26 align=2
                  i64.store offset=2 align=2
                  local.get 10
                  i32.const 16
                  i32.add
                  local.get 2
                  i32.const 40
                  i32.add
                  i64.load align=2
                  i64.store align=2
                  local.get 10
                  i32.const 10
                  i32.add
                  local.get 2
                  i32.const 34
                  i32.add
                  i64.load align=2
                  i64.store align=2
                end
                local.get 11
                i32.const 208
                i32.add
                local.set 1
                local.get 10
                local.get 3
                i32.store8
                local.get 10
                local.get 5
                i32.store8 offset=1
                local.get 2
                i32.const 48
                i32.add
                global.set 0
                block  ;; label = @7
                  local.get 7
                  i32.load8_u offset=8
                  i32.const 2
                  i32.ne
                  if  ;; label = @8
                    local.get 1
                    local.get 7
                    i64.load offset=8
                    i64.store
                    local.get 1
                    i32.const 16
                    i32.add
                    local.get 7
                    i32.const 24
                    i32.add
                    i64.load
                    i64.store
                    local.get 1
                    i32.const 8
                    i32.add
                    local.get 7
                    i32.const 16
                    i32.add
                    i64.load
                    i64.store
                    br 1 (;@7;)
                  end
                  local.get 1
                  i32.const 2
                  i32.store8
                end
                local.get 7
                i32.const 32
                i32.add
                global.set 0
                local.get 11
                i32.load8_u offset=208
                local.tee 1
                i32.const 2
                i32.ne
                if  ;; label = @7
                  local.get 11
                  i32.const 102
                  i32.add
                  local.get 11
                  i32.load8_u offset=211
                  i32.store8
                  local.get 11
                  i32.const 96
                  i32.add
                  local.get 11
                  i32.const 228
                  i32.add
                  i32.load
                  i32.store
                  local.get 11
                  local.get 11
                  i32.load16_u offset=209 align=1
                  i32.store16 offset=100
                  local.get 11
                  local.get 11
                  i64.load offset=220 align=4
                  i64.store offset=88
                  local.get 11
                  i32.load offset=216
                  local.set 15
                  local.get 11
                  i32.load offset=212
                  local.set 0
                end
                local.get 11
                i32.const 248
                i32.add
                call 27
                local.get 11
                i32.const 236
                i32.add
                call 27
                br 5 (;@1;)
              end
              local.get 0
              i32.const 512000000
              i32.const 1048616
              call 54
              unreachable
            end
            local.get 0
            i32.const 32000000
            i32.const 1048680
            call 54
            unreachable
          end
          local.get 0
          i32.const 32000000
          i32.const 1048712
          call 54
          unreachable
        end
        local.get 1
        local.get 11
        i32.load offset=256
        call 52
        unreachable
      end
      local.get 11
      i32.const 128
      i32.add
      local.get 0
      i32.const 24
      i32.add
      i32.load
      i32.store
      local.get 11
      i32.const 120
      i32.add
      local.get 0
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 11
      i32.const 112
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 11
      local.get 0
      i64.load align=4
      i64.store offset=104
      local.get 11
      i32.const 236
      i32.add
      local.set 13
      global.get 0
      i32.const 32
      i32.sub
      local.tee 8
      global.set 0
      local.get 8
      i32.const 20
      i32.add
      local.tee 0
      call 20
      local.get 8
      i32.const 8
      i32.add
      local.set 10
      i32.const 0
      local.set 5
      global.get 0
      i32.const 16
      i32.sub
      local.tee 2
      global.set 0
      local.get 2
      i32.const 8
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 2
      local.get 0
      i64.load align=4
      i64.store
      global.get 0
      i32.const 16
      i32.sub
      local.tee 4
      global.set 0
      block (result i32)  ;; label = @2
        local.get 11
        i32.const 104
        i32.add
        local.tee 9
        i32.load
        i32.eqz
        if  ;; label = @3
          local.get 4
          i32.const 12
          i32.add
          local.tee 0
          i32.const 0
          i32.store8
          local.get 4
          i32.const 0
          i32.store offset=8
          local.get 2
          local.get 4
          i32.const 8
          i32.add
          i32.const 1
          call 22
          local.get 9
          i32.load offset=12
          local.set 1
          local.get 9
          i32.load offset=8
          local.set 3
          local.get 0
          i32.const 0
          i32.store8
          local.get 4
          i32.const 0
          i32.store offset=8
          local.get 1
          local.set 0
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.const 8
                i32.add
                local.get 5
                i32.add
                local.tee 7
                local.get 0
                i32.store8
                local.get 0
                i32.const 128
                i32.lt_u
                br_if 0 (;@6;)
                local.get 7
                local.get 0
                i32.const 128
                i32.or
                i32.store8
                local.get 0
                i32.const 7
                i32.shr_u
                local.set 0
                i32.const 5
                local.set 7
                local.get 5
                i32.const 1
                i32.add
                local.tee 5
                i32.const 5
                i32.ne
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
            end
            local.get 5
            i32.const 1
            i32.add
            local.set 7
          end
          local.get 2
          local.get 4
          i32.const 8
          i32.add
          local.get 7
          call 22
          local.get 2
          local.get 3
          local.get 1
          call 22
          local.get 9
          i32.load offset=24
          local.set 1
          local.get 9
          i32.load offset=20
          local.set 3
          i32.const 0
          local.set 5
          local.get 4
          i32.const 12
          i32.add
          i32.const 0
          i32.store8
          local.get 4
          i32.const 0
          i32.store offset=8
          local.get 1
          local.set 0
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.const 8
                i32.add
                local.get 5
                i32.add
                local.tee 7
                local.get 0
                i32.store8
                local.get 0
                i32.const 128
                i32.lt_u
                br_if 0 (;@6;)
                local.get 7
                local.get 0
                i32.const 128
                i32.or
                i32.store8
                local.get 0
                i32.const 7
                i32.shr_u
                local.set 0
                i32.const 5
                local.set 7
                local.get 5
                i32.const 1
                i32.add
                local.tee 5
                i32.const 5
                i32.ne
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
            end
            local.get 5
            i32.const 1
            i32.add
            local.set 7
          end
          local.get 2
          local.get 4
          i32.const 8
          i32.add
          local.get 7
          call 22
          local.get 2
          local.get 3
          local.get 1
          call 22
          i32.const 16
          br 1 (;@2;)
        end
        local.get 4
        i32.const 1
        i32.store8 offset=8
        local.get 4
        i32.const 0
        i32.store offset=9 align=1
        local.get 2
        local.get 4
        i32.const 8
        i32.add
        i32.const 1
        call 22
        local.get 9
        i32.load offset=12
        local.set 1
        local.get 9
        i32.load offset=8
        local.set 3
        local.get 4
        i32.const 12
        i32.add
        i32.const 0
        i32.store8
        local.get 4
        i32.const 0
        i32.store offset=8
        local.get 9
        i32.const 16
        i32.add
        local.set 6
        local.get 1
        local.set 0
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 8
              i32.add
              local.get 5
              i32.add
              local.tee 7
              local.get 0
              i32.store8
              local.get 0
              i32.const 128
              i32.lt_u
              br_if 0 (;@5;)
              local.get 7
              local.get 0
              i32.const 128
              i32.or
              i32.store8
              local.get 0
              i32.const 7
              i32.shr_u
              local.set 0
              i32.const 5
              local.set 7
              local.get 5
              i32.const 1
              i32.add
              local.tee 5
              i32.const 5
              i32.ne
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
          end
          local.get 5
          i32.const 1
          i32.add
          local.set 7
        end
        local.get 2
        local.get 4
        i32.const 8
        i32.add
        local.get 7
        call 22
        local.get 2
        local.get 3
        local.get 1
        call 22
        i32.const 0
        local.set 7
        global.get 0
        i32.const 16
        i32.sub
        local.tee 1
        global.set 0
        local.get 6
        i32.load offset=8
        local.set 3
        local.get 6
        i32.load offset=4
        local.set 5
        local.get 1
        i32.const 12
        i32.add
        i32.const 0
        i32.store8
        local.get 1
        i32.const 0
        i32.store offset=8
        local.get 3
        local.set 0
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 8
              i32.add
              local.get 7
              i32.add
              local.tee 6
              local.get 0
              i32.store8
              local.get 0
              i32.const 128
              i32.lt_u
              br_if 0 (;@5;)
              local.get 6
              local.get 0
              i32.const 128
              i32.or
              i32.store8
              local.get 0
              i32.const 7
              i32.shr_u
              local.set 0
              i32.const 5
              local.set 6
              local.get 7
              i32.const 1
              i32.add
              local.tee 7
              i32.const 5
              i32.ne
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
          end
          local.get 7
          i32.const 1
          i32.add
          local.set 6
        end
        local.get 2
        local.get 1
        i32.const 8
        i32.add
        local.get 6
        call 22
        local.get 3
        if  ;; label = @3
          local.get 2
          i32.load offset=8
          local.set 0
          loop  ;; label = @4
            local.get 5
            i32.load8_u
            local.set 7
            local.get 2
            i32.load
            local.get 0
            i32.eq
            if  ;; label = @5
              local.get 2
              call 24
            end
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            local.get 2
            i32.load offset=4
            local.get 0
            i32.add
            local.get 7
            i32.store8
            local.get 2
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            i32.store offset=8
            local.get 3
            i32.const 1
            i32.sub
            local.tee 3
            br_if 0 (;@4;)
          end
        end
        local.get 1
        i32.const 16
        i32.add
        global.set 0
        i32.const 16
      end
      local.set 0
      local.get 4
      i32.const 16
      i32.add
      global.set 0
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.and
        local.tee 0
        i32.const 16
        i32.eq
        if  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load
            local.tee 0
            i32.const -2147483648
            i32.ne
            if  ;; label = @5
              local.get 10
              local.get 2
              i64.load offset=4 align=4
              i64.store offset=4 align=4
              br 1 (;@4;)
            end
            local.get 10
            i32.const 2
            i32.store8 offset=4
          end
          local.get 10
          local.get 0
          i32.store
          br 1 (;@2;)
        end
        local.get 10
        i32.const -2147483648
        i32.store
        local.get 10
        local.get 0
        i32.store8 offset=4
        local.get 2
        call 27
      end
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      local.get 8
      i32.const 0
      i32.store offset=28
      local.get 8
      i64.const 4294967296
      i64.store offset=20 align=4
      block  ;; label = @2
        local.get 8
        i32.load offset=8
        i32.const -2147483648
        i32.eq
        if  ;; label = @3
          local.get 13
          local.get 8
          i64.load offset=20 align=4
          i64.store align=4
          local.get 13
          i32.const 8
          i32.add
          local.get 8
          i32.const 28
          i32.add
          i32.load
          i32.store
          br 1 (;@2;)
        end
        local.get 13
        local.get 8
        i64.load offset=8 align=4
        i64.store align=4
        local.get 13
        i32.const 8
        i32.add
        local.get 8
        i32.const 16
        i32.add
        i32.load
        i32.store
        local.get 8
        i32.const 20
        i32.add
        call 27
      end
      local.get 9
      i32.const 4
      i32.add
      call 27
      local.get 9
      i32.const 16
      i32.add
      call 27
      local.get 8
      i32.const 32
      i32.add
      global.set 0
      block  ;; label = @2
        block  ;; label = @3
          local.get 11
          i32.load offset=244
          local.tee 0
          i32.const 512000001
          i32.lt_u
          if  ;; label = @4
            i32.const 1049848
            local.get 0
            local.get 11
            i32.load offset=240
            local.get 0
            i32.const 1048648
            call 21
            local.get 0
            call 1
            local.tee 0
            i32.const 512000001
            i32.ge_u
            br_if 1 (;@3;)
            local.get 11
            i32.const 248
            i32.add
            local.tee 12
            local.get 0
            i32.const 1
            i32.const 1
            call 26
            local.get 11
            i32.load offset=252
            local.set 1
            local.get 11
            i32.load offset=248
            i32.const 1
            i32.eq
            br_if 2 (;@2;)
            local.get 11
            i32.load offset=256
            i32.const 1049848
            local.get 0
            call 61
            local.set 4
            local.get 11
            local.get 0
            i32.store offset=256
            local.get 11
            local.get 4
            i32.store offset=252
            local.get 11
            local.get 1
            i32.store offset=248
            global.get 0
            i32.const 16
            i32.sub
            local.tee 6
            global.set 0
            local.get 6
            i32.const 8
            i32.add
            local.set 8
            i32.const 0
            local.set 3
            i32.const 0
            local.set 5
            global.get 0
            i32.const 32
            i32.sub
            local.tee 2
            global.set 0
            local.get 2
            i32.const 8
            i32.add
            local.get 4
            local.get 0
            call 19
            local.get 2
            local.get 2
            i64.load offset=8
            i64.store offset=16 align=4
            local.get 2
            i32.const 16
            i32.add
            local.tee 4
            i32.load offset=4
            local.set 9
            local.get 4
            i32.load
            local.set 1
            local.get 2
            i32.const 24
            i32.add
            local.tee 7
            block (result i32)  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  loop  ;; label = @8
                    i32.const 5
                    local.set 15
                    local.get 3
                    i32.const 35
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 1
                    local.get 9
                    i32.eq
                    if  ;; label = @9
                      i32.const 4
                      local.set 15
                      br 2 (;@7;)
                    end
                    local.get 4
                    local.get 1
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.store
                    local.get 1
                    i32.load8_s
                    local.tee 10
                    i32.const 127
                    i32.and
                    local.get 3
                    i32.shl
                    local.get 5
                    i32.or
                    local.set 5
                    local.get 3
                    i32.const 7
                    i32.add
                    local.set 3
                    local.get 0
                    local.set 1
                    local.get 10
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                  end
                  local.get 3
                  i32.const 35
                  i32.eq
                  local.get 10
                  i32.const 15
                  i32.gt_u
                  i32.and
                  br_if 0 (;@7;)
                  i32.const 14
                  local.set 15
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 5
                        br_table 0 (;@10;) 1 (;@9;) 3 (;@7;)
                      end
                      i32.const 0
                      local.set 3
                      i32.const 0
                      local.set 1
                      loop  ;; label = @10
                        i32.const 5
                        local.set 15
                        local.get 3
                        i32.const 35
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 0
                        local.get 9
                        i32.eq
                        if  ;; label = @11
                          i32.const 4
                          local.set 15
                          br 3 (;@8;)
                        end
                        local.get 4
                        local.get 0
                        i32.const 1
                        i32.add
                        local.tee 5
                        i32.store
                        local.get 0
                        i32.load8_s
                        local.tee 10
                        i32.const 127
                        i32.and
                        local.get 3
                        i32.shl
                        local.get 1
                        i32.or
                        local.set 1
                        local.get 3
                        i32.const 7
                        i32.add
                        local.set 3
                        local.get 5
                        local.set 0
                        local.get 10
                        i32.const 0
                        i32.lt_s
                        br_if 0 (;@10;)
                      end
                      local.get 3
                      i32.const 35
                      i32.eq
                      local.get 10
                      i32.const 15
                      i32.gt_u
                      i32.and
                      br_if 1 (;@8;)
                      local.get 7
                      local.get 1
                      i32.store offset=4
                      i32.const 0
                      br 4 (;@5;)
                    end
                    i32.const 1
                    block (result i32)  ;; label = @9
                      i32.const 0
                      local.set 5
                      i32.const 0
                      local.set 3
                      local.get 4
                      i32.load offset=4
                      local.set 10
                      local.get 4
                      i32.load
                      local.set 0
                      block  ;; label = @10
                        loop  ;; label = @11
                          i32.const 5
                          local.set 15
                          local.get 5
                          i32.const 35
                          i32.eq
                          br_if 1 (;@10;)
                          i32.const 4
                          local.get 0
                          local.get 10
                          i32.eq
                          br_if 2 (;@9;)
                          drop
                          local.get 4
                          local.get 0
                          i32.const 1
                          i32.add
                          local.tee 1
                          i32.store
                          local.get 0
                          i32.load8_s
                          local.tee 9
                          i32.const 127
                          i32.and
                          local.get 5
                          i32.shl
                          local.get 3
                          i32.or
                          local.set 3
                          local.get 5
                          i32.const 7
                          i32.add
                          local.set 5
                          local.get 1
                          local.set 0
                          local.get 9
                          i32.const 0
                          i32.lt_s
                          br_if 0 (;@11;)
                        end
                        local.get 5
                        i32.const 35
                        i32.eq
                        local.get 9
                        i32.const 15
                        i32.gt_u
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 14
                        i32.const 16
                        local.get 3
                        select
                        local.set 15
                      end
                      local.get 15
                    end
                    i32.const 255
                    i32.and
                    local.tee 0
                    i32.const 16
                    i32.eq
                    br_if 3 (;@5;)
                    drop
                    local.get 7
                    local.get 0
                    i32.store8 offset=4
                    br 2 (;@6;)
                  end
                  local.get 7
                  local.get 15
                  i32.store8 offset=4
                  br 1 (;@6;)
                end
                local.get 7
                local.get 15
                i32.store8 offset=4
              end
              i32.const 2
            end
            i32.store
            block  ;; label = @5
              local.get 2
              i32.load offset=24
              local.tee 0
              i32.const 2
              i32.ne
              if  ;; label = @6
                local.get 8
                local.get 2
                i32.load offset=28
                i32.store offset=4
                br 1 (;@5;)
              end
              local.get 8
              local.get 2
              i32.load8_u offset=28
              i32.store8 offset=4
            end
            local.get 8
            local.get 0
            i32.store
            local.get 2
            i32.const 32
            i32.add
            global.set 0
            local.get 11
            i32.const 8
            i32.add
            local.get 6
            i64.load offset=8 align=4
            i64.store
            local.get 6
            i32.const 16
            i32.add
            global.set 0
            i32.const 2
            i32.const 3
            local.get 11
            i32.load offset=8
            local.tee 0
            i32.const 2
            i32.eq
            select
            local.set 1
            local.get 11
            i32.load offset=12
            local.set 15
            local.get 12
            call 27
            local.get 13
            call 27
            br 3 (;@1;)
          end
          local.get 0
          i32.const 512000000
          i32.const 1048632
          call 54
          unreachable
        end
        local.get 0
        i32.const 512000000
        i32.const 1048664
        call 54
        unreachable
      end
      local.get 1
      local.get 11
      i32.load offset=256
      call 52
      unreachable
    end
    local.get 11
    i32.const 268
    i32.add
    local.get 11
    i32.const 96
    i32.add
    i32.load
    i32.store
    local.get 11
    local.get 1
    i32.store8 offset=248
    local.get 11
    local.get 11
    i32.load16_u offset=100
    i32.store16 offset=249 align=1
    local.get 11
    local.get 15
    i32.store offset=256
    local.get 11
    local.get 0
    i32.store offset=252
    local.get 11
    local.get 11
    i64.load offset=88
    i64.store offset=260 align=4
    local.get 11
    local.get 11
    i32.const 102
    i32.add
    i32.load8_u
    i32.store8 offset=251
    local.get 11
    i32.const 236
    i32.add
    local.set 9
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 20
    i32.add
    local.tee 0
    call 20
    local.get 2
    i32.const 8
    i32.add
    local.set 7
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 3
    local.get 0
    i64.load align=4
    i64.store
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 3
                  local.get 11
                  i32.const 248
                  i32.add
                  local.tee 6
                  i32.load8_u
                  i32.const 2
                  i32.sub
                  local.tee 1
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.const 5
                  i32.ge_u
                  select
                  i32.const 255
                  i32.and
                  i32.const 1
                  i32.sub
                  br_table 1 (;@6;) 2 (;@5;) 3 (;@4;) 4 (;@3;) 0 (;@7;)
                end
                local.get 0
                i32.const 12
                i32.add
                i32.const 0
                i32.store8
                local.get 0
                i32.const 0
                i32.store offset=8
                local.get 0
                i32.const 0
                i32.store8 offset=8
                br 4 (;@2;)
              end
              local.get 0
              i32.const 12
              i32.add
              i32.const 0
              i32.store8
              local.get 0
              i32.const 0
              i32.store offset=8
              local.get 0
              i32.const 1
              i32.store8 offset=8
              local.get 3
              local.get 0
              i32.const 8
              i32.add
              i32.const 1
              call 22
              i32.const 0
              local.set 4
              global.get 0
              i32.const 16
              i32.sub
              local.tee 1
              global.set 0
              block  ;; label = @6
                local.get 6
                i32.const 4
                i32.add
                local.tee 5
                i32.load
                i32.eqz
                if  ;; label = @7
                  local.get 1
                  i32.const 12
                  i32.add
                  local.tee 6
                  i32.const 0
                  i32.store8
                  local.get 1
                  i32.const 0
                  i32.store offset=8
                  local.get 3
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.const 1
                  call 22
                  local.get 5
                  i32.load offset=4
                  local.set 5
                  local.get 6
                  i32.const 0
                  i32.store8
                  local.get 1
                  i32.const 0
                  i32.store offset=8
                  block  ;; label = @8
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 8
                        i32.add
                        local.get 4
                        i32.add
                        local.tee 6
                        local.get 5
                        i32.store8
                        local.get 5
                        i32.const 128
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 6
                        local.get 5
                        i32.const 128
                        i32.or
                        i32.store8
                        local.get 5
                        i32.const 7
                        i32.shr_u
                        local.set 5
                        i32.const 5
                        local.set 8
                        local.get 4
                        i32.const 1
                        i32.add
                        local.tee 4
                        i32.const 5
                        i32.ne
                        br_if 1 (;@9;)
                        br 2 (;@8;)
                      end
                    end
                    local.get 4
                    i32.const 1
                    i32.add
                    local.set 8
                  end
                  local.get 3
                  local.get 1
                  i32.const 8
                  i32.add
                  local.get 8
                  call 22
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 1
                i32.store8 offset=8
                local.get 1
                i32.const 0
                i32.store offset=9 align=1
                local.get 3
                local.get 1
                i32.const 8
                i32.add
                local.tee 5
                i32.const 1
                call 22
                local.get 1
                i32.const 12
                i32.add
                i32.const 0
                i32.store8
                local.get 1
                i32.const 0
                i32.store offset=8
                local.get 3
                local.get 5
                i32.const 1
                call 22
              end
              local.get 1
              i32.const 16
              i32.add
              global.set 0
              i32.const 16
              br 4 (;@1;)
            end
            local.get 0
            i32.const 12
            i32.add
            i32.const 0
            i32.store8
            local.get 0
            i32.const 0
            i32.store offset=8
            local.get 0
            i32.const 2
            i32.store8 offset=8
            br 2 (;@2;)
          end
          local.get 0
          i32.const 12
          i32.add
          i32.const 0
          i32.store8
          local.get 0
          i32.const 0
          i32.store offset=8
          local.get 0
          i32.const 3
          i32.store8 offset=8
          local.get 3
          local.get 0
          i32.const 8
          i32.add
          i32.const 1
          call 22
          global.get 0
          i32.const 32
          i32.sub
          local.tee 5
          global.set 0
          block  ;; label = @4
            local.get 6
            i32.load8_u
            i32.eqz
            if  ;; label = @5
              local.get 5
              i32.const 12
              i32.add
              i32.const 0
              i32.store8
              local.get 5
              i32.const 0
              i32.store offset=8
              local.get 3
              local.get 5
              i32.const 8
              i32.add
              i32.const 1
              call 22
              local.get 6
              i32.const 16
              i32.add
              i64.load
              local.set 28
              local.get 6
              i64.load offset=8
              local.set 29
              local.get 5
              i32.const 23
              i32.add
              i32.const 0
              i32.store align=1
              local.get 5
              i32.const 16
              i32.add
              i64.const 0
              i64.store
              local.get 5
              i64.const 0
              i64.store offset=8
              i32.const 0
              local.set 1
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.const 8
                    i32.add
                    local.get 1
                    i32.add
                    local.tee 4
                    local.get 29
                    i32.wrap_i64
                    local.tee 6
                    i32.store8
                    local.get 28
                    i64.eqz
                    local.get 29
                    i64.const 128
                    i64.lt_u
                    i32.and
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 6
                    i32.const 128
                    i32.or
                    i32.store8
                    local.get 28
                    i64.const 57
                    i64.shl
                    local.get 29
                    i64.const 7
                    i64.shr_u
                    i64.or
                    local.set 29
                    local.get 28
                    i64.const 7
                    i64.shr_u
                    local.set 28
                    i32.const 19
                    local.set 4
                    local.get 1
                    i32.const 1
                    i32.add
                    local.tee 1
                    i32.const 19
                    i32.ne
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                end
                local.get 1
                i32.const 1
                i32.add
                local.set 4
              end
              local.get 3
              local.get 5
              i32.const 8
              i32.add
              local.get 4
              call 22
              br 1 (;@4;)
            end
            local.get 5
            i32.const 1
            i32.store8 offset=8
            local.get 5
            i32.const 0
            i32.store offset=9 align=1
            local.get 3
            local.get 5
            i32.const 8
            i32.add
            i32.const 1
            call 22
            global.get 0
            i32.const 16
            i32.sub
            local.tee 1
            global.set 0
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.const 1
                      i32.add
                      i32.load8_u
                      i32.const 1
                      i32.sub
                      br_table 1 (;@8;) 2 (;@7;) 3 (;@6;) 0 (;@9;)
                    end
                    local.get 1
                    i32.const 12
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 1
                    i32.const 0
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 1
                  i32.const 1
                  i32.store8 offset=8
                  local.get 1
                  i32.const 0
                  i32.store offset=9 align=1
                  br 2 (;@5;)
                end
                local.get 1
                i32.const 2
                i32.store8 offset=8
                local.get 1
                i32.const 0
                i32.store offset=9 align=1
                br 1 (;@5;)
              end
              local.get 1
              i32.const 3
              i32.store8 offset=8
              local.get 1
              i32.const 0
              i32.store offset=9 align=1
            end
            local.get 3
            local.get 1
            i32.const 8
            i32.add
            i32.const 1
            call 22
            local.get 1
            i32.const 16
            i32.add
            global.set 0
          end
          local.get 5
          i32.const 32
          i32.add
          global.set 0
          i32.const 16
          br 2 (;@1;)
        end
        local.get 0
        i32.const 12
        i32.add
        i32.const 0
        i32.store8
        local.get 0
        i32.const 0
        i32.store offset=8
        local.get 0
        i32.const 4
        i32.store8 offset=8
      end
      local.get 3
      local.get 0
      i32.const 8
      i32.add
      i32.const 1
      call 22
      i32.const 16
    end
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.const 255
      i32.and
      local.tee 0
      i32.const 16
      i32.eq
      if  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load
          local.tee 0
          i32.const -2147483648
          i32.ne
          if  ;; label = @4
            local.get 7
            local.get 3
            i64.load offset=4 align=4
            i64.store offset=4 align=4
            br 1 (;@3;)
          end
          local.get 7
          i32.const 2
          i32.store8 offset=4
        end
        local.get 7
        local.get 0
        i32.store
        br 1 (;@1;)
      end
      local.get 7
      i32.const -2147483648
      i32.store
      local.get 7
      local.get 0
      i32.store8 offset=4
      local.get 3
      call 27
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=28
    local.get 2
    i64.const 4294967296
    i64.store offset=20 align=4
    block  ;; label = @1
      local.get 2
      i32.load offset=8
      i32.const -2147483648
      i32.eq
      if  ;; label = @2
        local.get 9
        local.get 2
        i64.load offset=20 align=4
        i64.store align=4
        local.get 9
        i32.const 8
        i32.add
        local.get 2
        i32.const 28
        i32.add
        i32.load
        i32.store
        br 1 (;@1;)
      end
      local.get 9
      local.get 2
      i64.load offset=8 align=4
      i64.store align=4
      local.get 9
      i32.const 8
      i32.add
      local.get 2
      i32.const 16
      i32.add
      i32.load
      i32.store
      local.get 2
      i32.const 20
      i32.add
      call 27
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 11
    i32.load offset=244
    local.tee 0
    i32.const 512000001
    i32.ge_u
    if  ;; label = @1
      local.get 0
      i32.const 512000000
      i32.const 1048728
      call 54
      unreachable
    end
    i32.const 545052848
    local.get 0
    local.get 11
    i32.load offset=240
    local.get 0
    i32.const 1048744
    call 21
    local.get 11
    i32.const 236
    i32.add
    call 27
    local.get 11
    i32.const 272
    i32.add
    global.set 0
    local.get 0)
  (func (;12;) (type 1) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 9
      i32.ge_u
      if  ;; label = @2
        local.get 1
        local.get 0
        call 43
        br 1 (;@1;)
      end
      local.get 0
      call 42
    end)
  (func (;13;) (type 0) (param i32 i32)
    (local i32 i32)
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
          call 41
          br 2 (;@1;)
        end
        i32.const 1048873
        i32.const 1048920
        call 55
        unreachable
      end
      i32.const 1048936
      i32.const 1048984
      call 55
      unreachable
    end)
  (func (;14;) (type 7) (param i32 i32 i32 i32) (result i32)
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
                        call 43
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
                                  i32.const 1057053300
                                  i32.load
                                  i32.eq
                                  br_if 4 (;@11;)
                                  local.get 7
                                  i32.const 1057053296
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
                                  call 39
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
                            i32.const 1057053288
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
                            i32.const 1057053296
                            local.get 1
                            i32.store
                            i32.const 1057053288
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
                          call 39
                          br 9 (;@2;)
                        end
                        i32.const 1057053292
                        i32.load
                        local.get 4
                        i32.add
                        local.tee 4
                        local.get 1
                        i32.gt_u
                        br_if 7 (;@3;)
                      end
                      local.get 3
                      call 42
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
                      call 61
                      local.get 0
                      call 41
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
                    call 61
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
                    call 41
                  end
                  local.get 8
                  br 6 (;@1;)
                end
                i32.const 1048873
                i32.const 1048920
                call 55
                unreachable
              end
              i32.const 1048936
              i32.const 1048984
              call 55
              unreachable
            end
            i32.const 1048873
            i32.const 1048920
            call 55
            unreachable
          end
          i32.const 1048936
          i32.const 1048984
          call 55
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
        i32.const 1057053292
        local.get 1
        i32.store
        i32.const 1057053300
        local.get 2
        i32.store
        local.get 0
        br 1 (;@1;)
      end
      local.get 0
    end)
  (func (;15;) (type 3) (param i32)
    local.get 0
    call 27
    local.get 0
    i32.load8_u offset=12
    i32.const 2
    i32.sub
    i32.const 255
    i32.and
    i32.const 4
    i32.le_u
    if  ;; label = @1
      local.get 0
      i32.const 16
      i32.add
      call 27
    end)
  (func (;16;) (type 3) (param i32)
    local.get 0
    i32.load
    i32.const -2147483648
    i32.ne
    if  ;; label = @1
      local.get 0
      call 27
    end)
  (func (;17;) (type 3) (param i32)
    local.get 0
    call 27
    local.get 0
    i32.const 12
    i32.add
    call 27)
  (func (;18;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 10
    global.set 0
    local.get 1
    i32.load offset=4
    local.tee 11
    local.get 1
    i32.load
    local.tee 4
    i32.sub
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 5
          local.set 8
          local.get 5
          i32.const 35
          i32.eq
          br_if 1 (;@2;)
          local.get 4
          local.get 11
          i32.eq
          if  ;; label = @4
            i32.const 4
            local.set 8
            br 2 (;@2;)
          end
          local.get 1
          local.get 4
          i32.const 1
          i32.add
          local.tee 7
          i32.store
          local.get 6
          i32.const 1
          i32.sub
          local.set 6
          local.get 4
          i32.load8_s
          local.tee 9
          i32.const 127
          i32.and
          local.get 5
          i32.shl
          local.get 2
          i32.or
          local.set 2
          local.get 5
          i32.const 7
          i32.add
          local.set 5
          local.get 7
          local.set 4
          local.get 9
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const 35
        i32.eq
        local.get 9
        i32.const 15
        i32.gt_u
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.get 6
        i32.le_u
        if  ;; label = @3
          local.get 1
          local.get 2
          local.get 4
          i32.add
          i32.store
          local.get 10
          i32.const 4
          i32.add
          local.set 5
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.const 7
              i32.sub
              local.tee 1
              i32.const 0
              local.get 1
              local.get 2
              i32.le_u
              select
              local.set 11
              local.get 4
              i32.const 3
              i32.add
              i32.const -4
              i32.and
              local.get 4
              i32.sub
              local.set 7
              loop  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      local.get 4
                      i32.add
                      i32.load8_u
                      local.tee 8
                      i32.extend8_s
                      local.tee 9
                      i32.const 0
                      i32.ge_s
                      if  ;; label = @10
                        local.get 7
                        local.get 3
                        i32.sub
                        i32.const 3
                        i32.and
                        br_if 1 (;@9;)
                        local.get 3
                        local.get 11
                        i32.ge_u
                        br_if 2 (;@8;)
                        loop  ;; label = @11
                          local.get 3
                          local.get 4
                          i32.add
                          local.tee 1
                          i32.load offset=4
                          local.get 1
                          i32.load
                          i32.or
                          i32.const -2139062144
                          i32.and
                          br_if 3 (;@8;)
                          local.get 3
                          i32.const 8
                          i32.add
                          local.tee 3
                          local.get 11
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                        br 2 (;@8;)
                      end
                      i64.const 1099511627776
                      local.set 13
                      i64.const 4294967296
                      local.set 12
                      block  ;; label = @10
                        block  ;; label = @11
                          block (result i64)  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 8
                                              i32.const 1049592
                                              i32.add
                                              i32.load8_u
                                              i32.const 2
                                              i32.sub
                                              br_table 0 (;@21;) 1 (;@20;) 2 (;@19;) 10 (;@11;)
                                            end
                                            local.get 3
                                            i32.const 1
                                            i32.add
                                            local.tee 1
                                            local.get 2
                                            i32.lt_u
                                            br_if 2 (;@18;)
                                            i64.const 0
                                            local.set 13
                                            i64.const 0
                                            local.set 12
                                            br 9 (;@11;)
                                          end
                                          i64.const 0
                                          local.set 13
                                          local.get 3
                                          i32.const 1
                                          i32.add
                                          local.tee 1
                                          local.get 2
                                          i32.lt_u
                                          br_if 2 (;@17;)
                                          i64.const 0
                                          local.set 12
                                          br 8 (;@11;)
                                        end
                                        i64.const 0
                                        local.set 13
                                        local.get 3
                                        i32.const 1
                                        i32.add
                                        local.tee 1
                                        local.get 2
                                        i32.lt_u
                                        br_if 2 (;@16;)
                                        i64.const 0
                                        local.set 12
                                        br 7 (;@11;)
                                      end
                                      local.get 1
                                      local.get 4
                                      i32.add
                                      i32.load8_s
                                      i32.const -65
                                      i32.gt_s
                                      br_if 6 (;@11;)
                                      br 7 (;@10;)
                                    end
                                    local.get 1
                                    local.get 4
                                    i32.add
                                    i32.load8_s
                                    local.set 6
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 8
                                        i32.const 224
                                        i32.sub
                                        local.tee 1
                                        if  ;; label = @19
                                          local.get 1
                                          i32.const 13
                                          i32.eq
                                          if  ;; label = @20
                                            br 2 (;@18;)
                                          else
                                            br 3 (;@17;)
                                          end
                                          unreachable
                                        end
                                        local.get 6
                                        i32.const -32
                                        i32.and
                                        i32.const -96
                                        i32.eq
                                        br_if 4 (;@14;)
                                        br 3 (;@15;)
                                      end
                                      local.get 6
                                      i32.const -97
                                      i32.gt_s
                                      br_if 2 (;@15;)
                                      br 3 (;@14;)
                                    end
                                    local.get 9
                                    i32.const 31
                                    i32.add
                                    i32.const 255
                                    i32.and
                                    i32.const 12
                                    i32.ge_u
                                    if  ;; label = @17
                                      local.get 9
                                      i32.const -2
                                      i32.and
                                      i32.const -18
                                      i32.ne
                                      br_if 2 (;@15;)
                                      local.get 6
                                      i32.const -64
                                      i32.lt_s
                                      br_if 3 (;@14;)
                                      br 2 (;@15;)
                                    end
                                    local.get 6
                                    i32.const -64
                                    i32.lt_s
                                    br_if 2 (;@14;)
                                    br 1 (;@15;)
                                  end
                                  local.get 1
                                  local.get 4
                                  i32.add
                                  i32.load8_s
                                  local.set 1
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 8
                                          i32.const 240
                                          i32.sub
                                          br_table 1 (;@18;) 0 (;@19;) 0 (;@19;) 0 (;@19;) 2 (;@17;) 0 (;@19;)
                                        end
                                        local.get 9
                                        i32.const 15
                                        i32.add
                                        i32.const 255
                                        i32.and
                                        i32.const 2
                                        i32.gt_u
                                        local.get 1
                                        i32.const -64
                                        i32.ge_s
                                        i32.or
                                        br_if 3 (;@15;)
                                        br 2 (;@16;)
                                      end
                                      local.get 1
                                      i32.const 112
                                      i32.add
                                      i32.const 255
                                      i32.and
                                      i32.const 48
                                      i32.ge_u
                                      br_if 2 (;@15;)
                                      br 1 (;@16;)
                                    end
                                    local.get 1
                                    i32.const -113
                                    i32.gt_s
                                    br_if 1 (;@15;)
                                  end
                                  local.get 2
                                  local.get 3
                                  i32.const 2
                                  i32.add
                                  local.tee 1
                                  i32.le_u
                                  if  ;; label = @16
                                    i64.const 0
                                    local.set 12
                                    br 5 (;@11;)
                                  end
                                  local.get 1
                                  local.get 4
                                  i32.add
                                  i32.load8_s
                                  i32.const -65
                                  i32.gt_s
                                  br_if 2 (;@13;)
                                  i64.const 0
                                  local.set 12
                                  local.get 3
                                  i32.const 3
                                  i32.add
                                  local.tee 1
                                  local.get 2
                                  i32.ge_u
                                  br_if 4 (;@11;)
                                  local.get 1
                                  local.get 4
                                  i32.add
                                  i32.load8_s
                                  i32.const -65
                                  i32.le_s
                                  br_if 5 (;@10;)
                                  i64.const 3298534883328
                                  br 3 (;@12;)
                                end
                                i64.const 1099511627776
                                br 2 (;@12;)
                              end
                              i64.const 0
                              local.set 12
                              local.get 3
                              i32.const 2
                              i32.add
                              local.tee 1
                              local.get 2
                              i32.ge_u
                              br_if 2 (;@11;)
                              local.get 1
                              local.get 4
                              i32.add
                              i32.load8_s
                              i32.const -65
                              i32.le_s
                              br_if 3 (;@10;)
                            end
                            i64.const 2199023255552
                          end
                          local.set 13
                          i64.const 4294967296
                          local.set 12
                        end
                        local.get 5
                        local.get 13
                        local.get 3
                        i64.extend_i32_u
                        i64.or
                        local.get 12
                        i64.or
                        i64.store offset=4 align=4
                        local.get 5
                        i32.const 1
                        i32.store
                        br 6 (;@4;)
                      end
                      local.get 1
                      i32.const 1
                      i32.add
                      local.set 3
                      br 2 (;@7;)
                    end
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    br 1 (;@7;)
                  end
                  local.get 2
                  local.get 3
                  i32.le_u
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 3
                    local.get 4
                    i32.add
                    i32.load8_s
                    i32.const 0
                    i32.lt_s
                    br_if 1 (;@7;)
                    local.get 2
                    local.get 3
                    i32.const 1
                    i32.add
                    local.tee 3
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  br 2 (;@5;)
                end
                local.get 2
                local.get 3
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 5
            local.get 2
            i32.store offset=8
            local.get 5
            local.get 4
            i32.store offset=4
            local.get 5
            i32.const 0
            i32.store
          end
          local.get 10
          i32.load offset=4
          i32.eqz
          if  ;; label = @4
            local.get 10
            i32.load offset=8
            local.set 1
            local.get 10
            i32.load offset=12
            local.set 7
            global.get 0
            i32.const 16
            i32.sub
            local.tee 2
            global.set 0
            local.get 2
            i32.const 4
            i32.add
            local.get 7
            i32.const 1
            i32.const 1
            call 26
            local.get 2
            i32.load offset=8
            local.set 4
            local.get 2
            i32.load offset=4
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 4
              local.get 2
              i32.load offset=12
              call 52
              unreachable
            end
            local.get 2
            i32.load offset=12
            local.get 1
            local.get 7
            call 61
            local.set 1
            local.get 0
            local.get 7
            i32.store offset=8
            local.get 0
            local.get 1
            i32.store offset=4
            local.get 0
            local.get 4
            i32.store
            local.get 2
            i32.const 16
            i32.add
            global.set 0
            br 3 (;@1;)
          end
          local.get 0
          i32.const -2147483648
          i32.store
          local.get 0
          i32.const 8
          i32.store8 offset=4
          br 2 (;@1;)
        end
        local.get 0
        i32.const -2147483648
        i32.store
        local.get 0
        i32.const 4
        i32.store8 offset=4
        br 1 (;@1;)
      end
      local.get 0
      i32.const -2147483648
      i32.store
      local.get 0
      local.get 8
      i32.store8 offset=4
    end
    local.get 10
    i32.const 16
    i32.add
    global.set 0)
  (func (;19;) (type 5) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    i32.add
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;20;) (type 3) (param i32)
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i64.const 4294967296
    i64.store align=4)
  (func (;21;) (type 8) (param i32 i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.ne
    if  ;; label = @1
      global.get 0
      i32.const 48
      i32.sub
      local.tee 0
      global.set 0
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 0
      i32.const 3
      i32.store offset=12
      local.get 0
      i32.const 1049568
      i32.store offset=8
      local.get 0
      i64.const 2
      i64.store offset=20 align=4
      local.get 0
      local.get 0
      i64.extend_i32_u
      i64.const 8589934592
      i64.or
      i64.store offset=40
      local.get 0
      local.get 0
      i32.const 4
      i32.add
      i64.extend_i32_u
      i64.const 8589934592
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
      local.get 4
      call 56
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    call 61
    drop)
  (func (;22;) (type 5) (param i32 i32 i32)
    (local i32 i32)
    local.get 1
    local.get 2
    i32.add
    local.get 1
    i32.sub
    local.tee 4
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.tee 2
    i32.sub
    i32.gt_u
    if  ;; label = @1
      global.get 0
      i32.const 16
      i32.sub
      local.tee 3
      global.set 0
      local.get 3
      i32.const 8
      i32.add
      local.get 0
      local.get 2
      local.get 4
      i32.const 1
      i32.const 1
      call 23
      local.get 3
      i32.load offset=8
      local.tee 2
      i32.const -2147483647
      i32.ne
      if  ;; label = @2
        local.get 2
        local.get 3
        i32.load offset=12
        call 52
        unreachable
      end
      local.get 3
      i32.const 16
      i32.add
      global.set 0
      local.get 0
      i32.load offset=8
      local.set 2
    end
    local.get 0
    i32.load offset=4
    local.get 2
    i32.add
    local.get 1
    local.get 4
    call 61
    drop
    local.get 0
    local.get 2
    local.get 4
    i32.add
    i32.store offset=8)
  (func (;23;) (type 12) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 6
    global.set 0
    block  ;; label = @1
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 2
      local.get 3
      i32.add
      local.tee 8
      i32.gt_u
      br_if 0 (;@1;)
      local.get 4
      local.get 5
      i32.add
      i32.const 1
      i32.sub
      i32.const 0
      local.get 4
      i32.sub
      i32.and
      i64.extend_i32_u
      i32.const 8
      i32.const 4
      i32.const 1
      local.get 5
      i32.const 1025
      i32.lt_u
      select
      local.get 5
      i32.const 1
      i32.eq
      select
      local.tee 9
      local.get 1
      i32.load
      local.tee 3
      i32.const 1
      i32.shl
      local.tee 2
      local.get 8
      local.get 2
      local.get 8
      i32.gt_u
      select
      local.tee 2
      local.get 2
      local.get 9
      i32.lt_u
      select
      local.tee 8
      i64.extend_i32_u
      i64.mul
      local.tee 10
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      br_if 0 (;@1;)
      local.get 10
      i32.wrap_i64
      local.tee 2
      i32.const -2147483648
      local.get 4
      i32.sub
      i32.gt_u
      br_if 0 (;@1;)
      local.get 6
      local.get 3
      if (result i32)  ;; label = @2
        local.get 6
        local.get 3
        local.get 5
        i32.mul
        i32.store offset=28
        local.get 6
        local.get 1
        i32.load offset=4
        i32.store offset=20
        local.get 4
      else
        i32.const 0
      end
      i32.store offset=24
      local.get 6
      i32.const 20
      i32.add
      local.set 5
      local.get 6
      i32.const 8
      i32.add
      local.tee 7
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block (result i32)  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 0
              i32.ge_s
              if  ;; label = @6
                local.get 5
                i32.load offset=4
                if  ;; label = @7
                  local.get 5
                  i32.load offset=8
                  local.tee 3
                  if  ;; label = @8
                    local.get 5
                    i32.load
                    local.get 3
                    local.get 4
                    local.get 2
                    call 14
                    br 4 (;@4;)
                  end
                end
                local.get 2
                i32.eqz
                br_if 1 (;@5;)
                i32.const 1057052849
                i32.load8_u
                drop
                local.get 2
                local.get 4
                call 12
                br 2 (;@4;)
              end
              local.get 7
              i32.const 0
              i32.store offset=4
              br 2 (;@3;)
            end
            local.get 4
          end
          local.tee 3
          if  ;; label = @4
            local.get 7
            local.get 2
            i32.store offset=8
            local.get 7
            local.get 3
            i32.store offset=4
            i32.const 0
            br 2 (;@2;)
          end
          local.get 7
          local.get 2
          i32.store offset=8
          local.get 7
          local.get 4
          i32.store offset=4
        end
        i32.const 1
      end
      i32.store
      local.get 6
      i32.load offset=8
      i32.eqz
      if  ;; label = @2
        local.get 6
        i32.load offset=12
        local.set 2
        local.get 1
        local.get 8
        i32.store
        local.get 1
        local.get 2
        i32.store offset=4
        i32.const -2147483647
        local.set 7
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=16
      local.set 9
      local.get 6
      i32.load offset=12
      local.set 7
    end
    local.get 0
    local.get 9
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store
    local.get 6
    i32.const 32
    i32.add
    global.set 0)
  (func (;24;) (type 3) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    local.get 0
    i32.load
    i32.const 1
    i32.const 1
    i32.const 1
    call 23
    local.get 1
    i32.load offset=8
    local.tee 0
    i32.const -2147483647
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load offset=12
      call 52
      unreachable
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;25;) (type 0) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      local.get 2
      i32.mul
      call 13
    end)
  (func (;26;) (type 13) (param i32 i32 i32 i32)
    (local i64 i32)
    local.get 0
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 3
        i32.add
        i32.const 1
        i32.sub
        i32.const 0
        local.get 2
        i32.sub
        i32.and
        i64.extend_i32_u
        local.get 1
        i64.extend_i32_u
        i64.mul
        local.tee 4
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        br_if 0 (;@2;)
        local.get 4
        i32.wrap_i64
        local.tee 3
        i32.const -2147483648
        local.get 2
        i32.sub
        i32.gt_u
        br_if 0 (;@2;)
        local.get 3
        i32.eqz
        if  ;; label = @3
          local.get 0
          local.get 2
          i32.store offset=8
          local.get 0
          i32.const 0
          i32.store offset=4
          i32.const 0
          br 2 (;@1;)
        end
        i32.const 1057052849
        i32.load8_u
        drop
        local.get 3
        local.get 2
        call 12
        local.tee 5
        if  ;; label = @3
          local.get 0
          local.get 5
          i32.store offset=8
          local.get 0
          local.get 1
          i32.store offset=4
          i32.const 0
          br 2 (;@1;)
        end
        local.get 0
        local.get 3
        i32.store offset=8
        local.get 0
        local.get 2
        i32.store offset=4
        i32.const 1
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=4
      i32.const 1
    end
    i32.store)
  (func (;27;) (type 3) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 1
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      call 13
    end)
  (func (;28;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 60)
  (func (;29;) (type 0) (param i32 i32)
    local.get 0
    i64.const 7199936582794304877
    i64.store offset=8
    local.get 0
    i64.const -5076933981314334344
    i64.store)
  (func (;30;) (type 0) (param i32 i32)
    local.get 0
    i64.const 2996301632337382407
    i64.store offset=8
    local.get 0
    i64.const 8830168746503066253
    i64.store)
  (func (;31;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64)
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
      call 52
      unreachable
    end
    i32.const 8
    local.get 0
    i32.load
    local.tee 4
    i32.const 1
    i32.shl
    local.tee 1
    local.get 2
    local.get 1
    local.get 2
    i32.gt_u
    select
    local.tee 2
    local.get 2
    i32.const 8
    i32.lt_u
    select
    local.tee 2
    i64.extend_i32_u
    local.tee 7
    i64.const 32
    i64.shr_u
    i64.eqz
    i32.eqz
    if  ;; label = @1
      i32.const 0
      i32.const 0
      call 52
      unreachable
    end
    block  ;; label = @1
      local.get 7
      i32.wrap_i64
      local.tee 5
      i32.const 2147483647
      i32.le_u
      if  ;; label = @2
        local.get 3
        local.get 4
        if (result i32)  ;; label = @3
          local.get 3
          local.get 4
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
        local.get 5
        local.get 3
        i32.const 20
        i32.add
        call 37
        local.get 3
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=12
        local.set 6
        local.get 3
        i32.load offset=16
        local.set 1
      end
      local.get 6
      local.get 1
      call 52
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
  (func (;32;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1048808
    local.get 1
    call 58)
  (func (;33;) (type 3) (param i32)
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
      call 13
    end)
  (func (;34;) (type 0) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func (;35;) (type 1) (param i32 i32) (result i32)
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
          local.tee 6
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
              call 52
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
            local.tee 7
            local.get 5
            local.get 7
            i32.gt_u
            select
            local.tee 5
            local.get 5
            i32.const 8
            i32.le_u
            select
            local.tee 5
            i32.const 0
            i32.lt_s
            if  ;; label = @5
              i32.const 0
              i32.const 0
              call 52
              unreachable
            end
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
            local.get 5
            local.get 2
            i32.const 20
            i32.add
            call 37
            local.get 2
            i32.load offset=8
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 2
              i32.load offset=12
              local.get 2
              i32.load offset=16
              call 52
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
          local.get 6
          i32.const 1
          i32.add
          i32.store offset=8
          local.get 0
          i32.load offset=4
          local.get 6
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
        call 31
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
      call 61
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
  (func (;36;) (type 2) (param i32 i32 i32) (result i32)
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
      call 31
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
    call 61
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;37;) (type 5) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.const 0
      i32.ge_s
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 2
          i32.load offset=4
          if  ;; label = @4
            local.get 2
            i32.load offset=8
            local.tee 3
            if  ;; label = @5
              local.get 2
              i32.load
              local.get 3
              i32.const 1
              local.get 1
              call 14
              br 2 (;@3;)
            end
          end
          i32.const 1
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          drop
          i32.const 1057052849
          i32.load8_u
          drop
          local.get 1
          i32.const 1
          call 12
        end
        local.tee 2
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.store offset=8
          local.get 0
          local.get 2
          i32.store offset=4
          local.get 0
          i32.const 0
          i32.store
          return
        end
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 0
        i32.const 1
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
  (func (;38;) (type 0) (param i32 i32)
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
          i32.const 1057052872
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
          i32.const 1057053284
          i32.const 1057053284
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
        i32.const 1057053280
        i32.const 1057053280
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
  (func (;39;) (type 0) (param i32 i32)
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
        i32.const 1057053296
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
          i32.const 1057053288
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
              i32.const 1057053300
              i32.load
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 1057053296
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
              i32.const 1057053296
              i32.load
              i32.ne
              br_if 1 (;@4;)
              i32.const 1057053288
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
            call 40
            return
          end
          local.get 1
          i32.const 248
          i32.and
          i32.const 1057053016
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1057053280
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
              i32.const 1057053280
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
        i32.const 1057053300
        local.get 0
        i32.store
        i32.const 1057053292
        i32.const 1057053292
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
        i32.const 1057053296
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1057053288
        i32.const 0
        i32.store
        i32.const 1057053296
        i32.const 0
        i32.store
        return
      end
      i32.const 1057053296
      local.get 0
      i32.store
      i32.const 1057053288
      i32.const 1057053288
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
  (func (;40;) (type 0) (param i32 i32)
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
    i32.const 1057052872
    i32.add
    local.set 4
    i32.const 1
    local.get 2
    i32.shl
    local.tee 3
    i32.const 1057053284
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
      i32.const 1057053284
      i32.const 1057053284
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
  (func (;41;) (type 3) (param i32)
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
        i32.const 1057053296
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
          i32.const 1057053288
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
                  i32.const 1057053300
                  i32.load
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1057053296
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
                  i32.const 1057053296
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1057053288
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
              call 40
              i32.const 0
              local.set 1
              i32.const 1057053320
              i32.const 1057053320
              i32.load
              i32.const 1
              i32.sub
              local.tee 0
              i32.store
              local.get 0
              br_if 4 (;@1;)
              i32.const 1057053008
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
              i32.const 1057053320
              i32.const 4095
              local.get 1
              local.get 1
              i32.const 4095
              i32.le_u
              select
              i32.store
              return
            end
            i32.const 1057053300
            local.get 1
            i32.store
            i32.const 1057053292
            i32.const 1057053292
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
            i32.const 1057053296
            i32.load
            local.get 1
            i32.eq
            if  ;; label = @5
              i32.const 1057053288
              i32.const 0
              i32.store
              i32.const 1057053296
              i32.const 0
              i32.store
            end
            local.get 0
            i32.const 1057053312
            i32.load
            local.tee 3
            i32.le_u
            br_if 3 (;@1;)
            i32.const 1057053300
            i32.load
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            local.set 0
            i32.const 1057053292
            i32.load
            local.tee 4
            i32.const 41
            i32.lt_u
            br_if 2 (;@2;)
            i32.const 1057053000
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
          i32.const 1057053296
          local.get 1
          i32.store
          i32.const 1057053288
          i32.const 1057053288
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
        i32.const 1057053016
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 1057053280
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
            i32.const 1057053280
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
      i32.const 1057053008
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
      i32.const 1057053320
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
      i32.const 1057053312
      i32.const -1
      i32.store
    end)
  (func (;42;) (type 4) (param i32) (result i32)
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
                    i32.const 1057053284
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
                    i32.const 1057052872
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
                  i32.const 1057053280
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
                      i32.const 1057053016
                      i32.add
                      local.tee 3
                      local.get 0
                      i32.const 1057053024
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
                      i32.const 1057053280
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
                  i32.const 1057053288
                  i32.load
                  i32.le_u
                  br_if 3 (;@4;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1057053284
                        i32.load
                        local.tee 0
                        i32.eqz
                        br_if 6 (;@4;)
                        local.get 0
                        i32.ctz
                        i32.const 2
                        i32.shl
                        i32.const 1057052872
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
                            i32.const 1057052872
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
                            i32.const 1057053284
                            i32.const 1057053284
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
                        i32.const 1057053016
                        i32.add
                        local.tee 3
                        local.get 1
                        i32.const 1057053024
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
                        i32.const 1057053280
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
                      i32.const 1057053288
                      i32.load
                      local.tee 4
                      if  ;; label = @10
                        local.get 4
                        i32.const -8
                        i32.and
                        i32.const 1057053016
                        i32.add
                        local.set 1
                        i32.const 1057053296
                        i32.load
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 1057053280
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
                            i32.const 1057053280
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
                      i32.const 1057053296
                      local.get 6
                      i32.store
                      i32.const 1057053288
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
                        i32.const 1057053288
                        i32.load
                        local.tee 6
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 6
                        i32.const -8
                        i32.and
                        i32.const 1057053016
                        i32.add
                        local.set 0
                        i32.const 1057053296
                        i32.load
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 1057053280
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
                            i32.const 1057053280
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
                    i32.const 1057053296
                    local.get 3
                    i32.store
                    i32.const 1057053288
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
                  i32.const 1057052872
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
            i32.const 1057053288
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
            i32.const 1057052872
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
            i32.const 1057053284
            i32.const 1057053284
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
                    i32.const 1057053288
                    i32.load
                    local.tee 1
                    i32.gt_u
                    if  ;; label = @9
                      local.get 5
                      i32.const 1057053292
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
                        i32.const 1057053304
                        local.get 8
                        i32.load offset=8
                        local.tee 4
                        i32.const 1057053304
                        i32.load
                        i32.add
                        local.tee 0
                        i32.store
                        i32.const 1057053308
                        i32.const 1057053308
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
                            i32.const 1057053300
                            i32.load
                            local.tee 2
                            if  ;; label = @13
                              i32.const 1057053000
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
                            i32.const 1057053316
                            i32.load
                            local.tee 0
                            i32.const 0
                            local.get 0
                            local.get 1
                            i32.le_u
                            select
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1057053316
                              local.get 1
                              i32.store
                            end
                            i32.const 1057053320
                            i32.const 4095
                            i32.store
                            i32.const 1057053012
                            local.get 6
                            i32.store
                            i32.const 1057053004
                            local.get 4
                            i32.store
                            i32.const 1057053000
                            local.get 1
                            i32.store
                            i32.const 1057053028
                            i32.const 1057053016
                            i32.store
                            i32.const 1057053036
                            i32.const 1057053024
                            i32.store
                            i32.const 1057053024
                            i32.const 1057053016
                            i32.store
                            i32.const 1057053044
                            i32.const 1057053032
                            i32.store
                            i32.const 1057053032
                            i32.const 1057053024
                            i32.store
                            i32.const 1057053052
                            i32.const 1057053040
                            i32.store
                            i32.const 1057053040
                            i32.const 1057053032
                            i32.store
                            i32.const 1057053060
                            i32.const 1057053048
                            i32.store
                            i32.const 1057053048
                            i32.const 1057053040
                            i32.store
                            i32.const 1057053068
                            i32.const 1057053056
                            i32.store
                            i32.const 1057053056
                            i32.const 1057053048
                            i32.store
                            i32.const 1057053076
                            i32.const 1057053064
                            i32.store
                            i32.const 1057053064
                            i32.const 1057053056
                            i32.store
                            i32.const 1057053084
                            i32.const 1057053072
                            i32.store
                            i32.const 1057053072
                            i32.const 1057053064
                            i32.store
                            i32.const 1057053092
                            i32.const 1057053080
                            i32.store
                            i32.const 1057053080
                            i32.const 1057053072
                            i32.store
                            i32.const 1057053088
                            i32.const 1057053080
                            i32.store
                            i32.const 1057053100
                            i32.const 1057053088
                            i32.store
                            i32.const 1057053096
                            i32.const 1057053088
                            i32.store
                            i32.const 1057053108
                            i32.const 1057053096
                            i32.store
                            i32.const 1057053104
                            i32.const 1057053096
                            i32.store
                            i32.const 1057053116
                            i32.const 1057053104
                            i32.store
                            i32.const 1057053112
                            i32.const 1057053104
                            i32.store
                            i32.const 1057053124
                            i32.const 1057053112
                            i32.store
                            i32.const 1057053120
                            i32.const 1057053112
                            i32.store
                            i32.const 1057053132
                            i32.const 1057053120
                            i32.store
                            i32.const 1057053128
                            i32.const 1057053120
                            i32.store
                            i32.const 1057053140
                            i32.const 1057053128
                            i32.store
                            i32.const 1057053136
                            i32.const 1057053128
                            i32.store
                            i32.const 1057053148
                            i32.const 1057053136
                            i32.store
                            i32.const 1057053144
                            i32.const 1057053136
                            i32.store
                            i32.const 1057053156
                            i32.const 1057053144
                            i32.store
                            i32.const 1057053164
                            i32.const 1057053152
                            i32.store
                            i32.const 1057053152
                            i32.const 1057053144
                            i32.store
                            i32.const 1057053172
                            i32.const 1057053160
                            i32.store
                            i32.const 1057053160
                            i32.const 1057053152
                            i32.store
                            i32.const 1057053180
                            i32.const 1057053168
                            i32.store
                            i32.const 1057053168
                            i32.const 1057053160
                            i32.store
                            i32.const 1057053188
                            i32.const 1057053176
                            i32.store
                            i32.const 1057053176
                            i32.const 1057053168
                            i32.store
                            i32.const 1057053196
                            i32.const 1057053184
                            i32.store
                            i32.const 1057053184
                            i32.const 1057053176
                            i32.store
                            i32.const 1057053204
                            i32.const 1057053192
                            i32.store
                            i32.const 1057053192
                            i32.const 1057053184
                            i32.store
                            i32.const 1057053212
                            i32.const 1057053200
                            i32.store
                            i32.const 1057053200
                            i32.const 1057053192
                            i32.store
                            i32.const 1057053220
                            i32.const 1057053208
                            i32.store
                            i32.const 1057053208
                            i32.const 1057053200
                            i32.store
                            i32.const 1057053228
                            i32.const 1057053216
                            i32.store
                            i32.const 1057053216
                            i32.const 1057053208
                            i32.store
                            i32.const 1057053236
                            i32.const 1057053224
                            i32.store
                            i32.const 1057053224
                            i32.const 1057053216
                            i32.store
                            i32.const 1057053244
                            i32.const 1057053232
                            i32.store
                            i32.const 1057053232
                            i32.const 1057053224
                            i32.store
                            i32.const 1057053252
                            i32.const 1057053240
                            i32.store
                            i32.const 1057053240
                            i32.const 1057053232
                            i32.store
                            i32.const 1057053260
                            i32.const 1057053248
                            i32.store
                            i32.const 1057053248
                            i32.const 1057053240
                            i32.store
                            i32.const 1057053268
                            i32.const 1057053256
                            i32.store
                            i32.const 1057053256
                            i32.const 1057053248
                            i32.store
                            i32.const 1057053276
                            i32.const 1057053264
                            i32.store
                            i32.const 1057053264
                            i32.const 1057053256
                            i32.store
                            i32.const 1057053300
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
                            i32.const 1057053272
                            i32.const 1057053264
                            i32.store
                            i32.const 1057053292
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
                            i32.const 1057053312
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
                        i32.const 1057053316
                        i32.const 1057053316
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
                        i32.const 1057053000
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
                          i32.const 1057053000
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
                          i32.const 1057053300
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
                          i32.const 1057053292
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
                          i32.const 1057053312
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
                          i32.const 1057053000
                          i64.load align=4
                          local.set 10
                          local.get 3
                          i32.const 16
                          i32.add
                          i32.const 1057053008
                          i64.load align=4
                          i64.store align=4
                          local.get 3
                          local.get 10
                          i64.store offset=8 align=4
                          i32.const 1057053012
                          local.get 6
                          i32.store
                          i32.const 1057053004
                          local.get 4
                          i32.store
                          i32.const 1057053000
                          local.get 1
                          i32.store
                          i32.const 1057053008
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
                            call 40
                            br 8 (;@4;)
                          end
                          local.get 0
                          i32.const 248
                          i32.and
                          i32.const 1057053016
                          i32.add
                          local.set 1
                          block (result i32)  ;; label = @12
                            i32.const 1057053280
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
                              i32.const 1057053280
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
                        i32.const 1057053300
                        i32.load
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 4
                        i32.const 1057053296
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
                          call 40
                          br 6 (;@5;)
                        end
                        local.get 5
                        i32.const 248
                        i32.and
                        i32.const 1057053016
                        i32.add
                        local.set 1
                        block (result i32)  ;; label = @11
                          i32.const 1057053280
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
                            i32.const 1057053280
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
                      i32.const 1057053292
                      local.get 0
                      local.get 5
                      i32.sub
                      local.tee 1
                      i32.store
                      i32.const 1057053300
                      i32.const 1057053300
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
                    i32.const 1057053296
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
                        i32.const 1057053296
                        i32.const 0
                        i32.store
                        i32.const 1057053288
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
                      i32.const 1057053288
                      local.get 2
                      i32.store
                      i32.const 1057053296
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
                  i32.const 1057053300
                  i32.const 1057053300
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
                  i32.const 1057053292
                  i32.const 1057053292
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
                  i32.const 1057053312
                  i32.const 2097152
                  i32.store
                  br 3 (;@4;)
                end
                i32.const 1057053300
                local.get 0
                i32.store
                i32.const 1057053292
                i32.const 1057053292
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
              i32.const 1057053296
              local.get 0
              i32.store
              i32.const 1057053288
              i32.const 1057053288
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
          i32.const 1057053292
          i32.load
          local.tee 0
          local.get 5
          i32.le_u
          br_if 2 (;@1;)
          drop
          i32.const 1057053292
          local.get 0
          local.get 5
          i32.sub
          local.tee 1
          i32.store
          i32.const 1057053300
          i32.const 1057053300
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
            call 40
            br 2 (;@2;)
          end
          local.get 4
          i32.const 248
          i32.and
          i32.const 1057053016
          i32.add
          local.set 1
          block (result i32)  ;; label = @4
            i32.const 1057053280
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
              i32.const 1057053280
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
  (func (;43;) (type 1) (param i32 i32) (result i32)
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
      call 42
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
          call 39
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
        call 39
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3)
  (func (;44;) (type 0) (param i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1057052848
    i32.load8_u
    if  ;; label = @1
      local.get 0
      i32.const 2
      i32.store offset=12
      local.get 0
      i32.const 1049036
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
      i64.const 8589934592
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
      i32.const 1049068
      call 56
      unreachable
    end
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;45;) (type 0) (param i32 i32)
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
      i32.const 1048808
      local.get 2
      i32.const 40
      i32.add
      call 58
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
    i32.const 1057052849
    i32.load8_u
    drop
    local.get 2
    local.get 5
    i64.store
    i32.const 12
    i32.const 4
    call 12
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 12
      call 53
      unreachable
    end
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
    i32.const 1049084
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func (;46;) (type 0) (param i32 i32)
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
      i32.const 1048808
      local.get 2
      i32.const 24
      i32.add
      call 58
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
    i32.const 1049084
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;47;) (type 1) (param i32 i32) (result i32)
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
        call 60
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
      call 58
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;48;) (type 0) (param i32 i32)
    (local i32 i32)
    i32.const 1057052849
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
    call 12
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 8
      call 53
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1049100
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;49;) (type 0) (param i32 i32)
    local.get 0
    i32.const 1049100
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;50;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;51;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    i32.const 1057052868
    i32.const 1057052868
    i32.load
    local.tee 6
    i32.const 1
    i32.add
    i32.store
    block  ;; label = @1
      block (result i32)  ;; label = @2
        i32.const 0
        local.get 6
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        drop
        i32.const 1
        i32.const 1057053328
        i32.load8_u
        br_if 0 (;@2;)
        drop
        i32.const 1057053328
        i32.const 1
        i32.store8
        i32.const 1057053324
        i32.const 1057053324
        i32.load
        i32.const 1
        i32.add
        i32.store
        i32.const 2
      end
      i32.const 255
      i32.and
      local.tee 6
      i32.const 2
      i32.ne
      if  ;; label = @2
        local.get 6
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.const 8
        i32.add
        local.get 0
        local.get 1
        i32.load offset=24
        call_indirect (type 0)
        unreachable
      end
      i32.const 1057052856
      i32.load
      local.tee 6
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 1057052856
      local.get 6
      i32.const 1
      i32.add
      i32.store
      i32.const 1057052856
      i32.const 1057052860
      i32.load
      if (result i32)  ;; label = @2
        local.get 5
        local.get 0
        local.get 1
        i32.load offset=20
        call_indirect (type 0)
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
        i64.load
        i64.store offset=16 align=4
        i32.const 1057052860
        i32.load
        local.get 5
        i32.const 16
        i32.add
        i32.const 1057052864
        i32.load
        i32.load offset=20
        call_indirect (type 0)
        i32.const 1057052856
        i32.load
        i32.const 1
        i32.sub
      else
        local.get 6
      end
      i32.store
      i32.const 1057053328
      i32.const 0
      i32.store8
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      unreachable
    end
    unreachable)
  (func (;52;) (type 0) (param i32 i32)
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
      i32.const 1049192
      i32.store offset=8
      local.get 0
      i64.const 4
      i64.store offset=16 align=4
      local.get 0
      i32.const 8
      i32.add
      i32.const 1049220
      call 56
      unreachable
    end
    local.get 0
    local.get 1
    call 53
    unreachable)
  (func (;53;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1057052852
    i32.load
    local.tee 0
    i32.const 3
    local.get 0
    select
    call_indirect (type 0)
    unreachable)
  (func (;54;) (type 5) (param i32 i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1049488
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 8589934592
    local.tee 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call 56
    unreachable)
  (func (;55;) (type 0) (param i32 i32)
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
  (func (;56;) (type 0) (param i32 i32)
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
      i32.const 1049144
      local.get 0
      i32.load offset=24
      local.get 0
      i32.load offset=28
      local.tee 0
      i32.load8_u offset=28
      local.get 0
      i32.load8_u offset=29
      call 51
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    i32.const 1049116
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.tee 0
    i32.load8_u offset=28
    local.get 0
    i32.load8_u offset=29
    call 51
    unreachable)
  (func (;57;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    local.get 0
    i64.load32_u
    local.set 13
    global.get 0
    i32.const 48
    i32.sub
    local.tee 5
    global.set 0
    i32.const 39
    local.set 0
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
        local.get 5
        i32.const 9
        i32.add
        local.get 0
        i32.add
        local.tee 2
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
        local.tee 4
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 6
        i32.const 1
        i32.shl
        i32.const 1049237
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 2
        i32.const 2
        i32.sub
        local.get 4
        local.get 6
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1049237
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 0
        i32.const 4
        i32.sub
        local.set 0
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
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 2
      i32.sub
      local.tee 0
      local.get 5
      i32.const 9
      i32.add
      i32.add
      local.get 14
      i32.wrap_i64
      local.tee 2
      local.get 2
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 2
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1049237
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      local.get 2
      i32.const 10
      i32.ge_u
      if  ;; label = @2
        local.get 0
        i32.const 2
        i32.sub
        local.tee 0
        local.get 5
        i32.const 9
        i32.add
        i32.add
        local.get 2
        i32.const 1
        i32.shl
        i32.const 1049237
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      i32.sub
      local.tee 0
      local.get 5
      i32.const 9
      i32.add
      i32.add
      local.get 2
      i32.const 48
      i32.or
      i32.store8
    end
    block (result i32)  ;; label = @1
      local.get 5
      i32.const 9
      i32.add
      local.get 0
      i32.add
      local.set 6
      i32.const 39
      local.get 0
      i32.sub
      local.set 4
      i32.const 43
      i32.const 1114112
      local.get 1
      i32.load offset=28
      local.tee 0
      i32.const 1
      i32.and
      local.tee 3
      select
      local.set 8
      local.get 0
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
        local.tee 0
        local.get 1
        i32.load offset=24
        local.tee 1
        local.get 8
        local.get 9
        call 59
        br_if 1 (;@1;)
        drop
        local.get 0
        local.get 6
        local.get 4
        local.get 1
        i32.load offset=12
        call_indirect (type 2)
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.tee 2
            local.get 3
            local.get 4
            i32.add
            local.tee 3
            i32.le_u
            if  ;; label = @5
              local.get 1
              i32.load offset=20
              local.tee 0
              local.get 1
              i32.load offset=24
              local.tee 1
              local.get 8
              local.get 9
              call 59
              i32.eqz
              br_if 1 (;@4;)
              i32.const 1
              br 4 (;@1;)
            end
            local.get 0
            i32.const 8
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.load offset=16
            local.set 11
            local.get 1
            i32.const 48
            i32.store offset=16
            local.get 1
            i32.load8_u offset=32
            local.set 12
            i32.const 1
            local.set 0
            local.get 1
            i32.const 1
            i32.store8 offset=32
            local.get 1
            i32.load offset=20
            local.tee 7
            local.get 1
            i32.load offset=24
            local.tee 10
            local.get 8
            local.get 9
            call 59
            br_if 2 (;@2;)
            local.get 2
            local.get 3
            i32.sub
            i32.const 1
            i32.add
            local.set 0
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.const 1
                i32.sub
                local.tee 0
                i32.eqz
                br_if 1 (;@5;)
                local.get 7
                i32.const 48
                local.get 10
                i32.load offset=16
                call_indirect (type 1)
                i32.eqz
                br_if 0 (;@6;)
              end
              i32.const 1
              br 4 (;@1;)
            end
            i32.const 1
            local.get 7
            local.get 6
            local.get 4
            local.get 10
            i32.load offset=12
            call_indirect (type 2)
            br_if 3 (;@1;)
            drop
            local.get 1
            local.get 12
            i32.store8 offset=32
            local.get 1
            local.get 11
            i32.store offset=16
            i32.const 0
            br 3 (;@1;)
          end
          local.get 0
          local.get 6
          local.get 4
          local.get 1
          i32.load offset=12
          call_indirect (type 2)
          local.set 0
          br 1 (;@2;)
        end
        local.get 2
        local.get 3
        i32.sub
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load8_u offset=32
              local.tee 0
              i32.const 1
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 0 (;@5;) 2 (;@3;)
            end
            local.get 2
            local.set 0
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 2
          i32.const 1
          i32.shr_u
          local.set 0
          local.get 2
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 2
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.load offset=16
        local.set 7
        local.get 1
        i32.load offset=24
        local.set 3
        local.get 1
        i32.load offset=20
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.const 1
            i32.sub
            local.tee 0
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            local.get 7
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
        local.set 0
        local.get 1
        local.get 3
        local.get 8
        local.get 9
        call 59
        br_if 0 (;@2;)
        local.get 1
        local.get 6
        local.get 4
        local.get 3
        i32.load offset=12
        call_indirect (type 2)
        br_if 0 (;@2;)
        i32.const 0
        local.set 0
        loop  ;; label = @3
          i32.const 0
          local.get 0
          local.get 2
          i32.eq
          br_if 2 (;@1;)
          drop
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          local.get 7
          local.get 3
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 0
        i32.const 1
        i32.sub
        local.get 2
        i32.lt_u
        br 1 (;@1;)
      end
      local.get 0
    end
    local.get 5
    i32.const 48
    i32.add
    global.set 0)
  (func (;58;) (type 2) (param i32 i32 i32) (result i32)
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
                  call_indirect (type 2)
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
                call_indirect (type 2)
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
          call_indirect (type 2)
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
  (func (;59;) (type 7) (param i32 i32 i32 i32) (result i32)
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
    call_indirect (type 2))
  (func (;60;) (type 2) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load offset=20
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 2))
  (func (;61;) (type 2) (param i32 i32 i32) (result i32)
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
  (table (;0;) 19 19 funcref)
  (memory (;0;) 16130)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1057053329))
  (global (;2;) i32 (i32.const 1057053344))
  (export "memory" (memory 0))
  (export "smart_nft_mint_exec_buffer" (func 2))
  (export "smart_nft_mint_buffer" (func 3))
  (export "smart_nft_memory_buffer" (func 4))
  (export "smart_nft_memory_buffer_free" (func 5))
  (export "smart_nft_memory_keys_buffer" (func 6))
  (export "smart_nft_attr_buffer" (func 7))
  (export "smart_nft_attr_buffer_free" (func 8))
  (export "smart_nft_main_buffer" (func 9))
  (export "smart_nft_main_buffer_free" (func 10))
  (export "smart_nft_main" (func 11))
  (export "smart_nft_mint_exec_buffer_free" (func 10))
  (export "smart_nft_mint_buffer_free" (func 10))
  (export "smart_nft_memory_keys_buffer_free" (func 10))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func 28 57 44 27 36 35 32 30 29 28 48 49 50 33 47 45 46 34)
  (data (;0;) (i32.const 1048576) "src/nft1_program_alpha/main/src/lib.rs\00\00\00\00\10\00&\00\00\00o\00\00\00,\00\00\00\00\00\10\00&\00\00\00z\00\00\00\1e\00\00\00\00\00\10\00&\00\00\00z\00\00\00&\00\00\00\00\00\10\00&\00\00\00~\00\00\000\00\00\00\00\00\10\00&\00\00\00\8d\00\00\00\19\00\00\00\00\00\10\00&\00\00\00\8d\00\00\00!\00\00\00\00\00\10\00&\00\00\00\91\00\00\00+\00\00\00\00\00\10\00&\00\00\00\a1\00\00\00\0d\00\00\00\00\00\10\00&\00\00\00\a1\00\00\00\1b\00\00\00variant index 0 <= i < 2\b8\00\10\00\18\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\01\00\00\00\04\00\00\00\0c\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00\00\01\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\00\01\10\00)\00\00\00\ae\04\00\00\0d\00\00\00memory allocation of  bytes failed\00\00\a8\01\10\00\15\00\00\00\bd\01\10\00\0d\00\00\00std/src/alloc.rs\dc\01\10\00\10\00\00\00c\01\00\00\09\00\00\00\04\00\00\00\0c\00\00\00\04\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\09\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00\10\00\00\00\04\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00capacity overflow\00\00\00T\02\10\00\11\00\00\00alloc/src/raw_vec.rsp\02\10\00\14\00\00\00\18\00\00\00\05\00\00\00)00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899 out of range for slice of length range end index \00\7f\03\10\00\10\00\00\00]\03\10\00\22\00\00\00source slice length () does not match destination slice length (\a0\03\10\00\15\00\00\00\b5\03\10\00+\00\00\00\94\02\10\00\01\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01")
  (data (;1;) (i32.const 1049786) "\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04"))
