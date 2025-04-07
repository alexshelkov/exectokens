(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i64) (result i32)))
  (type (;10;) (func (param i64)))
  (type (;11;) (func (param i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (import "smart_nft" "smart_nft_melt_get" (func (;0;) (type 4)))
  (import "smart_nft" "smart_nft_memory_keys" (func (;1;) (type 4)))
  (import "smart_nft" "smart_nft_memory_get" (func (;2;) (type 5)))
  (import "smart_nft" "smart_nft_memory_set" (func (;3;) (type 0)))
  (import "smart_nft" "smart_nft_melt_set" (func (;4;) (type 7)))
  (func (;5;) (type 3) (param i32)
    local.get 0
    i32.load8_u
    i32.const 6
    i32.and
    i32.const 2
    i32.eq
    if  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      call 20
    end)
  (func (;6;) (type 5) (param i32) (result i32)
    i32.const 1049524)
  (func (;7;) (type 3) (param i32))
  (func (;8;) (type 4) (result i32)
    i32.const 1050524)
  (func (;9;) (type 9) (param i64) (result i32)
    i32.const 1051524)
  (func (;10;) (type 10) (param i64))
  (func (;11;) (type 4) (result i32)
    i32.const 1052524)
  (func (;12;) (type 7))
  (func (;13;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 1001
                  i32.lt_u
                  if  ;; label = @8
                    global.get 0
                    i32.const 16
                    i32.sub
                    local.tee 11
                    global.set 0
                    global.get 0
                    i32.const 32
                    i32.sub
                    local.tee 7
                    global.set 0
                    local.get 7
                    local.get 0
                    i32.const 1052524
                    i32.add
                    i32.store offset=4
                    local.get 7
                    i32.const 1052524
                    i32.store
                    local.get 7
                    local.get 7
                    i64.load
                    i64.store offset=8 align=4
                    local.get 7
                    i32.const 16
                    i32.add
                    local.set 6
                    global.get 0
                    i32.const 16
                    i32.sub
                    local.tee 12
                    global.set 0
                    local.get 7
                    i32.const 8
                    i32.add
                    local.tee 8
                    i32.load offset=4
                    local.set 9
                    local.get 8
                    i32.load
                    local.set 2
                    block  ;; label = @9
                      block  ;; label = @10
                        loop  ;; label = @11
                          i32.const 5
                          local.set 5
                          local.get 4
                          i32.const 35
                          i32.eq
                          br_if 1 (;@10;)
                          local.get 2
                          local.get 9
                          i32.eq
                          if  ;; label = @12
                            i32.const 4
                            local.set 5
                            br 2 (;@10;)
                          end
                          local.get 8
                          local.get 2
                          i32.const 1
                          i32.add
                          local.tee 0
                          i32.store
                          local.get 2
                          i32.load8_s
                          local.tee 10
                          i32.const 127
                          i32.and
                          local.get 4
                          i32.shl
                          local.get 3
                          i32.or
                          local.set 3
                          local.get 4
                          i32.const 7
                          i32.add
                          local.set 4
                          local.get 0
                          local.set 2
                          local.get 10
                          i32.const 0
                          i32.lt_s
                          br_if 0 (;@11;)
                        end
                        local.get 4
                        i32.const 35
                        i32.eq
                        local.get 10
                        i32.const 15
                        i32.gt_u
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 14
                        local.set 5
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 3
                                    br_table 3 (;@13;) 0 (;@16;) 4 (;@12;) 1 (;@15;) 2 (;@14;) 6 (;@10;)
                                  end
                                  i32.const -2147483644
                                  local.set 4
                                  block  ;; label = @16
                                    local.get 0
                                    local.get 9
                                    i32.eq
                                    if  ;; label = @17
                                      i32.const 4
                                      local.set 2
                                      br 1 (;@16;)
                                    end
                                    local.get 8
                                    local.get 0
                                    i32.const 1
                                    i32.add
                                    i32.store
                                    i32.const 0
                                    local.set 3
                                    i32.const 6
                                    local.set 2
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 0
                                        i32.load8_u
                                        br_table 1 (;@17;) 0 (;@18;) 2 (;@16;)
                                      end
                                      i32.const 1
                                      local.set 3
                                    end
                                    i32.const -2147483647
                                    local.set 4
                                    local.get 3
                                    local.set 2
                                  end
                                  local.get 6
                                  local.get 4
                                  i32.store
                                  local.get 6
                                  local.get 2
                                  i32.store8 offset=4
                                  br 6 (;@9;)
                                end
                                block (result i32)  ;; label = @15
                                  local.get 0
                                  local.get 9
                                  i32.eq
                                  if  ;; label = @16
                                    i32.const -2147483644
                                    local.set 4
                                    i32.const 4
                                    br 1 (;@15;)
                                  end
                                  local.get 8
                                  local.get 0
                                  i32.const 1
                                  i32.add
                                  i32.store
                                  i32.const -2147483645
                                  local.set 4
                                  local.get 0
                                  i32.load8_u
                                end
                                local.set 0
                                local.get 6
                                local.get 4
                                i32.store
                                local.get 6
                                local.get 0
                                i32.store8 offset=4
                                br 5 (;@9;)
                              end
                              i32.const 0
                              local.set 4
                              i32.const 0
                              local.set 2
                              loop  ;; label = @14
                                i32.const 5
                                local.set 5
                                local.get 4
                                i32.const 35
                                i32.eq
                                br_if 3 (;@11;)
                                local.get 0
                                local.get 9
                                i32.eq
                                if  ;; label = @15
                                  i32.const 4
                                  local.set 5
                                  br 4 (;@11;)
                                end
                                local.get 8
                                local.get 0
                                i32.const 1
                                i32.add
                                local.tee 3
                                i32.store
                                local.get 0
                                i32.load8_s
                                local.tee 10
                                i32.const 127
                                i32.and
                                local.get 4
                                i32.shl
                                local.get 2
                                i32.or
                                local.set 2
                                local.get 4
                                i32.const 7
                                i32.add
                                local.set 4
                                local.get 3
                                local.set 0
                                local.get 10
                                i32.const 0
                                i32.lt_s
                                br_if 0 (;@14;)
                              end
                              local.get 4
                              i32.const 35
                              i32.eq
                              local.get 10
                              i32.const 15
                              i32.gt_u
                              i32.and
                              br_if 2 (;@11;)
                              local.get 12
                              i32.const 4
                              i32.add
                              local.set 10
                              i32.const 0
                              local.set 4
                              i32.const 0
                              local.set 9
                              local.get 8
                              i32.load
                              local.set 0
                              local.get 8
                              i32.load offset=4
                              local.set 14
                              block  ;; label = @14
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 4
                                    i32.const 35
                                    i32.eq
                                    br_if 1 (;@15;)
                                    local.get 0
                                    local.get 14
                                    i32.eq
                                    if  ;; label = @17
                                      i32.const 4
                                      local.set 5
                                      br 2 (;@15;)
                                    end
                                    local.get 8
                                    local.get 0
                                    i32.const 1
                                    i32.add
                                    local.tee 3
                                    i32.store
                                    local.get 0
                                    i32.load8_s
                                    local.tee 13
                                    i32.const 127
                                    i32.and
                                    local.get 4
                                    i32.shl
                                    local.get 9
                                    i32.or
                                    local.set 9
                                    local.get 4
                                    i32.const 7
                                    i32.add
                                    local.set 4
                                    local.get 3
                                    local.set 0
                                    local.get 13
                                    i32.const 0
                                    i32.lt_s
                                    br_if 0 (;@16;)
                                  end
                                  local.get 4
                                  i32.const 35
                                  i32.eq
                                  local.get 13
                                  i32.const 15
                                  i32.gt_u
                                  i32.and
                                  br_if 0 (;@15;)
                                  global.get 0
                                  i32.const 16
                                  i32.sub
                                  local.tee 3
                                  global.set 0
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        i32.const 1048576
                                        local.get 9
                                        local.get 9
                                        i32.const 1048576
                                        i32.ge_u
                                        select
                                        local.tee 5
                                        i32.const 0
                                        local.get 8
                                        i32.load offset=4
                                        local.tee 13
                                        local.get 8
                                        i32.load
                                        local.tee 14
                                        i32.sub
                                        local.get 9
                                        i32.ge_u
                                        select
                                        local.tee 4
                                        i32.eqz
                                        if  ;; label = @19
                                          i32.const 1
                                          local.set 0
                                          i32.const 0
                                          local.set 5
                                          br 1 (;@18;)
                                        end
                                        i32.const 1053525
                                        i32.load8_u
                                        drop
                                        local.get 4
                                        i32.const 1
                                        call 14
                                        local.tee 0
                                        i32.eqz
                                        br_if 1 (;@17;)
                                      end
                                      local.get 3
                                      i32.const 0
                                      i32.store offset=12
                                      local.get 3
                                      local.get 0
                                      i32.store offset=8
                                      local.get 3
                                      local.get 5
                                      i32.store offset=4
                                      block  ;; label = @18
                                        local.get 9
                                        if  ;; label = @19
                                          i32.const 0
                                          local.set 5
                                          loop  ;; label = @20
                                            local.get 13
                                            local.get 5
                                            local.get 14
                                            i32.add
                                            local.tee 0
                                            i32.eq
                                            if  ;; label = @21
                                              local.get 10
                                              i32.const -2147483648
                                              i32.store
                                              local.get 10
                                              i32.const 4
                                              i32.store8 offset=4
                                              local.get 3
                                              i32.load offset=4
                                              local.tee 0
                                              i32.eqz
                                              br_if 3 (;@18;)
                                              local.get 3
                                              i32.load offset=8
                                              local.get 0
                                              call 15
                                              br 3 (;@18;)
                                            end
                                            local.get 8
                                            local.get 0
                                            i32.const 1
                                            i32.add
                                            i32.store
                                            local.get 0
                                            i32.load8_u
                                            local.set 0
                                            local.get 3
                                            i32.load offset=4
                                            local.get 5
                                            i32.eq
                                            if  ;; label = @21
                                              local.get 3
                                              i32.const 4
                                              i32.add
                                              call 17
                                            end
                                            local.get 3
                                            i32.load offset=8
                                            local.get 5
                                            i32.add
                                            local.get 0
                                            i32.store8
                                            local.get 3
                                            local.get 5
                                            i32.const 1
                                            i32.add
                                            local.tee 5
                                            i32.store offset=12
                                            local.get 5
                                            local.get 9
                                            i32.ne
                                            br_if 0 (;@20;)
                                          end
                                        end
                                        local.get 10
                                        local.get 3
                                        i64.load offset=4 align=4
                                        i64.store align=4
                                        local.get 10
                                        i32.const 8
                                        i32.add
                                        local.get 3
                                        i32.const 12
                                        i32.add
                                        i32.load
                                        i32.store
                                      end
                                      local.get 3
                                      i32.const 16
                                      i32.add
                                      global.set 0
                                      br 1 (;@16;)
                                    end
                                    i32.const 1
                                    local.get 4
                                    call 48
                                    unreachable
                                  end
                                  br 1 (;@14;)
                                end
                                local.get 10
                                i32.const -2147483648
                                i32.store
                                local.get 10
                                local.get 5
                                i32.store8 offset=4
                              end
                              local.get 12
                              i32.load8_u offset=8
                              local.set 0
                              local.get 12
                              i32.load offset=4
                              local.tee 3
                              i32.const -2147483648
                              i32.eq
                              if  ;; label = @14
                                local.get 6
                                i32.const -2147483644
                                i32.store
                                local.get 6
                                local.get 0
                                i32.store8 offset=4
                                br 5 (;@9;)
                              end
                              local.get 12
                              i32.const 15
                              i32.add
                              i64.load8_u
                              local.set 15
                              local.get 12
                              i32.const 13
                              i32.add
                              i64.load16_u align=1
                              local.set 16
                              local.get 12
                              i64.load32_u offset=9 align=1
                              local.set 17
                              local.get 6
                              local.get 2
                              i32.store offset=12
                              local.get 6
                              local.get 3
                              i32.store
                              local.get 6
                              local.get 0
                              i64.extend_i32_u
                              i64.const 255
                              i64.and
                              local.get 17
                              local.get 15
                              i64.const 48
                              i64.shl
                              local.get 16
                              i64.const 32
                              i64.shl
                              i64.or
                              i64.or
                              i64.const 8
                              i64.shl
                              i64.or
                              i64.store offset=4 align=4
                              br 4 (;@9;)
                            end
                            local.get 6
                            i32.const -2147483648
                            i32.store
                            br 3 (;@9;)
                          end
                          local.get 6
                          i32.const -2147483646
                          i32.store
                          br 2 (;@9;)
                        end
                        local.get 6
                        i32.const -2147483644
                        i32.store
                        local.get 6
                        local.get 5
                        i32.store8 offset=4
                        br 1 (;@9;)
                      end
                      local.get 6
                      i32.const -2147483644
                      i32.store
                      local.get 6
                      local.get 5
                      i32.store8 offset=4
                    end
                    local.get 12
                    i32.const 16
                    i32.add
                    global.set 0
                    local.get 7
                    i32.load8_u offset=20
                    local.set 2
                    local.get 7
                    i32.load offset=16
                    local.tee 3
                    i32.const -2147483644
                    i32.ne
                    if  ;; label = @9
                      local.get 11
                      local.get 7
                      i64.load offset=21 align=1
                      i64.store offset=5 align=1
                      local.get 11
                      i32.const 12
                      i32.add
                      local.get 7
                      i32.const 28
                      i32.add
                      i32.load align=1
                      i32.store align=1
                    end
                    local.get 1
                    i32.const 4
                    i32.add
                    local.set 0
                    local.get 11
                    local.get 3
                    i32.store
                    local.get 11
                    local.get 2
                    i32.store8 offset=4
                    local.get 7
                    i32.const 32
                    i32.add
                    global.set 0
                    block  ;; label = @9
                      local.get 11
                      i32.load
                      i32.const -2147483644
                      i32.ne
                      if  ;; label = @10
                        local.get 0
                        local.get 11
                        i64.load align=4
                        i64.store align=4
                        local.get 0
                        i32.const 8
                        i32.add
                        local.get 11
                        i32.const 8
                        i32.add
                        i64.load align=4
                        i64.store align=4
                        br 1 (;@9;)
                      end
                      local.get 0
                      i32.const -2147483644
                      i32.store
                    end
                    local.get 11
                    i32.const 16
                    i32.add
                    global.set 0
                    local.get 1
                    i32.const 5
                    i32.store8 offset=20
                    local.get 1
                    i32.load offset=4
                    local.tee 2
                    i32.const -2147483644
                    i32.eq
                    br_if 7 (;@1;)
                    local.get 1
                    i32.load8_u offset=8
                    local.set 0
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 4
                              local.get 2
                              i32.const -2147483648
                              i32.xor
                              local.tee 3
                              local.get 3
                              i32.const 4
                              i32.ge_u
                              select
                              i32.const 1
                              i32.sub
                              br_table 4 (;@9;) 1 (;@12;) 2 (;@11;) 3 (;@10;) 0 (;@13;)
                            end
                            call 0
                            local.set 0
                            local.get 1
                            i32.const 20
                            i32.add
                            call 5
                            local.get 1
                            local.get 0
                            i32.store8 offset=21
                            local.get 1
                            i32.const 0
                            i32.store8 offset=20
                            br 11 (;@1;)
                          end
                          call 1
                          local.tee 0
                          i32.const 1001
                          i32.ge_u
                          br_if 4 (;@7;)
                          local.get 1
                          i32.const 48
                          i32.add
                          local.get 0
                          call 19
                          local.get 1
                          i32.load offset=52
                          local.set 2
                          local.get 1
                          i32.load offset=48
                          i32.const 1
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 1
                          i32.load offset=56
                          i32.const 1050524
                          local.get 0
                          call 57
                          local.set 3
                          local.get 1
                          i32.const 20
                          i32.add
                          call 5
                          local.get 1
                          local.get 0
                          i32.store offset=32
                          local.get 1
                          local.get 3
                          i32.store offset=28
                          local.get 1
                          local.get 2
                          i32.store offset=24
                          local.get 1
                          i32.const 2
                          i32.store8 offset=20
                          br 10 (;@1;)
                        end
                        local.get 0
                        call 2
                        local.tee 0
                        i32.const 1001
                        i32.ge_u
                        br_if 5 (;@5;)
                        local.get 1
                        i32.const 48
                        i32.add
                        local.get 0
                        call 19
                        local.get 1
                        i32.load offset=52
                        local.set 2
                        local.get 1
                        i32.load offset=48
                        i32.const 1
                        i32.eq
                        br_if 6 (;@4;)
                        local.get 1
                        i32.load offset=56
                        i32.const 1049524
                        local.get 0
                        call 57
                        local.set 3
                        local.get 1
                        i32.const 20
                        i32.add
                        call 5
                        local.get 1
                        local.get 0
                        i32.store offset=32
                        local.get 1
                        local.get 3
                        i32.store offset=28
                        local.get 1
                        local.get 2
                        i32.store offset=24
                        local.get 1
                        i32.const 3
                        i32.store8 offset=20
                        br 9 (;@1;)
                      end
                      local.get 1
                      i32.load offset=16
                      local.get 1
                      i32.const 56
                      i32.add
                      local.tee 4
                      local.get 1
                      i32.const 12
                      i32.add
                      i32.load align=1
                      i32.store align=1
                      local.get 1
                      local.get 1
                      i32.load offset=9 align=1
                      i32.store offset=53 align=1
                      local.get 1
                      local.get 0
                      i32.store8 offset=52
                      local.get 1
                      local.get 2
                      i32.store offset=48
                      local.get 4
                      i32.load
                      local.tee 0
                      i32.const 1001
                      i32.ge_u
                      br_if 6 (;@3;)
                      i32.const 1049524
                      local.get 0
                      local.get 1
                      i32.load offset=52
                      local.get 0
                      i32.const 1048692
                      call 23
                      i32.extend16_s
                      local.get 0
                      call 3
                      local.get 1
                      i32.const 20
                      i32.add
                      call 5
                      local.get 1
                      i32.const 4
                      i32.store8 offset=20
                      local.get 1
                      i32.const 48
                      i32.add
                      call 20
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 1
                    i32.and
                    i32.eqz
                    br_if 6 (;@2;)
                    call 4
                    br 6 (;@2;)
                  end
                  local.get 0
                  i32.const 1048628
                  call 50
                  unreachable
                end
                local.get 0
                i32.const 1048644
                call 50
                unreachable
              end
              local.get 2
              local.get 1
              i32.load offset=56
              call 48
              unreachable
            end
            local.get 0
            i32.const 1048660
            call 50
            unreachable
          end
          local.get 2
          local.get 1
          i32.load offset=56
          call 48
          unreachable
        end
        local.get 0
        i32.const 1048676
        call 50
        unreachable
      end
      local.get 1
      i32.const 20
      i32.add
      call 5
      local.get 1
      i32.const 1
      i32.store8 offset=20
    end
    local.get 1
    i32.const 56
    i32.add
    local.get 1
    i32.const 28
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    local.get 1
    i64.load offset=20 align=4
    i64.store offset=48
    local.get 1
    i32.const 36
    i32.add
    local.set 5
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 20
    i32.add
    local.tee 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i64.const 4294967296
    i64.store align=4
    local.get 3
    i32.const 8
    i32.add
    local.set 6
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
    local.tee 0
    global.set 0
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 48
                    i32.add
                    local.tee 4
                    i32.load8_u
                    i32.const 1
                    i32.sub
                    br_table 1 (;@7;) 2 (;@6;) 3 (;@5;) 4 (;@4;) 5 (;@3;) 0 (;@8;)
                  end
                  local.get 0
                  i32.const 12
                  i32.add
                  i32.const 0
                  i32.store8
                  local.get 0
                  i32.const 0
                  i32.store offset=8
                  local.get 2
                  local.get 0
                  i32.const 8
                  i32.add
                  local.tee 7
                  local.get 7
                  i32.const 1
                  i32.or
                  call 21
                  local.get 4
                  i32.load8_u offset=1
                  local.set 8
                  local.get 2
                  i32.load offset=8
                  local.tee 7
                  local.get 2
                  i32.load
                  i32.eq
                  if  ;; label = @8
                    local.get 2
                    call 17
                  end
                  local.get 2
                  local.get 7
                  i32.const 1
                  i32.add
                  i32.store offset=8
                  local.get 2
                  i32.load offset=4
                  local.get 7
                  i32.add
                  local.get 8
                  i32.store8
                  br 5 (;@2;)
                end
                local.get 0
                i32.const 0
                i32.store offset=9 align=1
                local.get 0
                i32.const 1
                i32.store8 offset=8
                local.get 2
                local.get 0
                i32.const 8
                i32.add
                local.get 0
                i32.const 9
                i32.add
                call 21
                br 4 (;@2;)
              end
              local.get 0
              i32.const 2
              i32.store8 offset=8
              local.get 0
              i32.const 0
              i32.store offset=9 align=1
              local.get 2
              local.get 0
              i32.const 8
              i32.add
              local.get 0
              i32.const 9
              i32.add
              call 21
              local.get 2
              local.get 4
              i32.const 4
              i32.add
              call 22
              i32.const 255
              i32.and
              br 4 (;@1;)
            end
            local.get 0
            i32.const 3
            i32.store8 offset=8
            local.get 0
            i32.const 0
            i32.store offset=9 align=1
            local.get 2
            local.get 0
            i32.const 8
            i32.add
            local.get 0
            i32.const 9
            i32.add
            call 21
            local.get 2
            local.get 4
            i32.const 4
            i32.add
            call 22
            i32.const 255
            i32.and
            br 3 (;@1;)
          end
          local.get 0
          i32.const 4
          i32.store8 offset=8
          local.get 0
          i32.const 0
          i32.store offset=9 align=1
          local.get 2
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 9
          i32.add
          call 21
          br 1 (;@2;)
        end
        local.get 0
        i32.const 5
        i32.store8 offset=8
        local.get 0
        i32.const 0
        i32.store offset=9 align=1
        local.get 2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 9
        i32.add
        call 21
      end
      i32.const 16
    end
    local.set 7
    local.get 0
    i32.const 16
    i32.add
    global.set 0
    block  ;; label = @1
      local.get 7
      i32.const 255
      i32.and
      local.tee 0
      i32.const 16
      i32.eq
      if  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load
          local.tee 0
          i32.const -2147483648
          i32.ne
          if  ;; label = @4
            local.get 6
            local.get 2
            i64.load offset=4 align=4
            i64.store offset=4 align=4
            br 1 (;@3;)
          end
          local.get 6
          i32.const 2
          i32.store8 offset=4
        end
        local.get 6
        local.get 0
        i32.store
        br 1 (;@1;)
      end
      local.get 6
      i32.const -2147483648
      i32.store
      local.get 6
      local.get 0
      i32.store8 offset=4
      local.get 2
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=4
      local.get 0
      call 15
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    block  ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const -2147483648
      i32.eq
      if  ;; label = @2
        local.get 5
        i32.const 0
        i32.store offset=8
        local.get 5
        i64.const 4294967296
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 5
      local.get 3
      i64.load offset=8 align=4
      i64.store align=4
      local.get 5
      i32.const 8
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i32.load
      i32.store
    end
    block  ;; label = @1
      local.get 4
      i32.load8_u
      i32.const 6
      i32.and
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=4
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=8
      local.get 0
      call 15
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 1
    i32.load offset=44
    local.tee 0
    i32.const 1001
    i32.ge_u
    if  ;; label = @1
      local.get 0
      i32.const 1048708
      call 50
      unreachable
    end
    i32.const 1052524
    local.get 0
    local.get 1
    i32.load offset=40
    local.get 0
    i32.const 1048724
    call 23
    local.get 1
    i32.const 36
    i32.add
    call 20
    local.get 1
    i32.const -64
    i32.sub
    global.set 0
    local.get 0)
  (func (;14;) (type 1) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 9
      i32.ge_u
      if  ;; label = @2
        local.get 1
        local.get 0
        call 38
        br 1 (;@1;)
      end
      local.get 0
      call 37
    end)
  (func (;15;) (type 0) (param i32 i32)
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
          call 36
          br 2 (;@1;)
        end
        i32.const 1048805
        i32.const 1048852
        call 51
        unreachable
      end
      i32.const 1048868
      i32.const 1048916
      call 51
      unreachable
    end)
  (func (;16;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 4
            i32.sub
            local.tee 4
            i32.load
            local.tee 6
            i32.const -8
            i32.and
            local.tee 3
            i32.const 4
            i32.const 8
            local.get 6
            i32.const 3
            i32.and
            local.tee 5
            select
            local.get 1
            i32.add
            i32.ge_u
            if  ;; label = @5
              local.get 5
              i32.const 0
              local.get 1
              i32.const 39
              i32.add
              local.get 3
              i32.lt_u
              select
              br_if 1 (;@4;)
              block  ;; label = @6
                local.get 2
                i32.const -65588
                i32.gt_u
                br_if 0 (;@6;)
                i32.const 16
                local.get 2
                i32.const 11
                i32.add
                i32.const -8
                i32.and
                local.get 2
                i32.const 11
                i32.lt_u
                select
                local.set 1
                block  ;; label = @7
                  local.get 5
                  i32.eqz
                  if  ;; label = @8
                    local.get 1
                    i32.const 256
                    i32.lt_u
                    local.get 3
                    local.get 1
                    i32.const 4
                    i32.or
                    i32.lt_u
                    i32.or
                    local.get 3
                    local.get 1
                    i32.sub
                    i32.const 131073
                    i32.ge_u
                    i32.or
                    br_if 1 (;@7;)
                    br 6 (;@2;)
                  end
                  local.get 0
                  i32.const 8
                  i32.sub
                  local.tee 5
                  local.get 3
                  i32.add
                  local.set 7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          local.get 3
                          i32.gt_u
                          if  ;; label = @12
                            local.get 7
                            i32.const 1053976
                            i32.load
                            i32.eq
                            br_if 4 (;@8;)
                            local.get 7
                            i32.const 1053972
                            i32.load
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 7
                            i32.load offset=4
                            local.tee 6
                            i32.const 2
                            i32.and
                            br_if 5 (;@7;)
                            local.get 6
                            i32.const -8
                            i32.and
                            local.tee 6
                            local.get 3
                            i32.add
                            local.tee 3
                            local.get 1
                            i32.lt_u
                            br_if 5 (;@7;)
                            local.get 7
                            local.get 6
                            call 33
                            local.get 3
                            local.get 1
                            i32.sub
                            local.tee 2
                            i32.const 16
                            i32.lt_u
                            br_if 1 (;@11;)
                            local.get 4
                            local.get 1
                            local.get 4
                            i32.load
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 2
                            i32.or
                            i32.store
                            local.get 1
                            local.get 5
                            i32.add
                            local.tee 1
                            local.get 2
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 3
                            local.get 5
                            i32.add
                            local.tee 4
                            local.get 4
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 1
                            local.get 2
                            call 34
                            br 10 (;@2;)
                          end
                          local.get 3
                          local.get 1
                          i32.sub
                          local.tee 2
                          i32.const 15
                          i32.gt_u
                          br_if 2 (;@9;)
                          br 9 (;@2;)
                        end
                        local.get 4
                        local.get 3
                        local.get 4
                        i32.load
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 2
                        i32.or
                        i32.store
                        local.get 3
                        local.get 5
                        i32.add
                        local.tee 1
                        local.get 1
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 8 (;@2;)
                      end
                      i32.const 1053964
                      i32.load
                      local.get 3
                      i32.add
                      local.tee 3
                      local.get 1
                      i32.lt_u
                      br_if 2 (;@7;)
                      block  ;; label = @10
                        local.get 3
                        local.get 1
                        i32.sub
                        local.tee 2
                        i32.const 15
                        i32.le_u
                        if  ;; label = @11
                          local.get 4
                          local.get 6
                          i32.const 1
                          i32.and
                          local.get 3
                          i32.or
                          i32.const 2
                          i32.or
                          i32.store
                          local.get 3
                          local.get 5
                          i32.add
                          local.tee 1
                          local.get 1
                          i32.load offset=4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.set 2
                          i32.const 0
                          local.set 1
                          br 1 (;@10;)
                        end
                        local.get 4
                        local.get 1
                        local.get 6
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 2
                        i32.or
                        i32.store
                        local.get 1
                        local.get 5
                        i32.add
                        local.tee 1
                        local.get 2
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 3
                        local.get 5
                        i32.add
                        local.tee 4
                        local.get 2
                        i32.store
                        local.get 4
                        local.get 4
                        i32.load offset=4
                        i32.const -2
                        i32.and
                        i32.store offset=4
                      end
                      i32.const 1053972
                      local.get 1
                      i32.store
                      i32.const 1053964
                      local.get 2
                      i32.store
                      br 7 (;@2;)
                    end
                    local.get 4
                    local.get 1
                    local.get 6
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    local.get 1
                    local.get 5
                    i32.add
                    local.tee 1
                    local.get 2
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
                    local.get 2
                    call 34
                    br 6 (;@2;)
                  end
                  i32.const 1053968
                  i32.load
                  local.get 3
                  i32.add
                  local.tee 3
                  local.get 1
                  i32.gt_u
                  br_if 4 (;@3;)
                end
                local.get 2
                call 37
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                local.get 0
                i32.const -4
                i32.const -8
                local.get 4
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
                local.get 2
                local.get 1
                local.get 2
                i32.lt_u
                select
                call 57
                local.get 0
                call 36
                br 5 (;@1;)
              end
              i32.const 0
              br 4 (;@1;)
            end
            i32.const 1048805
            i32.const 1048852
            call 51
            unreachable
          end
          i32.const 1048868
          i32.const 1048916
          call 51
          unreachable
        end
        local.get 4
        local.get 1
        local.get 6
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 1
        local.get 5
        i32.add
        local.tee 2
        local.get 3
        local.get 1
        i32.sub
        local.tee 1
        i32.const 1
        i32.or
        i32.store offset=4
        i32.const 1053968
        local.get 1
        i32.store
        i32.const 1053976
        local.get 2
        i32.store
        local.get 0
        br 1 (;@1;)
      end
      local.get 0
    end)
  (func (;17;) (type 3) (param i32)
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
    call 18
    local.get 1
    i32.load offset=8
    local.tee 0
    i32.const -2147483647
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load offset=12
      call 48
      unreachable
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;18;) (type 11) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      local.get 2
      local.get 2
      local.get 3
      i32.add
      local.tee 3
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 8
      local.tee 7
      local.get 1
      i32.load
      local.tee 5
      i32.const 1
      i32.shl
      local.tee 2
      local.get 3
      local.get 2
      local.get 3
      i32.gt_u
      select
      local.tee 2
      local.get 2
      i32.const 8
      i32.lt_u
      select
      local.tee 8
      i64.extend_i32_u
      local.tee 9
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      br_if 0 (;@1;)
      local.get 9
      i32.wrap_i64
      local.tee 2
      i32.const 2147483647
      i32.gt_u
      br_if 0 (;@1;)
      local.get 4
      local.get 5
      if (result i32)  ;; label = @2
        local.get 4
        local.get 5
        i32.store offset=28
        local.get 4
        local.get 1
        i32.load offset=4
        i32.store offset=20
        i32.const 1
      else
        i32.const 0
      end
      i32.store offset=24
      local.get 4
      i32.const 20
      i32.add
      local.set 5
      local.get 4
      i32.const 8
      i32.add
      local.tee 3
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
                  local.tee 6
                  if  ;; label = @8
                    local.get 5
                    i32.load
                    local.get 6
                    local.get 2
                    call 16
                    br 4 (;@4;)
                  end
                end
                local.get 2
                i32.eqz
                br_if 1 (;@5;)
                i32.const 1053525
                i32.load8_u
                drop
                local.get 2
                i32.const 1
                call 14
                br 2 (;@4;)
              end
              local.get 3
              i32.const 0
              i32.store offset=4
              br 2 (;@3;)
            end
            i32.const 1
          end
          local.tee 5
          if  ;; label = @4
            local.get 3
            local.get 2
            i32.store offset=8
            local.get 3
            local.get 5
            i32.store offset=4
            i32.const 0
            br 2 (;@2;)
          end
          local.get 3
          local.get 2
          i32.store offset=8
          local.get 3
          i32.const 1
          i32.store offset=4
        end
        i32.const 1
      end
      i32.store
      local.get 4
      i32.load offset=8
      i32.eqz
      if  ;; label = @2
        local.get 4
        i32.load offset=12
        local.set 2
        local.get 1
        local.get 8
        i32.store
        local.get 1
        local.get 2
        i32.store offset=4
        i32.const -2147483647
        local.set 6
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=16
      local.set 7
      local.get 4
      i32.load offset=12
      local.set 6
    end
    local.get 0
    local.get 7
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store
    local.get 4
    i32.const 32
    i32.add
    global.set 0)
  (func (;19;) (type 0) (param i32 i32)
    (local i32 i32 i64)
    local.get 0
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 1
        i64.extend_i32_u
        local.tee 4
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        br_if 0 (;@2;)
        local.get 4
        i32.wrap_i64
        local.tee 2
        i32.const 2147483647
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 1
          i32.store offset=8
          local.get 0
          i32.const 0
          i32.store offset=4
          i32.const 0
          br 2 (;@1;)
        end
        i32.const 1053525
        i32.load8_u
        drop
        local.get 2
        i32.const 1
        call 14
        local.tee 3
        if  ;; label = @3
          local.get 0
          local.get 3
          i32.store offset=8
          local.get 0
          local.get 1
          i32.store offset=4
          i32.const 0
          br 2 (;@1;)
        end
        local.get 0
        local.get 2
        i32.store offset=8
        local.get 0
        i32.const 1
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
  (func (;20;) (type 3) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 1
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      call 15
    end)
  (func (;21;) (type 6) (param i32 i32 i32)
    (local i32 i32)
    local.get 2
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
      call 18
      local.get 3
      i32.load offset=8
      local.tee 2
      i32.const -2147483647
      i32.ne
      if  ;; label = @2
        local.get 2
        local.get 3
        i32.load offset=12
        call 48
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
    call 57
    drop
    local.get 0
    local.get 2
    local.get 4
    i32.add
    i32.store offset=8)
  (func (;22;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 1
    i32.load offset=8
    local.set 4
    local.get 1
    i32.load offset=4
    local.set 5
    local.get 3
    i32.const 12
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i32.const 0
    i32.store offset=8
    i32.const 1
    local.set 2
    local.get 4
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 3
        i32.add
        i32.const 7
        i32.add
        local.tee 6
        local.get 1
        i32.store8
        local.get 1
        i32.const 128
        i32.lt_u
        br_if 1 (;@1;)
        local.get 6
        local.get 1
        i32.const 128
        i32.or
        i32.store8
        local.get 1
        i32.const 7
        i32.shr_u
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.const 6
        i32.ne
        br_if 0 (;@2;)
      end
      i32.const 5
      local.set 2
    end
    local.get 0
    local.get 3
    i32.const 8
    i32.add
    local.tee 1
    local.get 1
    local.get 2
    i32.add
    call 21
    local.get 4
    if  ;; label = @1
      local.get 0
      i32.load offset=8
      local.set 1
      loop  ;; label = @2
        local.get 5
        i32.load8_u
        local.set 2
        local.get 0
        i32.load
        local.get 1
        i32.eq
        if  ;; label = @3
          local.get 0
          call 17
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        local.get 0
        i32.load offset=4
        local.get 1
        i32.add
        local.get 2
        i32.store8
        local.get 0
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.store offset=8
        local.get 4
        i32.const 1
        i32.sub
        local.tee 4
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    i32.const 16)
  (func (;23;) (type 8) (param i32 i32 i32 i32 i32)
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
      i32.const 1049500
      i32.store offset=8
      local.get 0
      i64.const 2
      i64.store offset=20 align=4
      local.get 0
      local.get 0
      i64.extend_i32_u
      i64.const 4294967296
      i64.or
      i64.store offset=40
      local.get 0
      local.get 0
      i32.const 4
      i32.add
      i64.extend_i32_u
      i64.const 4294967296
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
      call 52
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    call 57
    drop)
  (func (;24;) (type 0) (param i32 i32)
    local.get 0
    i64.const 7199936582794304877
    i64.store offset=8
    local.get 0
    i64.const -5076933981314334344
    i64.store)
  (func (;25;) (type 0) (param i32 i32)
    local.get 0
    i64.const 2996301632337382407
    i64.store offset=8
    local.get 0
    i64.const 8830168746503066253
    i64.store)
  (func (;26;) (type 6) (param i32 i32 i32)
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
      call 48
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
      call 48
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
        call 32
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
      call 48
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
  (func (;27;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1048740
    local.get 1
    call 54)
  (func (;28;) (type 3) (param i32)
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
      call 15
    end)
  (func (;29;) (type 0) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func (;30;) (type 1) (param i32 i32) (result i32)
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
              call 48
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
              call 48
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
            call 32
            local.get 2
            i32.load offset=8
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 2
              i32.load offset=12
              local.get 2
              i32.load offset=16
              call 48
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
        call 26
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
      call 57
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
  (func (;31;) (type 2) (param i32 i32 i32) (result i32)
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
      call 26
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
    call 57
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;32;) (type 6) (param i32 i32 i32)
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
              local.get 1
              call 16
              br 2 (;@3;)
            end
          end
          i32.const 1
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          drop
          i32.const 1053525
          i32.load8_u
          drop
          local.get 1
          i32.const 1
          call 14
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
  (func (;33;) (type 0) (param i32 i32)
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
          i32.const 1053548
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
          i32.const 1053960
          i32.const 1053960
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
        i32.const 1053956
        i32.const 1053956
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
  (func (;34;) (type 0) (param i32 i32)
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
        i32.const 1053972
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
          i32.const 1053964
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
        call 33
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
              i32.const 1053976
              i32.load
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 1053972
              i32.load
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 2
              call 33
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
              i32.const 1053972
              i32.load
              i32.ne
              br_if 1 (;@4;)
              i32.const 1053964
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
            call 35
            return
          end
          local.get 1
          i32.const 248
          i32.and
          i32.const 1053692
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1053956
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
              i32.const 1053956
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
        i32.const 1053976
        local.get 0
        i32.store
        i32.const 1053968
        i32.const 1053968
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
        i32.const 1053972
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1053964
        i32.const 0
        i32.store
        i32.const 1053972
        i32.const 0
        i32.store
        return
      end
      i32.const 1053972
      local.get 0
      i32.store
      i32.const 1053964
      i32.const 1053964
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
  (func (;35;) (type 0) (param i32 i32)
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
    i32.const 1053548
    i32.add
    local.set 4
    i32.const 1
    local.get 2
    i32.shl
    local.tee 3
    i32.const 1053960
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
      i32.const 1053960
      i32.const 1053960
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
  (func (;36;) (type 3) (param i32)
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
        i32.const 1053972
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
          i32.const 1053964
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
        call 33
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
                  i32.const 1053976
                  i32.load
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1053972
                  i32.load
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 2
                  local.get 3
                  i32.const -8
                  i32.and
                  local.tee 2
                  call 33
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
                  i32.const 1053972
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1053964
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
              call 35
              i32.const 0
              local.set 1
              i32.const 1053996
              i32.const 1053996
              i32.load
              i32.const 1
              i32.sub
              local.tee 0
              i32.store
              local.get 0
              br_if 4 (;@1;)
              i32.const 1053684
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
              i32.const 1053996
              i32.const 4095
              local.get 1
              local.get 1
              i32.const 4095
              i32.le_u
              select
              i32.store
              return
            end
            i32.const 1053976
            local.get 1
            i32.store
            i32.const 1053968
            i32.const 1053968
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
            i32.const 1053972
            i32.load
            local.get 1
            i32.eq
            if  ;; label = @5
              i32.const 1053964
              i32.const 0
              i32.store
              i32.const 1053972
              i32.const 0
              i32.store
            end
            local.get 0
            i32.const 1053988
            i32.load
            local.tee 3
            i32.le_u
            br_if 3 (;@1;)
            i32.const 1053976
            i32.load
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            local.set 0
            i32.const 1053968
            i32.load
            local.tee 4
            i32.const 41
            i32.lt_u
            br_if 2 (;@2;)
            i32.const 1053676
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
          i32.const 1053972
          local.get 1
          i32.store
          i32.const 1053964
          i32.const 1053964
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
        i32.const 1053692
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 1053956
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
            i32.const 1053956
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
      i32.const 1053684
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
      i32.const 1053996
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
      i32.const 1053988
      i32.const -1
      i32.store
    end)
  (func (;37;) (type 5) (param i32) (result i32)
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
                    i32.const 1053960
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
                    i32.const 1053548
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
                  i32.const 1053956
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
                      i32.const 1053692
                      i32.add
                      local.tee 3
                      local.get 0
                      i32.const 1053700
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
                      i32.const 1053956
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
                  i32.const 1053964
                  i32.load
                  i32.le_u
                  br_if 3 (;@4;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1053960
                        i32.load
                        local.tee 0
                        i32.eqz
                        br_if 6 (;@4;)
                        local.get 0
                        i32.ctz
                        i32.const 2
                        i32.shl
                        i32.const 1053548
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
                            i32.const 1053548
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
                            i32.const 1053960
                            i32.const 1053960
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
                        i32.const 1053692
                        i32.add
                        local.tee 3
                        local.get 1
                        i32.const 1053700
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
                        i32.const 1053956
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
                      i32.const 1053964
                      i32.load
                      local.tee 4
                      if  ;; label = @10
                        local.get 4
                        i32.const -8
                        i32.and
                        i32.const 1053692
                        i32.add
                        local.set 1
                        i32.const 1053972
                        i32.load
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 1053956
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
                            i32.const 1053956
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
                      i32.const 1053972
                      local.get 6
                      i32.store
                      i32.const 1053964
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
                        i32.const 1053964
                        i32.load
                        local.tee 6
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 6
                        i32.const -8
                        i32.and
                        i32.const 1053692
                        i32.add
                        local.set 0
                        i32.const 1053972
                        i32.load
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 1053956
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
                            i32.const 1053956
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
                    i32.const 1053972
                    local.get 3
                    i32.store
                    i32.const 1053964
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
                  i32.const 1053548
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
            i32.const 1053964
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
            i32.const 1053548
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
            i32.const 1053960
            i32.const 1053960
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
                    i32.const 1053964
                    i32.load
                    local.tee 1
                    i32.gt_u
                    if  ;; label = @9
                      local.get 5
                      i32.const 1053968
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
                        i32.const 1053980
                        local.get 8
                        i32.load offset=8
                        local.tee 4
                        i32.const 1053980
                        i32.load
                        i32.add
                        local.tee 0
                        i32.store
                        i32.const 1053984
                        i32.const 1053984
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
                            i32.const 1053976
                            i32.load
                            local.tee 2
                            if  ;; label = @13
                              i32.const 1053676
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
                            i32.const 1053992
                            i32.load
                            local.tee 0
                            i32.const 0
                            local.get 0
                            local.get 1
                            i32.le_u
                            select
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1053992
                              local.get 1
                              i32.store
                            end
                            i32.const 1053996
                            i32.const 4095
                            i32.store
                            i32.const 1053688
                            local.get 6
                            i32.store
                            i32.const 1053680
                            local.get 4
                            i32.store
                            i32.const 1053676
                            local.get 1
                            i32.store
                            i32.const 1053704
                            i32.const 1053692
                            i32.store
                            i32.const 1053712
                            i32.const 1053700
                            i32.store
                            i32.const 1053700
                            i32.const 1053692
                            i32.store
                            i32.const 1053720
                            i32.const 1053708
                            i32.store
                            i32.const 1053708
                            i32.const 1053700
                            i32.store
                            i32.const 1053728
                            i32.const 1053716
                            i32.store
                            i32.const 1053716
                            i32.const 1053708
                            i32.store
                            i32.const 1053736
                            i32.const 1053724
                            i32.store
                            i32.const 1053724
                            i32.const 1053716
                            i32.store
                            i32.const 1053744
                            i32.const 1053732
                            i32.store
                            i32.const 1053732
                            i32.const 1053724
                            i32.store
                            i32.const 1053752
                            i32.const 1053740
                            i32.store
                            i32.const 1053740
                            i32.const 1053732
                            i32.store
                            i32.const 1053760
                            i32.const 1053748
                            i32.store
                            i32.const 1053748
                            i32.const 1053740
                            i32.store
                            i32.const 1053768
                            i32.const 1053756
                            i32.store
                            i32.const 1053756
                            i32.const 1053748
                            i32.store
                            i32.const 1053764
                            i32.const 1053756
                            i32.store
                            i32.const 1053776
                            i32.const 1053764
                            i32.store
                            i32.const 1053772
                            i32.const 1053764
                            i32.store
                            i32.const 1053784
                            i32.const 1053772
                            i32.store
                            i32.const 1053780
                            i32.const 1053772
                            i32.store
                            i32.const 1053792
                            i32.const 1053780
                            i32.store
                            i32.const 1053788
                            i32.const 1053780
                            i32.store
                            i32.const 1053800
                            i32.const 1053788
                            i32.store
                            i32.const 1053796
                            i32.const 1053788
                            i32.store
                            i32.const 1053808
                            i32.const 1053796
                            i32.store
                            i32.const 1053804
                            i32.const 1053796
                            i32.store
                            i32.const 1053816
                            i32.const 1053804
                            i32.store
                            i32.const 1053812
                            i32.const 1053804
                            i32.store
                            i32.const 1053824
                            i32.const 1053812
                            i32.store
                            i32.const 1053820
                            i32.const 1053812
                            i32.store
                            i32.const 1053832
                            i32.const 1053820
                            i32.store
                            i32.const 1053840
                            i32.const 1053828
                            i32.store
                            i32.const 1053828
                            i32.const 1053820
                            i32.store
                            i32.const 1053848
                            i32.const 1053836
                            i32.store
                            i32.const 1053836
                            i32.const 1053828
                            i32.store
                            i32.const 1053856
                            i32.const 1053844
                            i32.store
                            i32.const 1053844
                            i32.const 1053836
                            i32.store
                            i32.const 1053864
                            i32.const 1053852
                            i32.store
                            i32.const 1053852
                            i32.const 1053844
                            i32.store
                            i32.const 1053872
                            i32.const 1053860
                            i32.store
                            i32.const 1053860
                            i32.const 1053852
                            i32.store
                            i32.const 1053880
                            i32.const 1053868
                            i32.store
                            i32.const 1053868
                            i32.const 1053860
                            i32.store
                            i32.const 1053888
                            i32.const 1053876
                            i32.store
                            i32.const 1053876
                            i32.const 1053868
                            i32.store
                            i32.const 1053896
                            i32.const 1053884
                            i32.store
                            i32.const 1053884
                            i32.const 1053876
                            i32.store
                            i32.const 1053904
                            i32.const 1053892
                            i32.store
                            i32.const 1053892
                            i32.const 1053884
                            i32.store
                            i32.const 1053912
                            i32.const 1053900
                            i32.store
                            i32.const 1053900
                            i32.const 1053892
                            i32.store
                            i32.const 1053920
                            i32.const 1053908
                            i32.store
                            i32.const 1053908
                            i32.const 1053900
                            i32.store
                            i32.const 1053928
                            i32.const 1053916
                            i32.store
                            i32.const 1053916
                            i32.const 1053908
                            i32.store
                            i32.const 1053936
                            i32.const 1053924
                            i32.store
                            i32.const 1053924
                            i32.const 1053916
                            i32.store
                            i32.const 1053944
                            i32.const 1053932
                            i32.store
                            i32.const 1053932
                            i32.const 1053924
                            i32.store
                            i32.const 1053952
                            i32.const 1053940
                            i32.store
                            i32.const 1053940
                            i32.const 1053932
                            i32.store
                            i32.const 1053976
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
                            i32.const 1053948
                            i32.const 1053940
                            i32.store
                            i32.const 1053968
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
                            i32.const 1053988
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
                        i32.const 1053992
                        i32.const 1053992
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
                        i32.const 1053676
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
                          i32.const 1053676
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
                          i32.const 1053976
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
                          i32.const 1053968
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
                          i32.const 1053988
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
                          i32.const 1053676
                          i64.load align=4
                          local.set 10
                          local.get 3
                          i32.const 16
                          i32.add
                          i32.const 1053684
                          i64.load align=4
                          i64.store align=4
                          local.get 3
                          local.get 10
                          i64.store offset=8 align=4
                          i32.const 1053688
                          local.get 6
                          i32.store
                          i32.const 1053680
                          local.get 4
                          i32.store
                          i32.const 1053676
                          local.get 1
                          i32.store
                          i32.const 1053684
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
                            call 35
                            br 8 (;@4;)
                          end
                          local.get 0
                          i32.const 248
                          i32.and
                          i32.const 1053692
                          i32.add
                          local.set 1
                          block (result i32)  ;; label = @12
                            i32.const 1053956
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
                              i32.const 1053956
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
                        i32.const 1053976
                        i32.load
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 4
                        i32.const 1053972
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
                          call 33
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
                          call 35
                          br 6 (;@5;)
                        end
                        local.get 5
                        i32.const 248
                        i32.and
                        i32.const 1053692
                        i32.add
                        local.set 1
                        block (result i32)  ;; label = @11
                          i32.const 1053956
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
                            i32.const 1053956
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
                      i32.const 1053968
                      local.get 0
                      local.get 5
                      i32.sub
                      local.tee 1
                      i32.store
                      i32.const 1053976
                      i32.const 1053976
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
                    i32.const 1053972
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
                        i32.const 1053972
                        i32.const 0
                        i32.store
                        i32.const 1053964
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
                      i32.const 1053964
                      local.get 2
                      i32.store
                      i32.const 1053972
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
                  i32.const 1053976
                  i32.const 1053976
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
                  i32.const 1053968
                  i32.const 1053968
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
                  i32.const 1053988
                  i32.const 2097152
                  i32.store
                  br 3 (;@4;)
                end
                i32.const 1053976
                local.get 0
                i32.store
                i32.const 1053968
                i32.const 1053968
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
              i32.const 1053972
              local.get 0
              i32.store
              i32.const 1053964
              i32.const 1053964
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
          i32.const 1053968
          i32.load
          local.tee 0
          local.get 5
          i32.le_u
          br_if 2 (;@1;)
          drop
          i32.const 1053968
          local.get 0
          local.get 5
          i32.sub
          local.tee 1
          i32.store
          i32.const 1053976
          i32.const 1053976
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
            call 35
            br 2 (;@2;)
          end
          local.get 4
          i32.const 248
          i32.and
          i32.const 1053692
          i32.add
          local.set 1
          block (result i32)  ;; label = @4
            i32.const 1053956
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
              i32.const 1053956
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
  (func (;38;) (type 1) (param i32 i32) (result i32)
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
      call 37
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
  (func (;39;) (type 0) (param i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1053524
    i32.load8_u
    if  ;; label = @1
      local.get 0
      i32.const 2
      i32.store offset=12
      local.get 0
      i32.const 1048968
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
      i64.const 4294967296
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
      i32.const 1049000
      call 52
      unreachable
    end
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;40;) (type 0) (param i32 i32)
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
      i32.const 1048740
      local.get 2
      i32.const 40
      i32.add
      call 54
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
    i32.const 1053525
    i32.load8_u
    drop
    local.get 2
    local.get 5
    i64.store
    i32.const 12
    i32.const 4
    call 14
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 12
      call 49
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
    i32.const 1049016
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func (;41;) (type 0) (param i32 i32)
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
      i32.const 1048740
      local.get 2
      i32.const 24
      i32.add
      call 54
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
    i32.const 1049016
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;42;) (type 1) (param i32 i32) (result i32)
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
        call 56
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
      call 54
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;43;) (type 0) (param i32 i32)
    (local i32 i32)
    i32.const 1053525
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
    call 14
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 8
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
    i32.const 1049032
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;44;) (type 0) (param i32 i32)
    local.get 0
    i32.const 1049032
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;45;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;46;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 56)
  (func (;47;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    i32.const 1053544
    i32.const 1053544
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
        i32.const 1054004
        i32.load8_u
        br_if 0 (;@2;)
        drop
        i32.const 1054004
        i32.const 1
        i32.store8
        i32.const 1054000
        i32.const 1054000
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
      i32.const 1053532
      i32.load
      local.tee 6
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 1053532
      local.get 6
      i32.const 1
      i32.add
      i32.store
      i32.const 1053532
      i32.const 1053536
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
        i32.const 1053536
        i32.load
        local.get 5
        i32.const 16
        i32.add
        i32.const 1053540
        i32.load
        i32.load offset=20
        call_indirect (type 0)
        i32.const 1053532
        i32.load
        i32.const 1
        i32.sub
      else
        local.get 6
      end
      i32.store
      i32.const 1054004
      i32.const 0
      i32.store8
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      unreachable
    end
    unreachable)
  (func (;48;) (type 0) (param i32 i32)
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
      i32.const 1049124
      i32.store offset=8
      local.get 0
      i64.const 4
      i64.store offset=16 align=4
      local.get 0
      i32.const 8
      i32.add
      i32.const 1049152
      call 52
      unreachable
    end
    local.get 0
    local.get 1
    call 49
    unreachable)
  (func (;49;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1053528
    i32.load
    local.tee 0
    i32.const 2
    local.get 0
    select
    call_indirect (type 0)
    unreachable)
  (func (;50;) (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 1000
    i32.store offset=4
    local.get 2
    i32.const 2
    i32.store offset=12
    local.get 2
    i32.const 1049420
    i32.store offset=8
    local.get 2
    i64.const 2
    i64.store offset=20 align=4
    local.get 2
    local.get 2
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.const 4294967296
    i64.or
    i64.store offset=40
    local.get 2
    local.get 2
    i64.extend_i32_u
    i64.const 4294967296
    i64.or
    i64.store offset=32
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    call 52
    unreachable)
  (func (;51;) (type 0) (param i32 i32)
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
    call 52
    unreachable)
  (func (;52;) (type 0) (param i32 i32)
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
      i32.const 1049076
      local.get 0
      i32.load offset=24
      local.get 0
      i32.load offset=28
      local.tee 0
      i32.load8_u offset=28
      local.get 0
      i32.load8_u offset=29
      call 47
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    i32.const 1049048
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.tee 0
    i32.load8_u offset=28
    local.get 0
    i32.load8_u offset=29
    call 47
    unreachable)
  (func (;53;) (type 1) (param i32 i32) (result i32)
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
        i32.const 1049169
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
        i32.const 1049169
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
      i32.const 1049169
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
        i32.const 1049169
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
        call 55
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
              call 55
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
            call 55
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
        call 55
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
  (func (;54;) (type 2) (param i32 i32 i32) (result i32)
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
  (func (;55;) (type 12) (param i32 i32 i32 i32) (result i32)
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
  (func (;56;) (type 2) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load offset=20
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 2))
  (func (;57;) (type 2) (param i32 i32 i32) (result i32)
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
  (table (;0;) 18 18 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1054005))
  (global (;2;) i32 (i32.const 1054016))
  (export "memory" (memory 0))
  (export "smart_nft_memory_buffer" (func 6))
  (export "smart_nft_memory_buffer_free" (func 7))
  (export "smart_nft_memory_keys_buffer" (func 8))
  (export "smart_nft_attr_buffer" (func 9))
  (export "smart_nft_attr_buffer_free" (func 10))
  (export "smart_nft_main_buffer" (func 11))
  (export "smart_nft_main_buffer_free" (func 12))
  (export "smart_nft_main" (func 13))
  (export "smart_nft_memory_keys_buffer_free" (func 12))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func 53 39 20 31 30 27 25 24 46 43 44 45 28 42 40 41 29)
  (data (;0;) (i32.const 1048576) "src/nft1_program_basic/main/command_exec/src/lib.rs\00\00\00\10\003\00\00\00N\00\00\00,\00\00\00\00\00\10\003\00\00\00c\00\00\005\00\00\00\00\00\10\003\00\00\00h\00\00\00/\00\00\00\00\00\10\003\00\00\00n\00\00\00\18\00\00\00\00\00\10\003\00\00\00n\00\00\00 \00\00\00\00\00\10\003\00\00\00{\00\00\00\0d\00\00\00\00\00\10\003\00\00\00{\00\00\00\1b\00\00\00\03\00\00\00\0c\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00\bc\00\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\bc\00\10\00)\00\00\00\ae\04\00\00\0d\00\00\00memory allocation of  bytes failed\00\00d\01\10\00\15\00\00\00y\01\10\00\0d\00\00\00std/src/alloc.rs\98\01\10\00\10\00\00\00c\01\00\00\09\00\00\00\03\00\00\00\0c\00\00\00\04\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\09\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\10\00\00\00\04\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00capacity overflow\00\00\00\10\02\10\00\11\00\00\00alloc/src/raw_vec.rs,\02\10\00\14\00\00\00\18\00\00\00\05\00\00\00)00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899 out of range for slice of length range end index \00;\03\10\00\10\00\00\00\19\03\10\00\22\00\00\00source slice length () does not match destination slice length (\5c\03\10\00\15\00\00\00q\03\10\00+\00\00\00P\02\10\00\01"))
