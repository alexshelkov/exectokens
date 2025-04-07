(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i64 i32 i32)))
  (type (;11;) (func (param i64 i32) (result i32)))
  (type (;12;) (func (param i32) (result i32)))
  (type (;13;) (func (param i32 i64 i64 i64)))
  (import "smart_nft" "smart_nft_exec" (func (;0;) (type 4)))
  (import "smart_nft" "smart_nft_view_command_ret" (func (;1;) (type 4)))
  (func (;2;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    local.get 0
    i32.load
    i32.load8_u
    i32.const 2
    i32.shl
    local.tee 0
    i32.const 1049688
    i32.add
    i32.load
    local.get 0
    i32.const 1049672
    i32.add
    i32.load
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0))
  (func (;3;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1048972
    i32.const 14
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0))
  (func (;4;) (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.tee 3
    i32.const 4
    i32.add
    local.set 0
    block (result i32)  ;; label = @1
      local.get 3
      i32.load
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 0
        i32.store offset=8
        local.get 1
        i32.const 1048683
        i32.const 2
        local.get 2
        i32.const 8
        i32.add
        i32.const 1
        call 6
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.store offset=12
      local.get 1
      i32.const 1048685
      i32.const 3
      local.get 2
      i32.const 12
      i32.add
      i32.const 2
      call 6
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;5;) (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.set 0
    local.get 1
    i32.load offset=28
    local.tee 2
    i32.const 16
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 2
      i32.const 32
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 0
        i64.load32_u
        local.get 1
        call 16
        return
      end
      local.get 0
      i32.load
      local.get 1
      call 17
      return
    end
    local.get 0
    i32.load
    local.get 1
    call 18)
  (func (;6;) (type 5) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 5
    global.set 0
    i32.const 1
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load offset=20
      local.tee 7
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=24
      local.tee 2
      i32.load offset=12
      local.tee 1
      call_indirect (type 0)
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=28
        local.tee 8
        i32.const 4
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 7
          i32.const 1050465
          i32.const 1
          local.get 1
          call_indirect (type 0)
          br_if 2 (;@1;)
          local.get 3
          local.get 0
          local.get 4
          call_indirect (type 1)
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 7
        i32.const 1050466
        i32.const 2
        local.get 1
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 5
        i32.const 1
        i32.store8 offset=27
        local.get 5
        local.get 2
        i32.store offset=16
        local.get 5
        local.get 7
        i32.store offset=12
        local.get 5
        local.get 8
        i32.store offset=56
        local.get 5
        i32.const 1050424
        i32.store offset=52
        local.get 5
        local.get 0
        i32.load8_u offset=32
        i32.store8 offset=60
        local.get 5
        local.get 0
        i32.load offset=16
        i32.store offset=44
        local.get 5
        local.get 0
        i64.load offset=8 align=4
        i64.store offset=36 align=4
        local.get 5
        local.get 0
        i64.load align=4
        i64.store offset=28 align=4
        local.get 5
        local.get 5
        i32.const 27
        i32.add
        i32.store offset=20
        local.get 5
        local.get 5
        i32.const 12
        i32.add
        i32.store offset=48
        local.get 3
        local.get 5
        i32.const 28
        i32.add
        local.get 4
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=48
        i32.const 1050460
        i32.const 2
        local.get 5
        i32.load offset=52
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
      end
      local.get 0
      i32.load offset=20
      i32.const 1050324
      i32.const 1
      local.get 0
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 0)
      local.set 6
    end
    local.get 5
    i32.const -64
    i32.sub
    global.set 0
    local.get 6)
  (func (;7;) (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block (result i32)  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.load8_u
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 0
        i32.const 8
        i32.add
        i32.store offset=8
        local.get 1
        i32.const 1048683
        i32.const 2
        local.get 2
        i32.const 8
        i32.add
        i32.const 3
        call 6
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.const 1
      i32.add
      i32.store offset=12
      local.get 1
      i32.const 1048685
      i32.const 3
      local.get 2
      i32.const 12
      i32.add
      i32.const 4
      call 6
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;8;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i64 i64 i64 i64)
    global.get 0
    i32.const 240
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.load offset=28
                        local.tee 4
                        i32.const 16
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          local.get 4
                          i32.const 32
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 0
                          i32.const 8
                          i32.add
                          i64.load
                          local.set 9
                          local.get 0
                          i64.load
                          local.set 8
                          i32.const 128
                          local.set 0
                          local.get 2
                          i32.const 240
                          i32.add
                          local.set 6
                          i32.const 0
                          local.set 4
                          loop  ;; label = @12
                            local.get 0
                            i32.eqz
                            br_if 5 (;@7;)
                            local.get 6
                            i32.const 1
                            i32.sub
                            local.get 8
                            i32.wrap_i64
                            local.tee 3
                            i32.const 15
                            i32.and
                            local.tee 5
                            i32.const 48
                            i32.or
                            local.get 5
                            i32.const 55
                            i32.add
                            local.get 5
                            i32.const 10
                            i32.lt_u
                            select
                            i32.store8
                            local.get 9
                            i64.eqz
                            local.tee 5
                            local.get 8
                            i64.const 16
                            i64.lt_u
                            i32.and
                            br_if 3 (;@9;)
                            local.get 6
                            i32.const 2
                            i32.sub
                            local.tee 6
                            local.get 3
                            i32.const 255
                            i32.and
                            local.tee 3
                            i32.const 4
                            i32.shr_u
                            local.tee 7
                            i32.const 48
                            i32.or
                            local.get 7
                            i32.const 55
                            i32.add
                            local.get 3
                            i32.const 160
                            i32.lt_u
                            select
                            i32.store8
                            local.get 9
                            i64.const 56
                            i64.shl
                            local.get 8
                            i64.const 256
                            i64.lt_u
                            local.set 3
                            local.get 0
                            i32.const 2
                            i32.sub
                            local.set 0
                            local.get 9
                            i64.const 8
                            i64.shr_u
                            local.set 9
                            local.get 8
                            i64.const 8
                            i64.shr_u
                            i64.or
                            local.set 8
                            local.get 3
                            local.get 5
                            i32.and
                            i32.eqz
                            br_if 0 (;@12;)
                          end
                          br 3 (;@8;)
                        end
                        local.get 0
                        i32.const 8
                        i32.add
                        i64.load
                        local.set 9
                        local.get 0
                        i64.load
                        local.set 8
                        i32.const 128
                        local.set 0
                        local.get 2
                        i32.const 240
                        i32.add
                        local.set 6
                        i32.const 0
                        local.set 4
                        loop  ;; label = @11
                          local.get 0
                          i32.eqz
                          br_if 8 (;@3;)
                          local.get 6
                          i32.const 1
                          i32.sub
                          local.get 8
                          i32.wrap_i64
                          local.tee 3
                          i32.const 15
                          i32.and
                          local.tee 5
                          i32.const 48
                          i32.or
                          local.get 5
                          i32.const 87
                          i32.add
                          local.get 5
                          i32.const 10
                          i32.lt_u
                          select
                          i32.store8
                          local.get 9
                          i64.eqz
                          local.tee 5
                          local.get 8
                          i64.const 16
                          i64.lt_u
                          i32.and
                          br_if 6 (;@5;)
                          local.get 6
                          i32.const 2
                          i32.sub
                          local.tee 6
                          local.get 3
                          i32.const 255
                          i32.and
                          local.tee 3
                          i32.const 4
                          i32.shr_u
                          local.tee 7
                          i32.const 48
                          i32.or
                          local.get 7
                          i32.const 87
                          i32.add
                          local.get 3
                          i32.const 160
                          i32.lt_u
                          select
                          i32.store8
                          local.get 9
                          i64.const 56
                          i64.shl
                          local.get 8
                          i64.const 256
                          i64.lt_u
                          local.set 3
                          local.get 0
                          i32.const 2
                          i32.sub
                          local.set 0
                          local.get 9
                          i64.const 8
                          i64.shr_u
                          local.set 9
                          local.get 8
                          i64.const 8
                          i64.shr_u
                          i64.or
                          local.set 8
                          local.get 3
                          local.get 5
                          i32.and
                          i32.eqz
                          br_if 0 (;@11;)
                        end
                        br 6 (;@4;)
                      end
                      local.get 0
                      i32.const 8
                      i32.add
                      i64.load
                      local.set 8
                      local.get 0
                      i64.load
                      local.set 10
                      local.get 2
                      i32.const 39
                      i32.store offset=108
                      local.get 2
                      i32.const 24
                      i32.add
                      block (result i64)  ;; label = @10
                        local.get 8
                        i64.const 524288
                        i64.ge_u
                        if  ;; label = @11
                          local.get 2
                          i32.const 56
                          i32.add
                          local.get 10
                          i64.const 0
                          i64.const -7667109045778114189
                          call 88
                          local.get 2
                          i32.const 40
                          i32.add
                          local.get 10
                          i64.const 0
                          i64.const 8507059173023461586
                          call 88
                          local.get 2
                          i32.const 88
                          i32.add
                          local.get 8
                          i64.const 0
                          i64.const -7667109045778114189
                          call 88
                          local.get 2
                          i32.const 72
                          i32.add
                          local.get 8
                          i64.const 0
                          i64.const 8507059173023461586
                          call 88
                          local.get 2
                          i32.const 80
                          i32.add
                          i64.load
                          local.get 2
                          i32.const 48
                          i32.add
                          i64.load
                          local.get 2
                          i32.const -64
                          i32.sub
                          i64.load
                          local.tee 9
                          local.get 2
                          i64.load offset=40
                          i64.add
                          local.tee 8
                          local.get 9
                          i64.lt_u
                          i64.extend_i32_u
                          i64.add
                          local.tee 11
                          local.get 2
                          i64.load offset=72
                          i64.add
                          local.tee 9
                          local.get 11
                          i64.lt_u
                          i64.extend_i32_u
                          i64.add
                          local.get 9
                          local.get 2
                          i32.const 96
                          i32.add
                          i64.load
                          local.get 8
                          local.get 2
                          i64.load offset=88
                          i64.add
                          local.get 8
                          i64.lt_u
                          i64.extend_i32_u
                          i64.add
                          i64.add
                          local.tee 8
                          local.get 9
                          i64.lt_u
                          i64.extend_i32_u
                          i64.add
                          local.tee 11
                          i64.const 62
                          i64.shr_u
                          local.set 9
                          local.get 11
                          i64.const 2
                          i64.shl
                          local.get 8
                          i64.const 62
                          i64.shr_u
                          i64.or
                          br 1 (;@10;)
                        end
                        local.get 8
                        i64.const 45
                        i64.shl
                        local.get 10
                        i64.const 19
                        i64.shr_u
                        i64.or
                        i64.const 19073486328125
                        i64.div_u
                      end
                      local.tee 8
                      local.get 9
                      i64.const 8446744073709551616
                      call 88
                      local.get 2
                      i64.load offset=24
                      local.get 10
                      i64.add
                      local.get 2
                      i32.const 112
                      i32.add
                      local.tee 4
                      local.get 2
                      i32.const 108
                      i32.add
                      local.tee 3
                      call 13
                      local.get 1
                      i32.const 1
                      i32.const 0
                      block (result i32)  ;; label = @10
                        local.get 2
                        i32.load offset=108
                        local.tee 0
                        local.get 8
                        local.get 9
                        i64.or
                        i64.eqz
                        br_if 0 (;@10;)
                        drop
                        local.get 2
                        i32.const 132
                        i32.add
                        i32.const 48
                        local.get 0
                        i32.const 20
                        i32.sub
                        call 87
                        local.get 2
                        i32.const 20
                        i32.store offset=108
                        local.get 2
                        i32.const 8
                        i32.add
                        local.get 9
                        i64.const 45
                        i64.shl
                        local.get 8
                        i64.const 19
                        i64.shr_u
                        i64.or
                        local.tee 9
                        i64.const 19073486328125
                        i64.div_u
                        local.tee 10
                        local.get 8
                        i64.const 8446744073709551616
                        call 88
                        local.get 2
                        i64.load offset=8
                        local.get 8
                        i64.add
                        local.get 4
                        local.get 3
                        call 13
                        local.get 2
                        i32.load offset=108
                        local.tee 0
                        local.get 9
                        i64.const 19073486328125
                        i64.lt_u
                        br_if 0 (;@10;)
                        drop
                        local.get 2
                        i32.const 113
                        i32.add
                        i32.const 48
                        local.get 0
                        i32.const 1
                        i32.sub
                        call 87
                        local.get 2
                        local.get 10
                        i32.wrap_i64
                        i32.const 48
                        i32.or
                        i32.store8 offset=112
                        i32.const 0
                      end
                      local.tee 0
                      local.get 2
                      i32.const 112
                      i32.add
                      i32.add
                      i32.const 39
                      local.get 0
                      i32.sub
                      call 14
                      br 7 (;@2;)
                    end
                    local.get 0
                    i32.const 1
                    i32.sub
                    local.set 0
                  end
                  local.get 0
                  i32.const 129
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 0
                  local.set 4
                end
                local.get 1
                i32.const 1050508
                i32.const 2
                local.get 2
                i32.const 112
                i32.add
                local.get 4
                i32.add
                i32.const 128
                local.get 4
                i32.sub
                call 14
                br 4 (;@2;)
              end
              local.get 0
              i32.const 128
              i32.const 1050492
              call 15
              unreachable
            end
            local.get 0
            i32.const 1
            i32.sub
            local.set 0
          end
          local.get 0
          i32.const 129
          i32.ge_u
          br_if 2 (;@1;)
          local.get 0
          local.set 4
        end
        local.get 1
        i32.const 1050508
        i32.const 2
        local.get 2
        i32.const 112
        i32.add
        local.get 4
        i32.add
        i32.const 128
        local.get 4
        i32.sub
        call 14
      end
      local.get 2
      i32.const 240
      i32.add
      global.set 0
      return
    end
    local.get 0
    i32.const 128
    i32.const 1050492
    call 15
    unreachable)
  (func (;9;) (type 1) (param i32 i32) (result i32)
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
    i32.const 4
    i32.add
    i32.store offset=12
    local.get 1
    i32.const 1048654
    i32.const 9
    i32.const 1048663
    i32.const 11
    local.get 0
    i32.const 5
    i32.const 1048674
    i32.const 9
    local.get 2
    i32.const 12
    i32.add
    i32.const 6
    call 12
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;10;) (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    i32.load offset=28
    local.tee 2
    i32.const 16
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 2
      i32.const 32
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 0
        i64.load32_u
        local.get 1
        call 16
        return
      end
      local.get 0
      i32.load
      local.get 1
      call 17
      return
    end
    local.get 0
    i32.load
    local.get 1
    call 18)
  (func (;11;) (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block (result i32)  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.load8_u
      i32.eqz
      if  ;; label = @2
        local.get 1
        i32.load offset=20
        i32.const 1050316
        i32.const 4
        local.get 1
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.const 1
      i32.add
      i32.store offset=12
      local.get 1
      i32.const 1050320
      i32.const 4
      local.get 2
      i32.const 12
      i32.add
      i32.const 7
      call 6
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;12;) (type 9) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 11
    global.set 0
    local.get 0
    i32.load offset=20
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0)
    local.set 1
    local.get 11
    i32.const 0
    i32.store8 offset=13
    local.get 11
    local.get 1
    i32.store8 offset=12
    local.get 11
    local.get 0
    i32.store offset=8
    local.get 11
    i32.const 8
    i32.add
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call 74
    local.get 7
    local.get 8
    local.get 9
    local.get 10
    call 74
    local.set 1
    local.get 11
    i32.load8_u offset=13
    local.tee 2
    local.get 11
    i32.load8_u offset=12
    local.tee 3
    i32.or
    local.set 0
    block  ;; label = @1
      local.get 3
      i32.const 1
      i32.and
      local.get 2
      i32.const 1
      i32.ne
      i32.or
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.tee 0
      i32.load8_u offset=28
      i32.const 4
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.load offset=20
        i32.const 1050463
        i32.const 2
        local.get 0
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=20
      i32.const 1050462
      i32.const 1
      local.get 0
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 0)
      local.set 0
    end
    local.get 11
    i32.const 16
    i32.add
    global.set 0
    local.get 0
    i32.const 1
    i32.and)
  (func (;13;) (type 10) (param i64 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64)
    local.get 2
    i32.load
    local.tee 4
    i32.const 19
    i32.gt_u
    if  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000000000000000
        i64.ge_u
        if  ;; label = @3
          local.get 1
          local.get 4
          i32.const 16
          i32.sub
          local.tee 5
          i32.add
          local.tee 3
          local.get 0
          i64.const 10000000000000000
          i64.div_u
          local.tee 9
          i64.const -10000000000000000
          i64.mul
          local.get 0
          i64.add
          local.tee 8
          i64.const 100000000000000
          i64.div_u
          i32.wrap_i64
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 3
          i32.const 12
          i32.add
          local.get 8
          i64.const 100
          i64.div_u
          local.tee 0
          i64.const 100
          i64.rem_u
          i32.wrap_i64
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 3
          i32.const 10
          i32.add
          local.get 8
          i64.const 10000
          i64.div_u
          i64.const 100
          i64.rem_u
          i32.wrap_i64
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 3
          i32.const 8
          i32.add
          local.get 8
          i64.const 1000000
          i64.div_u
          i64.const 100
          i64.rem_u
          i32.wrap_i64
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 3
          i32.const 6
          i32.add
          local.get 8
          i64.const 100000000
          i64.div_u
          i32.wrap_i64
          i32.const 100
          i32.rem_u
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 3
          i32.const 4
          i32.add
          local.get 8
          i64.const 10000000000
          i64.div_u
          i32.wrap_i64
          i32.const 100
          i32.rem_u
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 3
          i32.const 14
          i32.add
          local.get 0
          i64.const 4294967196
          i64.mul
          local.get 8
          i64.add
          i32.wrap_i64
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 3
          i32.const 2
          i32.add
          local.get 8
          i64.const 1000000000000
          i64.div_u
          i32.wrap_i64
          i32.const 65535
          i32.and
          i32.const 100
          i32.rem_u
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 9
          i32.wrap_i64
          local.set 3
          br 1 (;@2;)
        end
        local.get 0
        i64.const 100000000
        i64.ge_u
        if  ;; label = @3
          local.get 2
          local.get 4
          i32.const 8
          i32.sub
          local.tee 4
          i32.store
          local.get 1
          local.get 4
          i32.add
          local.tee 6
          local.get 0
          local.get 0
          i64.const 100000000
          i64.div_u
          local.tee 0
          i64.const 4194967296
          i64.mul
          i64.add
          i32.wrap_i64
          local.tee 5
          i32.const 1000000
          i32.div_u
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 6
          i32.const 4
          i32.add
          local.get 5
          i32.const 100
          i32.div_u
          local.tee 3
          i32.const 100
          i32.rem_u
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 6
          i32.const 6
          i32.add
          local.get 3
          i32.const -100
          i32.mul
          local.get 5
          i32.add
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          local.get 6
          i32.const 2
          i32.add
          local.get 5
          i32.const 10000
          i32.div_u
          i32.const 65535
          i32.and
          i32.const 100
          i32.rem_u
          i32.const 1
          i32.shl
          i32.const 1050510
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
        end
        local.get 0
        i32.wrap_i64
        local.set 3
        local.get 0
        i64.const 10000
        i64.lt_u
        if  ;; label = @3
          local.get 4
          local.set 5
          br 1 (;@2;)
        end
        local.get 1
        local.get 4
        i32.const 4
        i32.sub
        local.tee 5
        i32.add
        local.get 3
        local.get 3
        i32.const 10000
        i32.div_u
        local.tee 3
        i32.const 55536
        i32.mul
        i32.add
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 6
        i32.const 1
        i32.shl
        i32.const 1050510
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 1
        local.get 4
        i32.add
        i32.const 2
        i32.sub
        local.get 6
        i32.const -100
        i32.mul
        local.get 7
        i32.add
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1050510
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
      end
      block  ;; label = @2
        local.get 3
        i32.const 100
        i32.lt_u
        if  ;; label = @3
          local.get 3
          local.set 4
          br 1 (;@2;)
        end
        local.get 1
        local.get 5
        i32.const 2
        i32.sub
        local.tee 5
        i32.add
        local.get 3
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 4
        i32.const -100
        i32.mul
        local.get 3
        i32.add
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1050510
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
      end
      local.get 4
      i32.const 65535
      i32.and
      local.tee 6
      i32.const 10
      i32.ge_u
      if  ;; label = @2
        local.get 1
        local.get 5
        i32.const 2
        i32.sub
        local.tee 3
        i32.add
        local.get 6
        i32.const 1
        i32.shl
        i32.const 1050510
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 2
        local.get 3
        i32.store
        return
      end
      local.get 1
      local.get 5
      i32.const 1
      i32.sub
      local.tee 3
      i32.add
      local.get 4
      i32.const 48
      i32.or
      i32.store8
      local.get 2
      local.get 3
      i32.store
      return
    end
    i32.const 1050710
    i32.const 28
    i32.const 1050740
    call 55
    unreachable)
  (func (;14;) (type 5) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=28
    local.tee 7
    i32.const 1
    i32.and
    local.tee 10
    local.get 4
    i32.add
    local.set 6
    block  ;; label = @1
      local.get 7
      i32.const 4
      i32.and
      i32.eqz
      if  ;; label = @2
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.eqz
        if  ;; label = @3
          br 1 (;@2;)
        end
        local.get 2
        i32.const 3
        i32.and
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.set 5
        loop  ;; label = @3
          local.get 8
          local.get 5
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 8
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 9
          i32.const 1
          i32.sub
          local.tee 9
          br_if 0 (;@3;)
        end
      end
      local.get 6
      local.get 8
      i32.add
      local.set 6
    end
    i32.const 43
    i32.const 1114112
    local.get 10
    select
    local.set 8
    local.get 0
    i32.load
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load offset=20
      local.tee 5
      local.get 0
      i32.load offset=24
      local.tee 0
      local.get 8
      local.get 1
      local.get 2
      call 71
      if  ;; label = @2
        i32.const 1
        return
      end
      local.get 5
      local.get 3
      local.get 4
      local.get 0
      i32.load offset=12
      call_indirect (type 0)
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          local.get 0
          i32.load offset=4
          local.tee 9
          i32.ge_u
          if  ;; label = @4
            local.get 0
            i32.load offset=20
            local.tee 5
            local.get 0
            i32.load offset=24
            local.tee 0
            local.get 8
            local.get 1
            local.get 2
            call 71
            i32.eqz
            br_if 1 (;@3;)
            i32.const 1
            return
          end
          local.get 7
          i32.const 8
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=16
          local.set 11
          local.get 0
          i32.const 48
          i32.store offset=16
          local.get 0
          i32.load8_u offset=32
          local.set 12
          i32.const 1
          local.set 5
          local.get 0
          i32.const 1
          i32.store8 offset=32
          local.get 0
          i32.load offset=20
          local.tee 7
          local.get 0
          i32.load offset=24
          local.tee 10
          local.get 8
          local.get 1
          local.get 2
          call 71
          br_if 2 (;@1;)
          local.get 9
          local.get 6
          i32.sub
          i32.const 1
          i32.add
          local.set 5
          block  ;; label = @4
            loop  ;; label = @5
              local.get 5
              i32.const 1
              i32.sub
              local.tee 5
              i32.eqz
              br_if 1 (;@4;)
              local.get 7
              i32.const 48
              local.get 10
              i32.load offset=16
              call_indirect (type 1)
              i32.eqz
              br_if 0 (;@5;)
            end
            i32.const 1
            return
          end
          local.get 7
          local.get 3
          local.get 4
          local.get 10
          i32.load offset=12
          call_indirect (type 0)
          if  ;; label = @4
            i32.const 1
            return
          end
          local.get 0
          local.get 12
          i32.store8 offset=32
          local.get 0
          local.get 11
          i32.store offset=16
          i32.const 0
          return
        end
        local.get 5
        local.get 3
        local.get 4
        local.get 0
        i32.load offset=12
        call_indirect (type 0)
        local.set 5
        br 1 (;@1;)
      end
      local.get 9
      local.get 6
      i32.sub
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=32
            local.tee 5
            i32.const 1
            i32.sub
            br_table 0 (;@4;) 1 (;@3;) 0 (;@4;) 2 (;@2;)
          end
          local.get 6
          local.set 5
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 6
        i32.const 1
        i32.shr_u
        local.set 5
        local.get 6
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 6
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 5
      local.get 0
      i32.load offset=16
      local.set 9
      local.get 0
      i32.load offset=24
      local.set 7
      local.get 0
      i32.load offset=20
      local.set 0
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          i32.const 1
          i32.sub
          local.tee 5
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 9
          local.get 7
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      i32.const 1
      local.set 5
      local.get 0
      local.get 7
      local.get 8
      local.get 1
      local.get 2
      call 71
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 4
      local.get 7
      i32.load offset=12
      call_indirect (type 0)
      br_if 0 (;@1;)
      i32.const 0
      local.set 5
      loop  ;; label = @2
        local.get 5
        local.get 6
        i32.eq
        if  ;; label = @3
          i32.const 0
          return
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        local.get 0
        local.get 9
        local.get 7
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const 1
      i32.sub
      local.get 6
      i32.lt_u
      return
    end
    local.get 5)
  (func (;15;) (type 3) (param i32 i32 i32)
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
    i32.const 1050808
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 34359738368
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
    call 59
    unreachable)
  (func (;16;) (type 11) (param i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    i32.const 39
    local.set 2
    block  ;; label = @1
      local.get 0
      i64.const 10000
      i64.lt_u
      if  ;; label = @2
        local.get 0
        local.set 7
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
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 7
        i64.const 55536
        i64.mul
        local.get 0
        i64.add
        i32.wrap_i64
        local.tee 5
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 6
        i32.const 1
        i32.shl
        i32.const 1050510
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        i32.const 2
        i32.sub
        local.get 6
        i32.const -100
        i32.mul
        local.get 5
        i32.add
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1050510
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 2
        i32.const 4
        i32.sub
        local.set 2
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.get 7
        local.set 0
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 7
      i64.const 99
      i64.le_u
      if  ;; label = @2
        local.get 7
        i32.wrap_i64
        local.set 3
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
      local.get 7
      i32.wrap_i64
      local.tee 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 3
      i32.const -100
      i32.mul
      local.get 5
      i32.add
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1050510
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      local.get 3
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
        local.get 3
        i32.const 1
        i32.shl
        i32.const 1050510
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
      local.get 3
      i32.const 48
      i32.or
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 0
    local.get 4
    i32.const 9
    i32.add
    local.get 2
    i32.add
    i32.const 39
    local.get 2
    i32.sub
    call 14
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;17;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 4
    global.set 0
    i32.const 127
    local.set 2
    loop  ;; label = @1
      local.get 4
      local.get 2
      local.tee 3
      i32.add
      local.tee 5
      local.get 0
      i32.const 15
      i32.and
      local.tee 2
      i32.const 48
      i32.or
      local.get 2
      i32.const 55
      i32.add
      local.get 2
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 3
      i32.const 1
      i32.sub
      local.set 2
      local.get 0
      i32.const 16
      i32.lt_u
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 129
    i32.ge_u
    if  ;; label = @1
      local.get 3
      i32.const 128
      i32.const 1050492
      call 15
      unreachable
    end
    local.get 1
    i32.const 1050508
    i32.const 2
    local.get 5
    i32.const 128
    local.get 3
    i32.sub
    call 14
    local.get 4
    i32.const 128
    i32.add
    global.set 0)
  (func (;18;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 4
    global.set 0
    i32.const 127
    local.set 2
    loop  ;; label = @1
      local.get 4
      local.get 2
      local.tee 3
      i32.add
      local.tee 5
      local.get 0
      i32.const 15
      i32.and
      local.tee 2
      i32.const 48
      i32.or
      local.get 2
      i32.const 87
      i32.add
      local.get 2
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 3
      i32.const 1
      i32.sub
      local.set 2
      local.get 0
      i32.const 16
      i32.lt_u
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 129
    i32.ge_u
    if  ;; label = @1
      local.get 3
      i32.const 128
      i32.const 1050492
      call 15
      unreachable
    end
    local.get 1
    i32.const 1050508
    i32.const 2
    local.get 5
    i32.const 128
    local.get 3
    i32.sub
    call 14
    local.get 4
    i32.const 128
    i32.add
    global.set 0)
  (func (;19;) (type 4) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 1
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      call 20
    end)
  (func (;20;) (type 2) (param i32 i32)
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
        call 54
        return
      end
      i32.const 1051205
      i32.const 46
      i32.const 1051252
      call 55
      unreachable
    end
    i32.const 1051268
    i32.const 46
    i32.const 1051316
    call 55
    unreachable)
  (func (;21;) (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 2
          local.get 0
          i32.load offset=24
          i32.const -2147483648
          i32.xor
          local.tee 1
          local.get 1
          i32.const 2
          i32.ge_u
          select
          br_table 2 (;@1;) 1 (;@2;) 0 (;@3;)
        end
        local.get 0
        i32.load
        local.tee 1
        if  ;; label = @3
          local.get 0
          i32.load offset=4
          local.get 1
          call 20
        end
        local.get 0
        i32.load offset=12
        local.tee 1
        if  ;; label = @3
          local.get 0
          i32.load offset=16
          local.get 1
          call 20
        end
        local.get 0
        i32.const 24
        i32.add
        local.set 0
      end
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      call 20
    end)
  (func (;22;) (type 4) (param i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 2
            local.get 0
            i32.load offset=12
            local.tee 1
            i32.const -2147483648
            i32.xor
            local.tee 2
            local.get 2
            i32.const 4
            i32.ge_u
            select
            i32.const 1
            i32.sub
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;) 3 (;@1;)
          end
          local.get 0
          i32.load offset=4
          local.set 2
          local.get 0
          i32.load offset=8
          local.tee 3
          if  ;; label = @4
            local.get 2
            local.set 1
            loop  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 4
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.const 8
                i32.add
                i32.load
                local.get 4
                call 20
              end
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 3
              i32.const 1
              i32.sub
              local.tee 3
              br_if 0 (;@5;)
            end
          end
          local.get 0
          i32.load
          local.tee 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          local.get 0
          i32.const 4
          i32.shl
          call 20
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.get 2
        call 20
        return
      end
      local.get 0
      i32.load
      local.tee 2
      if  ;; label = @2
        local.get 0
        i32.load offset=4
        local.get 2
        call 20
      end
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.get 1
      call 20
    end)
  (func (;23;) (type 4) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load
            i32.const 1
            i32.sub
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;) 3 (;@1;)
          end
          local.get 0
          i32.const 8
          i32.add
          call 22
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=8
        local.set 2
        local.get 0
        i32.load offset=12
        local.tee 3
        if  ;; label = @3
          local.get 2
          local.set 1
          loop  ;; label = @4
            local.get 1
            call 24
            local.get 1
            i32.const 28
            i32.add
            local.set 1
            local.get 3
            i32.const 1
            i32.sub
            local.tee 3
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.load offset=4
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.const 28
        i32.mul
        call 20
        return
      end
      local.get 0
      i32.const 4
      i32.add
      call 22
    end)
  (func (;24;) (type 4) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 1
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      call 20
    end
    local.get 0
    i32.load offset=12
    local.tee 1
    if  ;; label = @1
      local.get 0
      i32.load offset=16
      local.get 1
      call 20
    end)
  (func (;25;) (type 4) (param i32)
    (local i32 i32 i64)
    block  ;; label = @1
      local.get 0
      i64.load
      i64.const 2
      i64.sub
      local.tee 3
      i64.const 1
      i64.le_u
      if  ;; label = @2
        local.get 3
        i32.wrap_i64
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=12
        local.tee 1
        if  ;; label = @3
          local.get 0
          i32.load offset=16
          local.get 1
          call 20
        end
        local.get 0
        i32.load offset=24
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=28
        local.get 1
        call 20
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=16
      local.tee 1
      if  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 1
        call 20
      end
      local.get 0
      i32.load offset=32
      local.tee 1
      local.get 0
      i32.load offset=36
      call 26
      local.get 0
      i32.load offset=28
      local.tee 2
      if  ;; label = @2
        local.get 1
        local.get 2
        i32.const 5
        i32.shl
        call 20
      end
      local.get 0
      i32.load offset=44
      local.tee 1
      local.get 0
      i32.load offset=48
      call 27
      local.get 0
      i32.load offset=40
      local.tee 2
      if  ;; label = @2
        local.get 1
        local.get 2
        i32.const 24
        i32.mul
        call 20
      end
      local.get 0
      i32.load offset=56
      local.tee 1
      local.get 0
      i32.load offset=60
      call 28
      local.get 0
      i32.load offset=52
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 4
      i32.shl
      call 20
    end)
  (func (;26;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.get 2
          call 20
        end
        block  ;; label = @3
          local.get 0
          i32.const 12
          i32.add
          i32.load8_u
          i32.const 2
          i32.sub
          i32.const 255
          i32.and
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          i32.const 16
          i32.add
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 20
          i32.add
          i32.load
          local.get 2
          call 20
        end
        local.get 0
        i32.const 32
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        br_if 0 (;@2;)
      end
    end)
  (func (;27;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.get 2
          call 20
        end
        local.get 0
        i32.const 12
        i32.add
        i32.load
        local.tee 2
        if  ;; label = @3
          local.get 0
          i32.const 16
          i32.add
          i32.load
          local.get 2
          call 20
        end
        local.get 0
        i32.const 24
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        br_if 0 (;@2;)
      end
    end)
  (func (;28;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        i32.const -2147483648
        i32.eq
        local.get 2
        i32.eqz
        i32.or
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.get 2
          call 20
        end
        local.get 0
        i32.const 16
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        br_if 0 (;@2;)
      end
    end)
  (func (;29;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call 30)
  (func (;30;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          i32.const 1
          i32.and
          i32.eqz
          local.tee 4
          local.get 0
          i32.load
          local.tee 6
          i32.eqz
          i32.and
          i32.eqz
          if  ;; label = @4
            block  ;; label = @5
              local.get 4
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              i32.add
              local.set 11
              block  ;; label = @6
                local.get 0
                i32.load offset=12
                local.tee 10
                i32.eqz
                if  ;; label = @7
                  local.get 1
                  local.set 4
                  br 1 (;@6;)
                end
                local.get 1
                local.set 4
                loop  ;; label = @7
                  local.get 4
                  local.tee 3
                  local.get 11
                  i32.eq
                  br_if 2 (;@5;)
                  block (result i32)  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.get 3
                    i32.load8_s
                    local.tee 9
                    i32.const 0
                    i32.ge_s
                    br_if 0 (;@8;)
                    drop
                    local.get 3
                    i32.const 2
                    i32.add
                    local.get 9
                    i32.const -32
                    i32.lt_u
                    br_if 0 (;@8;)
                    drop
                    local.get 3
                    i32.const 3
                    i32.add
                    local.get 9
                    i32.const -16
                    i32.lt_u
                    br_if 0 (;@8;)
                    drop
                    local.get 3
                    i32.const 4
                    i32.add
                  end
                  local.tee 4
                  local.get 3
                  i32.sub
                  local.get 5
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
              local.get 4
              local.get 11
              i32.eq
              br_if 0 (;@5;)
              local.get 4
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
              local.set 3
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
                    local.get 3
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
                    local.set 3
                    local.get 6
                    i32.const 4
                    i32.add
                    local.tee 6
                    br_if 0 (;@8;)
                  end
                end
                local.get 1
                local.set 4
                loop  ;; label = @7
                  local.get 3
                  local.get 4
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 3
                  local.get 4
                  i32.const 1
                  i32.add
                  local.set 4
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
                local.tee 4
                i32.load8_s
                i32.const -65
                i32.gt_s
                local.set 7
                local.get 9
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                local.get 7
                local.get 4
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
                local.get 4
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
              local.get 3
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
                local.tee 12
                i32.const 3
                i32.and
                local.set 8
                local.get 12
                i32.const 2
                i32.shl
                local.set 11
                i32.const 0
                local.set 4
                local.get 6
                i32.const 4
                i32.ge_u
                if  ;; label = @7
                  local.get 5
                  local.get 11
                  i32.const 1008
                  i32.and
                  i32.add
                  local.set 9
                  local.get 5
                  local.set 3
                  loop  ;; label = @8
                    local.get 4
                    local.get 3
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
                    i32.add
                    local.get 3
                    i32.load offset=4
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
                    i32.add
                    local.get 3
                    i32.load offset=8
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
                    i32.add
                    local.get 3
                    i32.load offset=12
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
                    i32.add
                    local.set 4
                    local.get 3
                    i32.const 16
                    i32.add
                    local.tee 3
                    local.get 9
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 6
                local.get 12
                i32.sub
                local.set 6
                local.get 10
                local.get 11
                i32.add
                local.set 5
                local.get 4
                i32.const 8
                i32.shr_u
                i32.const 16711935
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
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
              end
              local.get 10
              local.get 12
              i32.const 252
              i32.and
              i32.const 2
              i32.shl
              i32.add
              local.tee 5
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
              local.set 3
              local.get 8
              i32.const 1
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              i32.load offset=4
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
              local.get 3
              i32.add
              local.set 3
              local.get 8
              i32.const 2
              i32.eq
              br_if 2 (;@3;)
              local.get 5
              i32.load offset=8
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
              local.get 3
              i32.add
              local.set 3
              br 2 (;@3;)
            end
            local.get 2
            i32.eqz
            if  ;; label = @5
              br 3 (;@2;)
            end
            local.get 2
            i32.const 3
            i32.and
            local.set 4
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
              local.set 3
              local.get 2
              i32.const 12
              i32.and
              local.tee 8
              local.set 5
              loop  ;; label = @6
                local.get 7
                local.get 3
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
                local.set 7
                local.get 3
                i32.const 4
                i32.add
                local.set 3
                local.get 5
                i32.const 4
                i32.sub
                local.tee 5
                br_if 0 (;@6;)
              end
            end
            local.get 4
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            local.get 8
            i32.add
            local.set 3
            loop  ;; label = @5
              local.get 7
              local.get 3
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 7
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 4
              i32.const 1
              i32.sub
              local.tee 4
              br_if 0 (;@5;)
            end
            br 2 (;@2;)
          end
          br 2 (;@1;)
        end
        local.get 3
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
          local.set 3
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
              local.set 3
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            local.get 6
            i32.const 1
            i32.shr_u
            local.set 3
            local.get 6
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 6
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 0
          i32.load offset=16
          local.set 4
          local.get 0
          i32.load offset=24
          local.set 5
          local.get 0
          i32.load offset=20
          local.set 0
          loop  ;; label = @4
            local.get 3
            i32.const 1
            i32.sub
            local.tee 3
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            local.get 4
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
      call_indirect (type 0)
      if  ;; label = @2
        i32.const 1
        return
      end
      i32.const 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 6
        i32.eq
        if  ;; label = @3
          i32.const 0
          return
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        local.get 4
        local.get 5
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 3
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
    call_indirect (type 0))
  (func (;31;) (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=12
    local.get 1
    i32.const 1048688
    i32.const 13
    i32.const 1048701
    i32.const 5
    local.get 0
    i32.const 9
    i32.const 1048706
    i32.const 5
    local.get 2
    i32.const 12
    i32.add
    i32.const 10
    call 12
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;32;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 0
    i32.load offset=8
    local.set 5
    local.get 0
    i32.load offset=4
    local.set 3
    i32.const 1
    local.set 6
    local.get 1
    i32.load offset=20
    i32.const 1050336
    i32.const 1
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0)
    local.set 0
    local.get 5
    if  ;; label = @1
      loop  ;; label = @2
        local.get 7
        local.set 8
        i32.const 1
        local.set 7
        local.get 0
        i32.const 1
        i32.and
        local.set 4
        i32.const 1
        local.set 0
        block  ;; label = @3
          local.get 4
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.load offset=28
            local.tee 10
            i32.const 4
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 8
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 1
              i32.load offset=20
              i32.const 1050455
              i32.const 2
              local.get 1
              i32.load offset=24
              i32.load offset=12
              call_indirect (type 0)
              i32.eqz
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 1
            i32.load offset=24
            local.set 4
            local.get 1
            i32.load offset=20
            local.set 9
            local.get 8
            i32.const 1
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 9
              i32.const 1050468
              i32.const 1
              local.get 4
              i32.load offset=12
              call_indirect (type 0)
              br_if 2 (;@3;)
            end
            local.get 2
            i32.const 1
            i32.store8 offset=27
            local.get 2
            local.get 4
            i32.store offset=16
            local.get 2
            local.get 9
            i32.store offset=12
            local.get 2
            local.get 10
            i32.store offset=56
            local.get 2
            i32.const 1050424
            i32.store offset=52
            local.get 2
            local.get 1
            i32.load8_u offset=32
            i32.store8 offset=60
            local.get 2
            local.get 1
            i32.load offset=16
            i32.store offset=44
            local.get 2
            local.get 1
            i64.load offset=8 align=4
            i64.store offset=36 align=4
            local.get 2
            local.get 1
            i64.load align=4
            i64.store offset=28 align=4
            local.get 2
            local.get 2
            i32.const 27
            i32.add
            i32.store offset=20
            local.get 2
            local.get 2
            i32.const 12
            i32.add
            i32.store offset=48
            local.get 3
            local.get 2
            i32.const 28
            i32.add
            call 81
            i32.eqz
            if  ;; label = @5
              local.get 2
              i32.load offset=48
              i32.const 1050460
              i32.const 2
              local.get 2
              i32.load offset=52
              i32.load offset=12
              call_indirect (type 0)
              local.set 0
              br 2 (;@3;)
            end
            br 1 (;@3;)
          end
          local.get 3
          local.get 1
          call 81
          local.set 0
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 5
        i32.const 1
        i32.sub
        local.tee 5
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load offset=20
      i32.const 1050469
      i32.const 1
      local.get 1
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 0)
      local.set 6
    end
    local.get 2
    i32.const -64
    i32.sub
    global.set 0
    local.get 6)
  (func (;33;) (type 6) (result i32)
    i32.const 1051364)
  (func (;34;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 368
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1074793188
    i32.load8_u
    drop
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
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block (result i32)  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            i32.const 84
                                                            call 35
                                                            local.tee 9
                                                            i32.eqz
                                                            br_if 0 (;@28;)
                                                            i32.const 1074793188
                                                            i32.load8_u
                                                            drop
                                                            i32.const 8
                                                            call 35
                                                            local.tee 4
                                                            i32.eqz
                                                            br_if 27 (;@1;)
                                                            local.get 4
                                                            i64.const 7162263159543064941
                                                            i64.store align=1
                                                            i32.const 1074793188
                                                            i32.load8_u
                                                            drop
                                                            i32.const 11
                                                            call 35
                                                            local.tee 2
                                                            i32.eqz
                                                            br_if 27 (;@1;)
                                                            i32.const 1074793188
                                                            i32.load8_u
                                                            drop
                                                            local.get 2
                                                            i32.const 7
                                                            i32.add
                                                            i32.const 1048993
                                                            i32.load align=1
                                                            i32.store align=1
                                                            local.get 2
                                                            i32.const 1048986
                                                            i64.load align=1
                                                            i64.store align=1
                                                            i32.const 4
                                                            call 35
                                                            local.tee 6
                                                            i32.eqz
                                                            br_if 27 (;@1;)
                                                            local.get 6
                                                            i32.const 1953393005
                                                            i32.store align=1
                                                            i32.const 1074793188
                                                            i32.load8_u
                                                            drop
                                                            i32.const 8
                                                            call 35
                                                            local.tee 13
                                                            i32.eqz
                                                            br_if 27 (;@1;)
                                                            local.get 13
                                                            i64.const 6072627048855005517
                                                            i64.store align=1
                                                            i32.const 1074793188
                                                            i32.load8_u
                                                            drop
                                                            i32.const 4
                                                            call 35
                                                            local.tee 8
                                                            i32.eqz
                                                            br_if 27 (;@1;)
                                                            local.get 8
                                                            i32.const 1869049708
                                                            i32.store align=1
                                                            i32.const 1074793188
                                                            i32.load8_u
                                                            drop
                                                            i32.const 12
                                                            call 35
                                                            local.tee 5
                                                            i32.eqz
                                                            br_if 27 (;@1;)
                                                            local.get 9
                                                            i64.const 8589934604
                                                            i64.store offset=76 align=4
                                                            local.get 9
                                                            local.get 5
                                                            i32.store offset=72
                                                            local.get 9
                                                            i64.const 51539607556
                                                            i64.store offset=64 align=4
                                                            local.get 9
                                                            local.get 8
                                                            i32.store offset=60
                                                            local.get 9
                                                            i32.const 4
                                                            i32.store offset=56
                                                            local.get 9
                                                            i64.const 4294967304
                                                            i64.store offset=48 align=4
                                                            local.get 9
                                                            local.get 13
                                                            i32.store offset=44
                                                            local.get 9
                                                            i64.const 34359738372
                                                            i64.store offset=36 align=4
                                                            local.get 9
                                                            local.get 6
                                                            i32.store offset=32
                                                            local.get 9
                                                            i32.const 4
                                                            i32.store offset=28
                                                            local.get 9
                                                            i64.const 11
                                                            i64.store offset=20 align=4
                                                            local.get 9
                                                            local.get 2
                                                            i32.store offset=16
                                                            local.get 9
                                                            i64.const 47244640264
                                                            i64.store offset=8 align=4
                                                            local.get 9
                                                            local.get 4
                                                            i32.store offset=4
                                                            local.get 9
                                                            i32.const 8
                                                            i32.store
                                                            local.get 5
                                                            i32.const 8
                                                            i32.add
                                                            i32.const 1049005
                                                            i32.load align=1
                                                            i32.store align=1
                                                            local.get 5
                                                            i32.const 1048997
                                                            i64.load align=1
                                                            i64.store align=1
                                                            local.get 0
                                                            i32.const 536870913
                                                            i32.ge_u
                                                            br_if 1 (;@27;)
                                                            local.get 1
                                                            i32.const 132
                                                            i32.add
                                                            local.set 13
                                                            local.get 1
                                                            i32.const 136
                                                            i32.add
                                                            local.set 18
                                                            local.get 1
                                                            local.get 0
                                                            i32.const 1051364
                                                            i32.add
                                                            i32.store offset=180
                                                            i32.const 0
                                                            local.set 4
                                                            i32.const 0
                                                            local.set 5
                                                            block  ;; label = @29
                                                              loop  ;; label = @30
                                                                local.get 4
                                                                local.tee 2
                                                                i32.const 5
                                                                i32.eq
                                                                local.get 0
                                                                local.get 2
                                                                i32.eq
                                                                i32.or
                                                                br_if 1 (;@29;)
                                                                local.get 2
                                                                i32.const 1
                                                                i32.add
                                                                local.set 4
                                                                local.get 2
                                                                i32.const 1051364
                                                                i32.add
                                                                i32.load8_s
                                                                local.tee 6
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
                                                                local.get 6
                                                                i32.const 0
                                                                i32.lt_s
                                                                br_if 0 (;@30;)
                                                              end
                                                              local.get 1
                                                              local.get 2
                                                              i32.const 1051365
                                                              i32.add
                                                              i32.store offset=176
                                                              local.get 2
                                                              i32.const 4
                                                              i32.eq
                                                              local.get 6
                                                              i32.const 15
                                                              i32.gt_u
                                                              i32.and
                                                              br_if 0 (;@29;)
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    local.get 5
                                                                    br_table 2 (;@30;) 0 (;@32;) 1 (;@31;) 3 (;@29;)
                                                                  end
                                                                  local.get 1
                                                                  i32.const 24
                                                                  i32.add
                                                                  local.get 1
                                                                  i32.const 176
                                                                  i32.add
                                                                  call 36
                                                                  local.get 1
                                                                  i32.load offset=48
                                                                  local.tee 17
                                                                  i32.const -2147483646
                                                                  i32.eq
                                                                  br_if 2 (;@29;)
                                                                  local.get 1
                                                                  local.get 1
                                                                  i64.load offset=29 align=1
                                                                  i64.store offset=128
                                                                  local.get 1
                                                                  local.get 1
                                                                  i32.const 36
                                                                  i32.add
                                                                  i32.load align=1
                                                                  i32.store offset=135 align=1
                                                                  local.get 1
                                                                  i32.load offset=24
                                                                  local.tee 8
                                                                  i32.const 8
                                                                  i32.shr_u
                                                                  local.set 2
                                                                  local.get 1
                                                                  i32.load8_u offset=28
                                                                  local.set 7
                                                                  local.get 1
                                                                  i32.load offset=40
                                                                  local.set 15
                                                                  local.get 1
                                                                  i32.load offset=44
                                                                  local.set 16
                                                                  local.get 1
                                                                  i32.load offset=52
                                                                  local.set 10
                                                                  local.get 1
                                                                  i32.load offset=56
                                                                  local.set 11
                                                                  i32.const 1
                                                                  local.set 5
                                                                  br 1 (;@30;)
                                                                end
                                                                local.get 4
                                                                i32.const 1051364
                                                                i32.add
                                                                local.set 10
                                                                local.get 0
                                                                local.get 4
                                                                i32.sub
                                                                local.set 2
                                                                i32.const 0
                                                                local.set 3
                                                                i32.const 0
                                                                local.set 6
                                                                i32.const 0
                                                                local.set 8
                                                                loop  ;; label = @31
                                                                  local.get 2
                                                                  i32.eqz
                                                                  local.get 6
                                                                  local.tee 0
                                                                  i32.const 5
                                                                  i32.eq
                                                                  i32.or
                                                                  br_if 2 (;@29;)
                                                                  local.get 2
                                                                  i32.const 1
                                                                  i32.sub
                                                                  local.set 2
                                                                  local.get 0
                                                                  i32.const 1
                                                                  i32.add
                                                                  local.set 6
                                                                  local.get 0
                                                                  local.get 4
                                                                  i32.add
                                                                  i32.const 1051364
                                                                  i32.add
                                                                  i32.load8_s
                                                                  local.tee 5
                                                                  i32.const 127
                                                                  i32.and
                                                                  local.get 3
                                                                  i32.shl
                                                                  local.get 8
                                                                  i32.or
                                                                  local.set 8
                                                                  local.get 3
                                                                  i32.const 7
                                                                  i32.add
                                                                  local.set 3
                                                                  local.get 5
                                                                  i32.const 0
                                                                  i32.lt_s
                                                                  br_if 0 (;@31;)
                                                                end
                                                                local.get 1
                                                                local.get 6
                                                                local.get 10
                                                                i32.add
                                                                i32.store offset=176
                                                                local.get 0
                                                                i32.const 4
                                                                i32.eq
                                                                local.get 5
                                                                i32.const 15
                                                                i32.gt_u
                                                                i32.and
                                                                br_if 1 (;@29;)
                                                                local.get 1
                                                                i32.const 24
                                                                i32.add
                                                                local.get 1
                                                                i32.const 176
                                                                i32.add
                                                                call 36
                                                                local.get 1
                                                                i32.load offset=48
                                                                local.tee 10
                                                                i32.const -2147483646
                                                                i32.eq
                                                                br_if 1 (;@29;)
                                                                local.get 1
                                                                local.get 1
                                                                i64.load offset=25 align=1
                                                                i64.store offset=128
                                                                local.get 1
                                                                local.get 1
                                                                i32.const 32
                                                                i32.add
                                                                i32.load align=1
                                                                i32.store offset=135 align=1
                                                                local.get 8
                                                                i32.const 8
                                                                i32.shr_u
                                                                local.set 2
                                                                local.get 1
                                                                i32.load8_u offset=24
                                                                local.set 7
                                                                local.get 1
                                                                i32.load offset=36
                                                                local.set 15
                                                                local.get 1
                                                                i32.load offset=40
                                                                local.set 16
                                                                local.get 1
                                                                i32.load offset=44
                                                                local.set 17
                                                                local.get 1
                                                                i32.load offset=52
                                                                local.set 11
                                                                local.get 1
                                                                i32.load offset=56
                                                                local.set 3
                                                                i32.const 2
                                                                local.set 5
                                                              end
                                                              local.get 1
                                                              local.get 1
                                                              i32.load offset=135 align=1
                                                              i32.store offset=15 align=1
                                                              local.get 1
                                                              local.get 1
                                                              i64.load offset=128
                                                              i64.store offset=8
                                                              i32.const 0
                                                              local.set 6
                                                              local.get 1
                                                              i32.const 0
                                                              i32.store offset=96
                                                              local.get 1
                                                              i64.const 3
                                                              i64.store offset=24
                                                              local.get 1
                                                              i32.const 144
                                                              i32.add
                                                              local.get 1
                                                              i32.load offset=15 align=1
                                                              i32.store align=1
                                                              local.get 1
                                                              local.get 2
                                                              i32.store16 offset=133 align=1
                                                              local.get 1
                                                              i32.const 135
                                                              i32.add
                                                              local.get 2
                                                              i32.const 16
                                                              i32.shr_u
                                                              i32.store8
                                                              local.get 1
                                                              local.get 7
                                                              i32.store8 offset=136
                                                              local.get 1
                                                              local.get 8
                                                              i32.store8 offset=132
                                                              local.get 1
                                                              local.get 5
                                                              i32.store offset=128
                                                              local.get 1
                                                              local.get 1
                                                              i64.load offset=8
                                                              i64.store offset=137 align=1
                                                              local.get 1
                                                              local.get 3
                                                              i32.store offset=168
                                                              local.get 1
                                                              local.get 11
                                                              i32.store offset=164
                                                              local.get 1
                                                              local.get 10
                                                              i32.store offset=160
                                                              local.get 1
                                                              local.get 17
                                                              i32.store offset=156
                                                              local.get 1
                                                              local.get 16
                                                              i32.store offset=152
                                                              local.get 1
                                                              local.get 15
                                                              i32.store offset=148
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  local.get 5
                                                                  i32.const 1
                                                                  i32.sub
                                                                  br_table 24 (;@7;) 1 (;@30;) 0 (;@31;)
                                                                end
                                                                local.get 1
                                                                i32.const 96
                                                                i32.add
                                                                call 23
                                                                local.get 1
                                                                i32.const 3
                                                                i32.store offset=108
                                                                local.get 1
                                                                local.get 9
                                                                i32.store offset=104
                                                                local.get 1
                                                                i64.const 12884901889
                                                                i64.store offset=96 align=4
                                                                br 24 (;@6;)
                                                              end
                                                              local.get 1
                                                              i32.load offset=132
                                                              local.set 0
                                                              local.get 1
                                                              i32.const 184
                                                              i32.add
                                                              local.get 1
                                                              i32.load offset=15 align=1
                                                              i32.store align=1
                                                              local.get 1
                                                              local.get 7
                                                              i32.store8 offset=176
                                                              local.get 1
                                                              local.get 1
                                                              i64.load offset=8
                                                              i64.store offset=177 align=1
                                                              local.get 1
                                                              local.get 3
                                                              i32.store offset=208
                                                              local.get 1
                                                              local.get 11
                                                              i32.store offset=204
                                                              local.get 1
                                                              local.get 10
                                                              i32.store offset=200
                                                              local.get 1
                                                              local.get 17
                                                              i32.store offset=196
                                                              local.get 1
                                                              local.get 16
                                                              i32.store offset=192
                                                              local.get 1
                                                              local.get 15
                                                              i32.store offset=188
                                                              local.get 9
                                                              i32.load offset=24
                                                              local.get 0
                                                              i32.ne
                                                              if  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      local.get 9
                                                                      i32.load offset=52
                                                                      local.get 0
                                                                      i32.ne
                                                                      if  ;; label = @34
                                                                        i32.const 1
                                                                        local.get 0
                                                                        local.get 9
                                                                        i32.load offset=80
                                                                        i32.ne
                                                                        local.get 10
                                                                        i32.const -2147483647
                                                                        i32.le_s
                                                                        i32.or
                                                                        br_if 13 (;@21;)
                                                                        drop
                                                                        local.get 3
                                                                        i32.const -1073741825
                                                                        i32.gt_u
                                                                        br_if 1 (;@33;)
                                                                        local.get 3
                                                                        i32.const 3
                                                                        i32.div_u
                                                                        local.tee 2
                                                                        i32.const 2
                                                                        i32.shl
                                                                        local.set 0
                                                                        local.get 3
                                                                        local.get 2
                                                                        i32.const 3
                                                                        i32.mul
                                                                        i32.sub
                                                                        local.tee 19
                                                                        if  ;; label = @35
                                                                          local.get 0
                                                                          i32.const -4
                                                                          i32.eq
                                                                          br_if 2 (;@33;)
                                                                          local.get 0
                                                                          i32.const 4
                                                                          i32.add
                                                                          local.set 0
                                                                        end
                                                                        local.get 0
                                                                        i32.const 0
                                                                        i32.lt_s
                                                                        br_if 8 (;@26;)
                                                                        local.get 0
                                                                        br_if 2 (;@32;)
                                                                        i32.const 1
                                                                        local.set 8
                                                                        br 3 (;@31;)
                                                                      end
                                                                      local.get 1
                                                                      i64.const 17179869184
                                                                      i64.store offset=216
                                                                      local.get 1
                                                                      i32.const 0
                                                                      i32.store offset=224
                                                                      block  ;; label = @34
                                                                        i32.const 1051332
                                                                        i32.load
                                                                        i32.const -2147483648
                                                                        i32.eq
                                                                        br_if 0 (;@34;)
                                                                        local.get 1
                                                                        i32.const 344
                                                                        i32.add
                                                                        local.tee 0
                                                                        i32.const 1051336
                                                                        i32.load
                                                                        i32.const 1051340
                                                                        i32.load
                                                                        call 37
                                                                        local.get 1
                                                                        i32.const 356
                                                                        i32.add
                                                                        local.tee 2
                                                                        i32.const 1051348
                                                                        i32.load
                                                                        i32.const 1051352
                                                                        i32.load
                                                                        call 37
                                                                        local.get 1
                                                                        i32.const 240
                                                                        i32.add
                                                                        local.tee 5
                                                                        local.get 2
                                                                        i64.load align=4
                                                                        i64.store
                                                                        local.get 1
                                                                        i32.const 248
                                                                        i32.add
                                                                        local.tee 2
                                                                        local.get 1
                                                                        i32.const 364
                                                                        i32.add
                                                                        i32.load
                                                                        i32.store
                                                                        local.get 1
                                                                        local.get 1
                                                                        i64.load offset=348 align=4
                                                                        i64.store offset=232
                                                                        local.get 1
                                                                        i32.load offset=344
                                                                        local.tee 4
                                                                        i32.const -2147483648
                                                                        i32.eq
                                                                        br_if 0 (;@34;)
                                                                        local.get 1
                                                                        i32.const 268
                                                                        i32.add
                                                                        local.tee 6
                                                                        local.get 5
                                                                        i64.load
                                                                        i64.store align=4
                                                                        local.get 1
                                                                        i32.const 276
                                                                        i32.add
                                                                        local.get 2
                                                                        i32.load
                                                                        i32.store
                                                                        local.get 1
                                                                        local.get 4
                                                                        i32.store offset=256
                                                                        local.get 1
                                                                        local.get 1
                                                                        i64.load offset=232
                                                                        i64.store offset=260 align=4
                                                                        i32.const 1074793188
                                                                        i32.load8_u
                                                                        drop
                                                                        i32.const 7
                                                                        call 35
                                                                        local.tee 2
                                                                        i32.eqz
                                                                        br_if 33 (;@1;)
                                                                        local.get 2
                                                                        i32.const 3
                                                                        i32.add
                                                                        i32.const 1049401
                                                                        i32.load align=1
                                                                        i32.store align=1
                                                                        local.get 2
                                                                        i32.const 1049398
                                                                        i32.load align=1
                                                                        i32.store align=1
                                                                        local.get 1
                                                                        i32.const 2
                                                                        i32.store offset=348
                                                                        local.get 1
                                                                        i32.const 1049420
                                                                        i32.store offset=344
                                                                        local.get 1
                                                                        i64.const 2
                                                                        i64.store offset=356 align=4
                                                                        local.get 1
                                                                        i32.const 11
                                                                        i32.store offset=304
                                                                        local.get 1
                                                                        local.get 6
                                                                        i32.store offset=300
                                                                        local.get 1
                                                                        i32.const 11
                                                                        i32.store offset=296
                                                                        local.get 1
                                                                        local.get 1
                                                                        i32.const 292
                                                                        i32.add
                                                                        i32.store offset=352
                                                                        local.get 1
                                                                        local.get 1
                                                                        i32.const 256
                                                                        i32.add
                                                                        local.tee 5
                                                                        i32.store offset=292
                                                                        local.get 1
                                                                        i32.const 280
                                                                        i32.add
                                                                        local.get 0
                                                                        call 38
                                                                        global.get 0
                                                                        i32.const 16
                                                                        i32.sub
                                                                        local.tee 0
                                                                        global.set 0
                                                                        local.get 0
                                                                        i32.const 8
                                                                        i32.add
                                                                        local.get 1
                                                                        i32.const 216
                                                                        i32.add
                                                                        local.tee 4
                                                                        local.get 4
                                                                        i32.load
                                                                        i32.const 4
                                                                        i32.const 24
                                                                        call 80
                                                                        local.get 0
                                                                        i32.load offset=8
                                                                        local.tee 4
                                                                        i32.const -2147483647
                                                                        i32.ne
                                                                        if  ;; label = @35
                                                                          local.get 0
                                                                          i32.load offset=12
                                                                          drop
                                                                          local.get 4
                                                                          call 41
                                                                          unreachable
                                                                        end
                                                                        local.get 0
                                                                        i32.const 16
                                                                        i32.add
                                                                        global.set 0
                                                                        local.get 1
                                                                        i32.load offset=220
                                                                        local.tee 0
                                                                        i32.const 7
                                                                        i32.store offset=8
                                                                        local.get 0
                                                                        local.get 2
                                                                        i32.store offset=4
                                                                        local.get 0
                                                                        i32.const 7
                                                                        i32.store
                                                                        local.get 0
                                                                        local.get 1
                                                                        i64.load offset=280 align=4
                                                                        i64.store offset=12 align=4
                                                                        local.get 0
                                                                        i32.const 20
                                                                        i32.add
                                                                        local.get 1
                                                                        i32.const 288
                                                                        i32.add
                                                                        i32.load
                                                                        i32.store
                                                                        local.get 1
                                                                        i32.const 1
                                                                        i32.store offset=224
                                                                        local.get 5
                                                                        call 24
                                                                      end
                                                                      local.get 1
                                                                      i64.const 17179869184
                                                                      i64.store offset=308 align=4
                                                                      local.get 1
                                                                      i32.const 0
                                                                      i32.store offset=316
                                                                      i32.const 1051356
                                                                      i32.load8_u
                                                                      if  ;; label = @34
                                                                        i32.const 1051360
                                                                        i32.load
                                                                        local.set 2
                                                                        global.get 0
                                                                        i32.const 16
                                                                        i32.sub
                                                                        local.tee 0
                                                                        global.set 0
                                                                        local.get 0
                                                                        i32.const 8
                                                                        i32.add
                                                                        local.get 1
                                                                        i32.const 308
                                                                        i32.add
                                                                        local.tee 5
                                                                        local.get 5
                                                                        i32.load
                                                                        i32.const 4
                                                                        i32.const 16
                                                                        call 80
                                                                        local.get 0
                                                                        i32.load offset=8
                                                                        local.tee 5
                                                                        i32.const -2147483647
                                                                        i32.ne
                                                                        if  ;; label = @35
                                                                          local.get 0
                                                                          i32.load offset=12
                                                                          drop
                                                                          local.get 5
                                                                          call 41
                                                                          unreachable
                                                                        end
                                                                        local.get 0
                                                                        i32.const 16
                                                                        i32.add
                                                                        global.set 0
                                                                        local.get 1
                                                                        i32.load offset=312
                                                                        local.tee 0
                                                                        local.get 2
                                                                        i32.store offset=12
                                                                        local.get 0
                                                                        i32.const -2147483648
                                                                        i32.store
                                                                        local.get 1
                                                                        i32.const 1
                                                                        i32.store offset=316
                                                                      end
                                                                      i32.const 1074793188
                                                                      i32.load8_u
                                                                      drop
                                                                      i32.const 63
                                                                      call 35
                                                                      local.tee 0
                                                                      i32.eqz
                                                                      br_if 32 (;@1;)
                                                                      local.get 0
                                                                      i32.const 1049436
                                                                      i32.const 63
                                                                      call 86
                                                                      local.set 0
                                                                      local.get 1
                                                                      i32.const 24
                                                                      i32.add
                                                                      call 25
                                                                      local.get 1
                                                                      i32.const 72
                                                                      i32.add
                                                                      local.get 1
                                                                      i32.const 224
                                                                      i32.add
                                                                      i32.load
                                                                      i32.store
                                                                      local.get 1
                                                                      i32.const 84
                                                                      i32.add
                                                                      local.get 1
                                                                      i32.const 316
                                                                      i32.add
                                                                      i32.load
                                                                      i32.store
                                                                      local.get 1
                                                                      i64.const 4
                                                                      i64.store offset=56
                                                                      local.get 1
                                                                      i64.const 63
                                                                      i64.store offset=48
                                                                      local.get 1
                                                                      local.get 0
                                                                      i32.store offset=44
                                                                      local.get 1
                                                                      i32.const 63
                                                                      i32.store offset=40
                                                                      local.get 1
                                                                      i64.const 0
                                                                      i64.store offset=24
                                                                      local.get 1
                                                                      i32.const 1
                                                                      i32.store8 offset=88
                                                                      local.get 1
                                                                      local.get 1
                                                                      i64.load offset=216
                                                                      i64.store offset=64
                                                                      local.get 1
                                                                      local.get 1
                                                                      i64.load offset=308 align=4
                                                                      i64.store offset=76 align=4
                                                                      i32.const 1
                                                                      br 12 (;@21;)
                                                                    end
                                                                    i32.const 1048788
                                                                    i32.const 45
                                                                    i32.const 1048928
                                                                    call 39
                                                                    unreachable
                                                                  end
                                                                  local.get 0
                                                                  call 35
                                                                  local.tee 8
                                                                  i32.eqz
                                                                  br_if 3 (;@28;)
                                                                  local.get 8
                                                                  i32.const 4
                                                                  i32.sub
                                                                  i32.load8_u
                                                                  i32.const 3
                                                                  i32.and
                                                                  i32.eqz
                                                                  br_if 0 (;@31;)
                                                                  local.get 8
                                                                  i32.const 0
                                                                  local.get 0
                                                                  call 87
                                                                end
                                                                i32.const 0
                                                                local.set 5
                                                                local.get 3
                                                                i32.const 27
                                                                i32.lt_u
                                                                if  ;; label = @31
                                                                  i32.const 0
                                                                  local.set 4
                                                                  br 9 (;@22;)
                                                                end
                                                                local.get 3
                                                                i32.const 26
                                                                i32.sub
                                                                local.tee 2
                                                                i32.const 0
                                                                local.get 2
                                                                local.get 3
                                                                i32.le_u
                                                                select
                                                                local.set 7
                                                                i32.const 0
                                                                local.set 2
                                                                i32.const 0
                                                                local.set 4
                                                                loop  ;; label = @31
                                                                  local.get 4
                                                                  i32.const 26
                                                                  i32.add
                                                                  local.tee 5
                                                                  local.get 3
                                                                  i32.gt_u
                                                                  br_if 6 (;@25;)
                                                                  local.get 2
                                                                  i32.const -32
                                                                  i32.eq
                                                                  br_if 7 (;@24;)
                                                                  local.get 0
                                                                  local.get 2
                                                                  i32.const 32
                                                                  i32.add
                                                                  local.tee 5
                                                                  i32.lt_u
                                                                  if  ;; label = @32
                                                                    local.get 5
                                                                    local.get 0
                                                                    i32.const 1050300
                                                                    call 40
                                                                    unreachable
                                                                  end
                                                                  local.get 2
                                                                  local.get 8
                                                                  i32.add
                                                                  local.tee 2
                                                                  local.get 4
                                                                  local.get 11
                                                                  i32.add
                                                                  local.tee 6
                                                                  i64.load align=1
                                                                  local.tee 23
                                                                  i64.const 56
                                                                  i64.shl
                                                                  local.tee 25
                                                                  i64.const 58
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 4
                                                                  i32.add
                                                                  local.get 23
                                                                  i64.const 4278190080
                                                                  i64.and
                                                                  i64.const 8
                                                                  i64.shl
                                                                  local.tee 26
                                                                  i64.const 34
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 8
                                                                  i32.add
                                                                  local.get 6
                                                                  i32.const 6
                                                                  i32.add
                                                                  i64.load align=1
                                                                  local.tee 24
                                                                  i64.const 56
                                                                  i64.shl
                                                                  local.tee 27
                                                                  i64.const 58
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 1
                                                                  i32.add
                                                                  local.get 25
                                                                  local.get 23
                                                                  i64.const 65280
                                                                  i64.and
                                                                  i64.const 40
                                                                  i64.shl
                                                                  i64.or
                                                                  local.tee 25
                                                                  i64.const 52
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 12
                                                                  i32.add
                                                                  local.get 24
                                                                  i64.const 4278190080
                                                                  i64.and
                                                                  i64.const 8
                                                                  i64.shl
                                                                  local.tee 28
                                                                  i64.const 34
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 7
                                                                  i32.add
                                                                  local.get 23
                                                                  i64.const 8
                                                                  i64.shr_u
                                                                  i64.const 4278190080
                                                                  i64.and
                                                                  local.get 23
                                                                  i64.const 24
                                                                  i64.shr_u
                                                                  i64.const 16711680
                                                                  i64.and
                                                                  i64.or
                                                                  local.get 23
                                                                  i64.const 40
                                                                  i64.shr_u
                                                                  i64.const 65280
                                                                  i64.and
                                                                  local.get 23
                                                                  i64.const 56
                                                                  i64.shr_u
                                                                  i64.or
                                                                  i64.or
                                                                  local.tee 29
                                                                  i32.wrap_i64
                                                                  local.tee 14
                                                                  i32.const 16
                                                                  i32.shr_u
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 6
                                                                  i32.add
                                                                  local.get 14
                                                                  i32.const 22
                                                                  i32.shr_u
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 3
                                                                  i32.add
                                                                  local.get 25
                                                                  local.get 23
                                                                  i64.const 16711680
                                                                  i64.and
                                                                  i64.const 24
                                                                  i64.shl
                                                                  local.get 26
                                                                  i64.or
                                                                  i64.or
                                                                  local.tee 23
                                                                  i64.const 40
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 2
                                                                  i32.add
                                                                  local.get 23
                                                                  i64.const 46
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 5
                                                                  i32.add
                                                                  local.get 23
                                                                  local.get 29
                                                                  i64.or
                                                                  i64.const 28
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 9
                                                                  i32.add
                                                                  local.get 27
                                                                  local.get 24
                                                                  i64.const 65280
                                                                  i64.and
                                                                  i64.const 40
                                                                  i64.shl
                                                                  i64.or
                                                                  local.tee 23
                                                                  i64.const 52
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 15
                                                                  i32.add
                                                                  local.get 24
                                                                  i64.const 8
                                                                  i64.shr_u
                                                                  i64.const 4278190080
                                                                  i64.and
                                                                  local.get 24
                                                                  i64.const 24
                                                                  i64.shr_u
                                                                  i64.const 16711680
                                                                  i64.and
                                                                  i64.or
                                                                  local.get 24
                                                                  i64.const 40
                                                                  i64.shr_u
                                                                  i64.const 65280
                                                                  i64.and
                                                                  local.get 24
                                                                  i64.const 56
                                                                  i64.shr_u
                                                                  i64.or
                                                                  i64.or
                                                                  local.tee 25
                                                                  i32.wrap_i64
                                                                  local.tee 14
                                                                  i32.const 16
                                                                  i32.shr_u
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 14
                                                                  i32.add
                                                                  local.get 14
                                                                  i32.const 22
                                                                  i32.shr_u
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 11
                                                                  i32.add
                                                                  local.get 23
                                                                  local.get 24
                                                                  i64.const 16711680
                                                                  i64.and
                                                                  i64.const 24
                                                                  i64.shl
                                                                  local.get 28
                                                                  i64.or
                                                                  i64.or
                                                                  local.tee 23
                                                                  i64.const 40
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 10
                                                                  i32.add
                                                                  local.get 23
                                                                  i64.const 46
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 13
                                                                  i32.add
                                                                  local.get 23
                                                                  local.get 25
                                                                  i64.or
                                                                  i64.const 28
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 23
                                                                  i32.add
                                                                  local.get 6
                                                                  i32.const 12
                                                                  i32.add
                                                                  i64.load align=1
                                                                  local.tee 23
                                                                  i64.const 8
                                                                  i64.shr_u
                                                                  i64.const 4278190080
                                                                  i64.and
                                                                  local.get 23
                                                                  i64.const 24
                                                                  i64.shr_u
                                                                  i64.const 16711680
                                                                  i64.and
                                                                  i64.or
                                                                  local.get 23
                                                                  i64.const 40
                                                                  i64.shr_u
                                                                  i64.const 65280
                                                                  i64.and
                                                                  local.get 23
                                                                  i64.const 56
                                                                  i64.shr_u
                                                                  i64.or
                                                                  i64.or
                                                                  local.tee 24
                                                                  i32.wrap_i64
                                                                  local.tee 14
                                                                  i32.const 16
                                                                  i32.shr_u
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 22
                                                                  i32.add
                                                                  local.get 14
                                                                  i32.const 22
                                                                  i32.shr_u
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 21
                                                                  i32.add
                                                                  local.get 24
                                                                  local.get 23
                                                                  i64.const 56
                                                                  i64.shl
                                                                  local.tee 25
                                                                  local.get 23
                                                                  i64.const 65280
                                                                  i64.and
                                                                  i64.const 40
                                                                  i64.shl
                                                                  i64.or
                                                                  local.tee 26
                                                                  local.get 23
                                                                  i64.const 4278190080
                                                                  i64.and
                                                                  i64.const 8
                                                                  i64.shl
                                                                  local.tee 27
                                                                  local.get 23
                                                                  i64.const 16711680
                                                                  i64.and
                                                                  i64.const 24
                                                                  i64.shl
                                                                  i64.or
                                                                  i64.or
                                                                  local.tee 23
                                                                  i64.or
                                                                  i64.const 28
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 20
                                                                  i32.add
                                                                  local.get 27
                                                                  i64.const 34
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 19
                                                                  i32.add
                                                                  local.get 23
                                                                  i64.const 40
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 18
                                                                  i32.add
                                                                  local.get 23
                                                                  i64.const 46
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 17
                                                                  i32.add
                                                                  local.get 26
                                                                  i64.const 52
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 16
                                                                  i32.add
                                                                  local.get 25
                                                                  i64.const 58
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 24
                                                                  i32.add
                                                                  local.get 6
                                                                  i32.const 18
                                                                  i32.add
                                                                  i64.load align=1
                                                                  local.tee 23
                                                                  i64.const 56
                                                                  i64.shl
                                                                  local.tee 24
                                                                  i64.const 58
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 28
                                                                  i32.add
                                                                  local.get 23
                                                                  i64.const 4278190080
                                                                  i64.and
                                                                  i64.const 8
                                                                  i64.shl
                                                                  local.tee 25
                                                                  i64.const 34
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 25
                                                                  i32.add
                                                                  local.get 24
                                                                  local.get 23
                                                                  i64.const 65280
                                                                  i64.and
                                                                  i64.const 40
                                                                  i64.shl
                                                                  i64.or
                                                                  local.tee 24
                                                                  i64.const 52
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 31
                                                                  i32.add
                                                                  local.get 23
                                                                  i64.const 8
                                                                  i64.shr_u
                                                                  i64.const 4278190080
                                                                  i64.and
                                                                  local.get 23
                                                                  i64.const 24
                                                                  i64.shr_u
                                                                  i64.const 16711680
                                                                  i64.and
                                                                  i64.or
                                                                  local.get 23
                                                                  i64.const 40
                                                                  i64.shr_u
                                                                  i64.const 65280
                                                                  i64.and
                                                                  local.get 23
                                                                  i64.const 56
                                                                  i64.shr_u
                                                                  i64.or
                                                                  i64.or
                                                                  local.tee 26
                                                                  i32.wrap_i64
                                                                  local.tee 6
                                                                  i32.const 16
                                                                  i32.shr_u
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 30
                                                                  i32.add
                                                                  local.get 6
                                                                  i32.const 22
                                                                  i32.shr_u
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 27
                                                                  i32.add
                                                                  local.get 24
                                                                  local.get 23
                                                                  i64.const 16711680
                                                                  i64.and
                                                                  i64.const 24
                                                                  i64.shl
                                                                  local.get 25
                                                                  i64.or
                                                                  i64.or
                                                                  local.tee 23
                                                                  i64.const 40
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 26
                                                                  i32.add
                                                                  local.get 23
                                                                  i64.const 46
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 2
                                                                  i32.const 29
                                                                  i32.add
                                                                  local.get 23
                                                                  local.get 26
                                                                  i64.or
                                                                  i64.const 28
                                                                  i64.shr_u
                                                                  i32.wrap_i64
                                                                  i32.const 63
                                                                  i32.and
                                                                  i32.const 1049067
                                                                  i32.add
                                                                  i32.load8_u
                                                                  i32.store8
                                                                  local.get 5
                                                                  local.set 2
                                                                  local.get 7
                                                                  local.get 4
                                                                  i32.const 24
                                                                  i32.add
                                                                  local.tee 4
                                                                  i32.ge_u
                                                                  br_if 0 (;@31;)
                                                                end
                                                                br 8 (;@22;)
                                                              end
                                                              local.get 10
                                                              i32.const -2147483647
                                                              i32.gt_s
                                                              br_if 6 (;@23;)
                                                              br 10 (;@19;)
                                                            end
                                                            local.get 1
                                                            i32.const 0
                                                            i32.store offset=96
                                                            local.get 1
                                                            i64.const 3
                                                            i64.store offset=24
                                                            i32.const 1
                                                            local.set 6
                                                            br 23 (;@5;)
                                                          end
                                                          unreachable
                                                        end
                                                        local.get 0
                                                        i32.const 536870912
                                                        i32.const 1049048
                                                        call 40
                                                        unreachable
                                                      end
                                                      call 42
                                                      unreachable
                                                    end
                                                    local.get 5
                                                    local.get 3
                                                    i32.const 1050284
                                                    call 40
                                                    unreachable
                                                  end
                                                  i32.const -32
                                                  i32.const 0
                                                  i32.const 1050300
                                                  call 43
                                                  unreachable
                                                end
                                                local.get 1
                                                i32.const 344
                                                i32.add
                                                local.get 11
                                                local.get 3
                                                call 44
                                                block  ;; label = @23
                                                  local.get 1
                                                  i32.load offset=344
                                                  i32.eqz
                                                  if  ;; label = @24
                                                    i32.const 0
                                                    local.set 4
                                                    i32.const 1074793188
                                                    i32.load8_u
                                                    drop
                                                    i32.const 13
                                                    call 35
                                                    local.tee 0
                                                    i32.eqz
                                                    br_if 1 (;@23;)
                                                    local.get 0
                                                    i32.const 5
                                                    i32.add
                                                    i32.const 1049504
                                                    i64.load align=1
                                                    i64.store align=1
                                                    local.get 0
                                                    i32.const 1049499
                                                    i64.load align=1
                                                    i64.store align=1
                                                    local.get 1
                                                    i32.const 24
                                                    i32.add
                                                    call 25
                                                    local.get 1
                                                    local.get 3
                                                    i32.store offset=56
                                                    local.get 1
                                                    local.get 11
                                                    i32.store offset=52
                                                    local.get 1
                                                    local.get 10
                                                    i32.store offset=48
                                                    local.get 1
                                                    i32.const 13
                                                    i32.store offset=44
                                                    local.get 1
                                                    local.get 0
                                                    i32.store offset=40
                                                    local.get 1
                                                    i64.const 55834574848
                                                    i64.store offset=32
                                                    local.get 1
                                                    i64.const 2
                                                    i64.store offset=24
                                                    i32.const 1
                                                    local.set 2
                                                    br 4 (;@20;)
                                                  end
                                                  i32.const 1
                                                  local.set 2
                                                  i32.const 0
                                                  local.set 4
                                                  local.get 10
                                                  i32.eqz
                                                  br_if 3 (;@20;)
                                                  local.get 11
                                                  local.get 10
                                                  call 20
                                                  br 3 (;@20;)
                                                end
                                                br 21 (;@1;)
                                              end
                                              block  ;; label = @22
                                                block (result i32)  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              local.get 3
                                                              local.get 19
                                                              i32.sub
                                                              local.tee 7
                                                              local.get 4
                                                              i32.le_u
                                                              if  ;; label = @30
                                                                local.get 5
                                                                local.set 6
                                                                br 1 (;@29;)
                                                              end
                                                              loop  ;; label = @30
                                                                local.get 4
                                                                i32.const 3
                                                                i32.add
                                                                local.set 2
                                                                local.get 4
                                                                i32.const -4
                                                                i32.gt_u
                                                                br_if 2 (;@28;)
                                                                local.get 2
                                                                local.get 3
                                                                i32.gt_u
                                                                br_if 3 (;@27;)
                                                                local.get 5
                                                                i32.const 4
                                                                i32.add
                                                                local.set 6
                                                                local.get 5
                                                                i32.const -5
                                                                i32.gt_u
                                                                br_if 4 (;@26;)
                                                                local.get 0
                                                                local.get 6
                                                                i32.lt_u
                                                                if  ;; label = @31
                                                                  local.get 6
                                                                  local.get 0
                                                                  i32.const 1050268
                                                                  call 40
                                                                  unreachable
                                                                end
                                                                local.get 5
                                                                local.get 8
                                                                i32.add
                                                                local.tee 5
                                                                local.get 4
                                                                local.get 11
                                                                i32.add
                                                                local.tee 4
                                                                i32.load8_u
                                                                local.tee 14
                                                                i32.const 2
                                                                i32.shr_u
                                                                i32.const 1049067
                                                                i32.add
                                                                i32.load8_u
                                                                i32.store8
                                                                local.get 5
                                                                i32.const 3
                                                                i32.add
                                                                local.get 4
                                                                i32.const 2
                                                                i32.add
                                                                i32.load8_u
                                                                local.tee 21
                                                                i32.const 63
                                                                i32.and
                                                                i32.const 1049067
                                                                i32.add
                                                                i32.load8_u
                                                                i32.store8
                                                                local.get 5
                                                                i32.const 2
                                                                i32.add
                                                                local.get 4
                                                                i32.const 1
                                                                i32.add
                                                                i32.load8_u
                                                                local.tee 4
                                                                i32.const 2
                                                                i32.shl
                                                                local.get 21
                                                                i32.const 6
                                                                i32.shr_u
                                                                i32.or
                                                                i32.const 63
                                                                i32.and
                                                                i32.const 1049067
                                                                i32.add
                                                                i32.load8_u
                                                                i32.store8
                                                                local.get 5
                                                                i32.const 1
                                                                i32.add
                                                                local.get 14
                                                                i32.const 4
                                                                i32.shl
                                                                local.get 4
                                                                i32.const 4
                                                                i32.shr_u
                                                                i32.or
                                                                i32.const 63
                                                                i32.and
                                                                i32.const 1049067
                                                                i32.add
                                                                i32.load8_u
                                                                i32.store8
                                                                local.get 6
                                                                local.set 5
                                                                local.get 2
                                                                local.tee 4
                                                                local.get 7
                                                                i32.lt_u
                                                                br_if 0 (;@30;)
                                                              end
                                                            end
                                                            local.get 19
                                                            i32.const 1
                                                            i32.sub
                                                            br_table 3 (;@25;) 4 (;@24;) 6 (;@22;)
                                                          end
                                                          local.get 4
                                                          local.get 2
                                                          i32.const 1050252
                                                          call 43
                                                          unreachable
                                                        end
                                                        local.get 2
                                                        local.get 3
                                                        i32.const 1050252
                                                        call 40
                                                        unreachable
                                                      end
                                                      local.get 5
                                                      local.get 6
                                                      i32.const 1050268
                                                      call 43
                                                      unreachable
                                                    end
                                                    local.get 0
                                                    local.get 6
                                                    i32.gt_u
                                                    if  ;; label = @25
                                                      i32.const 2
                                                      local.set 3
                                                      local.get 6
                                                      local.get 8
                                                      i32.add
                                                      local.get 7
                                                      local.get 11
                                                      i32.add
                                                      i32.load8_u
                                                      local.tee 2
                                                      i32.const 2
                                                      i32.shr_u
                                                      i32.const 1049067
                                                      i32.add
                                                      i32.load8_u
                                                      i32.store8
                                                      local.get 2
                                                      i32.const 4
                                                      i32.shl
                                                      i32.const 48
                                                      i32.and
                                                      local.get 0
                                                      local.get 6
                                                      i32.const 1
                                                      i32.add
                                                      local.tee 2
                                                      i32.gt_u
                                                      br_if 2 (;@23;)
                                                      drop
                                                      local.get 2
                                                      local.get 0
                                                      i32.const 1050236
                                                      call 45
                                                      unreachable
                                                    end
                                                    local.get 6
                                                    local.get 0
                                                    i32.const 1050220
                                                    call 45
                                                    unreachable
                                                  end
                                                  local.get 0
                                                  local.get 6
                                                  i32.le_u
                                                  br_if 6 (;@17;)
                                                  local.get 6
                                                  local.get 8
                                                  i32.add
                                                  local.get 7
                                                  local.get 11
                                                  i32.add
                                                  i32.load8_u
                                                  local.tee 4
                                                  i32.const 2
                                                  i32.shr_u
                                                  i32.const 1049067
                                                  i32.add
                                                  i32.load8_u
                                                  i32.store8
                                                  local.get 7
                                                  i32.const 1
                                                  i32.add
                                                  local.tee 2
                                                  local.get 3
                                                  i32.ge_u
                                                  br_if 7 (;@16;)
                                                  local.get 6
                                                  i32.const 1
                                                  i32.add
                                                  local.tee 5
                                                  local.get 0
                                                  i32.ge_u
                                                  br_if 8 (;@15;)
                                                  local.get 5
                                                  local.get 8
                                                  i32.add
                                                  local.get 4
                                                  i32.const 4
                                                  i32.shl
                                                  local.get 2
                                                  local.get 11
                                                  i32.add
                                                  i32.load8_u
                                                  local.tee 5
                                                  i32.const 4
                                                  i32.shr_u
                                                  i32.or
                                                  i32.const 63
                                                  i32.and
                                                  i32.const 1049067
                                                  i32.add
                                                  i32.load8_u
                                                  i32.store8
                                                  local.get 6
                                                  i32.const 2
                                                  i32.add
                                                  local.tee 2
                                                  local.get 0
                                                  i32.ge_u
                                                  br_if 9 (;@14;)
                                                  i32.const 3
                                                  local.set 3
                                                  local.get 5
                                                  i32.const 2
                                                  i32.shl
                                                  i32.const 60
                                                  i32.and
                                                end
                                                local.set 5
                                                local.get 2
                                                local.get 8
                                                i32.add
                                                local.get 5
                                                i32.const 1049067
                                                i32.add
                                                i32.load8_u
                                                i32.store8
                                                local.get 3
                                                local.get 6
                                                i32.add
                                                local.set 6
                                              end
                                              local.get 0
                                              local.get 6
                                              i32.lt_u
                                              br_if 8 (;@13;)
                                              i32.const 0
                                              local.get 6
                                              i32.sub
                                              i32.const 3
                                              i32.and
                                              local.tee 5
                                              if  ;; label = @22
                                                local.get 6
                                                local.get 8
                                                i32.add
                                                local.set 3
                                                local.get 0
                                                local.get 6
                                                i32.sub
                                                local.tee 7
                                                local.set 2
                                                local.get 5
                                                local.set 4
                                                loop  ;; label = @23
                                                  local.get 2
                                                  i32.eqz
                                                  br_if 11 (;@12;)
                                                  local.get 3
                                                  i32.const 61
                                                  i32.store8
                                                  local.get 2
                                                  i32.const 1
                                                  i32.sub
                                                  local.set 2
                                                  local.get 3
                                                  i32.const 1
                                                  i32.add
                                                  local.set 3
                                                  local.get 4
                                                  i32.const 1
                                                  i32.sub
                                                  local.tee 4
                                                  br_if 0 (;@23;)
                                                end
                                              end
                                              local.get 5
                                              local.get 6
                                              i32.add
                                              local.get 6
                                              i32.lt_u
                                              br_if 10 (;@11;)
                                              local.get 1
                                              i32.const 344
                                              i32.add
                                              local.get 8
                                              local.get 0
                                              call 44
                                              local.get 1
                                              i32.load offset=344
                                              br_if 11 (;@10;)
                                              local.get 10
                                              if  ;; label = @22
                                                local.get 11
                                                local.get 10
                                                call 20
                                              end
                                              local.get 1
                                              i32.const 320
                                              i32.add
                                              local.get 16
                                              local.get 17
                                              call 37
                                              local.get 1
                                              i32.const 332
                                              i32.add
                                              local.get 8
                                              local.get 0
                                              call 37
                                              i32.const 1051332
                                              i32.load
                                              i32.const -2147483648
                                              i32.ne
                                              if  ;; label = @22
                                                i32.const 1051332
                                                call 24
                                              end
                                              i32.const 1051332
                                              local.get 1
                                              i64.load offset=320 align=4
                                              i64.store align=4
                                              i32.const 1051348
                                              local.get 1
                                              i32.const 336
                                              i32.add
                                              i64.load align=4
                                              i64.store align=4
                                              i32.const 1051340
                                              local.get 1
                                              i32.const 328
                                              i32.add
                                              i64.load align=4
                                              i64.store align=4
                                              i32.const 1074793188
                                              i32.load8_u
                                              drop
                                              i32.const 11
                                              call 35
                                              local.tee 2
                                              i32.eqz
                                              br_if 20 (;@1;)
                                              local.get 2
                                              i32.const 7
                                              i32.add
                                              i32.const 1049394
                                              i32.load align=1
                                              i32.store align=1
                                              local.get 2
                                              i32.const 1049387
                                              i64.load align=1
                                              i64.store align=1
                                              local.get 1
                                              i32.const 96
                                              i32.add
                                              call 23
                                              local.get 1
                                              i64.const -9223372032559808501
                                              i64.store offset=112 align=4
                                              local.get 1
                                              local.get 2
                                              i32.store offset=108
                                              local.get 1
                                              i32.const 11
                                              i32.store offset=104
                                              local.get 1
                                              i64.const 8589934595
                                              i64.store offset=96 align=4
                                              local.get 0
                                              if  ;; label = @22
                                                local.get 8
                                                local.get 0
                                                call 20
                                              end
                                              local.get 15
                                              if  ;; label = @22
                                                local.get 16
                                                local.get 15
                                                call 20
                                              end
                                              local.get 1
                                              i32.load offset=200
                                              local.set 10
                                              i32.const 0
                                            end
                                            local.tee 4
                                            local.set 2
                                            local.get 10
                                            i32.const -2147483647
                                            i32.le_s
                                            br_if 1 (;@19;)
                                          end
                                          local.get 1
                                          i32.load offset=176
                                          local.tee 0
                                          if  ;; label = @20
                                            local.get 1
                                            i32.load offset=180
                                            local.get 0
                                            call 20
                                          end
                                          local.get 2
                                          br_if 1 (;@18;)
                                          br 10 (;@9;)
                                        end
                                        local.get 1
                                        i32.const 176
                                        i32.add
                                        call 21
                                        br 10 (;@8;)
                                      end
                                      local.get 1
                                      i32.load offset=188
                                      local.tee 0
                                      i32.eqz
                                      br_if 8 (;@9;)
                                      local.get 1
                                      i32.load offset=192
                                      local.get 0
                                      call 20
                                      br 8 (;@9;)
                                    end
                                    local.get 6
                                    local.get 0
                                    i32.const 1050156
                                    call 45
                                    unreachable
                                  end
                                  local.get 2
                                  local.get 3
                                  i32.const 1050172
                                  call 45
                                  unreachable
                                end
                                local.get 5
                                local.get 0
                                i32.const 1050188
                                call 45
                                unreachable
                              end
                              local.get 2
                              local.get 0
                              i32.const 1050204
                              call 45
                              unreachable
                            end
                            local.get 6
                            local.get 0
                            i32.const 1048712
                            call 15
                            unreachable
                          end
                          local.get 7
                          local.get 7
                          i32.const 1050028
                          call 45
                          unreachable
                        end
                        i32.const 1048728
                        i32.const 42
                        i32.const 1048772
                        call 39
                        unreachable
                      end
                      local.get 1
                      local.get 1
                      i64.load offset=348 align=4
                      i64.store offset=356 align=4
                      local.get 1
                      local.get 0
                      i32.store offset=344
                      local.get 1
                      local.get 8
                      i64.extend_i32_u
                      local.get 0
                      i64.extend_i32_u
                      i64.const 32
                      i64.shl
                      i64.or
                      i64.store offset=348 align=4
                      i32.const 1048944
                      i32.const 12
                      local.get 1
                      i32.const 344
                      i32.add
                      i32.const 1048576
                      i32.const 1048956
                      call 46
                      unreachable
                    end
                    local.get 4
                    i32.eqz
                    local.get 10
                    i32.eqz
                    i32.or
                    br_if 0 (;@8;)
                    local.get 1
                    i32.load offset=204
                    local.get 10
                    call 20
                  end
                  i32.const 1
                  local.set 6
                  local.get 1
                  i32.load offset=128
                  local.tee 0
                  i32.const 2
                  i32.eq
                  br_if 1 (;@6;)
                  block  ;; label = @8
                    local.get 0
                    br_table 2 (;@6;) 1 (;@7;) 0 (;@8;)
                  end
                  local.get 18
                  local.set 13
                end
                local.get 13
                call 21
                i32.const 1
                local.set 6
              end
              local.get 1
              i64.load offset=24
              local.tee 25
              i64.const 3
              i64.eq
              br_if 0 (;@5;)
              local.get 1
              i32.load8_u offset=88
              local.set 5
              local.get 1
              i32.load offset=84
              local.set 8
              local.get 1
              i32.load offset=80
              local.set 10
              local.get 1
              i32.load offset=76
              local.set 21
              local.get 1
              i32.load offset=72
              local.set 11
              local.get 1
              i32.load offset=68
              local.set 15
              local.get 1
              i32.load offset=64
              local.set 22
              local.get 1
              i32.load offset=60
              local.set 16
              local.get 1
              i32.load offset=56
              local.set 13
              local.get 1
              i32.load offset=52
              local.set 19
              local.get 1
              i32.load offset=48
              local.set 17
              local.get 1
              i32.load offset=44
              local.set 18
              local.get 1
              i32.load offset=40
              local.set 14
              local.get 1
              i64.load offset=32
              local.set 23
              i32.const 0
              local.set 3
              local.get 1
              i32.const 0
              i32.store offset=136
              local.get 1
              i64.const 4294967296
              i64.store offset=128 align=4
              block  ;; label = @6
                local.get 25
                i64.const 2
                i64.eq
                if  ;; label = @7
                  local.get 1
                  i32.const 180
                  i32.add
                  local.tee 0
                  i32.const 0
                  i32.store8
                  local.get 1
                  i32.const 0
                  i32.store offset=176
                  local.get 1
                  i32.const 128
                  i32.add
                  local.tee 2
                  local.get 1
                  i32.const 176
                  i32.add
                  local.tee 5
                  i32.const 1
                  call 47
                  local.get 23
                  i32.wrap_i64
                  i32.const 1
                  i32.and
                  i32.eqz
                  if  ;; label = @8
                    local.get 0
                    i32.const 0
                    i32.store8
                    local.get 1
                    i32.const 0
                    i32.store offset=176
                    local.get 2
                    local.get 5
                    i32.const 1
                    call 47
                    local.get 0
                    i32.const 0
                    i32.store8
                    local.get 1
                    i32.const 0
                    i32.store offset=176
                    local.get 18
                    local.set 2
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 176
                          i32.add
                          local.get 3
                          i32.add
                          local.tee 0
                          local.get 2
                          i32.store8
                          local.get 2
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 2
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 2
                          i32.const 7
                          i32.shr_u
                          local.set 2
                          i32.const 5
                          local.set 4
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
                      local.set 4
                    end
                    local.get 1
                    i32.const 128
                    i32.add
                    local.tee 0
                    local.get 1
                    i32.const 176
                    i32.add
                    local.get 4
                    call 47
                    local.get 0
                    local.get 14
                    local.get 18
                    call 47
                    i32.const 0
                    local.set 3
                    local.get 1
                    i32.const 180
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 1
                    i32.const 0
                    i32.store offset=176
                    local.get 13
                    local.set 2
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 176
                          i32.add
                          local.get 3
                          i32.add
                          local.tee 0
                          local.get 2
                          i32.store8
                          local.get 2
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 2
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 2
                          i32.const 7
                          i32.shr_u
                          local.set 2
                          i32.const 5
                          local.set 4
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
                      local.set 4
                    end
                    local.get 1
                    i32.const 128
                    i32.add
                    local.tee 0
                    local.get 1
                    i32.const 176
                    i32.add
                    local.get 4
                    call 47
                    local.get 0
                    local.get 19
                    local.get 13
                    call 47
                    br 2 (;@6;)
                  end
                  local.get 1
                  i32.const 1
                  i32.store8 offset=176
                  local.get 1
                  i32.const 0
                  i32.store offset=177 align=1
                  local.get 1
                  i32.const 128
                  i32.add
                  local.get 1
                  i32.const 176
                  i32.add
                  i32.const 1
                  call 47
                  local.get 0
                  i32.const 0
                  i32.store8
                  local.get 1
                  i32.const 0
                  i32.store offset=176
                  local.get 18
                  local.set 2
                  block  ;; label = @8
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 176
                        i32.add
                        local.get 3
                        i32.add
                        local.tee 0
                        local.get 2
                        i32.store8
                        local.get 2
                        i32.const 128
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 2
                        i32.const 128
                        i32.or
                        i32.store8
                        local.get 2
                        i32.const 7
                        i32.shr_u
                        local.set 2
                        i32.const 5
                        local.set 4
                        local.get 3
                        i32.const 1
                        i32.add
                        local.tee 3
                        i32.const 5
                        i32.ne
                        br_if 1 (;@9;)
                        br 2 (;@8;)
                      end
                    end
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 4
                  end
                  local.get 1
                  i32.const 128
                  i32.add
                  local.tee 0
                  local.get 1
                  i32.const 176
                  i32.add
                  local.get 4
                  call 47
                  local.get 0
                  local.get 14
                  local.get 18
                  call 47
                  local.get 0
                  local.get 19
                  local.get 13
                  call 48
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 1
                i32.store8 offset=176
                local.get 1
                i32.const 0
                i32.store offset=177 align=1
                local.get 1
                i32.const 128
                i32.add
                local.get 1
                i32.const 176
                i32.add
                i32.const 1
                call 47
                local.get 1
                i32.const 180
                i32.add
                i32.const 0
                i32.store8
                local.get 1
                i32.const 0
                i32.store offset=176
                local.get 17
                local.set 2
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 176
                      i32.add
                      local.get 3
                      i32.add
                      local.tee 0
                      local.get 2
                      i32.store8
                      local.get 2
                      i32.const 128
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 2
                      i32.const 128
                      i32.or
                      i32.store8
                      local.get 2
                      i32.const 7
                      i32.shr_u
                      local.set 2
                      i32.const 5
                      local.set 4
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
                  local.set 4
                end
                local.get 1
                i32.const 128
                i32.add
                local.tee 0
                local.get 1
                i32.const 176
                i32.add
                local.get 4
                call 47
                local.get 0
                local.get 18
                local.get 17
                call 47
                block  ;; label = @7
                  local.get 25
                  i32.wrap_i64
                  i32.const 1
                  i32.and
                  i32.eqz
                  if  ;; label = @8
                    local.get 1
                    i32.load offset=136
                    local.tee 2
                    local.get 1
                    i32.load offset=128
                    i32.eq
                    if  ;; label = @9
                      local.get 0
                      call 49
                    end
                    local.get 1
                    i32.load offset=132
                    local.get 2
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 1
                    local.get 2
                    i32.const 1
                    i32.add
                    local.tee 2
                    i32.store offset=136
                    br 1 (;@7;)
                  end
                  local.get 1
                  i32.load offset=136
                  local.tee 0
                  local.get 1
                  i32.load offset=128
                  i32.eq
                  if  ;; label = @8
                    local.get 1
                    i32.const 128
                    i32.add
                    call 49
                  end
                  local.get 1
                  i32.load offset=132
                  local.get 0
                  i32.add
                  i32.const 1
                  i32.store8
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.add
                  i32.store offset=136
                  i32.const 0
                  local.set 2
                  local.get 1
                  i32.const 184
                  i32.add
                  i32.const 0
                  i32.store16
                  local.get 1
                  i64.const 0
                  i64.store offset=176
                  local.get 23
                  local.set 24
                  block  ;; label = @8
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 176
                        i32.add
                        local.get 2
                        i32.add
                        local.tee 0
                        local.get 24
                        i32.wrap_i64
                        local.tee 4
                        i32.store8
                        local.get 24
                        i64.const 128
                        i64.lt_u
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 4
                        i32.const 128
                        i32.or
                        i32.store8
                        local.get 24
                        i64.const 7
                        i64.shr_u
                        local.set 24
                        i32.const 10
                        local.set 3
                        local.get 2
                        i32.const 1
                        i32.add
                        local.tee 2
                        i32.const 10
                        i32.ne
                        br_if 1 (;@9;)
                        br 2 (;@8;)
                      end
                    end
                    local.get 2
                    i32.const 1
                    i32.add
                    local.set 3
                  end
                  local.get 1
                  i32.const 128
                  i32.add
                  local.get 1
                  i32.const 176
                  i32.add
                  local.get 3
                  call 47
                  local.get 1
                  i32.load offset=136
                  local.set 2
                end
                local.get 1
                i32.load offset=128
                local.set 4
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.const 255
                    i32.and
                    i32.const 2
                    i32.eq
                    if  ;; label = @9
                      i32.const 1
                      local.set 0
                      i32.const 0
                      local.set 5
                      local.get 2
                      local.set 3
                      local.get 2
                      local.get 4
                      i32.eq
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    local.get 2
                    local.get 4
                    i32.eq
                    if  ;; label = @9
                      local.get 1
                      i32.const 128
                      i32.add
                      call 49
                    end
                    local.get 1
                    i32.load offset=132
                    local.get 2
                    i32.add
                    i32.const 1
                    i32.store8
                    local.get 1
                    local.get 2
                    i32.const 1
                    i32.add
                    local.tee 3
                    i32.store offset=136
                    i32.const 2
                    local.set 0
                    local.get 3
                    local.get 1
                    i32.load offset=128
                    i32.ne
                    br_if 1 (;@7;)
                  end
                  local.get 1
                  i32.const 128
                  i32.add
                  call 49
                end
                local.get 1
                i32.load offset=132
                local.get 3
                i32.add
                local.get 5
                i32.store8
                local.get 1
                local.get 0
                local.get 2
                i32.add
                i32.store offset=136
                i32.const 0
                local.set 3
                local.get 1
                i32.const 180
                i32.add
                i32.const 0
                i32.store8
                local.get 1
                i32.const 0
                i32.store offset=176
                local.get 16
                local.set 2
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 176
                      i32.add
                      local.get 3
                      i32.add
                      local.tee 0
                      local.get 2
                      i32.store8
                      local.get 2
                      i32.const 128
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 2
                      i32.const 128
                      i32.or
                      i32.store8
                      local.get 2
                      i32.const 7
                      i32.shr_u
                      local.set 2
                      i32.const 5
                      local.set 4
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
                  local.set 4
                end
                local.get 1
                i32.const 128
                i32.add
                local.get 1
                i32.const 176
                i32.add
                local.get 4
                call 47
                local.get 16
                if  ;; label = @7
                  local.get 13
                  local.get 16
                  i32.const 5
                  i32.shl
                  i32.add
                  local.set 20
                  local.get 1
                  i32.const 180
                  i32.add
                  local.set 7
                  local.get 13
                  local.set 5
                  loop  ;; label = @8
                    local.get 5
                    i32.load offset=28
                    local.set 2
                    local.get 7
                    i32.const 0
                    i32.store8
                    local.get 1
                    i32.const 0
                    i32.store offset=176
                    i32.const 0
                    local.set 3
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 176
                          i32.add
                          local.get 3
                          i32.add
                          local.tee 0
                          local.get 2
                          i32.store8
                          local.get 2
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 2
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 2
                          i32.const 7
                          i32.shr_u
                          local.set 2
                          i32.const 5
                          local.set 4
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
                      local.set 4
                    end
                    local.get 1
                    i32.const 128
                    i32.add
                    local.get 1
                    i32.const 176
                    i32.add
                    local.get 4
                    call 47
                    local.get 5
                    i32.load offset=8
                    local.set 0
                    local.get 5
                    i32.load offset=4
                    local.set 12
                    i32.const 0
                    local.set 3
                    local.get 7
                    i32.const 0
                    i32.store8
                    local.get 1
                    i32.const 0
                    i32.store offset=176
                    local.get 0
                    local.set 2
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 176
                          i32.add
                          local.get 3
                          i32.add
                          local.tee 4
                          local.get 2
                          i32.store8
                          local.get 2
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 2
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 2
                          i32.const 7
                          i32.shr_u
                          local.set 2
                          i32.const 5
                          local.set 4
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
                      local.set 4
                    end
                    local.get 1
                    i32.const 128
                    i32.add
                    local.tee 2
                    local.get 1
                    i32.const 176
                    i32.add
                    local.get 4
                    call 47
                    local.get 2
                    local.get 12
                    local.get 0
                    call 47
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 5
                                      i32.load8_u offset=12
                                      i32.const 1
                                      i32.sub
                                      br_table 1 (;@16;) 2 (;@15;) 3 (;@14;) 4 (;@13;) 5 (;@12;) 6 (;@11;) 7 (;@10;) 0 (;@17;)
                                    end
                                    local.get 7
                                    i32.const 0
                                    i32.store8
                                    local.get 1
                                    i32.const 0
                                    i32.store offset=176
                                    local.get 1
                                    i32.const 128
                                    i32.add
                                    local.tee 2
                                    local.get 1
                                    i32.const 176
                                    i32.add
                                    i32.const 1
                                    call 47
                                    local.get 5
                                    i32.load8_u offset=13
                                    local.set 4
                                    local.get 1
                                    i32.load offset=136
                                    local.tee 0
                                    local.get 1
                                    i32.load offset=128
                                    i32.eq
                                    if  ;; label = @17
                                      local.get 2
                                      call 49
                                    end
                                    local.get 1
                                    i32.load offset=132
                                    local.get 0
                                    i32.add
                                    local.get 4
                                    i32.store8
                                    local.get 1
                                    local.get 0
                                    i32.const 1
                                    i32.add
                                    i32.store offset=136
                                    br 7 (;@9;)
                                  end
                                  local.get 1
                                  i32.const 1
                                  i32.store8 offset=176
                                  i32.const 0
                                  local.set 3
                                  local.get 1
                                  i32.const 0
                                  i32.store offset=177 align=1
                                  local.get 1
                                  i32.const 128
                                  i32.add
                                  local.get 1
                                  i32.const 176
                                  i32.add
                                  i32.const 1
                                  call 47
                                  local.get 5
                                  i32.load offset=16
                                  local.set 0
                                  local.get 7
                                  i32.const 0
                                  i32.store8
                                  local.get 1
                                  i32.const 0
                                  i32.store offset=176
                                  local.get 0
                                  i32.const 1
                                  i32.shl
                                  local.get 0
                                  i32.const 31
                                  i32.shr_s
                                  i32.xor
                                  local.set 2
                                  block  ;; label = @16
                                    loop  ;; label = @17
                                      block  ;; label = @18
                                        local.get 1
                                        i32.const 176
                                        i32.add
                                        local.get 3
                                        i32.add
                                        local.tee 0
                                        local.get 2
                                        i32.store8
                                        local.get 2
                                        i32.const 128
                                        i32.lt_u
                                        br_if 0 (;@18;)
                                        local.get 0
                                        local.get 2
                                        i32.const 128
                                        i32.or
                                        i32.store8
                                        local.get 2
                                        i32.const 7
                                        i32.shr_u
                                        local.set 2
                                        i32.const 5
                                        local.set 4
                                        local.get 3
                                        i32.const 1
                                        i32.add
                                        local.tee 3
                                        i32.const 5
                                        i32.ne
                                        br_if 1 (;@17;)
                                        br 2 (;@16;)
                                      end
                                    end
                                    local.get 3
                                    i32.const 1
                                    i32.add
                                    local.set 4
                                  end
                                  local.get 1
                                  i32.const 128
                                  i32.add
                                  local.get 1
                                  i32.const 176
                                  i32.add
                                  local.get 4
                                  call 47
                                  br 6 (;@9;)
                                end
                                local.get 1
                                i32.const 2
                                i32.store8 offset=176
                                i32.const 0
                                local.set 3
                                local.get 1
                                i32.const 0
                                i32.store offset=177 align=1
                                local.get 1
                                i32.const 128
                                i32.add
                                local.get 1
                                i32.const 176
                                i32.add
                                i32.const 1
                                call 47
                                local.get 5
                                i32.load offset=24
                                local.set 0
                                local.get 5
                                i32.load offset=20
                                local.set 12
                                local.get 7
                                i32.const 0
                                i32.store8
                                local.get 1
                                i32.const 0
                                i32.store offset=176
                                local.get 0
                                local.set 2
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 1
                                      i32.const 176
                                      i32.add
                                      local.get 3
                                      i32.add
                                      local.tee 4
                                      local.get 2
                                      i32.store8
                                      local.get 2
                                      i32.const 128
                                      i32.lt_u
                                      br_if 0 (;@17;)
                                      local.get 4
                                      local.get 2
                                      i32.const 128
                                      i32.or
                                      i32.store8
                                      local.get 2
                                      i32.const 7
                                      i32.shr_u
                                      local.set 2
                                      i32.const 5
                                      local.set 4
                                      local.get 3
                                      i32.const 1
                                      i32.add
                                      local.tee 3
                                      i32.const 5
                                      i32.ne
                                      br_if 1 (;@16;)
                                      br 2 (;@15;)
                                    end
                                  end
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  local.set 4
                                end
                                local.get 1
                                i32.const 128
                                i32.add
                                local.tee 2
                                local.get 1
                                i32.const 176
                                i32.add
                                local.get 4
                                call 47
                                local.get 2
                                local.get 12
                                local.get 0
                                call 47
                                br 5 (;@9;)
                              end
                              local.get 1
                              i32.const 3
                              i32.store8 offset=176
                              i32.const 0
                              local.set 3
                              local.get 1
                              i32.const 0
                              i32.store offset=177 align=1
                              local.get 1
                              i32.const 128
                              i32.add
                              local.get 1
                              i32.const 176
                              i32.add
                              i32.const 1
                              call 47
                              local.get 5
                              i32.load offset=24
                              local.set 0
                              local.get 5
                              i32.load offset=20
                              local.set 12
                              local.get 7
                              i32.const 0
                              i32.store8
                              local.get 1
                              i32.const 0
                              i32.store offset=176
                              local.get 0
                              local.set 2
                              block  ;; label = @14
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 1
                                    i32.const 176
                                    i32.add
                                    local.get 3
                                    i32.add
                                    local.tee 4
                                    local.get 2
                                    i32.store8
                                    local.get 2
                                    i32.const 128
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                    local.get 4
                                    local.get 2
                                    i32.const 128
                                    i32.or
                                    i32.store8
                                    local.get 2
                                    i32.const 7
                                    i32.shr_u
                                    local.set 2
                                    i32.const 5
                                    local.set 4
                                    local.get 3
                                    i32.const 1
                                    i32.add
                                    local.tee 3
                                    i32.const 5
                                    i32.ne
                                    br_if 1 (;@15;)
                                    br 2 (;@14;)
                                  end
                                end
                                local.get 3
                                i32.const 1
                                i32.add
                                local.set 4
                              end
                              local.get 1
                              i32.const 128
                              i32.add
                              local.tee 2
                              local.get 1
                              i32.const 176
                              i32.add
                              local.get 4
                              call 47
                              local.get 2
                              local.get 12
                              local.get 0
                              call 47
                              br 4 (;@9;)
                            end
                            i32.const 0
                            local.set 3
                            local.get 1
                            i32.const 0
                            i32.store offset=177 align=1
                            local.get 1
                            i32.const 4
                            i32.store8 offset=176
                            local.get 1
                            i32.const 128
                            i32.add
                            local.get 1
                            i32.const 176
                            i32.add
                            i32.const 1
                            call 47
                            local.get 5
                            i32.load offset=24
                            local.set 0
                            local.get 5
                            i32.load offset=20
                            local.set 12
                            local.get 7
                            i32.const 0
                            i32.store8
                            local.get 1
                            i32.const 0
                            i32.store offset=176
                            local.get 0
                            local.set 2
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 1
                                  i32.const 176
                                  i32.add
                                  local.get 3
                                  i32.add
                                  local.tee 4
                                  local.get 2
                                  i32.store8
                                  local.get 2
                                  i32.const 128
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 4
                                  local.get 2
                                  i32.const 128
                                  i32.or
                                  i32.store8
                                  local.get 2
                                  i32.const 7
                                  i32.shr_u
                                  local.set 2
                                  i32.const 5
                                  local.set 4
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  local.tee 3
                                  i32.const 5
                                  i32.ne
                                  br_if 1 (;@14;)
                                  br 2 (;@13;)
                                end
                              end
                              local.get 3
                              i32.const 1
                              i32.add
                              local.set 4
                            end
                            local.get 1
                            i32.const 128
                            i32.add
                            local.tee 2
                            local.get 1
                            i32.const 176
                            i32.add
                            local.get 4
                            call 47
                            local.get 2
                            local.get 12
                            local.get 0
                            call 47
                            br 3 (;@9;)
                          end
                          local.get 1
                          i32.const 5
                          i32.store8 offset=176
                          i32.const 0
                          local.set 3
                          local.get 1
                          i32.const 0
                          i32.store offset=177 align=1
                          local.get 1
                          i32.const 128
                          i32.add
                          local.get 1
                          i32.const 176
                          i32.add
                          i32.const 1
                          call 47
                          local.get 5
                          i32.load offset=24
                          local.set 0
                          local.get 5
                          i32.load offset=20
                          local.set 12
                          local.get 7
                          i32.const 0
                          i32.store8
                          local.get 1
                          i32.const 0
                          i32.store offset=176
                          local.get 0
                          local.set 2
                          block  ;; label = @12
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                i32.const 176
                                i32.add
                                local.get 3
                                i32.add
                                local.tee 4
                                local.get 2
                                i32.store8
                                local.get 2
                                i32.const 128
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 4
                                local.get 2
                                i32.const 128
                                i32.or
                                i32.store8
                                local.get 2
                                i32.const 7
                                i32.shr_u
                                local.set 2
                                i32.const 5
                                local.set 4
                                local.get 3
                                i32.const 1
                                i32.add
                                local.tee 3
                                i32.const 5
                                i32.ne
                                br_if 1 (;@13;)
                                br 2 (;@12;)
                              end
                            end
                            local.get 3
                            i32.const 1
                            i32.add
                            local.set 4
                          end
                          local.get 1
                          i32.const 128
                          i32.add
                          local.tee 2
                          local.get 1
                          i32.const 176
                          i32.add
                          local.get 4
                          call 47
                          local.get 2
                          local.get 12
                          local.get 0
                          call 47
                          br 2 (;@9;)
                        end
                        local.get 1
                        i32.const 6
                        i32.store8 offset=176
                        i32.const 0
                        local.set 3
                        local.get 1
                        i32.const 0
                        i32.store offset=177 align=1
                        local.get 1
                        i32.const 128
                        i32.add
                        local.get 1
                        i32.const 176
                        i32.add
                        i32.const 1
                        call 47
                        local.get 5
                        i32.load offset=24
                        local.set 0
                        local.get 5
                        i32.load offset=20
                        local.set 12
                        local.get 7
                        i32.const 0
                        i32.store8
                        local.get 1
                        i32.const 0
                        i32.store offset=176
                        local.get 0
                        local.set 2
                        block  ;; label = @11
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              i32.const 176
                              i32.add
                              local.get 3
                              i32.add
                              local.tee 4
                              local.get 2
                              i32.store8
                              local.get 2
                              i32.const 128
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 2
                              i32.const 128
                              i32.or
                              i32.store8
                              local.get 2
                              i32.const 7
                              i32.shr_u
                              local.set 2
                              i32.const 5
                              local.set 4
                              local.get 3
                              i32.const 1
                              i32.add
                              local.tee 3
                              i32.const 5
                              i32.ne
                              br_if 1 (;@12;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 3
                          i32.const 1
                          i32.add
                          local.set 4
                        end
                        local.get 1
                        i32.const 128
                        i32.add
                        local.tee 2
                        local.get 1
                        i32.const 176
                        i32.add
                        local.get 4
                        call 47
                        local.get 2
                        local.get 12
                        local.get 0
                        call 47
                        br 1 (;@9;)
                      end
                      local.get 1
                      i32.const 7
                      i32.store8 offset=176
                      local.get 1
                      i32.const 0
                      i32.store offset=177 align=1
                      local.get 1
                      i32.const 128
                      i32.add
                      local.tee 2
                      local.get 1
                      i32.const 176
                      i32.add
                      i32.const 1
                      call 47
                      local.get 5
                      i32.load8_u offset=13
                      local.set 4
                      local.get 1
                      i32.load offset=136
                      local.tee 0
                      local.get 1
                      i32.load offset=128
                      local.tee 3
                      i32.eq
                      if  ;; label = @10
                        local.get 2
                        call 49
                        local.get 1
                        i32.load offset=128
                        local.set 3
                      end
                      local.get 1
                      i32.load offset=132
                      local.get 0
                      i32.add
                      local.get 4
                      i32.store8
                      local.get 1
                      local.get 0
                      i32.const 1
                      i32.add
                      local.tee 2
                      i32.store offset=136
                      local.get 5
                      i32.load8_u offset=14
                      local.set 4
                      local.get 2
                      local.get 3
                      i32.eq
                      if  ;; label = @10
                        local.get 1
                        i32.const 128
                        i32.add
                        call 49
                        local.get 1
                        i32.load offset=128
                        local.set 3
                      end
                      local.get 1
                      i32.load offset=132
                      local.get 2
                      i32.add
                      local.get 4
                      i32.store8
                      local.get 1
                      local.get 0
                      i32.const 2
                      i32.add
                      local.tee 2
                      i32.store offset=136
                      local.get 5
                      i32.load8_u offset=15
                      local.set 4
                      local.get 2
                      local.get 3
                      i32.eq
                      if  ;; label = @10
                        local.get 1
                        i32.const 128
                        i32.add
                        call 49
                        local.get 1
                        i32.load offset=128
                        local.set 3
                      end
                      local.get 1
                      i32.load offset=132
                      local.get 2
                      i32.add
                      local.get 4
                      i32.store8
                      local.get 1
                      local.get 0
                      i32.const 3
                      i32.add
                      local.tee 2
                      i32.store offset=136
                      local.get 5
                      i32.load8_u offset=16
                      local.set 4
                      local.get 2
                      local.get 3
                      i32.eq
                      if  ;; label = @10
                        local.get 1
                        i32.const 128
                        i32.add
                        call 49
                      end
                      local.get 1
                      i32.load offset=132
                      local.get 2
                      i32.add
                      local.get 4
                      i32.store8
                      local.get 1
                      local.get 0
                      i32.const 4
                      i32.add
                      i32.store offset=136
                    end
                    local.get 5
                    i32.const 32
                    i32.add
                    local.tee 5
                    local.get 20
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                i32.const 0
                local.set 3
                local.get 1
                i32.const 180
                i32.add
                i32.const 0
                i32.store8
                local.get 1
                i32.const 0
                i32.store offset=176
                local.get 11
                local.set 2
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 176
                      i32.add
                      local.get 3
                      i32.add
                      local.tee 0
                      local.get 2
                      i32.store8
                      local.get 2
                      i32.const 128
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 2
                      i32.const 128
                      i32.or
                      i32.store8
                      local.get 2
                      i32.const 7
                      i32.shr_u
                      local.set 2
                      i32.const 5
                      local.set 4
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
                  local.set 4
                end
                local.get 1
                i32.const 128
                i32.add
                local.get 1
                i32.const 176
                i32.add
                local.get 4
                call 47
                local.get 11
                if  ;; label = @7
                  local.get 15
                  local.get 11
                  i32.const 24
                  i32.mul
                  i32.add
                  local.set 20
                  local.get 1
                  i32.const 180
                  i32.add
                  local.set 7
                  local.get 15
                  local.set 5
                  loop  ;; label = @8
                    local.get 5
                    i32.load offset=8
                    local.set 0
                    local.get 5
                    i32.load offset=4
                    local.set 12
                    i32.const 0
                    local.set 3
                    local.get 7
                    i32.const 0
                    i32.store8
                    local.get 1
                    i32.const 0
                    i32.store offset=176
                    local.get 0
                    local.set 2
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 176
                          i32.add
                          local.get 3
                          i32.add
                          local.tee 4
                          local.get 2
                          i32.store8
                          local.get 2
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 2
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 2
                          i32.const 7
                          i32.shr_u
                          local.set 2
                          i32.const 5
                          local.set 4
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
                      local.set 4
                    end
                    local.get 1
                    i32.const 128
                    i32.add
                    local.tee 2
                    local.get 1
                    i32.const 176
                    i32.add
                    local.get 4
                    call 47
                    local.get 2
                    local.get 12
                    local.get 0
                    call 47
                    local.get 5
                    i32.load offset=20
                    local.set 0
                    local.get 5
                    i32.load offset=16
                    local.set 12
                    i32.const 0
                    local.set 3
                    local.get 7
                    i32.const 0
                    i32.store8
                    local.get 1
                    i32.const 0
                    i32.store offset=176
                    local.get 0
                    local.set 2
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 176
                          i32.add
                          local.get 3
                          i32.add
                          local.tee 4
                          local.get 2
                          i32.store8
                          local.get 2
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 2
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 2
                          i32.const 7
                          i32.shr_u
                          local.set 2
                          i32.const 5
                          local.set 4
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
                      local.set 4
                    end
                    local.get 1
                    i32.const 128
                    i32.add
                    local.tee 2
                    local.get 1
                    i32.const 176
                    i32.add
                    local.get 4
                    call 47
                    local.get 2
                    local.get 12
                    local.get 0
                    call 47
                    local.get 5
                    i32.const 24
                    i32.add
                    local.tee 5
                    local.get 20
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                i32.const 0
                local.set 3
                local.get 1
                i32.const 180
                i32.add
                i32.const 0
                i32.store8
                local.get 1
                i32.const 0
                i32.store offset=176
                local.get 8
                local.set 2
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 176
                      i32.add
                      local.get 3
                      i32.add
                      local.tee 0
                      local.get 2
                      i32.store8
                      local.get 2
                      i32.const 128
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 2
                      i32.const 128
                      i32.or
                      i32.store8
                      local.get 2
                      i32.const 7
                      i32.shr_u
                      local.set 2
                      i32.const 5
                      local.set 4
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
                  local.set 4
                end
                local.get 1
                i32.const 128
                i32.add
                local.get 1
                i32.const 176
                i32.add
                local.get 4
                call 47
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
                local.get 10
                local.get 8
                i32.const 4
                i32.shl
                i32.add
                local.set 20
                local.get 1
                i32.const 180
                i32.add
                local.set 7
                local.get 10
                local.set 5
                loop  ;; label = @7
                  local.get 5
                  i32.load offset=12
                  local.set 2
                  local.get 7
                  i32.const 0
                  i32.store8
                  local.get 1
                  i32.const 0
                  i32.store offset=176
                  i32.const 0
                  local.set 3
                  block  ;; label = @8
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 176
                        i32.add
                        local.get 3
                        i32.add
                        local.tee 0
                        local.get 2
                        i32.store8
                        local.get 2
                        i32.const 128
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 2
                        i32.const 128
                        i32.or
                        i32.store8
                        local.get 2
                        i32.const 7
                        i32.shr_u
                        local.set 2
                        i32.const 5
                        local.set 4
                        local.get 3
                        i32.const 1
                        i32.add
                        local.tee 3
                        i32.const 5
                        i32.ne
                        br_if 1 (;@9;)
                        br 2 (;@8;)
                      end
                    end
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 4
                  end
                  local.get 1
                  i32.const 128
                  i32.add
                  local.tee 2
                  local.get 1
                  i32.const 176
                  i32.add
                  local.get 4
                  call 47
                  block  ;; label = @8
                    local.get 5
                    i32.load
                    i32.const -2147483648
                    i32.eq
                    if  ;; label = @9
                      local.get 1
                      i32.load offset=136
                      local.tee 0
                      local.get 1
                      i32.load offset=128
                      i32.eq
                      if  ;; label = @10
                        local.get 2
                        call 49
                      end
                      local.get 1
                      i32.load offset=132
                      local.get 0
                      i32.add
                      i32.const 0
                      i32.store8
                      local.get 1
                      local.get 0
                      i32.const 1
                      i32.add
                      i32.store offset=136
                      br 1 (;@8;)
                    end
                    local.get 1
                    i32.load offset=136
                    local.tee 0
                    local.get 1
                    i32.load offset=128
                    i32.eq
                    if  ;; label = @9
                      local.get 1
                      i32.const 128
                      i32.add
                      call 49
                    end
                    local.get 1
                    i32.load offset=132
                    local.get 0
                    i32.add
                    i32.const 1
                    i32.store8
                    local.get 1
                    local.get 0
                    i32.const 1
                    i32.add
                    i32.store offset=136
                    local.get 5
                    i32.load offset=4
                    local.set 12
                    local.get 5
                    i32.load offset=8
                    local.set 0
                    i32.const 0
                    local.set 3
                    local.get 7
                    i32.const 0
                    i32.store8
                    local.get 1
                    i32.const 0
                    i32.store offset=176
                    local.get 0
                    local.set 2
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 176
                          i32.add
                          local.get 3
                          i32.add
                          local.tee 4
                          local.get 2
                          i32.store8
                          local.get 2
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 2
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 2
                          i32.const 7
                          i32.shr_u
                          local.set 2
                          i32.const 5
                          local.set 4
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
                      local.set 4
                    end
                    local.get 1
                    i32.const 128
                    i32.add
                    local.tee 2
                    local.get 1
                    i32.const 176
                    i32.add
                    local.get 4
                    call 47
                    local.get 2
                    local.get 12
                    local.get 0
                    call 47
                  end
                  local.get 5
                  i32.const 16
                  i32.add
                  local.tee 5
                  local.get 20
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 1
              i32.load offset=132
              local.set 5
              i32.const 0
              local.get 1
              i32.load offset=136
              local.get 1
              i32.load offset=128
              local.tee 4
              i32.const -2147483648
              i32.eq
              local.tee 2
              select
              local.set 0
              block  ;; label = @6
                local.get 25
                i64.const 2
                i64.eq
                if  ;; label = @7
                  local.get 23
                  i64.const 4294967296
                  i64.ge_u
                  if  ;; label = @8
                    local.get 14
                    local.get 23
                    i64.const 32
                    i64.shr_u
                    i32.wrap_i64
                    call 20
                  end
                  local.get 17
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 19
                  local.get 17
                  call 20
                  br 1 (;@6;)
                end
                local.get 14
                if  ;; label = @7
                  local.get 18
                  local.get 14
                  call 20
                end
                local.get 13
                local.get 16
                call 26
                local.get 19
                if  ;; label = @7
                  local.get 13
                  local.get 19
                  i32.const 5
                  i32.shl
                  call 20
                end
                local.get 15
                local.get 11
                call 27
                local.get 22
                if  ;; label = @7
                  local.get 15
                  local.get 22
                  i32.const 24
                  i32.mul
                  call 20
                end
                local.get 10
                local.get 8
                call 28
                local.get 21
                i32.eqz
                br_if 0 (;@6;)
                local.get 10
                local.get 21
                i32.const 4
                i32.shl
                call 20
              end
              local.get 0
              i32.const 536870913
              i32.lt_u
              br_if 1 (;@4;)
              local.get 0
              i32.const 536870912
              i32.const 1049512
              call 40
              unreachable
            end
            local.get 1
            i32.const 128
            i32.add
            local.get 1
            i32.const 96
            i32.add
            call 50
            local.get 1
            i32.load offset=136
            local.tee 0
            i32.const 536870913
            i32.lt_u
            br_if 1 (;@3;)
            local.get 0
            i32.const 536870912
            i32.const 1049528
            call 40
            unreachable
          end
          i32.const 537922276
          i32.const 1
          i32.const 2
          local.get 5
          local.get 2
          select
          local.get 2
          select
          local.tee 5
          local.get 0
          call 86
          drop
          local.get 0
          call 0
          i32.const 0
          local.get 4
          local.get 2
          select
          local.tee 0
          if  ;; label = @4
            local.get 5
            local.get 0
            call 20
          end
          local.get 1
          i32.const 96
          i32.add
          call 23
          br 1 (;@2;)
        end
        i32.const 1051364
        local.get 1
        i32.load offset=132
        local.tee 2
        local.get 0
        call 86
        drop
        local.get 0
        call 1
        local.get 1
        i32.load offset=128
        local.tee 0
        if  ;; label = @3
          local.get 2
          local.get 0
          call 20
        end
        local.get 1
        i32.const 24
        i32.add
        call 25
      end
      local.get 6
      if  ;; label = @2
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 2
          local.get 9
          i32.add
          call 24
          local.get 2
          i32.const 28
          i32.add
          local.tee 2
          i32.const 84
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 9
        i32.const 84
        call 20
      end
      local.get 1
      i32.const 368
      i32.add
      global.set 0
      return
    end
    i32.const 1
    call 41
    unreachable)
  (func (;35;) (type 12) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const 244
                    i32.le_u
                    if  ;; label = @9
                      i32.const 1074793608
                      i32.load
                      local.tee 3
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
                      br_if 1 (;@8;)
                      local.get 5
                      i32.const 1074793616
                      i32.load
                      i32.le_u
                      br_if 7 (;@2;)
                      local.get 1
                      br_if 2 (;@7;)
                      i32.const 1074793612
                      i32.load
                      local.tee 0
                      br_if 3 (;@6;)
                      br 7 (;@2;)
                    end
                    local.get 0
                    i32.const 11
                    i32.add
                    local.tee 1
                    i32.const -8
                    i32.and
                    local.set 5
                    i32.const 1074793612
                    i32.load
                    local.tee 8
                    i32.eqz
                    br_if 6 (;@2;)
                    i32.const 31
                    local.set 7
                    i32.const 0
                    local.get 5
                    i32.sub
                    local.set 3
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
                    i32.const 1074793200
                    i32.add
                    i32.load
                    local.tee 1
                    i32.eqz
                    if  ;; label = @9
                      i32.const 0
                      local.set 0
                      br 4 (;@5;)
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
                        local.get 3
                        i32.ge_u
                        br_if 0 (;@10;)
                        local.get 1
                        local.set 2
                        local.get 6
                        local.tee 3
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 3
                        local.get 1
                        local.set 0
                        br 6 (;@4;)
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
                      br_if 0 (;@9;)
                    end
                    br 3 (;@5;)
                  end
                  block  ;; label = @8
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
                    i32.const 1074793344
                    i32.add
                    local.tee 2
                    local.get 0
                    i32.const 1074793352
                    i32.add
                    i32.load
                    local.tee 1
                    i32.load offset=8
                    local.tee 4
                    i32.ne
                    if  ;; label = @9
                      local.get 4
                      local.get 2
                      i32.store offset=12
                      local.get 2
                      local.get 4
                      i32.store offset=8
                      br 1 (;@8;)
                    end
                    i32.const 1074793608
                    local.get 3
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
                  br 6 (;@1;)
                end
                block  ;; label = @7
                  i32.const 2
                  local.get 0
                  i32.shl
                  local.tee 2
                  i32.const 0
                  local.get 2
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
                  local.tee 0
                  i32.const 1074793344
                  i32.add
                  local.tee 1
                  local.get 0
                  i32.const 1074793352
                  i32.add
                  i32.load
                  local.tee 2
                  i32.load offset=8
                  local.tee 4
                  i32.ne
                  if  ;; label = @8
                    local.get 4
                    local.get 1
                    i32.store offset=12
                    local.get 1
                    local.get 4
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  i32.const 1074793608
                  local.get 3
                  i32.const -2
                  local.get 6
                  i32.rotl
                  i32.and
                  i32.store
                end
                local.get 2
                local.get 5
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 2
                local.get 5
                i32.add
                local.tee 6
                local.get 0
                local.get 5
                i32.sub
                local.tee 4
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 2
                i32.add
                local.get 4
                i32.store
                i32.const 1074793616
                i32.load
                local.tee 1
                if  ;; label = @7
                  local.get 1
                  i32.const -8
                  i32.and
                  i32.const 1074793344
                  i32.add
                  local.set 0
                  i32.const 1074793624
                  i32.load
                  local.set 3
                  block (result i32)  ;; label = @8
                    i32.const 1074793608
                    i32.load
                    local.tee 5
                    i32.const 1
                    local.get 1
                    i32.const 3
                    i32.shr_u
                    i32.shl
                    local.tee 1
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      i32.const 1074793608
                      local.get 1
                      local.get 5
                      i32.or
                      i32.store
                      local.get 0
                      br 1 (;@8;)
                    end
                    local.get 0
                    i32.load offset=8
                  end
                  local.set 1
                  local.get 0
                  local.get 3
                  i32.store offset=8
                  local.get 1
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 0
                  i32.store offset=12
                  local.get 3
                  local.get 1
                  i32.store offset=8
                end
                i32.const 1074793624
                local.get 6
                i32.store
                i32.const 1074793616
                local.get 4
                i32.store
                local.get 2
                i32.const 8
                i32.add
                return
              end
              local.get 0
              i32.ctz
              i32.const 2
              i32.shl
              i32.const 1074793200
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
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.load offset=16
                      local.tee 0
                      br_if 0 (;@9;)
                      local.get 2
                      i32.load offset=20
                      local.tee 0
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load offset=24
                      local.set 7
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          local.get 1
                          i32.load offset=12
                          local.tee 0
                          i32.eq
                          if  ;; label = @12
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
                            br_if 1 (;@11;)
                            i32.const 0
                            local.set 0
                            br 2 (;@10;)
                          end
                          local.get 1
                          i32.load offset=8
                          local.tee 2
                          local.get 0
                          i32.store offset=12
                          local.get 0
                          local.get 2
                          i32.store offset=8
                          br 1 (;@10;)
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
                        loop  ;; label = @11
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
                          br_if 0 (;@11;)
                        end
                        local.get 6
                        i32.const 0
                        i32.store
                      end
                      local.get 7
                      i32.eqz
                      br_if 3 (;@6;)
                      local.get 1
                      local.get 1
                      i32.load offset=28
                      i32.const 2
                      i32.shl
                      i32.const 1074793200
                      i32.add
                      local.tee 2
                      i32.load
                      i32.ne
                      if  ;; label = @10
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
                        br_if 4 (;@6;)
                        br 2 (;@8;)
                      end
                      local.get 2
                      local.get 0
                      i32.store
                      local.get 0
                      br_if 1 (;@8;)
                      i32.const 1074793612
                      i32.const 1074793612
                      i32.load
                      i32.const -2
                      local.get 1
                      i32.load offset=28
                      i32.rotl
                      i32.and
                      i32.store
                      br 3 (;@6;)
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
                    br 1 (;@7;)
                  end
                end
                local.get 0
                local.get 7
                i32.store offset=24
                local.get 1
                i32.load offset=16
                local.tee 2
                if  ;; label = @7
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
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                i32.store offset=20
                local.get 2
                local.get 0
                i32.store offset=24
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 16
                  i32.ge_u
                  if  ;; label = @8
                    local.get 1
                    local.get 5
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 5
                    i32.add
                    local.tee 6
                    local.get 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 3
                    local.get 6
                    i32.add
                    local.get 3
                    i32.store
                    i32.const 1074793616
                    i32.load
                    local.tee 4
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 4
                    i32.const -8
                    i32.and
                    i32.const 1074793344
                    i32.add
                    local.set 0
                    i32.const 1074793624
                    i32.load
                    local.set 2
                    block (result i32)  ;; label = @9
                      i32.const 1074793608
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
                      if  ;; label = @10
                        i32.const 1074793608
                        local.get 4
                        local.get 5
                        i32.or
                        i32.store
                        local.get 0
                        br 1 (;@9;)
                      end
                      local.get 0
                      i32.load offset=8
                    end
                    local.set 4
                    local.get 0
                    local.get 2
                    i32.store offset=8
                    local.get 4
                    local.get 2
                    i32.store offset=12
                    local.get 2
                    local.get 0
                    i32.store offset=12
                    local.get 2
                    local.get 4
                    i32.store offset=8
                    br 1 (;@7;)
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
                  br 1 (;@6;)
                end
                i32.const 1074793624
                local.get 6
                i32.store
                i32.const 1074793616
                local.get 3
                i32.store
              end
              br 4 (;@1;)
            end
            local.get 0
            local.get 2
            i32.or
            i32.eqz
            if  ;; label = @5
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
              br_if 3 (;@2;)
              local.get 0
              i32.ctz
              i32.const 2
              i32.shl
              i32.const 1074793200
              i32.add
              i32.load
              local.set 0
            end
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          loop  ;; label = @4
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
            if  ;; label = @5
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
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.const 1074793616
        i32.load
        local.tee 0
        i32.le_u
        local.get 3
        local.get 0
        local.get 5
        i32.sub
        i32.ge_u
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=24
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 2
            i32.load offset=12
            local.tee 0
            i32.eq
            if  ;; label = @5
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
              br_if 1 (;@4;)
              i32.const 0
              local.set 0
              br 2 (;@3;)
            end
            local.get 2
            i32.load offset=8
            local.tee 1
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 1
            i32.store offset=8
            br 1 (;@3;)
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
          loop  ;; label = @4
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
            br_if 0 (;@4;)
          end
          local.get 6
          i32.const 0
          i32.store
        end
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            local.get 2
            i32.load offset=28
            i32.const 2
            i32.shl
            i32.const 1074793200
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
              br_if 2 (;@3;)
              br 1 (;@4;)
            end
            local.get 1
            local.get 0
            i32.store
            local.get 0
            br_if 0 (;@4;)
            i32.const 1074793612
            i32.const 1074793612
            i32.load
            i32.const -2
            local.get 2
            i32.load offset=28
            i32.rotl
            i32.and
            i32.store
            br 1 (;@3;)
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
            local.tee 1
            local.get 3
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 3
            i32.add
            local.get 3
            i32.store
            local.get 3
            i32.const 256
            i32.ge_u
            if  ;; label = @5
              local.get 1
              local.get 3
              call 83
              br 2 (;@3;)
            end
            local.get 3
            i32.const 248
            i32.and
            i32.const 1074793344
            i32.add
            local.set 0
            block (result i32)  ;; label = @5
              i32.const 1074793608
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
                i32.const 1074793608
                local.get 3
                local.get 4
                i32.or
                i32.store
                local.get 0
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
            end
            local.set 3
            local.get 0
            local.get 1
            i32.store offset=8
            local.get 3
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 0
            i32.store offset=12
            local.get 1
            local.get 3
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
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.const 1074793616
                i32.load
                local.tee 1
                i32.gt_u
                if  ;; label = @7
                  local.get 5
                  i32.const 1074793620
                  i32.load
                  local.tee 0
                  i32.ge_u
                  if  ;; label = @8
                    i32.const 0
                    local.set 0
                    local.get 5
                    i32.const 65583
                    i32.add
                    local.tee 2
                    i32.const 16
                    i32.shr_u
                    memory.grow
                    local.tee 1
                    i32.const -1
                    i32.eq
                    local.tee 3
                    br_if 6 (;@2;)
                    local.get 1
                    i32.const 16
                    i32.shl
                    local.tee 1
                    i32.eqz
                    br_if 6 (;@2;)
                    i32.const 1074793632
                    i32.const 0
                    local.get 2
                    i32.const -65536
                    i32.and
                    local.get 3
                    select
                    local.tee 4
                    i32.const 1074793632
                    i32.load
                    i32.add
                    local.tee 0
                    i32.store
                    i32.const 1074793636
                    i32.const 1074793636
                    i32.load
                    local.tee 2
                    local.get 0
                    local.get 0
                    local.get 2
                    i32.lt_u
                    select
                    i32.store
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 1074793628
                        i32.load
                        local.tee 2
                        if  ;; label = @11
                          i32.const 1074793328
                          local.set 0
                          loop  ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 3
                            local.get 0
                            i32.load offset=4
                            local.tee 6
                            i32.add
                            local.get 1
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 0 (;@12;)
                          end
                          br 2 (;@9;)
                        end
                        i32.const 1074793644
                        i32.load
                        local.tee 0
                        i32.const 0
                        local.get 0
                        local.get 1
                        i32.le_u
                        select
                        i32.eqz
                        if  ;; label = @11
                          i32.const 1074793644
                          local.get 1
                          i32.store
                        end
                        i32.const 1074793648
                        i32.const 4095
                        i32.store
                        i32.const 1074793332
                        local.get 4
                        i32.store
                        i32.const 1074793328
                        local.get 1
                        i32.store
                        i32.const 1074793356
                        i32.const 1074793344
                        i32.store
                        i32.const 1074793364
                        i32.const 1074793352
                        i32.store
                        i32.const 1074793352
                        i32.const 1074793344
                        i32.store
                        i32.const 1074793372
                        i32.const 1074793360
                        i32.store
                        i32.const 1074793360
                        i32.const 1074793352
                        i32.store
                        i32.const 1074793380
                        i32.const 1074793368
                        i32.store
                        i32.const 1074793368
                        i32.const 1074793360
                        i32.store
                        i32.const 1074793388
                        i32.const 1074793376
                        i32.store
                        i32.const 1074793376
                        i32.const 1074793368
                        i32.store
                        i32.const 1074793396
                        i32.const 1074793384
                        i32.store
                        i32.const 1074793384
                        i32.const 1074793376
                        i32.store
                        i32.const 1074793404
                        i32.const 1074793392
                        i32.store
                        i32.const 1074793392
                        i32.const 1074793384
                        i32.store
                        i32.const 1074793412
                        i32.const 1074793400
                        i32.store
                        i32.const 1074793400
                        i32.const 1074793392
                        i32.store
                        i32.const 1074793340
                        i32.const 0
                        i32.store
                        i32.const 1074793420
                        i32.const 1074793408
                        i32.store
                        i32.const 1074793408
                        i32.const 1074793400
                        i32.store
                        i32.const 1074793416
                        i32.const 1074793408
                        i32.store
                        i32.const 1074793428
                        i32.const 1074793416
                        i32.store
                        i32.const 1074793424
                        i32.const 1074793416
                        i32.store
                        i32.const 1074793436
                        i32.const 1074793424
                        i32.store
                        i32.const 1074793432
                        i32.const 1074793424
                        i32.store
                        i32.const 1074793444
                        i32.const 1074793432
                        i32.store
                        i32.const 1074793440
                        i32.const 1074793432
                        i32.store
                        i32.const 1074793452
                        i32.const 1074793440
                        i32.store
                        i32.const 1074793448
                        i32.const 1074793440
                        i32.store
                        i32.const 1074793460
                        i32.const 1074793448
                        i32.store
                        i32.const 1074793456
                        i32.const 1074793448
                        i32.store
                        i32.const 1074793468
                        i32.const 1074793456
                        i32.store
                        i32.const 1074793464
                        i32.const 1074793456
                        i32.store
                        i32.const 1074793476
                        i32.const 1074793464
                        i32.store
                        i32.const 1074793472
                        i32.const 1074793464
                        i32.store
                        i32.const 1074793484
                        i32.const 1074793472
                        i32.store
                        i32.const 1074793492
                        i32.const 1074793480
                        i32.store
                        i32.const 1074793480
                        i32.const 1074793472
                        i32.store
                        i32.const 1074793500
                        i32.const 1074793488
                        i32.store
                        i32.const 1074793488
                        i32.const 1074793480
                        i32.store
                        i32.const 1074793508
                        i32.const 1074793496
                        i32.store
                        i32.const 1074793496
                        i32.const 1074793488
                        i32.store
                        i32.const 1074793516
                        i32.const 1074793504
                        i32.store
                        i32.const 1074793504
                        i32.const 1074793496
                        i32.store
                        i32.const 1074793524
                        i32.const 1074793512
                        i32.store
                        i32.const 1074793512
                        i32.const 1074793504
                        i32.store
                        i32.const 1074793532
                        i32.const 1074793520
                        i32.store
                        i32.const 1074793520
                        i32.const 1074793512
                        i32.store
                        i32.const 1074793540
                        i32.const 1074793528
                        i32.store
                        i32.const 1074793528
                        i32.const 1074793520
                        i32.store
                        i32.const 1074793548
                        i32.const 1074793536
                        i32.store
                        i32.const 1074793536
                        i32.const 1074793528
                        i32.store
                        i32.const 1074793556
                        i32.const 1074793544
                        i32.store
                        i32.const 1074793544
                        i32.const 1074793536
                        i32.store
                        i32.const 1074793564
                        i32.const 1074793552
                        i32.store
                        i32.const 1074793552
                        i32.const 1074793544
                        i32.store
                        i32.const 1074793572
                        i32.const 1074793560
                        i32.store
                        i32.const 1074793560
                        i32.const 1074793552
                        i32.store
                        i32.const 1074793580
                        i32.const 1074793568
                        i32.store
                        i32.const 1074793568
                        i32.const 1074793560
                        i32.store
                        i32.const 1074793588
                        i32.const 1074793576
                        i32.store
                        i32.const 1074793576
                        i32.const 1074793568
                        i32.store
                        i32.const 1074793596
                        i32.const 1074793584
                        i32.store
                        i32.const 1074793584
                        i32.const 1074793576
                        i32.store
                        i32.const 1074793604
                        i32.const 1074793592
                        i32.store
                        i32.const 1074793592
                        i32.const 1074793584
                        i32.store
                        i32.const 1074793628
                        local.get 1
                        i32.store
                        i32.const 1074793600
                        i32.const 1074793592
                        i32.store
                        i32.const 1074793620
                        local.get 4
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
                        i32.const 1074793640
                        i32.const 2097152
                        i32.store
                        br 7 (;@3;)
                      end
                      local.get 2
                      local.get 3
                      i32.lt_u
                      local.get 1
                      local.get 2
                      i32.le_u
                      i32.or
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load offset=12
                      i32.eqz
                      br_if 3 (;@6;)
                    end
                    i32.const 1074793644
                    i32.const 1074793644
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
                    i32.const 1074793328
                    local.set 0
                    block  ;; label = @9
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 3
                          local.get 0
                          i32.load
                          local.tee 6
                          i32.ne
                          if  ;; label = @12
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 1 (;@11;)
                            br 2 (;@10;)
                          end
                        end
                        local.get 0
                        i32.load offset=12
                        i32.eqz
                        br_if 1 (;@9;)
                      end
                      i32.const 1074793328
                      local.set 0
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 2
                          local.get 0
                          i32.load
                          local.tee 3
                          i32.ge_u
                          if  ;; label = @12
                            local.get 2
                            local.get 3
                            local.get 0
                            i32.load offset=4
                            i32.add
                            local.tee 6
                            i32.lt_u
                            br_if 1 (;@11;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 0
                          br 1 (;@10;)
                        end
                      end
                      i32.const 1074793628
                      local.get 1
                      i32.store
                      i32.const 1074793620
                      local.get 4
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
                      i32.const 1074793640
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
                      local.tee 3
                      i32.const 27
                      i32.store offset=4
                      i32.const 1074793328
                      i64.load align=4
                      local.set 9
                      local.get 3
                      i32.const 16
                      i32.add
                      i32.const 1074793336
                      i64.load align=4
                      i64.store align=4
                      local.get 3
                      local.get 9
                      i64.store offset=8 align=4
                      i32.const 1074793332
                      local.get 4
                      i32.store
                      i32.const 1074793328
                      local.get 1
                      i32.store
                      i32.const 1074793336
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.store
                      i32.const 1074793340
                      i32.const 0
                      i32.store
                      local.get 3
                      i32.const 28
                      i32.add
                      local.set 0
                      loop  ;; label = @10
                        local.get 0
                        i32.const 7
                        i32.store
                        local.get 0
                        i32.const 4
                        i32.add
                        local.tee 0
                        local.get 6
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                      local.get 2
                      local.get 3
                      i32.eq
                      br_if 6 (;@3;)
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
                      if  ;; label = @10
                        local.get 2
                        local.get 0
                        call 83
                        br 7 (;@3;)
                      end
                      local.get 0
                      i32.const 248
                      i32.and
                      i32.const 1074793344
                      i32.add
                      local.set 1
                      block (result i32)  ;; label = @10
                        i32.const 1074793608
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
                        if  ;; label = @11
                          i32.const 1074793608
                          local.get 0
                          local.get 3
                          i32.or
                          i32.store
                          local.get 1
                          br 1 (;@10;)
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
                      br 6 (;@3;)
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
                    local.tee 2
                    local.get 1
                    local.get 5
                    i32.add
                    local.tee 4
                    i32.sub
                    local.set 3
                    local.get 2
                    i32.const 1074793628
                    i32.load
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 2
                    i32.const 1074793624
                    i32.load
                    i32.eq
                    br_if 4 (;@4;)
                    local.get 2
                    i32.load offset=4
                    local.tee 5
                    i32.const 3
                    i32.and
                    i32.const 1
                    i32.eq
                    if  ;; label = @9
                      local.get 2
                      local.get 5
                      i32.const -8
                      i32.and
                      local.tee 0
                      call 57
                      local.get 0
                      local.get 2
                      i32.add
                      local.tee 2
                      i32.load offset=4
                      local.set 5
                      local.get 0
                      local.get 3
                      i32.add
                      local.set 3
                    end
                    local.get 2
                    local.get 5
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 4
                    local.get 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 3
                    local.get 4
                    i32.add
                    local.get 3
                    i32.store
                    local.get 3
                    i32.const 256
                    i32.ge_u
                    if  ;; label = @9
                      local.get 4
                      local.get 3
                      call 83
                      br 8 (;@1;)
                    end
                    local.get 3
                    i32.const 248
                    i32.and
                    i32.const 1074793344
                    i32.add
                    local.set 0
                    block (result i32)  ;; label = @9
                      i32.const 1074793608
                      i32.load
                      local.tee 2
                      i32.const 1
                      local.get 3
                      i32.const 3
                      i32.shr_u
                      i32.shl
                      local.tee 3
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1074793608
                        local.get 2
                        local.get 3
                        i32.or
                        i32.store
                        local.get 0
                        br 1 (;@9;)
                      end
                      local.get 0
                      i32.load offset=8
                    end
                    local.set 3
                    local.get 0
                    local.get 4
                    i32.store offset=8
                    local.get 3
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 0
                    i32.store offset=12
                    local.get 4
                    local.get 3
                    i32.store offset=8
                    br 7 (;@1;)
                  end
                  i32.const 1074793620
                  local.get 0
                  local.get 5
                  i32.sub
                  local.tee 1
                  i32.store
                  i32.const 1074793628
                  i32.const 1074793628
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
                  local.set 0
                  br 5 (;@2;)
                end
                i32.const 1074793624
                i32.load
                local.set 0
                block  ;; label = @7
                  local.get 1
                  local.get 5
                  i32.sub
                  local.tee 2
                  i32.const 15
                  i32.le_u
                  if  ;; label = @8
                    i32.const 1074793624
                    i32.const 0
                    i32.store
                    i32.const 1074793616
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
                    br 1 (;@7;)
                  end
                  i32.const 1074793616
                  local.get 2
                  i32.store
                  i32.const 1074793624
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
                return
              end
              local.get 0
              local.get 4
              local.get 6
              i32.add
              i32.store offset=4
              i32.const 1074793628
              i32.const 1074793628
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
              i32.const 1074793620
              i32.const 1074793620
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
              i32.const 1074793640
              i32.const 2097152
              i32.store
              br 2 (;@3;)
            end
            i32.const 1074793628
            local.get 4
            i32.store
            i32.const 1074793620
            i32.const 1074793620
            i32.load
            local.get 3
            i32.add
            local.tee 0
            i32.store
            local.get 4
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            br 3 (;@1;)
          end
          i32.const 1074793624
          local.get 4
          i32.store
          i32.const 1074793616
          i32.const 1074793616
          i32.load
          local.get 3
          i32.add
          local.tee 0
          i32.store
          local.get 4
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 4
          i32.add
          local.get 0
          i32.store
          br 2 (;@1;)
        end
        i32.const 0
        local.set 0
        i32.const 1074793620
        i32.load
        local.tee 1
        local.get 5
        i32.le_u
        br_if 0 (;@2;)
        i32.const 1074793620
        local.get 1
        local.get 5
        i32.sub
        local.tee 1
        i32.store
        i32.const 1074793628
        i32.const 1074793628
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
        return
      end
      local.get 0
      return
    end
    local.get 1
    i32.const 8
    i32.add)
  (func (;36;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    local.set 11
    local.get 1
    i32.load
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 5
          local.set 3
          local.get 4
          local.tee 6
          i32.const 5
          i32.eq
          br_if 1 (;@2;)
          local.get 11
          local.get 6
          local.get 8
          i32.add
          local.tee 5
          i32.eq
          if  ;; label = @4
            i32.const 4
            local.set 3
            br 2 (;@2;)
          end
          local.get 1
          local.get 5
          i32.const 1
          i32.add
          i32.store
          local.get 6
          i32.const 1
          i32.add
          local.set 4
          local.get 5
          i32.load8_s
          local.tee 5
          i32.const 127
          i32.and
          local.get 9
          i32.shl
          local.get 7
          i32.or
          local.set 7
          local.get 9
          i32.const 7
          i32.add
          local.set 9
          local.get 5
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
        end
        local.get 6
        i32.const 4
        i32.eq
        local.get 5
        i32.const 15
        i32.gt_u
        i32.and
        br_if 0 (;@2;)
        i32.const 14
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                br_table 2 (;@4;) 0 (;@6;) 1 (;@5;) 4 (;@2;)
              end
              local.get 2
              i32.const 4
              i32.add
              local.get 1
              call 79
              local.get 0
              block (result i32)  ;; label = @6
                local.get 2
                i32.load offset=4
                i32.const -2147483648
                i32.ne
                if  ;; label = @7
                  local.get 0
                  local.get 2
                  i64.load offset=4 align=4
                  i64.store align=4
                  local.get 0
                  i32.const 8
                  i32.add
                  local.get 2
                  i32.const 12
                  i32.add
                  i32.load
                  i32.store
                  i32.const -2147483647
                  br 1 (;@6;)
                end
                local.get 0
                local.get 2
                i32.load8_u offset=8
                i32.store8
                i32.const -2147483646
              end
              i32.store offset=24
              br 4 (;@1;)
            end
            local.get 2
            i32.const 4
            i32.add
            local.get 1
            call 79
            local.get 2
            i32.load8_u offset=8
            local.set 6
            local.get 2
            i32.load offset=4
            local.tee 9
            i32.const -2147483648
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const -2147483646
              i32.store offset=24
              local.get 0
              local.get 6
              i32.store8
              br 4 (;@1;)
            end
            local.get 2
            i32.const 15
            i32.add
            local.tee 4
            i64.load8_u
            local.set 19
            local.get 2
            i32.const 13
            i32.add
            local.tee 3
            i64.load16_u align=1
            local.set 20
            local.get 2
            i64.load32_u offset=9 align=1
            local.set 17
            local.get 2
            i32.const 4
            i32.add
            local.get 1
            call 79
            local.get 2
            i32.load8_u offset=8
            local.set 15
            local.get 6
            i64.extend_i32_u
            i64.const 255
            i64.and
            local.get 17
            i64.const 8
            i64.shl
            i64.or
            i32.wrap_i64
            local.set 16
            block  ;; label = @5
              local.get 2
              i32.load offset=4
              local.tee 11
              i32.const -2147483648
              i32.eq
              if  ;; label = @6
                local.get 0
                i32.const -2147483646
                i32.store offset=24
                local.get 0
                local.get 15
                i32.store8
                br 1 (;@5;)
              end
              local.get 4
              i64.load8_u
              local.set 21
              local.get 3
              i64.load16_u align=1
              local.set 22
              local.get 2
              i64.load32_u offset=9 align=1
              local.set 18
              local.get 2
              i32.const 4
              i32.add
              local.set 7
              i32.const 0
              local.set 5
              i32.const 0
              local.set 8
              global.get 0
              i32.const 16
              i32.sub
              local.tee 3
              global.set 0
              local.get 1
              local.tee 6
              i32.load offset=4
              local.set 14
              local.get 1
              i32.load
              local.set 10
              i32.const -5
              local.set 1
              i32.const 5
              local.set 12
              block  ;; label = @6
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 1
                    local.tee 4
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 14
                    local.get 1
                    local.get 10
                    i32.add
                    local.tee 1
                    i32.const 5
                    i32.add
                    local.tee 13
                    i32.eq
                    if  ;; label = @9
                      i32.const 4
                      local.set 12
                      br 2 (;@7;)
                    end
                    local.get 6
                    local.get 1
                    i32.const 6
                    i32.add
                    i32.store
                    local.get 4
                    i32.const 1
                    i32.add
                    local.set 1
                    local.get 13
                    i32.load8_s
                    local.tee 13
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
                    local.get 13
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                  end
                  local.get 4
                  i32.const -1
                  i32.eq
                  local.get 13
                  i32.const 15
                  i32.gt_u
                  i32.and
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 1048576
                      local.get 5
                      local.get 5
                      i32.const 1048576
                      i32.ge_u
                      select
                      i32.const 0
                      local.get 14
                      local.get 1
                      local.get 10
                      i32.add
                      local.tee 8
                      i32.const 5
                      i32.add
                      i32.sub
                      local.get 5
                      i32.ge_u
                      select
                      local.tee 1
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1
                        local.set 4
                        i32.const 0
                        local.set 1
                        br 1 (;@9;)
                      end
                      i32.const 1074793188
                      i32.load8_u
                      drop
                      local.get 1
                      call 35
                      local.tee 4
                      i32.eqz
                      br_if 1 (;@8;)
                    end
                    local.get 3
                    i32.const 0
                    i32.store offset=12
                    local.get 3
                    local.get 4
                    i32.store offset=8
                    local.get 3
                    local.get 1
                    i32.store offset=4
                    local.get 5
                    if  ;; label = @9
                      i32.const 0
                      local.set 1
                      loop  ;; label = @10
                        local.get 14
                        local.get 1
                        local.get 8
                        i32.add
                        local.tee 10
                        i32.const 5
                        i32.add
                        local.tee 12
                        i32.eq
                        if  ;; label = @11
                          local.get 7
                          i32.const -2147483648
                          i32.store
                          local.get 7
                          i32.const 4
                          i32.store8 offset=4
                          local.get 3
                          i32.load offset=4
                          local.tee 1
                          i32.eqz
                          br_if 5 (;@6;)
                          local.get 3
                          i32.load offset=8
                          local.get 1
                          call 20
                          br 5 (;@6;)
                        end
                        local.get 6
                        local.get 10
                        i32.const 6
                        i32.add
                        i32.store
                        local.get 12
                        i32.load8_u
                        local.set 10
                        local.get 3
                        i32.load offset=4
                        local.get 1
                        i32.eq
                        if  ;; label = @11
                          local.get 3
                          i32.const 4
                          i32.add
                          call 49
                          local.get 3
                          i32.load offset=8
                          local.set 4
                        end
                        local.get 1
                        local.get 4
                        i32.add
                        local.get 10
                        i32.store8
                        local.get 3
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 1
                        i32.store offset=12
                        local.get 1
                        local.get 5
                        i32.ne
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 7
                    local.get 3
                    i64.load offset=4 align=4
                    i64.store align=4
                    local.get 7
                    i32.const 8
                    i32.add
                    local.get 3
                    i32.const 12
                    i32.add
                    i32.load
                    i32.store
                    br 2 (;@6;)
                  end
                  i32.const 1
                  call 41
                  unreachable
                end
                local.get 7
                i32.const -2147483648
                i32.store
                local.get 7
                local.get 12
                i32.store8 offset=4
              end
              local.get 3
              i32.const 16
              i32.add
              global.set 0
              local.get 2
              i32.load8_u offset=8
              local.set 1
              local.get 15
              i64.extend_i32_u
              i64.const 255
              i64.and
              local.get 18
              i64.const 8
              i64.shl
              i64.or
              i32.wrap_i64
              local.set 6
              local.get 2
              i32.load offset=4
              local.tee 4
              i32.const -2147483648
              i32.ne
              br_if 2 (;@3;)
              local.get 0
              i32.const -2147483646
              i32.store offset=24
              local.get 0
              local.get 1
              i32.store8
              local.get 11
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 11
              call 20
            end
            local.get 9
            i32.eqz
            br_if 3 (;@1;)
            local.get 16
            local.get 9
            call 20
            br 3 (;@1;)
          end
          local.get 0
          i32.const -2147483648
          i32.store offset=24
          br 2 (;@1;)
        end
        local.get 2
        i32.const 15
        i32.add
        i64.load8_u
        local.set 23
        local.get 2
        i32.const 13
        i32.add
        i64.load16_u align=1
        local.set 24
        local.get 2
        i64.load32_u offset=9 align=1
        local.set 25
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 18
        local.get 21
        i64.const 48
        i64.shl
        local.get 22
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.const 24
        i64.shr_u
        i64.store32 offset=20
        local.get 0
        local.get 6
        i32.store offset=16
        local.get 0
        local.get 11
        i32.store offset=12
        local.get 0
        local.get 17
        local.get 19
        i64.const 48
        i64.shl
        local.get 20
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.const 24
        i64.shr_u
        i64.store32 offset=8
        local.get 0
        local.get 16
        i32.store offset=4
        local.get 0
        local.get 9
        i32.store
        local.get 0
        local.get 1
        i64.extend_i32_u
        i64.const 255
        i64.and
        local.get 25
        local.get 23
        i64.const 48
        i64.shl
        local.get 24
        i64.const 32
        i64.shl
        i64.or
        i64.or
        i64.const 8
        i64.shl
        i64.or
        i64.store offset=28 align=4
        br 1 (;@1;)
      end
      local.get 0
      i32.const -2147483646
      i32.store offset=24
      local.get 0
      local.get 3
      i32.store8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;37;) (type 3) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.const 0
      i32.ge_s
      if  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.eqz
          if  ;; label = @4
            i32.const 1
            local.set 3
            br 1 (;@3;)
          end
          i32.const 1074793188
          i32.load8_u
          drop
          local.get 2
          call 35
          local.tee 3
          i32.eqz
          br_if 2 (;@1;)
        end
        local.get 3
        local.get 1
        local.get 2
        call 86
        local.set 1
        local.get 0
        local.get 2
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 2
        i32.store
        return
      end
      call 42
    end
    unreachable)
  (func (;38;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=4
                local.tee 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.load
                local.set 6
                local.get 5
                i32.const 3
                i32.and
                local.set 7
                block  ;; label = @7
                  local.get 5
                  i32.const 4
                  i32.lt_u
                  if  ;; label = @8
                    i32.const 0
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 6
                  i32.const 28
                  i32.add
                  local.set 3
                  local.get 5
                  i32.const -4
                  i32.and
                  local.tee 5
                  local.set 8
                  loop  ;; label = @8
                    local.get 3
                    i32.load
                    local.get 3
                    i32.const 8
                    i32.sub
                    i32.load
                    local.get 3
                    i32.const 16
                    i32.sub
                    i32.load
                    local.get 3
                    i32.const 24
                    i32.sub
                    i32.load
                    local.get 2
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    local.set 2
                    local.get 3
                    i32.const 32
                    i32.add
                    local.set 3
                    local.get 8
                    i32.const 4
                    i32.sub
                    local.tee 8
                    br_if 0 (;@8;)
                  end
                end
                local.get 7
                if  ;; label = @7
                  local.get 5
                  i32.const 3
                  i32.shl
                  local.get 6
                  i32.add
                  i32.const 4
                  i32.add
                  local.set 3
                  loop  ;; label = @8
                    local.get 3
                    i32.load
                    local.get 2
                    i32.add
                    local.set 2
                    local.get 3
                    i32.const 8
                    i32.add
                    local.set 3
                    local.get 7
                    i32.const 1
                    i32.sub
                    local.tee 7
                    br_if 0 (;@8;)
                  end
                end
                local.get 1
                i32.load offset=12
                if  ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.lt_s
                  br_if 1 (;@6;)
                  local.get 6
                  i32.load offset=4
                  i32.eqz
                  local.get 2
                  i32.const 16
                  i32.lt_u
                  i32.and
                  br_if 1 (;@6;)
                  local.get 2
                  i32.const 1
                  i32.shl
                  local.set 2
                end
                local.get 2
                i32.const 0
                i32.lt_s
                br_if 3 (;@3;)
                local.get 2
                br_if 1 (;@5;)
              end
              i32.const 1
              local.set 3
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            i32.const 1074793188
            i32.load8_u
            drop
            local.get 2
            call 35
            local.tee 3
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 4
          i32.const 0
          i32.store offset=8
          local.get 4
          local.get 3
          i32.store offset=4
          local.get 4
          local.get 2
          i32.store
          local.get 4
          i32.const 1049712
          local.get 1
          call 62
          i32.eqz
          br_if 2 (;@1;)
          i32.const 1049816
          i32.const 86
          local.get 4
          i32.const 15
          i32.add
          i32.const 1049800
          i32.const 1049920
          call 46
          unreachable
        end
        call 42
      end
      unreachable
    end
    local.get 0
    local.get 4
    i64.load align=4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;39;) (type 3) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 1
    i32.store offset=20
    local.get 3
    i32.const 1050328
    i32.store offset=16
    local.get 3
    i64.const 1
    i64.store offset=28 align=4
    local.get 3
    local.get 3
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.const 51539607552
    i64.or
    i64.store offset=40
    local.get 3
    local.get 3
    i32.const 40
    i32.add
    i32.store offset=24
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    call 59
    unreachable)
  (func (;40;) (type 3) (param i32 i32 i32)
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
    i32.const 1050840
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 34359738368
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
    call 59
    unreachable)
  (func (;41;) (type 4) (param i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      call 42
    end
    unreachable)
  (func (;42;) (type 7)
    (local i32)
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
    i32.const 1049756
    i32.store offset=8
    local.get 0
    i64.const 4
    i64.store offset=16 align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 1049784
    call 59
    unreachable)
  (func (;43;) (type 3) (param i32 i32 i32)
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
    i32.const 1050892
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 34359738368
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
    call 59
    unreachable)
  (func (;44;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 7
      i32.sub
      local.tee 3
      i32.const 0
      local.get 2
      local.get 3
      i32.ge_u
      select
      local.set 7
      local.get 1
      i32.const 3
      i32.add
      i32.const -4
      i32.and
      local.get 1
      i32.sub
      local.set 8
      i32.const 0
      local.set 3
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              local.tee 5
              i32.extend8_s
              local.tee 6
              i32.const 0
              i32.ge_s
              if  ;; label = @6
                local.get 8
                local.get 3
                i32.sub
                i32.const 3
                i32.and
                br_if 1 (;@5;)
                local.get 3
                local.get 7
                i32.ge_u
                br_if 2 (;@4;)
                loop  ;; label = @7
                  local.get 1
                  local.get 3
                  i32.add
                  local.tee 4
                  i32.load offset=4
                  local.get 4
                  i32.load
                  i32.or
                  i32.const -2139062144
                  i32.and
                  br_if 3 (;@4;)
                  local.get 3
                  i32.const 8
                  i32.add
                  local.tee 3
                  local.get 7
                  i32.lt_u
                  br_if 0 (;@7;)
                end
                br 2 (;@4;)
              end
              i64.const 1099511627776
              local.set 10
              i64.const 4294967296
              local.set 9
              block  ;; label = @6
                block  ;; label = @7
                  block (result i64)  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 5
                                      i32.const 1050908
                                      i32.add
                                      i32.load8_u
                                      i32.const 2
                                      i32.sub
                                      br_table 0 (;@17;) 1 (;@16;) 2 (;@15;) 10 (;@7;)
                                    end
                                    local.get 3
                                    i32.const 1
                                    i32.add
                                    local.tee 4
                                    local.get 2
                                    i32.lt_u
                                    br_if 2 (;@14;)
                                    i64.const 0
                                    local.set 10
                                    i64.const 0
                                    local.set 9
                                    br 9 (;@7;)
                                  end
                                  i64.const 0
                                  local.set 10
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  local.tee 4
                                  local.get 2
                                  i32.lt_u
                                  br_if 2 (;@13;)
                                  i64.const 0
                                  local.set 9
                                  br 8 (;@7;)
                                end
                                i64.const 0
                                local.set 10
                                local.get 3
                                i32.const 1
                                i32.add
                                local.tee 4
                                local.get 2
                                i32.lt_u
                                br_if 2 (;@12;)
                                i64.const 0
                                local.set 9
                                br 7 (;@7;)
                              end
                              local.get 1
                              local.get 4
                              i32.add
                              i32.load8_s
                              i32.const -65
                              i32.gt_s
                              br_if 6 (;@7;)
                              br 7 (;@6;)
                            end
                            local.get 1
                            local.get 4
                            i32.add
                            i32.load8_s
                            local.set 4
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 5
                                i32.const 224
                                i32.sub
                                local.tee 5
                                if  ;; label = @15
                                  local.get 5
                                  i32.const 13
                                  i32.eq
                                  if  ;; label = @16
                                    br 2 (;@14;)
                                  else
                                    br 3 (;@13;)
                                  end
                                  unreachable
                                end
                                local.get 4
                                i32.const -32
                                i32.and
                                i32.const -96
                                i32.eq
                                br_if 4 (;@10;)
                                br 3 (;@11;)
                              end
                              local.get 4
                              i32.const -97
                              i32.gt_s
                              br_if 2 (;@11;)
                              br 3 (;@10;)
                            end
                            local.get 6
                            i32.const 31
                            i32.add
                            i32.const 255
                            i32.and
                            i32.const 12
                            i32.ge_u
                            if  ;; label = @13
                              local.get 6
                              i32.const -2
                              i32.and
                              i32.const -18
                              i32.ne
                              br_if 2 (;@11;)
                              local.get 4
                              i32.const -64
                              i32.lt_s
                              br_if 3 (;@10;)
                              br 2 (;@11;)
                            end
                            local.get 4
                            i32.const -64
                            i32.lt_s
                            br_if 2 (;@10;)
                            br 1 (;@11;)
                          end
                          local.get 1
                          local.get 4
                          i32.add
                          i32.load8_s
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  i32.const 240
                                  i32.sub
                                  br_table 1 (;@14;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 2 (;@13;) 0 (;@15;)
                                end
                                local.get 6
                                i32.const 15
                                i32.add
                                i32.const 255
                                i32.and
                                i32.const 2
                                i32.gt_u
                                local.get 4
                                i32.const -64
                                i32.ge_s
                                i32.or
                                br_if 3 (;@11;)
                                br 2 (;@12;)
                              end
                              local.get 4
                              i32.const 112
                              i32.add
                              i32.const 255
                              i32.and
                              i32.const 48
                              i32.ge_u
                              br_if 2 (;@11;)
                              br 1 (;@12;)
                            end
                            local.get 4
                            i32.const -113
                            i32.gt_s
                            br_if 1 (;@11;)
                          end
                          local.get 2
                          local.get 3
                          i32.const 2
                          i32.add
                          local.tee 4
                          i32.le_u
                          if  ;; label = @12
                            i64.const 0
                            local.set 9
                            br 5 (;@7;)
                          end
                          local.get 1
                          local.get 4
                          i32.add
                          i32.load8_s
                          i32.const -65
                          i32.gt_s
                          br_if 2 (;@9;)
                          i64.const 0
                          local.set 9
                          local.get 3
                          i32.const 3
                          i32.add
                          local.tee 4
                          local.get 2
                          i32.ge_u
                          br_if 4 (;@7;)
                          local.get 1
                          local.get 4
                          i32.add
                          i32.load8_s
                          i32.const -65
                          i32.le_s
                          br_if 5 (;@6;)
                          i64.const 3298534883328
                          br 3 (;@8;)
                        end
                        i64.const 1099511627776
                        br 2 (;@8;)
                      end
                      i64.const 0
                      local.set 9
                      local.get 3
                      i32.const 2
                      i32.add
                      local.tee 4
                      local.get 2
                      i32.ge_u
                      br_if 2 (;@7;)
                      local.get 1
                      local.get 4
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 3 (;@6;)
                    end
                    i64.const 2199023255552
                  end
                  local.set 10
                  i64.const 4294967296
                  local.set 9
                end
                local.get 0
                local.get 10
                local.get 3
                i64.extend_i32_u
                i64.or
                local.get 9
                i64.or
                i64.store offset=4 align=4
                local.get 0
                i32.const 1
                i32.store
                return
              end
              local.get 4
              i32.const 1
              i32.add
              local.set 3
              br 2 (;@3;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.le_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 1
            local.get 3
            i32.add
            i32.load8_s
            i32.const 0
            i32.lt_s
            br_if 1 (;@3;)
            local.get 2
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            i32.ne
            br_if 0 (;@4;)
          end
          br 2 (;@1;)
        end
        local.get 2
        local.get 3
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store)
  (func (;45;) (type 3) (param i32 i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1050388
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 34359738368
    local.tee 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i32.const 4
    i32.add
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
    call 59
    unreachable)
  (func (;46;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 5
    global.set 0
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.const 2
    i32.store offset=28
    local.get 5
    i32.const 1050408
    i32.store offset=24
    local.get 5
    i64.const 2
    i64.store offset=36 align=4
    local.get 5
    local.get 5
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.const 55834574848
    i64.or
    i64.store offset=56
    local.get 5
    local.get 5
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.const 51539607552
    i64.or
    i64.store offset=48
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=32
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call 59
    unreachable)
  (func (;47;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.tee 3
    i32.sub
    i32.gt_u
    if  ;; label = @1
      global.get 0
      i32.const 32
      i32.sub
      local.tee 4
      global.set 0
      block  ;; label = @2
        block (result i32)  ;; label = @3
          i32.const 0
          local.get 3
          local.get 2
          local.get 3
          i32.add
          local.tee 5
          i32.gt_u
          br_if 0 (;@3;)
          drop
          i32.const 0
          i32.const 8
          local.get 0
          i32.load
          local.tee 3
          i32.const 1
          i32.shl
          local.tee 6
          local.get 5
          local.get 5
          local.get 6
          i32.lt_u
          select
          local.tee 5
          local.get 5
          i32.const 8
          i32.le_u
          select
          local.tee 5
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          drop
          local.get 4
          local.get 3
          if (result i32)  ;; label = @4
            local.get 4
            local.get 3
            i32.store offset=28
            local.get 4
            local.get 0
            i32.load offset=4
            i32.store offset=20
            i32.const 1
          else
            i32.const 0
          end
          i32.store offset=24
          local.get 4
          i32.const 8
          i32.add
          local.get 5
          local.get 4
          i32.const 20
          i32.add
          call 61
          local.get 4
          i32.load offset=8
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
          local.get 4
          i32.load offset=16
          drop
          local.get 4
          i32.load offset=12
        end
        call 41
        unreachable
      end
      local.get 4
      i32.load offset=12
      local.set 3
      local.get 0
      local.get 5
      i32.store
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 4
      i32.const 32
      i32.add
      global.set 0
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
    call 86
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8)
  (func (;48;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    i32.const 12
    i32.add
    i32.const 0
    i32.store8
    local.get 6
    i32.const 0
    i32.store offset=8
    local.get 2
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 8
          i32.add
          local.get 4
          i32.add
          local.tee 5
          local.get 3
          i32.store8
          local.get 3
          i32.const 128
          i32.lt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 3
          i32.const 128
          i32.or
          i32.store8
          local.get 3
          i32.const 7
          i32.shr_u
          local.set 3
          i32.const 5
          local.set 5
          local.get 4
          i32.const 1
          i32.add
          local.tee 4
          i32.const 5
          i32.ne
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
      end
      local.get 4
      i32.const 1
      i32.add
      local.set 5
    end
    local.get 0
    local.get 6
    i32.const 8
    i32.add
    local.get 5
    call 47
    local.get 2
    if  ;; label = @1
      local.get 0
      i32.load offset=8
      local.set 3
      loop  ;; label = @2
        local.get 1
        i32.load8_u
        local.set 5
        local.get 0
        i32.load
        local.get 3
        i32.eq
        if  ;; label = @3
          local.get 0
          call 49
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        local.get 3
        i32.const 1
        i32.add
        local.tee 4
        i32.store offset=8
        local.get 0
        i32.load offset=4
        local.get 3
        i32.add
        local.get 5
        i32.store8
        local.get 4
        local.set 3
        local.get 2
        i32.const 1
        i32.sub
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 6
    i32.const 16
    i32.add
    global.set 0)
  (func (;49;) (type 4) (param i32)
    (local i32 i32)
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
    call 80
    local.get 1
    i32.load offset=8
    local.tee 0
    i32.const -2147483647
    i32.ne
    if  ;; label = @1
      local.get 1
      i32.load offset=12
      local.set 2
      local.get 0
      call 41
      unreachable
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;50;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=20
    local.get 2
    i64.const 4294967296
    i64.store offset=12 align=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load
              local.tee 10
              i32.const 1
              i32.sub
              br_table 1 (;@4;) 2 (;@3;) 3 (;@2;) 0 (;@5;)
            end
            local.get 2
            i32.const 28
            i32.add
            i32.const 0
            i32.store8
            local.get 2
            i32.const 0
            i32.store offset=24
            local.get 2
            i32.const 12
            i32.add
            local.get 2
            i32.const 24
            i32.add
            i32.const 1
            call 47
            br 3 (;@1;)
          end
          local.get 2
          i32.const 1
          i32.store8 offset=24
          local.get 2
          i32.const 0
          i32.store offset=25 align=1
          local.get 2
          i32.const 12
          i32.add
          local.get 2
          i32.const 24
          i32.add
          i32.const 1
          call 47
          local.get 1
          i32.load offset=8
          local.set 7
          local.get 1
          i32.load offset=12
          local.set 6
          local.get 2
          i32.const 28
          i32.add
          i32.const 0
          i32.store8
          local.get 2
          i32.const 0
          i32.store offset=24
          local.get 6
          local.set 3
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const 24
                i32.add
                local.get 4
                i32.add
                local.tee 5
                local.get 3
                i32.store8
                local.get 3
                i32.const 128
                i32.lt_u
                br_if 0 (;@6;)
                local.get 5
                local.get 3
                i32.const 128
                i32.or
                i32.store8
                local.get 3
                i32.const 7
                i32.shr_u
                local.set 3
                i32.const 5
                local.set 5
                local.get 4
                i32.const 1
                i32.add
                local.tee 4
                i32.const 5
                i32.ne
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
            end
            local.get 4
            i32.const 1
            i32.add
            local.set 5
          end
          local.get 2
          i32.const 12
          i32.add
          local.get 2
          i32.const 24
          i32.add
          local.get 5
          call 47
          local.get 6
          i32.eqz
          br_if 2 (;@1;)
          local.get 7
          local.get 6
          i32.const 28
          i32.mul
          i32.add
          local.set 11
          local.get 2
          i32.const 28
          i32.add
          local.set 8
          loop  ;; label = @4
            local.get 7
            i32.load offset=24
            local.set 3
            i32.const 0
            local.set 4
            local.get 8
            i32.const 0
            i32.store8
            local.get 2
            i32.const 0
            i32.store offset=24
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 24
                  i32.add
                  local.get 4
                  i32.add
                  local.tee 6
                  local.get 3
                  i32.store8
                  local.get 3
                  i32.const 128
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 3
                  i32.const 128
                  i32.or
                  i32.store8
                  local.get 3
                  i32.const 7
                  i32.shr_u
                  local.set 3
                  i32.const 5
                  local.set 5
                  local.get 4
                  i32.const 1
                  i32.add
                  local.tee 4
                  i32.const 5
                  i32.ne
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
              end
              local.get 4
              i32.const 1
              i32.add
              local.set 5
            end
            local.get 2
            i32.const 12
            i32.add
            local.get 2
            i32.const 24
            i32.add
            local.get 5
            call 47
            local.get 7
            i32.load offset=8
            local.set 6
            local.get 7
            i32.load offset=4
            local.set 9
            i32.const 0
            local.set 4
            local.get 8
            i32.const 0
            i32.store8
            local.get 2
            i32.const 0
            i32.store offset=24
            local.get 6
            local.set 3
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 24
                  i32.add
                  local.get 4
                  i32.add
                  local.tee 5
                  local.get 3
                  i32.store8
                  local.get 3
                  i32.const 128
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 3
                  i32.const 128
                  i32.or
                  i32.store8
                  local.get 3
                  i32.const 7
                  i32.shr_u
                  local.set 3
                  i32.const 5
                  local.set 5
                  local.get 4
                  i32.const 1
                  i32.add
                  local.tee 4
                  i32.const 5
                  i32.ne
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
              end
              local.get 4
              i32.const 1
              i32.add
              local.set 5
            end
            local.get 2
            i32.const 12
            i32.add
            local.tee 3
            local.get 2
            i32.const 24
            i32.add
            local.get 5
            call 47
            local.get 3
            local.get 9
            local.get 6
            call 47
            local.get 7
            i32.load offset=20
            local.set 6
            local.get 7
            i32.load offset=16
            local.set 9
            i32.const 0
            local.set 4
            local.get 8
            i32.const 0
            i32.store8
            local.get 2
            i32.const 0
            i32.store offset=24
            local.get 6
            local.set 3
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 24
                  i32.add
                  local.get 4
                  i32.add
                  local.tee 5
                  local.get 3
                  i32.store8
                  local.get 3
                  i32.const 128
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 3
                  i32.const 128
                  i32.or
                  i32.store8
                  local.get 3
                  i32.const 7
                  i32.shr_u
                  local.set 3
                  i32.const 5
                  local.set 5
                  local.get 4
                  i32.const 1
                  i32.add
                  local.tee 4
                  i32.const 5
                  i32.ne
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
              end
              local.get 4
              i32.const 1
              i32.add
              local.set 5
            end
            local.get 2
            i32.const 12
            i32.add
            local.tee 3
            local.get 2
            i32.const 24
            i32.add
            local.get 5
            call 47
            local.get 3
            local.get 9
            local.get 6
            call 47
            local.get 7
            i32.const 28
            i32.add
            local.tee 7
            local.get 11
            i32.ne
            br_if 0 (;@4;)
          end
          br 2 (;@1;)
        end
        local.get 2
        i32.const 2
        i32.store8 offset=24
        local.get 2
        i32.const 0
        i32.store offset=25 align=1
        local.get 2
        i32.const 12
        i32.add
        local.tee 3
        local.get 2
        i32.const 24
        i32.add
        i32.const 1
        call 47
        local.get 1
        i32.const 4
        i32.add
        local.get 3
        call 78
        br 1 (;@1;)
      end
      local.get 2
      i32.const 3
      i32.store8 offset=24
      local.get 2
      i32.const 0
      i32.store offset=25 align=1
      local.get 2
      i32.const 12
      i32.add
      local.get 2
      i32.const 24
      i32.add
      i32.const 1
      call 47
      local.get 1
      i32.load offset=4
      local.set 3
      local.get 2
      i32.const 28
      i32.add
      i32.const 0
      i32.store8
      local.get 2
      i32.const 0
      i32.store offset=24
      local.get 1
      i32.const 8
      i32.add
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 24
            i32.add
            local.get 4
            i32.add
            local.tee 5
            local.get 3
            i32.store8
            local.get 3
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 5
            local.get 3
            i32.const 128
            i32.or
            i32.store8
            local.get 3
            i32.const 7
            i32.shr_u
            local.set 3
            i32.const 5
            local.set 5
            local.get 4
            i32.const 1
            i32.add
            local.tee 4
            i32.const 5
            i32.ne
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 5
      end
      local.get 2
      i32.const 12
      i32.add
      local.tee 3
      local.get 2
      i32.const 24
      i32.add
      local.get 5
      call 47
      local.get 3
      call 78
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=12
      local.tee 3
      i32.const -2147483648
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 0
        i32.store offset=8
        local.get 0
        i64.const 4294967296
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i64.load offset=16 align=4
      i64.store offset=4 align=4
      local.get 0
      local.get 3
      i32.store
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 10
            i32.const 1
            i32.sub
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;) 3 (;@1;)
          end
          local.get 1
          i32.const 8
          i32.add
          call 22
          br 2 (;@1;)
        end
        local.get 1
        i32.load offset=8
        local.set 0
        local.get 1
        i32.load offset=12
        local.tee 4
        if  ;; label = @3
          local.get 0
          local.set 3
          loop  ;; label = @4
            local.get 3
            call 24
            local.get 3
            i32.const 28
            i32.add
            local.set 3
            local.get 4
            i32.const 1
            i32.sub
            local.tee 4
            br_if 0 (;@4;)
          end
        end
        local.get 1
        i32.load offset=4
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.const 28
        i32.mul
        call 20
        br 1 (;@1;)
      end
      local.get 1
      i32.const 4
      i32.add
      call 22
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;51;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 1
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
                            local.get 0
                            i32.const 536870913
                            i32.lt_u
                            if  ;; label = @13
                              i32.const 0
                              local.get 0
                              i32.sub
                              local.set 7
                              i32.const -1
                              local.set 3
                              loop  ;; label = @14
                                local.get 3
                                i32.const 4
                                i32.eq
                                local.get 3
                                local.get 7
                                i32.add
                                i32.const -1
                                i32.eq
                                i32.or
                                br_if 12 (;@2;)
                                local.get 3
                                i32.const 537922277
                                i32.add
                                i32.load8_s
                                local.tee 5
                                i32.const 127
                                i32.and
                                local.get 2
                                i32.shl
                                local.get 4
                                i32.or
                                local.set 4
                                local.get 2
                                i32.const 7
                                i32.add
                                local.set 2
                                local.get 3
                                i32.const 1
                                i32.add
                                local.tee 6
                                local.set 3
                                local.get 5
                                i32.const 0
                                i32.lt_s
                                br_if 0 (;@14;)
                              end
                              local.get 6
                              i32.const 4
                              i32.eq
                              local.get 5
                              i32.const 15
                              i32.gt_u
                              i32.and
                              local.get 4
                              i32.const 4
                              i32.gt_u
                              i32.or
                              br_if 11 (;@2;)
                              i32.const 2
                              local.set 2
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 4
                                      i32.const 255
                                      i32.and
                                      i32.const 1
                                      i32.sub
                                      br_table 0 (;@17;) 2 (;@15;) 1 (;@16;) 3 (;@14;) 15 (;@2;) 6 (;@11;)
                                    end
                                    local.get 6
                                    local.get 0
                                    i32.sub
                                    local.set 8
                                    i32.const 0
                                    local.set 2
                                    i32.const 0
                                    local.set 4
                                    i32.const 0
                                    local.set 5
                                    loop  ;; label = @17
                                      local.get 4
                                      local.tee 3
                                      i32.const 5
                                      i32.eq
                                      local.get 3
                                      local.get 8
                                      i32.add
                                      i32.const -1
                                      i32.eq
                                      i32.or
                                      br_if 15 (;@2;)
                                      local.get 3
                                      i32.const 1
                                      i32.add
                                      local.set 4
                                      local.get 3
                                      local.get 6
                                      i32.add
                                      i32.const 537922277
                                      i32.add
                                      i32.load8_s
                                      local.tee 7
                                      i32.const 127
                                      i32.and
                                      local.get 2
                                      i32.shl
                                      local.get 5
                                      i32.or
                                      local.set 5
                                      local.get 2
                                      i32.const 7
                                      i32.add
                                      local.set 2
                                      local.get 7
                                      i32.const 0
                                      i32.lt_s
                                      br_if 0 (;@17;)
                                    end
                                    local.get 3
                                    i32.const 4
                                    i32.eq
                                    local.get 7
                                    i32.const 15
                                    i32.gt_u
                                    i32.and
                                    br_if 14 (;@2;)
                                    local.get 4
                                    local.get 6
                                    i32.add
                                    i32.const 1
                                    i32.add
                                    local.set 2
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 5
                                        br_table 0 (;@18;) 1 (;@17;) 16 (;@2;)
                                      end
                                      local.get 5
                                      i32.const 7
                                      i32.mul
                                      local.set 6
                                      local.get 5
                                      i32.const 1
                                      i32.sub
                                      local.set 4
                                      local.get 5
                                      local.set 3
                                      loop  ;; label = @18
                                        local.get 4
                                        i32.const 4
                                        i32.eq
                                        local.get 0
                                        local.get 2
                                        i32.eq
                                        i32.or
                                        br_if 16 (;@2;)
                                        local.get 4
                                        i32.const 1
                                        i32.add
                                        local.set 4
                                        local.get 2
                                        i32.const 537922276
                                        i32.add
                                        i32.load8_s
                                        local.tee 7
                                        i32.const 127
                                        i32.and
                                        local.get 6
                                        i32.shl
                                        local.get 3
                                        i32.or
                                        local.set 3
                                        local.get 6
                                        i32.const 7
                                        i32.add
                                        local.set 6
                                        local.get 2
                                        i32.const 1
                                        i32.add
                                        local.set 2
                                        local.get 7
                                        i32.const 0
                                        i32.lt_s
                                        br_if 0 (;@18;)
                                      end
                                      i32.const 3
                                      local.set 2
                                      local.get 4
                                      i32.const 4
                                      i32.ne
                                      local.get 7
                                      i32.const 15
                                      i32.le_u
                                      i32.or
                                      br_if 6 (;@11;)
                                      br 15 (;@2;)
                                    end
                                    i32.const -1
                                    local.set 3
                                    i32.const 0
                                    local.set 4
                                    i32.const 0
                                    local.set 6
                                    loop  ;; label = @17
                                      local.get 3
                                      i32.const 4
                                      i32.eq
                                      local.get 0
                                      local.get 2
                                      i32.eq
                                      i32.or
                                      br_if 15 (;@2;)
                                      local.get 3
                                      i32.const 1
                                      i32.add
                                      local.set 3
                                      local.get 2
                                      i32.const 537922276
                                      i32.add
                                      i32.load8_s
                                      local.tee 7
                                      i32.const 127
                                      i32.and
                                      local.get 4
                                      i32.shl
                                      local.get 6
                                      i32.or
                                      local.set 6
                                      local.get 4
                                      i32.const 7
                                      i32.add
                                      local.set 4
                                      local.get 2
                                      i32.const 1
                                      i32.add
                                      local.set 2
                                      local.get 7
                                      i32.const 0
                                      i32.lt_s
                                      br_if 0 (;@17;)
                                    end
                                    local.get 3
                                    i32.const 4
                                    i32.eq
                                    local.get 7
                                    i32.const 15
                                    i32.gt_u
                                    i32.and
                                    local.get 6
                                    i32.or
                                    br_if 14 (;@2;)
                                    i32.const 3
                                    local.set 2
                                    br 5 (;@11;)
                                  end
                                  local.get 6
                                  local.get 0
                                  i32.sub
                                  local.set 8
                                  i32.const 0
                                  local.set 2
                                  i32.const 0
                                  local.set 4
                                  i32.const 0
                                  local.set 5
                                  loop  ;; label = @16
                                    local.get 4
                                    local.tee 3
                                    i32.const 5
                                    i32.eq
                                    local.get 3
                                    local.get 8
                                    i32.add
                                    i32.const -1
                                    i32.eq
                                    i32.or
                                    br_if 14 (;@2;)
                                    local.get 3
                                    i32.const 1
                                    i32.add
                                    local.set 4
                                    local.get 3
                                    local.get 6
                                    i32.add
                                    i32.const 537922277
                                    i32.add
                                    i32.load8_s
                                    local.tee 7
                                    i32.const 127
                                    i32.and
                                    local.get 2
                                    i32.shl
                                    local.get 5
                                    i32.or
                                    local.set 5
                                    local.get 2
                                    i32.const 7
                                    i32.add
                                    local.set 2
                                    local.get 7
                                    i32.const 0
                                    i32.lt_s
                                    br_if 0 (;@16;)
                                  end
                                  local.get 3
                                  i32.const 4
                                  i32.eq
                                  local.get 7
                                  i32.const 15
                                  i32.gt_u
                                  i32.and
                                  br_if 13 (;@2;)
                                  local.get 4
                                  local.get 6
                                  i32.add
                                  i32.const 1
                                  i32.add
                                  local.set 3
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 5
                                      br_table 0 (;@17;) 1 (;@16;) 15 (;@2;)
                                    end
                                    local.get 5
                                    i32.const 7
                                    i32.mul
                                    local.set 4
                                    local.get 5
                                    i32.const 1
                                    i32.sub
                                    local.set 2
                                    local.get 1
                                    i32.const 16
                                    i32.add
                                    local.set 8
                                    loop  ;; label = @17
                                      local.get 2
                                      i32.const 18
                                      i32.eq
                                      local.get 0
                                      local.get 3
                                      i32.eq
                                      i32.or
                                      br_if 15 (;@2;)
                                      local.get 1
                                      i32.const 8
                                      i32.add
                                      local.set 6
                                      local.get 3
                                      i32.const 537922276
                                      i32.add
                                      i32.load8_s
                                      local.tee 7
                                      i32.const 127
                                      i32.and
                                      i64.extend_i32_u
                                      local.set 9
                                      i64.const 0
                                      local.set 11
                                      block  ;; label = @18
                                        local.get 4
                                        i32.const 127
                                        i32.and
                                        local.tee 5
                                        i32.const 64
                                        i32.and
                                        i32.eqz
                                        if  ;; label = @19
                                          local.get 5
                                          i32.eqz
                                          br_if 1 (;@18;)
                                          i64.const 0
                                          local.get 5
                                          i32.const 63
                                          i32.and
                                          i64.extend_i32_u
                                          local.tee 13
                                          i64.shl
                                          local.get 9
                                          i32.const 0
                                          local.get 5
                                          i32.sub
                                          i32.const 63
                                          i32.and
                                          i64.extend_i32_u
                                          i64.shr_u
                                          i64.or
                                          local.set 11
                                          local.get 9
                                          local.get 13
                                          i64.shl
                                          local.set 9
                                          br 1 (;@18;)
                                        end
                                        local.get 9
                                        local.get 5
                                        i32.const 63
                                        i32.and
                                        i64.extend_i32_u
                                        i64.shl
                                        local.set 11
                                        i64.const 0
                                        local.set 9
                                      end
                                      local.get 6
                                      local.get 9
                                      i64.store
                                      local.get 6
                                      local.get 11
                                      i64.store offset=8
                                      local.get 4
                                      i32.const 7
                                      i32.add
                                      local.set 4
                                      local.get 2
                                      i32.const 1
                                      i32.add
                                      local.set 2
                                      local.get 3
                                      i32.const 1
                                      i32.add
                                      local.set 3
                                      local.get 8
                                      i64.load
                                      local.get 10
                                      i64.or
                                      local.set 10
                                      local.get 1
                                      i64.load offset=8
                                      local.get 12
                                      i64.or
                                      local.set 12
                                      local.get 7
                                      i32.const 0
                                      i32.lt_s
                                      br_if 0 (;@17;)
                                    end
                                    local.get 2
                                    i32.const 18
                                    i32.eq
                                    local.get 7
                                    i32.const 3
                                    i32.gt_u
                                    i32.and
                                    br_if 14 (;@2;)
                                    local.get 10
                                    i64.const 32
                                    i64.shl
                                    local.get 12
                                    i64.const 32
                                    i64.shr_u
                                    i64.or
                                    local.set 9
                                    local.get 10
                                    i64.const 32
                                    i64.shr_u
                                    local.set 10
                                    local.get 12
                                    i32.wrap_i64
                                    local.set 3
                                    i32.const 0
                                    local.set 2
                                    br 4 (;@12;)
                                  end
                                  i32.const -1
                                  local.set 2
                                  i32.const 0
                                  local.set 4
                                  i32.const 0
                                  local.set 5
                                  loop  ;; label = @16
                                    local.get 2
                                    i32.const 4
                                    i32.eq
                                    local.get 0
                                    local.get 3
                                    i32.eq
                                    i32.or
                                    br_if 14 (;@2;)
                                    local.get 2
                                    i32.const 1
                                    i32.add
                                    local.set 2
                                    local.get 3
                                    i32.const 537922276
                                    i32.add
                                    i32.load8_u
                                    local.tee 6
                                    i32.const 127
                                    i32.and
                                    local.get 4
                                    i32.shl
                                    local.get 5
                                    i32.or
                                    local.set 5
                                    local.get 4
                                    i32.const 7
                                    i32.add
                                    local.set 4
                                    local.get 3
                                    i32.const 1
                                    i32.add
                                    local.set 3
                                    local.get 6
                                    i32.extend8_s
                                    i32.const 0
                                    i32.lt_s
                                    br_if 0 (;@16;)
                                  end
                                  local.get 2
                                  i32.const 4
                                  i32.eq
                                  local.get 6
                                  i32.const 15
                                  i32.gt_u
                                  i32.and
                                  br_if 13 (;@2;)
                                  local.get 5
                                  i32.const 3
                                  i32.gt_u
                                  local.tee 3
                                  br_if 13 (;@2;)
                                  i32.const 14
                                  local.get 5
                                  local.get 3
                                  select
                                  local.set 4
                                  i32.const 1
                                  local.set 2
                                  br 3 (;@12;)
                                end
                                i32.const 4
                                local.set 2
                                br 3 (;@11;)
                              end
                              i32.const 6
                              local.set 2
                              br 2 (;@11;)
                            end
                            local.get 0
                            i32.const 536870912
                            i32.const 1049544
                            call 40
                            unreachable
                          end
                          local.get 1
                          i32.const 0
                          i32.store offset=24
                          local.get 1
                          local.get 10
                          i64.store32 offset=76
                          local.get 1
                          local.get 9
                          i64.store offset=68 align=4
                          local.get 1
                          local.get 3
                          i32.store offset=64
                          local.get 1
                          local.get 4
                          i32.store8 offset=57
                          local.get 1
                          local.get 2
                          i32.store8 offset=56
                          br 1 (;@10;)
                        end
                        local.get 1
                        i32.const 0
                        i32.store offset=24
                        local.get 1
                        local.get 3
                        i32.store offset=64
                        local.get 1
                        local.get 5
                        i32.store offset=60
                        local.get 1
                        local.get 2
                        i32.store8 offset=56
                        i32.const 3
                        local.get 2
                        i32.const 2
                        i32.sub
                        local.tee 0
                        local.get 0
                        i32.const 5
                        i32.ge_u
                        select
                        i32.const 255
                        i32.and
                        i32.const 1
                        i32.sub
                        br_table 4 (;@6;) 2 (;@8;) 0 (;@10;) 3 (;@7;) 1 (;@9;)
                      end
                      local.get 1
                      local.get 1
                      i32.const 56
                      i32.add
                      i32.store offset=80
                      local.get 1
                      i32.const 1
                      i32.store offset=100
                      local.get 1
                      i32.const 1049632
                      i32.store offset=96
                      local.get 1
                      i64.const 1
                      i64.store offset=108 align=4
                      local.get 1
                      i32.const 14
                      i32.store offset=124
                      local.get 1
                      local.get 1
                      i32.const 120
                      i32.add
                      i32.store offset=104
                      local.get 1
                      local.get 1
                      i32.const 80
                      i32.add
                      i32.store offset=120
                      local.get 1
                      i32.const 84
                      i32.add
                      local.get 1
                      i32.const 96
                      i32.add
                      call 38
                      local.get 1
                      i32.const 24
                      i32.add
                      call 23
                      local.get 1
                      i32.const 40
                      i32.add
                      local.get 1
                      i32.const 92
                      i32.add
                      i32.load
                      i32.store
                      local.get 1
                      i64.const 4294967299
                      i64.store offset=24 align=4
                      local.get 1
                      i32.const -2147483647
                      i32.store offset=44
                      local.get 1
                      local.get 1
                      i64.load offset=84 align=4
                      i64.store offset=32 align=4
                      br 8 (;@1;)
                    end
                    i32.const 1074793188
                    i32.load8_u
                    drop
                    i32.const 17
                    call 35
                    local.tee 0
                    i32.eqz
                    br_if 3 (;@5;)
                    local.get 0
                    i32.const 16
                    i32.add
                    i32.const 1049576
                    i32.load8_u
                    i32.store8
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.const 1049568
                    i64.load align=1
                    i64.store align=1
                    local.get 0
                    i32.const 1049560
                    i64.load align=1
                    i64.store align=1
                    local.get 1
                    i32.const 24
                    i32.add
                    call 23
                    local.get 1
                    i64.const -9223372032559808495
                    i64.store offset=40 align=4
                    local.get 1
                    local.get 0
                    i32.store offset=36
                    local.get 1
                    i32.const 17
                    i32.store offset=32
                    local.get 1
                    i64.const 3
                    i64.store offset=24 align=4
                    br 7 (;@1;)
                  end
                  i32.const 1074793188
                  i32.load8_u
                  drop
                  i32.const 12
                  call 35
                  local.tee 0
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  i32.const 8
                  i32.add
                  i32.const 1049612
                  i32.load align=1
                  i32.store align=1
                  local.get 0
                  i32.const 1049604
                  i64.load align=1
                  i64.store align=1
                  local.get 1
                  i32.const 24
                  i32.add
                  call 23
                  local.get 1
                  i64.const -9223372032559808500
                  i64.store offset=40 align=4
                  local.get 1
                  local.get 0
                  i32.store offset=36
                  local.get 1
                  i32.const 12
                  i32.store offset=32
                  local.get 1
                  i64.const 4294967299
                  i64.store offset=24 align=4
                  br 6 (;@1;)
                end
                i32.const 1074793188
                i32.load8_u
                drop
                i32.const 13
                call 35
                local.tee 0
                i32.eqz
                br_if 3 (;@3;)
                local.get 0
                i32.const 5
                i32.add
                i32.const 1049645
                i64.load align=1
                i64.store align=1
                local.get 0
                i32.const 1049640
                i64.load align=1
                i64.store align=1
                local.get 1
                i32.const 24
                i32.add
                call 23
                local.get 1
                i64.const -9223372032559808499
                i64.store offset=36 align=4
                local.get 1
                local.get 0
                i32.store offset=32
                local.get 1
                i64.const 55834574850
                i64.store offset=24 align=4
                br 5 (;@1;)
              end
              local.get 1
              local.get 1
              i32.const 56
              i32.add
              i32.const 4
              i32.or
              i32.store offset=80
              local.get 5
              i32.const 1
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 1051360
                local.get 3
                i32.store
                i32.const 1051356
                i32.const 1
                i32.store8
              end
              local.get 1
              i32.const 1
              i32.store offset=100
              local.get 1
              i32.const 1049596
              i32.store offset=96
              local.get 1
              i64.const 1
              i64.store offset=108 align=4
              local.get 1
              i32.const 15
              i32.store offset=124
              local.get 1
              local.get 1
              i32.const 120
              i32.add
              i32.store offset=104
              local.get 1
              local.get 1
              i32.const 80
              i32.add
              i32.store offset=120
              local.get 1
              i32.const 84
              i32.add
              local.get 1
              i32.const 96
              i32.add
              call 38
              local.get 1
              i32.const 24
              i32.add
              call 23
              local.get 1
              i32.const 40
              i32.add
              local.get 1
              i32.const 92
              i32.add
              i32.load
              i32.store
              local.get 1
              i64.const 3
              i64.store offset=24 align=4
              local.get 1
              i32.const -2147483647
              i32.store offset=44
              local.get 1
              local.get 1
              i64.load offset=84 align=4
              i64.store offset=32 align=4
              br 4 (;@1;)
            end
            i32.const 1
            call 41
            unreachable
          end
          i32.const 1
          call 41
          unreachable
        end
        i32.const 1
        call 41
        unreachable
      end
      local.get 1
      i32.const 0
      i32.store offset=24
    end
    local.get 1
    i32.const 96
    i32.add
    local.get 1
    i32.const 24
    i32.add
    call 50
    local.get 1
    i32.load offset=104
    local.tee 0
    i32.const 536870913
    i32.lt_u
    if  ;; label = @1
      i32.const 1051364
      local.get 1
      i32.load offset=100
      local.tee 4
      local.get 0
      call 86
      drop
      local.get 0
      call 1
      local.get 1
      i32.load offset=96
      local.tee 0
      if  ;; label = @2
        local.get 4
        local.get 0
        call 20
      end
      local.get 1
      i32.const 128
      i32.add
      global.set 0
      return
    end
    local.get 0
    i32.const 536870912
    i32.const 1049656
    call 40
    unreachable)
  (func (;52;) (type 6) (result i32)
    i32.const 537922276)
  (func (;53;) (type 7))
  (func (;54;) (type 4) (param i32)
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
        i32.const 1074793624
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
          i32.const 1074793616
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
        call 57
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
                  i32.const 1074793628
                  i32.load
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1074793624
                  i32.load
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 2
                  local.get 3
                  i32.const -8
                  i32.and
                  local.tee 2
                  call 57
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
                  i32.const 1074793624
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1074793616
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
              call 83
              i32.const 0
              local.set 1
              i32.const 1074793648
              i32.const 1074793648
              i32.load
              i32.const 1
              i32.sub
              local.tee 0
              i32.store
              local.get 0
              br_if 4 (;@1;)
              i32.const 1074793336
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
              i32.const 1074793648
              i32.const 4095
              local.get 1
              local.get 1
              i32.const 4095
              i32.le_u
              select
              i32.store
              return
            end
            i32.const 1074793628
            local.get 1
            i32.store
            i32.const 1074793620
            i32.const 1074793620
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
            i32.const 1074793624
            i32.load
            local.get 1
            i32.eq
            if  ;; label = @5
              i32.const 1074793616
              i32.const 0
              i32.store
              i32.const 1074793624
              i32.const 0
              i32.store
            end
            local.get 0
            i32.const 1074793640
            i32.load
            local.tee 3
            i32.le_u
            br_if 3 (;@1;)
            i32.const 1074793628
            i32.load
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            local.set 0
            i32.const 1074793620
            i32.load
            local.tee 4
            i32.const 41
            i32.lt_u
            br_if 2 (;@2;)
            i32.const 1074793328
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
          i32.const 1074793624
          local.get 1
          i32.store
          i32.const 1074793616
          i32.const 1074793616
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
        i32.const 1074793344
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 1074793608
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
            i32.const 1074793608
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
      i32.const 1074793336
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
      i32.const 1074793648
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
      i32.const 1074793640
      i32.const -1
      i32.store
    end)
  (func (;55;) (type 3) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    i32.const 1
    i32.store offset=4
    local.get 3
    i64.const 4
    i64.store offset=8 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call 59
    unreachable)
  (func (;56;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
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
        if  ;; label = @3
          local.get 5
          i32.const 0
          local.get 3
          local.get 1
          i32.const 39
          i32.add
          i32.gt_u
          select
          br_if 1 (;@2;)
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
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.eqz
              if  ;; label = @6
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
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 0
              i32.const 8
              i32.sub
              local.tee 5
              local.get 3
              i32.add
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    local.get 3
                    i32.gt_u
                    if  ;; label = @9
                      local.get 7
                      i32.const 1074793628
                      i32.load
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 7
                      i32.const 1074793624
                      i32.load
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 7
                      i32.load offset=4
                      local.tee 6
                      i32.const 2
                      i32.and
                      br_if 4 (;@5;)
                      local.get 6
                      i32.const -8
                      i32.and
                      local.tee 6
                      local.get 3
                      i32.add
                      local.tee 3
                      local.get 1
                      i32.lt_u
                      br_if 4 (;@5;)
                      local.get 7
                      local.get 6
                      call 57
                      local.get 3
                      local.get 1
                      i32.sub
                      local.tee 2
                      i32.const 16
                      i32.lt_u
                      br_if 1 (;@8;)
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
                      call 58
                      local.get 0
                      return
                    end
                    local.get 3
                    local.get 1
                    i32.sub
                    local.tee 2
                    i32.const 15
                    i32.le_u
                    br_if 4 (;@4;)
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
                    call 58
                    local.get 0
                    return
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
                  local.get 0
                  return
                end
                i32.const 1074793616
                i32.load
                local.get 3
                i32.add
                local.tee 3
                local.get 1
                i32.lt_u
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 3
                  local.get 1
                  i32.sub
                  local.tee 2
                  i32.const 15
                  i32.le_u
                  if  ;; label = @8
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
                    br 1 (;@7;)
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
                i32.const 1074793624
                local.get 1
                i32.store
                i32.const 1074793616
                local.get 2
                i32.store
                local.get 0
                return
              end
              i32.const 1074793620
              i32.load
              local.get 3
              i32.add
              local.tee 3
              local.get 1
              i32.gt_u
              br_if 4 (;@1;)
            end
            local.get 2
            call 35
            local.tee 1
            i32.eqz
            if  ;; label = @5
              i32.const 0
              return
            end
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
            call 86
            local.get 0
            call 54
            local.set 0
          end
          local.get 0
          return
        end
        i32.const 1051205
        i32.const 46
        i32.const 1051252
        call 55
        unreachable
      end
      i32.const 1051268
      i32.const 46
      i32.const 1051316
      call 55
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
    i32.const 1074793620
    local.get 1
    i32.store
    i32.const 1074793628
    local.get 2
    i32.store
    local.get 0)
  (func (;57;) (type 2) (param i32 i32)
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
          i32.const 1074793200
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
          i32.const 1074793612
          i32.const 1074793612
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
        i32.const 1074793608
        i32.const 1074793608
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
  (func (;58;) (type 2) (param i32 i32)
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
        i32.const 1074793624
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
          i32.const 1074793616
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
        call 57
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
              i32.const 1074793628
              i32.load
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 1074793624
              i32.load
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 2
              call 57
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
              i32.const 1074793624
              i32.load
              i32.ne
              br_if 1 (;@4;)
              i32.const 1074793616
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
            call 83
            return
          end
          local.get 1
          i32.const 248
          i32.and
          i32.const 1074793344
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1074793608
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
              i32.const 1074793608
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
        i32.const 1074793628
        local.get 0
        i32.store
        i32.const 1074793620
        i32.const 1074793620
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
        i32.const 1074793624
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1074793616
        i32.const 0
        i32.store
        i32.const 1074793624
        i32.const 0
        i32.store
        return
      end
      i32.const 1074793624
      local.get 0
      i32.store
      i32.const 1074793616
      i32.const 1074793616
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
  (func (;59;) (type 2) (param i32 i32)
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
      i32.const 16
      local.get 2
      call 84
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
    i32.const 17
    local.get 2
    call 84
    unreachable)
  (func (;60;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
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
      call 41
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
    local.tee 4
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 0
      call 41
      unreachable
    end
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
    local.get 3
    i32.const 20
    i32.add
    call 61
    local.get 3
    i32.load offset=8
    i32.const 1
    i32.eq
    if  ;; label = @1
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=16
      local.set 6
      call 41
      unreachable
    end
    local.get 3
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 4
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;61;) (type 3) (param i32 i32 i32)
    (local i32)
    block (result i32)  ;; label = @1
      local.get 2
      i32.load offset=4
      if  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=8
          local.tee 3
          i32.eqz
          if  ;; label = @4
            br 1 (;@3;)
          end
          local.get 2
          i32.load
          local.get 3
          local.get 1
          call 56
          br 2 (;@1;)
        end
      end
      i32.const 1074793188
      i32.load8_u
      drop
      local.get 1
      call 35
    end
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 2
    i32.const 1
    local.get 2
    select
    i32.store offset=4
    local.get 0
    local.get 2
    i32.eqz
    i32.store)
  (func (;62;) (type 0) (param i32 i32 i32) (result i32)
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
                  call_indirect (type 0)
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
                call_indirect (type 0)
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
          call_indirect (type 0)
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
  (func (;63;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1049704
    i32.const 5
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0))
  (func (;64;) (type 0) (param i32 i32 i32) (result i32)
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
      call 60
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
    call 86
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;65;) (type 1) (param i32 i32) (result i32)
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
              call 41
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
              call 41
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
            call 61
            local.get 2
            i32.load offset=8
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 2
              i32.load offset=16
              drop
              local.get 2
              i32.load offset=12
              call 41
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
        call 60
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
      call 86
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
  (func (;66;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1049712
    local.get 1
    call 62)
  (func (;67;) (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.set 0
    local.get 1
    i32.load offset=28
    local.tee 2
    i32.const 16
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 2
      i32.const 32
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 0
        i64.load8_u
        local.get 1
        call 16
        return
      end
      local.get 0
      i32.load8_u
      local.get 1
      call 68
      return
    end
    local.get 0
    i32.load8_u
    local.get 1
    call 69)
  (func (;68;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 4
    global.set 0
    i32.const 127
    local.set 2
    loop  ;; label = @1
      local.get 4
      local.get 2
      local.tee 3
      i32.add
      local.tee 5
      local.get 0
      i32.const 15
      i32.and
      local.tee 2
      i32.const 48
      i32.or
      local.get 2
      i32.const 55
      i32.add
      local.get 2
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 3
      i32.const 1
      i32.sub
      local.set 2
      local.get 0
      i32.const 255
      i32.and
      local.tee 6
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 6
      i32.const 16
      i32.ge_u
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 129
    i32.ge_u
    if  ;; label = @1
      local.get 3
      i32.const 128
      i32.const 1050492
      call 15
      unreachable
    end
    local.get 1
    i32.const 1050508
    i32.const 2
    local.get 5
    i32.const 128
    local.get 3
    i32.sub
    call 14
    local.get 4
    i32.const 128
    i32.add
    global.set 0)
  (func (;69;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 4
    global.set 0
    i32.const 127
    local.set 2
    loop  ;; label = @1
      local.get 4
      local.get 2
      local.tee 3
      i32.add
      local.tee 5
      local.get 0
      i32.const 15
      i32.and
      local.tee 2
      i32.const 48
      i32.or
      local.get 2
      i32.const 87
      i32.add
      local.get 2
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 3
      i32.const 1
      i32.sub
      local.set 2
      local.get 0
      i32.const 255
      i32.and
      local.tee 6
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 6
      i32.const 16
      i32.ge_u
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 129
    i32.ge_u
    if  ;; label = @1
      local.get 3
      i32.const 128
      i32.const 1050492
      call 15
      unreachable
    end
    local.get 1
    i32.const 1050508
    i32.const 2
    local.get 5
    i32.const 128
    local.get 3
    i32.sub
    call 14
    local.get 4
    i32.const 128
    i32.add
    global.set 0)
  (func (;70;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call 16)
  (func (;71;) (type 5) (param i32 i32 i32 i32 i32) (result i32)
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
    local.get 4
    local.get 1
    i32.load offset=12
    call_indirect (type 0))
  (func (;72;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 30)
  (func (;73;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func (;74;) (type 5) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 5
    global.set 0
    i32.const 1
    local.set 7
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=5
      local.set 9
      local.get 0
      i32.load
      local.tee 6
      i32.load offset=28
      local.tee 8
      i32.const 4
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 6
        i32.load offset=20
        i32.const 1050455
        i32.const 1050452
        local.get 9
        i32.const 1
        i32.and
        local.tee 9
        select
        i32.const 2
        i32.const 3
        local.get 9
        select
        local.get 6
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 6
        i32.load offset=20
        local.get 1
        local.get 2
        local.get 6
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 6
        i32.load offset=20
        i32.const 1050404
        i32.const 2
        local.get 6
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 3
        local.get 6
        local.get 4
        call_indirect (type 1)
        local.set 7
        br 1 (;@1;)
      end
      local.get 9
      i32.const 1
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 6
        i32.load offset=20
        i32.const 1050457
        i32.const 3
        local.get 6
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 6
        i32.load offset=28
        local.set 8
      end
      local.get 5
      i32.const 1
      i32.store8 offset=27
      local.get 5
      local.get 6
      i64.load offset=20 align=4
      i64.store offset=12 align=4
      local.get 5
      i32.const 1050424
      i32.store offset=52
      local.get 5
      local.get 5
      i32.const 27
      i32.add
      i32.store offset=20
      local.get 5
      local.get 6
      i64.load offset=8 align=4
      i64.store offset=36 align=4
      local.get 6
      i64.load align=4
      local.set 10
      local.get 5
      local.get 8
      i32.store offset=56
      local.get 5
      local.get 6
      i32.load offset=16
      i32.store offset=44
      local.get 5
      local.get 6
      i32.load8_u offset=32
      i32.store8 offset=60
      local.get 5
      local.get 10
      i64.store offset=28 align=4
      local.get 5
      local.get 5
      i32.const 12
      i32.add
      local.tee 8
      i32.store offset=48
      local.get 8
      local.get 1
      local.get 2
      call 75
      br_if 0 (;@1;)
      local.get 8
      i32.const 1050404
      i32.const 2
      call 75
      br_if 0 (;@1;)
      local.get 3
      local.get 5
      i32.const 28
      i32.add
      local.get 4
      call_indirect (type 1)
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=48
      i32.const 1050460
      i32.const 2
      local.get 5
      i32.load offset=52
      i32.load offset=12
      call_indirect (type 0)
      local.set 7
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    local.get 7
    i32.store8 offset=4
    local.get 5
    i32.const -64
    i32.sub
    global.set 0
    local.get 0)
  (func (;75;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.sub
    local.set 14
    local.get 0
    i32.load offset=4
    local.set 10
    local.get 0
    i32.load
    local.set 11
    local.get 0
    i32.load offset=8
    local.set 12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        br_if 1 (;@1;)
        block (result i32)  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 1
              local.get 3
              i32.add
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    local.get 3
                    i32.sub
                    local.tee 7
                    i32.const 7
                    i32.le_u
                    if  ;; label = @9
                      local.get 2
                      local.get 3
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 2
                      local.set 3
                      br 5 (;@4;)
                    end
                    block  ;; label = @9
                      local.get 5
                      i32.const 3
                      i32.add
                      i32.const -4
                      i32.and
                      local.tee 6
                      local.get 5
                      i32.sub
                      local.tee 4
                      if  ;; label = @10
                        i32.const 0
                        local.set 0
                        loop  ;; label = @11
                          local.get 0
                          local.get 5
                          i32.add
                          i32.load8_u
                          i32.const 10
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 4
                          local.get 0
                          i32.const 1
                          i32.add
                          local.tee 0
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 4
                        local.get 7
                        i32.const 8
                        i32.sub
                        local.tee 0
                        i32.le_u
                        br_if 1 (;@9;)
                        br 3 (;@7;)
                      end
                      local.get 7
                      i32.const 8
                      i32.sub
                      local.set 0
                    end
                    loop  ;; label = @9
                      i32.const 16843008
                      local.get 6
                      i32.load
                      local.tee 9
                      i32.const 168430090
                      i32.xor
                      i32.sub
                      local.get 9
                      i32.or
                      i32.const 16843008
                      local.get 6
                      i32.const 4
                      i32.add
                      i32.load
                      local.tee 9
                      i32.const 168430090
                      i32.xor
                      i32.sub
                      local.get 9
                      i32.or
                      i32.and
                      i32.const -2139062144
                      i32.and
                      i32.const -2139062144
                      i32.ne
                      br_if 2 (;@7;)
                      local.get 6
                      i32.const 8
                      i32.add
                      local.set 6
                      local.get 4
                      i32.const 8
                      i32.add
                      local.tee 4
                      local.get 0
                      i32.le_u
                      br_if 0 (;@9;)
                    end
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 0
                  loop  ;; label = @8
                    local.get 0
                    local.get 5
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 7
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 2
                  local.set 3
                  br 3 (;@4;)
                end
                local.get 4
                local.get 7
                i32.eq
                if  ;; label = @7
                  local.get 2
                  local.set 3
                  br 3 (;@4;)
                end
                local.get 4
                local.get 5
                i32.add
                local.set 6
                local.get 2
                local.get 4
                i32.sub
                local.get 3
                i32.sub
                local.set 7
                i32.const 0
                local.set 0
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 0
                    local.get 6
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 7
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 2
                  local.set 3
                  br 3 (;@4;)
                end
                local.get 0
                local.get 4
                i32.add
                local.set 0
              end
              local.get 0
              local.get 3
              i32.add
              local.tee 4
              i32.const 1
              i32.add
              local.set 3
              block  ;; label = @6
                local.get 2
                local.get 4
                i32.le_u
                br_if 0 (;@6;)
                local.get 0
                local.get 5
                i32.add
                i32.load8_u
                i32.const 10
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 5
                local.get 3
                local.tee 4
                br 3 (;@3;)
              end
              local.get 2
              local.get 3
              i32.ge_u
              br_if 0 (;@5;)
            end
          end
          local.get 2
          local.get 8
          i32.eq
          br_if 2 (;@1;)
          i32.const 1
          local.set 5
          local.get 8
          local.set 4
          local.get 2
        end
        local.set 0
        block  ;; label = @3
          local.get 12
          i32.load8_u
          if  ;; label = @4
            local.get 11
            i32.const 1050448
            i32.const 4
            local.get 10
            i32.load offset=12
            call_indirect (type 0)
            br_if 1 (;@3;)
          end
          i32.const 0
          local.set 6
          local.get 0
          local.get 8
          i32.ne
          if  ;; label = @4
            local.get 0
            local.get 14
            i32.add
            i32.load8_u
            i32.const 10
            i32.eq
            local.set 6
          end
          local.get 0
          local.get 8
          i32.sub
          local.set 0
          local.get 1
          local.get 8
          i32.add
          local.set 7
          local.get 12
          local.get 6
          i32.store8
          local.get 4
          local.set 8
          local.get 11
          local.get 7
          local.get 0
          local.get 10
          i32.load offset=12
          call_indirect (type 0)
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      i32.const 1
      local.set 13
    end
    local.get 13)
  (func (;76;) (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 1050448
      i32.const 4
      local.get 2
      i32.load offset=12
      call_indirect (type 0)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 0
    local.get 1
    i32.const 10
    i32.eq
    i32.store8
    local.get 3
    local.get 1
    local.get 2
    i32.load offset=16
    call_indirect (type 1))
  (func (;77;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1050424
    local.get 1
    call 62)
  (func (;78;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 2
              local.get 0
              i32.load offset=12
              i32.const -2147483648
              i32.xor
              local.tee 3
              local.get 3
              i32.const 4
              i32.ge_u
              select
              i32.const 1
              i32.sub
              br_table 1 (;@4;) 3 (;@2;) 2 (;@3;) 0 (;@5;)
            end
            local.get 2
            i32.const 12
            i32.add
            i32.const 0
            i32.store8
            local.get 2
            i32.const 0
            i32.store offset=8
            local.get 1
            local.get 2
            i32.const 8
            i32.add
            i32.const 1
            call 47
            br 3 (;@1;)
          end
          local.get 2
          i32.const 1
          i32.store8 offset=8
          local.get 2
          i32.const 0
          i32.store offset=9 align=1
          local.get 1
          local.get 2
          i32.const 8
          i32.add
          i32.const 1
          call 47
          local.get 0
          i32.load offset=8
          local.set 6
          local.get 0
          i32.load offset=4
          local.set 0
          local.get 2
          i32.const 12
          i32.add
          i32.const 0
          i32.store8
          local.get 2
          i32.const 0
          i32.store offset=8
          local.get 6
          local.set 3
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const 8
                i32.add
                local.get 4
                i32.add
                local.tee 5
                local.get 3
                i32.store8
                local.get 3
                i32.const 128
                i32.lt_u
                br_if 0 (;@6;)
                local.get 5
                local.get 3
                i32.const 128
                i32.or
                i32.store8
                local.get 3
                i32.const 7
                i32.shr_u
                local.set 3
                i32.const 5
                local.set 5
                local.get 4
                i32.const 1
                i32.add
                local.tee 4
                i32.const 5
                i32.ne
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
            end
            local.get 4
            i32.const 1
            i32.add
            local.set 5
          end
          local.get 1
          local.get 2
          i32.const 8
          i32.add
          local.get 5
          call 47
          local.get 1
          local.get 0
          local.get 6
          call 47
          br 2 (;@1;)
        end
        local.get 2
        i32.const 3
        i32.store8 offset=8
        local.get 2
        i32.const 0
        i32.store offset=9 align=1
        local.get 1
        local.get 2
        i32.const 8
        i32.add
        i32.const 1
        call 47
        local.get 0
        i32.load offset=4
        local.set 6
        local.get 0
        i32.load offset=8
        local.set 0
        local.get 2
        i32.const 12
        i32.add
        i32.const 0
        i32.store8
        local.get 2
        i32.const 0
        i32.store offset=8
        local.get 0
        local.set 3
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 8
              i32.add
              local.get 4
              i32.add
              local.tee 5
              local.get 3
              i32.store8
              local.get 3
              i32.const 128
              i32.lt_u
              br_if 0 (;@5;)
              local.get 5
              local.get 3
              i32.const 128
              i32.or
              i32.store8
              local.get 3
              i32.const 7
              i32.shr_u
              local.set 3
              i32.const 5
              local.set 5
              local.get 4
              i32.const 1
              i32.add
              local.tee 4
              i32.const 5
              i32.ne
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 5
        end
        local.get 1
        local.get 2
        i32.const 8
        i32.add
        local.get 5
        call 47
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 6
        local.get 0
        i32.const 4
        i32.shl
        i32.add
        local.set 9
        local.get 2
        i32.const 12
        i32.add
        local.set 7
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.load
                  i32.const 1
                  i32.sub
                  br_table 1 (;@6;) 2 (;@5;) 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store8
                local.get 2
                i32.const 0
                i32.store offset=8
                local.get 1
                local.get 2
                i32.const 8
                i32.add
                i32.const 1
                call 47
                br 2 (;@4;)
              end
              local.get 2
              i32.const 1
              i32.store8 offset=8
              i32.const 0
              local.set 4
              local.get 2
              i32.const 0
              i32.store offset=9 align=1
              local.get 1
              local.get 2
              i32.const 8
              i32.add
              i32.const 1
              call 47
              local.get 6
              i32.load offset=12
              local.set 0
              local.get 6
              i32.load offset=8
              local.set 8
              local.get 7
              i32.const 0
              i32.store8
              local.get 2
              i32.const 0
              i32.store offset=8
              local.get 0
              local.set 3
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.const 8
                    i32.add
                    local.get 4
                    i32.add
                    local.tee 5
                    local.get 3
                    i32.store8
                    local.get 3
                    i32.const 128
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 3
                    i32.const 128
                    i32.or
                    i32.store8
                    local.get 3
                    i32.const 7
                    i32.shr_u
                    local.set 3
                    i32.const 5
                    local.set 5
                    local.get 4
                    i32.const 1
                    i32.add
                    local.tee 4
                    i32.const 5
                    i32.ne
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                end
                local.get 4
                i32.const 1
                i32.add
                local.set 5
              end
              local.get 1
              local.get 2
              i32.const 8
              i32.add
              local.get 5
              call 47
              local.get 1
              local.get 8
              local.get 0
              call 47
              br 1 (;@4;)
            end
            local.get 2
            i32.const 2
            i32.store8 offset=8
            i32.const 0
            local.set 4
            local.get 2
            i32.const 0
            i32.store offset=9 align=1
            local.get 1
            local.get 2
            i32.const 8
            i32.add
            i32.const 1
            call 47
            local.get 6
            i32.load offset=12
            local.set 0
            local.get 6
            i32.load offset=8
            local.set 8
            local.get 7
            i32.const 0
            i32.store8
            local.get 2
            i32.const 0
            i32.store offset=8
            local.get 0
            local.set 3
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 8
                  i32.add
                  local.get 4
                  i32.add
                  local.tee 5
                  local.get 3
                  i32.store8
                  local.get 3
                  i32.const 128
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 3
                  i32.const 128
                  i32.or
                  i32.store8
                  local.get 3
                  i32.const 7
                  i32.shr_u
                  local.set 3
                  i32.const 5
                  local.set 5
                  local.get 4
                  i32.const 1
                  i32.add
                  local.tee 4
                  i32.const 5
                  i32.ne
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
              end
              local.get 4
              i32.const 1
              i32.add
              local.set 5
            end
            local.get 1
            local.get 2
            i32.const 8
            i32.add
            local.get 5
            call 47
            local.get 1
            local.get 8
            local.get 0
            call 47
          end
          local.get 6
          i32.const 16
          i32.add
          local.tee 6
          local.get 9
          i32.ne
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 2
      i32.const 2
      i32.store8 offset=8
      local.get 2
      i32.const 0
      i32.store offset=9 align=1
      local.get 1
      local.get 2
      i32.const 8
      i32.add
      i32.const 1
      call 47
      local.get 0
      i32.load offset=8
      local.set 6
      local.get 0
      i32.load offset=4
      local.set 7
      local.get 2
      i32.const 12
      i32.add
      i32.const 0
      i32.store8
      local.get 2
      i32.const 0
      i32.store offset=8
      local.get 6
      local.set 3
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.get 4
            i32.add
            local.tee 5
            local.get 3
            i32.store8
            local.get 3
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 5
            local.get 3
            i32.const 128
            i32.or
            i32.store8
            local.get 3
            i32.const 7
            i32.shr_u
            local.set 3
            i32.const 5
            local.set 5
            local.get 4
            i32.const 1
            i32.add
            local.tee 4
            i32.const 5
            i32.ne
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 5
      end
      local.get 1
      local.get 2
      i32.const 8
      i32.add
      local.get 5
      call 47
      local.get 1
      local.get 7
      local.get 6
      call 47
      local.get 1
      local.get 0
      i32.load offset=16
      local.get 0
      i32.load offset=20
      call 48
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;79;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 5
    global.set 0
    local.get 1
    i32.load
    local.set 8
    local.get 1
    i32.load offset=4
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 5
          local.set 10
          local.get 3
          local.tee 2
          i32.const 5
          i32.eq
          br_if 1 (;@2;)
          local.get 9
          local.get 2
          local.get 8
          i32.add
          local.tee 4
          i32.eq
          if  ;; label = @4
            i32.const 4
            local.set 10
            br 2 (;@2;)
          end
          local.get 1
          local.get 4
          i32.const 1
          i32.add
          i32.store
          local.get 2
          i32.const 1
          i32.add
          local.set 3
          local.get 4
          i32.load8_s
          local.tee 4
          i32.const 127
          i32.and
          local.get 6
          i32.shl
          local.get 7
          i32.or
          local.set 7
          local.get 6
          i32.const 7
          i32.add
          local.set 6
          local.get 4
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 4
        i32.eq
        local.get 4
        i32.const 15
        i32.gt_u
        i32.and
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 7
          local.get 9
          local.get 3
          local.get 8
          i32.add
          local.tee 2
          i32.sub
          i32.le_u
          if  ;; label = @4
            local.get 1
            local.get 2
            local.get 7
            i32.add
            i32.store
            local.get 5
            i32.const 4
            i32.add
            local.get 2
            local.get 7
            call 44
            local.get 5
            i32.load offset=4
            i32.eqz
            if  ;; label = @5
              i32.const 0
              local.set 6
              local.get 5
              i32.load offset=12
              local.tee 2
              i32.const 0
              i32.ge_s
              if (result i32)  ;; label = @6
                local.get 5
                i32.load offset=8
                local.set 4
                local.get 2
                i32.eqz
                if  ;; label = @7
                  i32.const 0
                  local.set 1
                  i32.const 1
                  local.set 3
                  br 4 (;@3;)
                end
                i32.const 1074793188
                i32.load8_u
                drop
                local.get 2
                local.set 1
                local.get 2
                call 35
                local.tee 3
                br_if 3 (;@3;)
                i32.const 1
              else
                local.get 6
              end
              local.get 2
              local.set 12
              call 41
              unreachable
            end
            local.get 0
            i32.const -2147483648
            i32.store
            local.get 0
            i32.const 8
            i32.store8 offset=4
            br 3 (;@1;)
          end
          local.get 0
          i32.const -2147483648
          i32.store
          local.get 0
          i32.const 4
          i32.store8 offset=4
          br 2 (;@1;)
        end
        local.get 3
        local.get 4
        local.get 2
        call 86
        local.set 3
        local.get 0
        local.get 2
        i32.store offset=8
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      i32.const -2147483648
      i32.store
      local.get 0
      local.get 10
      i32.store8 offset=4
    end
    local.get 5
    i32.const 16
    i32.add
    global.set 0)
  (func (;80;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      local.get 2
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      i32.add
      i32.const 1
      i32.sub
      i32.const 0
      local.get 3
      i32.sub
      i32.and
      i64.extend_i32_u
      i32.const 8
      i32.const 4
      local.get 4
      i32.const 1
      i32.eq
      select
      local.tee 9
      local.get 1
      i32.load
      local.tee 6
      i32.const 1
      i32.shl
      local.tee 7
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      local.get 2
      local.get 7
      i32.lt_u
      select
      local.tee 2
      local.get 2
      local.get 9
      i32.lt_u
      select
      local.tee 9
      i64.extend_i32_u
      i64.mul
      local.tee 10
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      br_if 0 (;@1;)
      local.get 10
      i32.wrap_i64
      local.tee 7
      i32.const -2147483648
      local.get 3
      i32.sub
      i32.gt_u
      br_if 0 (;@1;)
      local.get 5
      local.get 6
      if (result i32)  ;; label = @2
        local.get 5
        local.get 4
        local.get 6
        i32.mul
        i32.store offset=28
        local.get 5
        local.get 1
        i32.load offset=4
        i32.store offset=20
        local.get 3
      else
        i32.const 0
      end
      local.tee 2
      i32.store offset=24
      local.get 5
      i32.const 8
      i32.add
      local.set 6
      block (result i32)  ;; label = @2
        local.get 5
        i32.const 20
        i32.add
        local.tee 8
        i32.load offset=4
        if  ;; label = @3
          local.get 8
          i32.load offset=8
          local.tee 4
          if  ;; label = @4
            local.get 8
            i32.load
            local.get 4
            local.get 7
            call 56
            br 2 (;@2;)
          end
        end
        local.get 7
        if  ;; label = @3
          i32.const 1074793188
          i32.load8_u
          drop
          local.get 7
          call 35
          br 1 (;@2;)
        end
        local.get 3
      end
      local.set 4
      local.get 6
      local.get 7
      i32.store offset=8
      local.get 6
      local.get 4
      local.get 3
      local.get 4
      select
      i32.store offset=4
      local.get 6
      local.get 4
      i32.eqz
      i32.store
      local.get 5
      i32.load offset=8
      i32.eqz
      if  ;; label = @2
        local.get 5
        i32.load offset=12
        local.set 3
        local.get 1
        local.get 9
        i32.store
        local.get 1
        local.get 3
        i32.store offset=4
        i32.const -2147483647
        local.set 8
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=16
      local.set 2
      local.get 5
      i32.load offset=12
      local.set 8
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 8
    i32.store
    local.get 5
    i32.const 32
    i32.add
    global.set 0)
  (func (;81;) (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    i32.load offset=28
    local.tee 2
    i32.const 16
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 2
      i32.const 32
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 0
        i64.load8_u
        local.get 1
        call 16
        return
      end
      local.get 0
      i32.load8_u
      local.get 1
      call 68
      return
    end
    local.get 0
    i32.load8_u
    local.get 1
    call 69)
  (func (;82;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func (;83;) (type 2) (param i32 i32)
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
    i32.const 1074793200
    i32.add
    local.set 4
    i32.const 1
    local.get 2
    i32.shl
    local.tee 3
    i32.const 1074793612
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
      i32.const 1074793612
      i32.const 1074793612
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
  (func (;84;) (type 3) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const 1074793196
    i32.const 1074793196
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
        i32.const 1074793656
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          i32.const 1074793652
          i32.const 1074793652
          i32.load
          i32.const 1
          i32.add
          i32.store
          i32.const 1074793192
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
      i32.const 1074793656
      i32.const 0
      i32.store8
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      unreachable
    end
    unreachable)
  (func (;85;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;86;) (type 0) (param i32 i32 i32) (result i32)
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
  (func (;87;) (type 3) (param i32 i32 i32)
    (local i32 i32)
    local.get 2
    i32.const 16
    i32.ge_u
    if  ;; label = @1
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 3
      i32.add
      local.set 4
      local.get 3
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          local.get 1
          i32.store8
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          local.get 4
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 4
      local.get 2
      local.get 3
      i32.sub
      local.tee 2
      i32.const -4
      i32.and
      local.tee 3
      i32.add
      local.set 0
      local.get 3
      i32.const 0
      i32.gt_s
      if  ;; label = @2
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 3
        loop  ;; label = @3
          local.get 4
          local.get 3
          i32.store
          local.get 4
          i32.const 4
          i32.add
          local.tee 4
          local.get 0
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.const 3
      i32.and
      local.set 2
    end
    local.get 2
    if  ;; label = @1
      local.get 0
      local.get 2
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.store8
        local.get 0
        i32.const 1
        i32.add
        local.tee 0
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end)
  (func (;88;) (type 13) (param i32 i64 i64 i64)
    (local i64 i64 i64 i64 i64)
    local.get 0
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 4
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 5
    i64.mul
    local.tee 6
    local.get 5
    local.get 3
    i64.const 32
    i64.shr_u
    local.tee 7
    i64.mul
    local.tee 5
    local.get 4
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 8
    i64.mul
    i64.add
    local.tee 1
    i64.const 32
    i64.shl
    i64.add
    local.tee 4
    i64.store
    local.get 0
    local.get 4
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    local.get 7
    local.get 8
    i64.mul
    local.get 1
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i64.const 32
    i64.shr_u
    i64.or
    i64.add
    i64.add
    local.get 2
    local.get 3
    i64.mul
    i64.add
    i64.store offset=8)
  (table (;0;) 28 28 funcref)
  (memory (;0;) 16401)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1074793657))
  (global (;2;) i32 (i32.const 1074793664))
  (export "memory" (memory 0))
  (export "smart_nft_view_command_buffer" (func 33))
  (export "smart_nft_view_command" (func 34))
  (export "smart_nft_exec_ret" (func 51))
  (export "smart_nft_exec_buffer" (func 52))
  (export "smart_nft_exec_buffer_free" (func 53))
  (export "smart_nft_view_command_buffer_free" (func 53))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func 5 3 8 2 10 11 67 70 32 9 29 72 73 7 4 82 85 19 31 19 64 65 66 63 75 76 77)
  (data (;0;) (i32.const 1048576) "\12\00\00\00\14\00\00\00\04\00\00\00\13\00\00\00InvalidParamsInvalidPrincipalNftCreateErrorNftSupplyCapReachedUtf8Errorvalid_up_toerror_lenOkErrFromUtf8Errorbyteserror\00P\05\10\00[\00\00\00P\00\00\003\00\00\00usize overflow when calculating b64 length\00\00P\05\10\00[\00\00\00W\00\00\00\0a\00\00\00integer overflow when calculating buffer size/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/base64-0.22.1/src/engine/mod.rs\01\01\10\00_\00\00\00y\00\00\00\12\00\00\00Invalid UTF8\01\01\10\00_\00\00\00\7f\00\00\00$\00\00\00InvalidProgramMint moduleSet NFT logosrc/nft1_program_alpha/view/src/lib.rs\00\b1\01\10\00&\00\00\007\00\00\00>\00\00\00\01\00\01ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff>\ff\ff\ff?456789:;<=\ff\ff\ff\ff\ff\ff\ff\00\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\ff\ff\ff\ff\ff\ff\1a\1b\1c\1d\1e\1f !\22#$%&'()*+,-./0123\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ffLogo updatePreviewdata:;base64,\00\00=\03\10\00\05\00\00\00B\03\10\00\08\00\00\00khctv-a5cny-trukc-no4o2-lztmf-rs2c6-ayueh-ga6ln-kzidc-fcm4c-3qeomega_program\b1\01\10\00&\00\00\00\81\00\00\00\16\00\00\00\b1\01\10\00&\00\00\00\86\00\00\00\19\00\00\00\b1\01\10\00&\00\00\00\98\00\00\002\00\00\00Mint exec invalidMint exec result: \00\e9\03\10\00\12\00\00\00Mint invalidMint result: \00\00\00\10\04\10\00\0d\00\00\00Invalid input\00\00\00\b1\01\10\00&\00\00\00\ba\00\00\00\15\00\00\00\0d\00\00\00\10\00\00\00\0e\00\00\00\13\00\00\00\10\00\10\00\1d\00\10\00-\00\10\00;\00\10\00Error\00\00\00\14\00\00\00\0c\00\00\00\04\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00capacity overflow\00\00\00\88\04\10\00\11\00\00\00alloc/src/raw_vec.rs\a4\04\10\00\14\00\00\00\18\00\00\00\05")
  (data (;1;) (i32.const 1049808) "\01\00\00\00\18\00\00\00a formatting trait implementation returned an error when the underlying stream did notalloc/src/fmt.rs\00\00.\05\10\00\10\00\00\00~\02\00\00\0e\00\00\00/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/base64-0.22.1/src/encode.rs\00P\05\10\00[\00\00\00\8a\00\00\00\09\00\00\00/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/base64-0.22.1/src/engine/general_purpose/mod.rs\00\bc\05\10\00o\00\00\00\96\00\00\00\0d\00\00\00\bc\05\10\00o\00\00\00\98\00\00\00@\00\00\00\bc\05\10\00o\00\00\00\97\00\00\00\0d\00\00\00\bc\05\10\00o\00\00\00\9a\00\00\00\0d\00\00\00\bc\05\10\00o\00\00\00\9e\00\00\00\0d\00\00\00\bc\05\10\00o\00\00\00\9f\00\00\00\0d\00\00\00\bc\05\10\00o\00\00\00\87\00\00\00%\00\00\00\bc\05\10\00o\00\00\00\88\00\00\00+\00\00\00\bc\05\10\00o\00\00\00@\00\00\00\1b\00\00\00\bc\05\10\00o\00\00\00B\00\00\00 \00\00\00NoneSome)\00\00\00\01\00\00\00\00\00\00\00[index out of bounds: the len is  but the index is \00\e1\06\10\00 \00\00\00\01\07\10\00\12\00\00\00: \00\00\01\00\00\00\00\00\00\00$\07\10\00\02\00\00\00\00\00\00\00\0c\00\00\00\04\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00     { ,  {\0a,\0a} }((\0a\0a]core/src/fmt/num.rs\00\00\00f\07\10\00\13\00\00\00f\00\00\00\17\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899assertion failed: *curr > 19\00\00f\07\10\00\13\00\00\00\0d\02\00\00\05\00\00\00range start index  out of range for slice of length \84\08\10\00\12\00\00\00\96\08\10\00\22\00\00\00range end index \c8\08\10\00\10\00\00\00\96\08\10\00\22\00\00\00slice index starts at  but ends at \00\e8\08\10\00\16\00\00\00\fe\08\10\00\0d\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01")
  (data (;2;) (i32.const 1051102) "\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04")
  (data (;3;) (i32.const 1051164) "/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00\1c\0a\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\1c\0a\10\00)\00\00\00\ae\04\00\00\0d")
  (data (;4;) (i32.const 1051335) "\80"))
