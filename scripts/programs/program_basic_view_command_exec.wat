(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (result i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32) (result i32)))
  (type (;9;) (func (param i64 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32)))
  (import "smart_nft" "smart_nft_exec" (func (;0;) (type 3)))
  (import "smart_nft" "smart_nft_view_command_ret" (func (;1;) (type 3)))
  (func (;2;) (type 3) (param i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 2
          local.get 0
          i32.load offset=12
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
          call 3
        end
        local.get 0
        i32.const 12
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
      call 3
    end)
  (func (;3;) (type 2) (param i32 i32)
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
        call 50
        return
      end
      i32.const 1050125
      i32.const 1050172
      call 44
      unreachable
    end
    i32.const 1050188
    i32.const 1050236
    call 44
    unreachable)
  (func (;4;) (type 3) (param i32)
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
          local.tee 3
          local.set 1
          local.get 0
          i32.load offset=8
          local.tee 2
          if  ;; label = @4
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
                call 3
              end
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 2
              i32.const 1
              i32.sub
              local.tee 2
              br_if 0 (;@5;)
            end
          end
          local.get 0
          i32.load
          local.tee 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          local.get 0
          i32.const 4
          i32.shl
          call 3
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.get 1
        call 3
        return
      end
      local.get 0
      i32.load
      local.tee 2
      if  ;; label = @2
        local.get 0
        i32.load offset=4
        local.get 2
        call 3
      end
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.get 1
      call 3
    end)
  (func (;5;) (type 3) (param i32)
    (local i32)
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
          call 4
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=8
        local.tee 1
        local.get 0
        i32.load offset=12
        call 6
        local.get 0
        i32.load offset=4
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.const 28
        i32.mul
        call 3
        return
      end
      local.get 0
      i32.const 4
      i32.add
      call 4
    end)
  (func (;6;) (type 2) (param i32 i32)
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
          call 3
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
          call 3
        end
        local.get 0
        i32.const 28
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        br_if 0 (;@2;)
      end
    end)
  (func (;7;) (type 5) (result i32)
    i32.const 1050252)
  (func (;8;) (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1074792076
    i32.load8_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block (result i32)  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 84
                            call 9
                            local.tee 6
                            if  ;; label = @13
                              i32.const 1074792076
                              i32.load8_u
                              drop
                              i32.const 6
                              call 9
                              local.tee 5
                              i32.eqz
                              br_if 12 (;@1;)
                              i32.const 1074792076
                              i32.load8_u
                              drop
                              local.get 5
                              i32.const 4
                              i32.add
                              i32.const 1048580
                              i32.load16_u align=1
                              i32.store16 align=1
                              local.get 5
                              i32.const 1048576
                              i32.load align=1
                              i32.store align=1
                              i32.const 19
                              call 9
                              local.tee 2
                              i32.eqz
                              br_if 1 (;@12;)
                              i32.const 1074792076
                              i32.load8_u
                              drop
                              local.get 2
                              i32.const 15
                              i32.add
                              i32.const 1048597
                              i32.load align=1
                              i32.store align=1
                              local.get 2
                              i32.const 8
                              i32.add
                              i32.const 1048590
                              i64.load align=1
                              i64.store align=1
                              local.get 2
                              i32.const 1048582
                              i64.load align=1
                              i64.store align=1
                              i32.const 6
                              call 9
                              local.tee 7
                              i32.eqz
                              br_if 12 (;@1;)
                              i32.const 1074792076
                              i32.load8_u
                              drop
                              local.get 7
                              i32.const 4
                              i32.add
                              i32.const 1048605
                              i32.load16_u align=1
                              i32.store16 align=1
                              local.get 7
                              i32.const 1048601
                              i32.load align=1
                              i32.store align=1
                              i32.const 32
                              call 9
                              local.tee 3
                              i32.eqz
                              br_if 2 (;@11;)
                              i32.const 1074792076
                              i32.load8_u
                              drop
                              local.get 3
                              i32.const 24
                              i32.add
                              i32.const 1048631
                              i64.load align=1
                              i64.store align=1
                              local.get 3
                              i32.const 16
                              i32.add
                              i32.const 1048623
                              i64.load align=1
                              i64.store align=1
                              local.get 3
                              i32.const 8
                              i32.add
                              i32.const 1048615
                              i64.load align=1
                              i64.store align=1
                              local.get 3
                              i32.const 1048607
                              i64.load align=1
                              i64.store align=1
                              i32.const 6
                              call 9
                              local.tee 8
                              i32.eqz
                              br_if 12 (;@1;)
                              i32.const 1074792076
                              i32.load8_u
                              drop
                              local.get 8
                              i32.const 4
                              i32.add
                              i32.const 1048643
                              i32.load16_u align=1
                              i32.store16 align=1
                              local.get 8
                              i32.const 1048639
                              i32.load align=1
                              i32.store align=1
                              i32.const 20
                              call 9
                              local.tee 4
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 6
                              i64.const 8589934612
                              i64.store offset=76 align=4
                              local.get 6
                              local.get 4
                              i32.store offset=72
                              local.get 6
                              i64.const 85899345926
                              i64.store offset=64 align=4
                              local.get 6
                              local.get 8
                              i32.store offset=60
                              local.get 6
                              i32.const 6
                              i32.store offset=56
                              local.get 6
                              i64.const 4294967328
                              i64.store offset=48 align=4
                              local.get 6
                              local.get 3
                              i32.store offset=44
                              local.get 6
                              i64.const 137438953478
                              i64.store offset=36 align=4
                              local.get 6
                              local.get 7
                              i32.store offset=32
                              local.get 6
                              i32.const 6
                              i32.store offset=28
                              local.get 6
                              i64.const 19
                              i64.store offset=20 align=4
                              local.get 6
                              local.get 2
                              i32.store offset=16
                              local.get 6
                              i64.const 81604378630
                              i64.store offset=8 align=4
                              local.get 6
                              local.get 5
                              i32.store offset=4
                              local.get 6
                              i32.const 6
                              i32.store
                              local.get 4
                              i32.const 16
                              i32.add
                              i32.const 1048661
                              i32.load align=1
                              i32.store align=1
                              local.get 4
                              i32.const 8
                              i32.add
                              i32.const 1048653
                              i64.load align=1
                              i64.store align=1
                              local.get 4
                              i32.const 1048645
                              i64.load align=1
                              i64.store align=1
                              local.get 0
                              i32.const 536870913
                              i32.ge_u
                              br_if 4 (;@9;)
                              local.get 1
                              local.get 0
                              i32.const 1050252
                              i32.add
                              i32.store offset=128
                              i32.const 0
                              local.set 2
                              i32.const 0
                              local.set 3
                              i32.const 0
                              local.set 5
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      loop  ;; label = @18
                                        local.get 3
                                        local.tee 4
                                        i32.const 5
                                        i32.eq
                                        local.get 0
                                        local.get 4
                                        i32.eq
                                        i32.or
                                        br_if 1 (;@17;)
                                        local.get 4
                                        i32.const 1
                                        i32.add
                                        local.set 3
                                        local.get 4
                                        i32.const 1050252
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
                                        br_if 0 (;@18;)
                                      end
                                      local.get 1
                                      local.get 4
                                      i32.const 1050253
                                      i32.add
                                      i32.store offset=124
                                      local.get 4
                                      i32.const 4
                                      i32.eq
                                      local.get 7
                                      i32.const 15
                                      i32.gt_u
                                      i32.and
                                      br_if 0 (;@17;)
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 5
                                          br_table 5 (;@14;) 0 (;@19;) 1 (;@18;) 2 (;@17;)
                                        end
                                        local.get 1
                                        i32.const 216
                                        i32.add
                                        local.get 1
                                        i32.const 124
                                        i32.add
                                        call 10
                                        local.get 1
                                        i32.load offset=228
                                        i32.const -2147483646
                                        i32.eq
                                        br_if 1 (;@17;)
                                        local.get 1
                                        local.get 1
                                        i64.load offset=221 align=1
                                        i64.store offset=160
                                        local.get 1
                                        local.get 1
                                        i32.const 228
                                        i32.add
                                        local.tee 0
                                        i32.load align=1
                                        i32.store offset=167 align=1
                                        local.get 1
                                        local.get 1
                                        i64.load offset=160
                                        i64.store offset=80
                                        local.get 1
                                        local.get 1
                                        i32.load offset=167 align=1
                                        i32.store offset=87 align=1
                                        local.get 1
                                        i32.const 0
                                        i32.store offset=92
                                        local.get 1
                                        i64.load offset=232 align=4
                                        local.set 11
                                        local.get 1
                                        i32.load offset=216
                                        local.set 3
                                        local.get 1
                                        local.get 1
                                        i32.load8_u offset=220
                                        i32.store8 offset=220
                                        local.get 1
                                        local.get 3
                                        i32.store offset=216
                                        local.get 0
                                        local.get 1
                                        i32.load offset=87 align=1
                                        i32.store align=1
                                        local.get 1
                                        local.get 1
                                        i64.load offset=80
                                        i64.store offset=221 align=1
                                        local.get 1
                                        local.get 11
                                        i64.store offset=232 align=4
                                        local.get 0
                                        i32.load
                                        i32.const -2147483647
                                        i32.ne
                                        br_if 2 (;@16;)
                                        local.get 1
                                        i32.const 92
                                        i32.add
                                        call 5
                                        local.get 1
                                        i32.const 104
                                        i32.add
                                        local.get 1
                                        i32.const 224
                                        i32.add
                                        i32.load
                                        i32.store
                                        local.get 1
                                        i32.const 2
                                        i32.store offset=92
                                        local.get 1
                                        i32.const -2147483647
                                        i32.store offset=108
                                        local.get 1
                                        local.get 1
                                        i64.load offset=216 align=4
                                        i64.store offset=96 align=4
                                        br 14 (;@4;)
                                      end
                                      local.get 3
                                      i32.const 1050252
                                      i32.add
                                      local.set 9
                                      local.get 0
                                      local.get 3
                                      i32.sub
                                      local.set 4
                                      i32.const 0
                                      local.set 2
                                      i32.const 0
                                      local.set 7
                                      i32.const 0
                                      local.set 0
                                      loop  ;; label = @18
                                        local.get 4
                                        i32.eqz
                                        local.get 7
                                        local.tee 5
                                        i32.const 5
                                        i32.eq
                                        i32.or
                                        br_if 1 (;@17;)
                                        local.get 4
                                        i32.const 1
                                        i32.sub
                                        local.set 4
                                        local.get 5
                                        i32.const 1
                                        i32.add
                                        local.set 7
                                        local.get 3
                                        local.get 5
                                        i32.add
                                        i32.const 1050252
                                        i32.add
                                        i32.load8_s
                                        local.tee 8
                                        i32.const 127
                                        i32.and
                                        local.get 2
                                        i32.shl
                                        local.get 0
                                        i32.or
                                        local.set 0
                                        local.get 2
                                        i32.const 7
                                        i32.add
                                        local.set 2
                                        local.get 8
                                        i32.const 0
                                        i32.lt_s
                                        br_if 0 (;@18;)
                                      end
                                      local.get 1
                                      local.get 7
                                      local.get 9
                                      i32.add
                                      i32.store offset=124
                                      local.get 5
                                      i32.const 4
                                      i32.eq
                                      local.get 8
                                      i32.const 15
                                      i32.gt_u
                                      i32.and
                                      br_if 0 (;@17;)
                                      local.get 1
                                      i32.const 216
                                      i32.add
                                      local.get 1
                                      i32.const 124
                                      i32.add
                                      call 10
                                      local.get 1
                                      i32.load offset=228
                                      local.tee 4
                                      i32.const -2147483646
                                      i32.ne
                                      br_if 2 (;@15;)
                                    end
                                    local.get 1
                                    i32.const 0
                                    i32.store offset=92
                                    br 12 (;@4;)
                                  end
                                  local.get 1
                                  i32.const 216
                                  i32.add
                                  call 2
                                  br 11 (;@4;)
                                end
                                local.get 1
                                local.get 1
                                i64.load offset=217 align=1
                                i64.store offset=160
                                local.get 1
                                local.get 1
                                i32.const 224
                                i32.add
                                i32.load align=1
                                i32.store offset=167 align=1
                                local.get 1
                                local.get 1
                                i64.load offset=160
                                i64.store offset=80
                                local.get 1
                                local.get 1
                                i32.load offset=167 align=1
                                i32.store offset=87 align=1
                                local.get 1
                                i32.const 0
                                i32.store offset=92
                                local.get 1
                                i64.load offset=232 align=4
                                local.set 11
                                local.get 1
                                i32.load8_u offset=216
                                local.set 2
                                local.get 1
                                i32.const 132
                                i32.add
                                local.get 1
                                i32.load offset=87 align=1
                                i32.store align=1
                                local.get 1
                                local.get 2
                                i32.store8 offset=124
                                local.get 1
                                local.get 1
                                i64.load offset=80
                                i64.store offset=125 align=1
                                local.get 1
                                local.get 11
                                i64.store offset=140 align=4
                                local.get 1
                                local.get 4
                                i32.store offset=136
                                i32.const -2147483646
                                i32.const -2147483644
                                local.get 0
                                local.get 6
                                i32.load offset=24
                                i32.eq
                                select
                                local.set 7
                                block  ;; label = @15
                                  local.get 6
                                  i32.load offset=52
                                  local.get 0
                                  i32.ne
                                  if  ;; label = @16
                                    local.get 0
                                    local.get 6
                                    i32.load offset=80
                                    i32.ne
                                    local.get 4
                                    i32.const -2147483647
                                    i32.ne
                                    i32.or
                                    br_if 1 (;@15;)
                                    local.get 1
                                    i32.load offset=124
                                    local.set 5
                                    local.get 1
                                    i32.load offset=128
                                    local.set 3
                                    local.get 1
                                    i32.load offset=132
                                    local.set 2
                                    local.get 1
                                    i32.const 1
                                    i32.store16 offset=252
                                    local.get 1
                                    local.get 2
                                    i32.store offset=248
                                    local.get 1
                                    i32.const 0
                                    i32.store offset=244
                                    local.get 1
                                    i32.const 1
                                    i32.store8 offset=240
                                    local.get 1
                                    i32.const 32
                                    i32.store offset=236
                                    local.get 1
                                    local.get 2
                                    i32.store offset=232
                                    local.get 1
                                    i32.const 0
                                    i32.store offset=228
                                    local.get 1
                                    local.get 2
                                    i32.store offset=224
                                    local.get 1
                                    local.get 3
                                    i32.store offset=220
                                    local.get 1
                                    i32.const 32
                                    i32.store offset=216
                                    local.get 1
                                    i32.const 160
                                    i32.add
                                    local.get 1
                                    i32.const 216
                                    i32.add
                                    call 11
                                    local.get 1
                                    i32.load offset=168
                                    i32.const 2
                                    i32.eq
                                    if  ;; label = @17
                                      local.get 1
                                      i32.const 72
                                      i32.add
                                      local.get 1
                                      i32.load offset=164
                                      local.tee 0
                                      i32.load offset=8
                                      local.get 0
                                      i32.load offset=12
                                      call 12
                                      local.get 1
                                      i32.const -64
                                      i32.sub
                                      local.get 1
                                      i32.load offset=72
                                      local.get 1
                                      i32.load offset=76
                                      call 13
                                      i32.const -2147483645
                                      local.set 7
                                      i32.const 0
                                      local.get 1
                                      i32.load8_u offset=65
                                      local.get 1
                                      i32.load8_u offset=64
                                      select
                                      local.set 0
                                    end
                                    local.get 1
                                    i32.load offset=160
                                    local.tee 4
                                    if  ;; label = @17
                                      local.get 1
                                      i32.load offset=164
                                      local.get 4
                                      i32.const 3
                                      i32.shl
                                      call 3
                                    end
                                    local.get 5
                                    i32.eqz
                                    br_if 10 (;@6;)
                                    local.get 3
                                    local.get 5
                                    call 3
                                    br 10 (;@6;)
                                  end
                                  local.get 4
                                  i32.const -2147483647
                                  i32.eq
                                  br_if 8 (;@7;)
                                  br 7 (;@8;)
                                end
                                local.get 4
                                i32.const -2147483647
                                i32.ne
                                br_if 6 (;@8;)
                                local.get 1
                                i32.load offset=124
                                local.tee 4
                                i32.eqz
                                br_if 8 (;@6;)
                                local.get 1
                                i32.load offset=128
                                local.get 4
                                call 3
                                br 8 (;@6;)
                              end
                              local.get 1
                              local.get 1
                              i32.load offset=167 align=1
                              i32.store offset=87 align=1
                              local.get 1
                              local.get 1
                              i64.load offset=160
                              i64.store offset=80
                              local.get 1
                              i32.const 0
                              i32.store offset=92
                              local.get 1
                              i32.const 92
                              i32.add
                              call 5
                              local.get 1
                              i32.const 3
                              i32.store offset=104
                              local.get 1
                              local.get 6
                              i32.store offset=100
                              local.get 1
                              i64.const 12884901889
                              i64.store offset=92 align=4
                              i32.const 0
                              br 10 (;@3;)
                            end
                            unreachable
                          end
                          i32.const 1
                          call 14
                          unreachable
                        end
                        i32.const 1
                        call 14
                        unreachable
                      end
                      i32.const 1
                      call 14
                      unreachable
                    end
                    local.get 0
                    i32.const 536870912
                    i32.const 1048716
                    call 15
                    unreachable
                  end
                  local.get 1
                  i32.const 124
                  i32.add
                  call 2
                  br 1 (;@6;)
                end
                local.get 1
                i32.load offset=124
                local.set 8
                local.get 1
                i32.load offset=128
                local.set 9
                local.get 1
                i32.load offset=132
                local.set 4
                local.get 1
                i32.const 1
                i32.store16 offset=252
                local.get 1
                local.get 4
                i32.store offset=248
                local.get 1
                i32.const 0
                i32.store offset=244
                local.get 1
                i32.const 1
                i32.store8 offset=240
                local.get 1
                i32.const 32
                i32.store offset=236
                local.get 1
                local.get 4
                i32.store offset=232
                local.get 1
                i32.const 0
                i32.store offset=228
                local.get 1
                local.get 4
                i32.store offset=224
                local.get 1
                local.get 9
                i32.store offset=220
                local.get 1
                i32.const 32
                i32.store offset=216
                local.get 1
                i32.const 148
                i32.add
                local.get 1
                i32.const 216
                i32.add
                call 11
                block  ;; label = @7
                  local.get 1
                  i32.load offset=156
                  i32.const 3
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 1
                  i32.const 56
                  i32.add
                  local.get 1
                  i32.load offset=152
                  local.tee 0
                  i32.load offset=8
                  local.get 0
                  i32.load offset=12
                  call 12
                  local.get 1
                  i32.load offset=56
                  local.set 4
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            i32.load offset=60
                            local.tee 3
                            br_table 4 (;@8;) 0 (;@12;) 1 (;@11;)
                          end
                          i32.const 0
                          local.set 3
                          i32.const 1
                          local.set 2
                          local.get 4
                          i32.load8_u
                          i32.const 43
                          i32.sub
                          br_table 3 (;@8;) 1 (;@10;) 3 (;@8;) 1 (;@10;)
                        end
                        local.get 4
                        i32.load8_u
                        i32.const 43
                        i32.eq
                        if  ;; label = @11
                          local.get 4
                          i32.const 1
                          i32.add
                          local.set 4
                          local.get 3
                          i32.const 10
                          i32.lt_u
                          local.get 3
                          i32.const 1
                          i32.sub
                          local.tee 2
                          local.set 3
                          br_if 1 (;@10;)
                          br 2 (;@9;)
                        end
                        local.get 3
                        local.tee 2
                        i32.const 9
                        i32.ge_u
                        br_if 1 (;@9;)
                      end
                      i32.const 0
                      local.set 3
                      loop  ;; label = @10
                        local.get 4
                        i32.load8_u
                        i32.const 48
                        i32.sub
                        local.tee 5
                        i32.const 9
                        i32.gt_u
                        if  ;; label = @11
                          i32.const 0
                          local.set 3
                          br 3 (;@8;)
                        end
                        local.get 4
                        i32.const 1
                        i32.add
                        local.set 4
                        local.get 5
                        local.get 3
                        i32.const 10
                        i32.mul
                        i32.add
                        local.set 3
                        local.get 2
                        i32.const 1
                        i32.sub
                        local.tee 2
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    i32.const 0
                    local.set 5
                    local.get 3
                    local.set 2
                    loop  ;; label = @9
                      local.get 2
                      i32.eqz
                      if  ;; label = @10
                        local.get 5
                        local.set 3
                        br 2 (;@8;)
                      end
                      i32.const 0
                      local.set 3
                      local.get 4
                      i32.load8_u
                      i32.const 48
                      i32.sub
                      local.tee 7
                      i32.const 9
                      i32.gt_u
                      br_if 1 (;@8;)
                      local.get 5
                      i64.extend_i32_u
                      i64.const 10
                      i64.mul
                      local.tee 11
                      i64.const 32
                      i64.shr_u
                      i32.wrap_i64
                      br_if 1 (;@8;)
                      local.get 4
                      i32.const 1
                      i32.add
                      local.set 4
                      local.get 2
                      i32.const 1
                      i32.sub
                      local.set 2
                      local.get 7
                      local.get 11
                      i32.wrap_i64
                      local.tee 10
                      i32.add
                      local.tee 5
                      local.get 10
                      i32.ge_u
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  i32.load offset=16
                  local.set 5
                  local.get 0
                  i32.load offset=20
                  local.set 2
                  i32.const 1
                  local.set 0
                  local.get 1
                  i32.const 1
                  i32.store16 offset=196
                  local.get 1
                  local.get 2
                  i32.store offset=192
                  i32.const 0
                  local.set 4
                  local.get 1
                  i32.const 0
                  i32.store offset=188
                  local.get 1
                  i32.const 1
                  i32.store8 offset=184
                  local.get 1
                  i32.const 44
                  i32.store offset=180
                  local.get 1
                  local.get 2
                  i32.store offset=176
                  local.get 1
                  i32.const 0
                  i32.store offset=172
                  local.get 1
                  local.get 2
                  i32.store offset=168
                  local.get 1
                  local.get 5
                  i32.store offset=164
                  local.get 1
                  i32.const 44
                  i32.store offset=160
                  local.get 1
                  i32.const 48
                  i32.add
                  local.get 1
                  i32.const 160
                  i32.add
                  call 16
                  local.get 1
                  i32.load offset=48
                  local.tee 2
                  i32.eqz
                  if  ;; label = @8
                    i32.const 0
                    local.set 7
                    br 1 (;@7;)
                  end
                  local.get 1
                  i32.const 40
                  i32.add
                  local.get 2
                  local.get 1
                  i32.load offset=52
                  call 12
                  local.get 1
                  i32.const 32
                  i32.add
                  local.get 1
                  i32.load offset=40
                  local.get 1
                  i32.load offset=44
                  call 13
                  i32.const 1074792076
                  i32.load8_u
                  drop
                  local.get 1
                  i32.load8_u offset=33
                  local.set 0
                  local.get 1
                  i32.load8_u offset=32
                  local.set 2
                  i32.const 8
                  call 9
                  local.tee 5
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 5
                  i32.const 0
                  local.get 0
                  local.get 2
                  i32.const 1
                  i32.and
                  select
                  i32.store8
                  local.get 1
                  i32.const 1
                  i32.store offset=212
                  local.get 1
                  local.get 5
                  i32.store offset=208
                  local.get 1
                  i32.const 8
                  i32.store offset=204
                  local.get 1
                  i32.const 216
                  i32.add
                  local.get 1
                  i32.const 160
                  i32.add
                  i32.const 40
                  call 63
                  drop
                  i32.const 1
                  local.set 4
                  loop  ;; label = @8
                    local.get 1
                    i32.const 24
                    i32.add
                    local.get 1
                    i32.const 216
                    i32.add
                    call 16
                    local.get 1
                    i32.load offset=24
                    local.tee 0
                    if  ;; label = @9
                      local.get 1
                      i32.const 16
                      i32.add
                      local.get 0
                      local.get 1
                      i32.load offset=28
                      call 12
                      local.get 1
                      i32.const 8
                      i32.add
                      local.get 1
                      i32.load offset=16
                      local.get 1
                      i32.load offset=20
                      call 13
                      i32.const 0
                      local.get 1
                      i32.load8_u offset=9
                      local.get 1
                      i32.load8_u offset=8
                      select
                      local.set 0
                      local.get 1
                      i32.load offset=204
                      local.get 4
                      i32.eq
                      if  ;; label = @10
                        local.get 1
                        i32.const 204
                        i32.add
                        local.get 4
                        i32.const 1
                        call 17
                        local.get 1
                        i32.load offset=208
                        local.set 5
                      end
                      local.get 4
                      local.get 5
                      i32.add
                      local.get 0
                      i32.store8
                      local.get 1
                      local.get 4
                      i32.const 1
                      i32.add
                      local.tee 4
                      i32.store offset=212
                      br 1 (;@8;)
                    end
                  end
                  local.get 1
                  i32.load offset=204
                  local.set 7
                  local.get 1
                  i32.load offset=208
                  local.set 0
                end
                local.get 1
                i32.load offset=148
                local.tee 2
                if  ;; label = @7
                  local.get 1
                  i32.load offset=152
                  local.get 2
                  i32.const 3
                  i32.shl
                  call 3
                end
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
                local.get 9
                local.get 8
                call 3
              end
              i32.const 1
              local.get 7
              i32.const -2147483644
              i32.eq
              br_if 2 (;@3;)
              drop
              i32.const 0
              local.set 2
              local.get 1
              i32.const 0
              i32.store offset=224
              local.get 1
              i64.const 4294967296
              i64.store offset=216 align=4
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 4
                          local.get 7
                          i32.const -2147483648
                          i32.xor
                          local.tee 5
                          local.get 5
                          i32.const 4
                          i32.ge_u
                          select
                          i32.const 1
                          i32.sub
                          br_table 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 0 (;@11;)
                        end
                        local.get 1
                        i32.const 164
                        i32.add
                        i32.const 0
                        i32.store8
                        local.get 1
                        i32.const 0
                        i32.store offset=160
                        local.get 1
                        i32.const 216
                        i32.add
                        local.get 1
                        i32.const 160
                        i32.add
                        local.tee 5
                        local.get 5
                        i32.const 1
                        i32.or
                        call 18
                        br 4 (;@6;)
                      end
                      local.get 1
                      i32.const 0
                      i32.store offset=161 align=1
                      local.get 1
                      i32.const 1
                      i32.store8 offset=160
                      local.get 1
                      i32.const 216
                      i32.add
                      local.tee 5
                      local.get 1
                      i32.const 160
                      i32.add
                      local.get 1
                      i32.const 161
                      i32.add
                      call 18
                      local.get 1
                      i32.load offset=224
                      local.tee 3
                      local.get 1
                      i32.load offset=216
                      i32.eq
                      if  ;; label = @10
                        local.get 5
                        call 19
                      end
                      local.get 1
                      i32.load offset=220
                      local.get 3
                      i32.add
                      local.get 0
                      i32.store8
                      local.get 1
                      local.get 3
                      i32.const 1
                      i32.add
                      i32.store offset=224
                      br 3 (;@6;)
                    end
                    local.get 1
                    i32.const 2
                    i32.store8 offset=160
                    local.get 1
                    i32.const 0
                    i32.store offset=161 align=1
                    local.get 1
                    i32.const 216
                    i32.add
                    local.get 1
                    i32.const 160
                    i32.add
                    local.get 1
                    i32.const 161
                    i32.add
                    call 18
                    br 2 (;@6;)
                  end
                  local.get 1
                  i32.const 3
                  i32.store8 offset=160
                  local.get 1
                  i32.const 0
                  i32.store offset=161 align=1
                  local.get 1
                  i32.const 216
                  i32.add
                  local.tee 5
                  local.get 1
                  i32.const 160
                  i32.add
                  local.get 1
                  i32.const 161
                  i32.add
                  call 18
                  local.get 1
                  i32.load offset=224
                  local.tee 3
                  local.get 1
                  i32.load offset=216
                  i32.eq
                  if  ;; label = @8
                    local.get 5
                    call 19
                  end
                  local.get 1
                  i32.load offset=220
                  local.get 3
                  i32.add
                  local.get 0
                  i32.store8
                  local.get 1
                  local.get 3
                  i32.const 1
                  i32.add
                  i32.store offset=224
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 0
                i32.store offset=161 align=1
                local.get 1
                i32.const 4
                i32.store8 offset=160
                local.get 1
                i32.const 216
                i32.add
                local.get 1
                i32.const 160
                i32.add
                local.get 1
                i32.const 161
                i32.add
                call 18
                local.get 1
                i32.const 164
                i32.add
                i32.const 0
                i32.store8
                local.get 1
                i32.const 0
                i32.store offset=160
                block  ;; label = @7
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 160
                      i32.add
                      local.get 2
                      i32.add
                      local.tee 5
                      local.get 3
                      i32.store8
                      local.get 3
                      i32.const 128
                      i32.lt_u
                      br_if 0 (;@9;)
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
                      local.get 2
                      i32.const 1
                      i32.add
                      local.tee 2
                      i32.const 5
                      i32.ne
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 2
                  i32.const 1
                  i32.add
                  local.set 5
                end
                local.get 1
                i32.const 216
                i32.add
                local.get 1
                i32.const 160
                i32.add
                local.tee 3
                local.get 3
                local.get 5
                i32.add
                call 18
                local.get 1
                i32.const 164
                i32.add
                i32.const 0
                i32.store8
                local.get 1
                i32.const 0
                i32.store offset=160
                i32.const 1
                local.set 3
                local.get 4
                local.set 2
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 1
                    local.get 3
                    i32.add
                    i32.const 159
                    i32.add
                    local.tee 5
                    local.get 2
                    i32.store8
                    local.get 2
                    i32.const 128
                    i32.lt_u
                    br_if 1 (;@7;)
                    local.get 5
                    local.get 2
                    i32.const 128
                    i32.or
                    i32.store8
                    local.get 2
                    i32.const 7
                    i32.shr_u
                    local.set 2
                    local.get 3
                    i32.const 1
                    i32.add
                    local.tee 3
                    i32.const 6
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  i32.const 5
                  local.set 3
                end
                local.get 1
                i32.const 216
                i32.add
                local.get 1
                i32.const 160
                i32.add
                local.tee 5
                local.get 3
                local.get 5
                i32.add
                call 18
                local.get 4
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=224
                local.set 2
                local.get 0
                local.set 3
                loop  ;; label = @7
                  local.get 3
                  i32.load8_u
                  local.set 5
                  local.get 1
                  i32.load offset=216
                  local.get 2
                  i32.eq
                  if  ;; label = @8
                    local.get 1
                    i32.const 216
                    i32.add
                    call 19
                  end
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                  local.get 1
                  i32.load offset=220
                  local.get 2
                  i32.add
                  local.get 5
                  i32.store8
                  local.get 1
                  local.get 2
                  i32.const 1
                  i32.add
                  local.tee 2
                  i32.store offset=224
                  local.get 4
                  i32.const 1
                  i32.sub
                  local.tee 4
                  br_if 0 (;@7;)
                end
              end
              block (result i32)  ;; label = @6
                local.get 1
                i32.load offset=216
                local.tee 2
                i32.const -2147483648
                i32.eq
                if  ;; label = @7
                  i32.const 0
                  local.set 4
                  i32.const 0
                  local.set 2
                  i32.const 1
                  br 1 (;@6;)
                end
                local.get 1
                i32.load offset=224
                local.set 4
                local.get 1
                i32.load offset=220
              end
              local.set 3
              local.get 7
              i32.eqz
              local.get 7
              i32.const -2147483644
              i32.lt_s
              i32.or
              i32.eqz
              if  ;; label = @6
                local.get 0
                local.get 7
                call 3
              end
              local.get 4
              i32.const 536870913
              i32.ge_u
              if  ;; label = @6
                local.get 4
                i32.const 536870912
                i32.const 1048732
                call 15
                unreachable
              end
              i32.const 537921164
              local.get 3
              local.get 4
              call 63
              drop
              local.get 4
              call 0
              local.get 2
              if  ;; label = @6
                local.get 3
                local.get 2
                call 3
              end
              local.get 1
              i32.const 92
              i32.add
              call 5
              local.get 6
              i32.const 3
              call 6
              local.get 6
              i32.const 84
              call 3
              br 3 (;@2;)
            end
            i32.const 1
            call 14
            unreachable
          end
          i32.const 1
        end
        local.get 1
        i32.const 216
        i32.add
        local.get 1
        i32.const 92
        i32.add
        call 20
        local.get 1
        i32.load offset=224
        local.tee 0
        i32.const 536870913
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i32.const 536870912
          i32.const 1048748
          call 15
          unreachable
        end
        i32.const 1050252
        local.get 1
        i32.load offset=220
        local.tee 3
        local.get 0
        call 63
        drop
        local.get 0
        call 1
        local.get 1
        i32.load offset=216
        local.tee 0
        if  ;; label = @3
          local.get 3
          local.get 0
          call 3
        end
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.const 3
        call 6
        local.get 6
        i32.const 84
        call 3
      end
      local.get 1
      i32.const 256
      i32.add
      global.set 0
      return
    end
    i32.const 1
    call 14
    unreachable)
  (func (;9;) (type 8) (param i32) (result i32)
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
                      i32.const 1074792496
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
                      i32.const 1074792504
                      i32.load
                      i32.le_u
                      br_if 7 (;@2;)
                      local.get 1
                      br_if 2 (;@7;)
                      i32.const 1074792500
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
                    i32.const 1074792500
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
                    i32.const 1074792088
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
                    i32.const 1074792232
                    i32.add
                    local.tee 2
                    local.get 0
                    i32.const 1074792240
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
                    i32.const 1074792496
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
                  i32.const 1074792232
                  i32.add
                  local.tee 1
                  local.get 0
                  i32.const 1074792240
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
                  i32.const 1074792496
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
                i32.const 1074792504
                i32.load
                local.tee 1
                if  ;; label = @7
                  local.get 1
                  i32.const -8
                  i32.and
                  i32.const 1074792232
                  i32.add
                  local.set 0
                  i32.const 1074792512
                  i32.load
                  local.set 3
                  block (result i32)  ;; label = @8
                    i32.const 1074792496
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
                      i32.const 1074792496
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
                i32.const 1074792512
                local.get 6
                i32.store
                i32.const 1074792504
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
              i32.const 1074792088
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
                      i32.const 1074792088
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
                      i32.const 1074792500
                      i32.const 1074792500
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
                    i32.const 1074792504
                    i32.load
                    local.tee 4
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 4
                    i32.const -8
                    i32.and
                    i32.const 1074792232
                    i32.add
                    local.set 0
                    i32.const 1074792512
                    i32.load
                    local.set 2
                    block (result i32)  ;; label = @9
                      i32.const 1074792496
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
                        i32.const 1074792496
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
                i32.const 1074792512
                local.get 6
                i32.store
                i32.const 1074792504
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
              i32.const 1074792088
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
        i32.const 1074792504
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
            i32.const 1074792088
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
            i32.const 1074792500
            i32.const 1074792500
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
              call 60
              br 2 (;@3;)
            end
            local.get 3
            i32.const 248
            i32.and
            i32.const 1074792232
            i32.add
            local.set 0
            block (result i32)  ;; label = @5
              i32.const 1074792496
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
                i32.const 1074792496
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
                i32.const 1074792504
                i32.load
                local.tee 1
                i32.gt_u
                if  ;; label = @7
                  local.get 5
                  i32.const 1074792508
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
                    i32.const 1074792520
                    i32.const 0
                    local.get 2
                    i32.const -65536
                    i32.and
                    local.get 3
                    select
                    local.tee 4
                    i32.const 1074792520
                    i32.load
                    i32.add
                    local.tee 0
                    i32.store
                    i32.const 1074792524
                    i32.const 1074792524
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
                        i32.const 1074792516
                        i32.load
                        local.tee 2
                        if  ;; label = @11
                          i32.const 1074792216
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
                        i32.const 1074792532
                        i32.load
                        local.tee 0
                        i32.const 0
                        local.get 0
                        local.get 1
                        i32.le_u
                        select
                        i32.eqz
                        if  ;; label = @11
                          i32.const 1074792532
                          local.get 1
                          i32.store
                        end
                        i32.const 1074792536
                        i32.const 4095
                        i32.store
                        i32.const 1074792220
                        local.get 4
                        i32.store
                        i32.const 1074792216
                        local.get 1
                        i32.store
                        i32.const 1074792244
                        i32.const 1074792232
                        i32.store
                        i32.const 1074792252
                        i32.const 1074792240
                        i32.store
                        i32.const 1074792240
                        i32.const 1074792232
                        i32.store
                        i32.const 1074792260
                        i32.const 1074792248
                        i32.store
                        i32.const 1074792248
                        i32.const 1074792240
                        i32.store
                        i32.const 1074792268
                        i32.const 1074792256
                        i32.store
                        i32.const 1074792256
                        i32.const 1074792248
                        i32.store
                        i32.const 1074792276
                        i32.const 1074792264
                        i32.store
                        i32.const 1074792264
                        i32.const 1074792256
                        i32.store
                        i32.const 1074792284
                        i32.const 1074792272
                        i32.store
                        i32.const 1074792272
                        i32.const 1074792264
                        i32.store
                        i32.const 1074792292
                        i32.const 1074792280
                        i32.store
                        i32.const 1074792280
                        i32.const 1074792272
                        i32.store
                        i32.const 1074792300
                        i32.const 1074792288
                        i32.store
                        i32.const 1074792288
                        i32.const 1074792280
                        i32.store
                        i32.const 1074792228
                        i32.const 0
                        i32.store
                        i32.const 1074792308
                        i32.const 1074792296
                        i32.store
                        i32.const 1074792296
                        i32.const 1074792288
                        i32.store
                        i32.const 1074792304
                        i32.const 1074792296
                        i32.store
                        i32.const 1074792316
                        i32.const 1074792304
                        i32.store
                        i32.const 1074792312
                        i32.const 1074792304
                        i32.store
                        i32.const 1074792324
                        i32.const 1074792312
                        i32.store
                        i32.const 1074792320
                        i32.const 1074792312
                        i32.store
                        i32.const 1074792332
                        i32.const 1074792320
                        i32.store
                        i32.const 1074792328
                        i32.const 1074792320
                        i32.store
                        i32.const 1074792340
                        i32.const 1074792328
                        i32.store
                        i32.const 1074792336
                        i32.const 1074792328
                        i32.store
                        i32.const 1074792348
                        i32.const 1074792336
                        i32.store
                        i32.const 1074792344
                        i32.const 1074792336
                        i32.store
                        i32.const 1074792356
                        i32.const 1074792344
                        i32.store
                        i32.const 1074792352
                        i32.const 1074792344
                        i32.store
                        i32.const 1074792364
                        i32.const 1074792352
                        i32.store
                        i32.const 1074792360
                        i32.const 1074792352
                        i32.store
                        i32.const 1074792372
                        i32.const 1074792360
                        i32.store
                        i32.const 1074792380
                        i32.const 1074792368
                        i32.store
                        i32.const 1074792368
                        i32.const 1074792360
                        i32.store
                        i32.const 1074792388
                        i32.const 1074792376
                        i32.store
                        i32.const 1074792376
                        i32.const 1074792368
                        i32.store
                        i32.const 1074792396
                        i32.const 1074792384
                        i32.store
                        i32.const 1074792384
                        i32.const 1074792376
                        i32.store
                        i32.const 1074792404
                        i32.const 1074792392
                        i32.store
                        i32.const 1074792392
                        i32.const 1074792384
                        i32.store
                        i32.const 1074792412
                        i32.const 1074792400
                        i32.store
                        i32.const 1074792400
                        i32.const 1074792392
                        i32.store
                        i32.const 1074792420
                        i32.const 1074792408
                        i32.store
                        i32.const 1074792408
                        i32.const 1074792400
                        i32.store
                        i32.const 1074792428
                        i32.const 1074792416
                        i32.store
                        i32.const 1074792416
                        i32.const 1074792408
                        i32.store
                        i32.const 1074792436
                        i32.const 1074792424
                        i32.store
                        i32.const 1074792424
                        i32.const 1074792416
                        i32.store
                        i32.const 1074792444
                        i32.const 1074792432
                        i32.store
                        i32.const 1074792432
                        i32.const 1074792424
                        i32.store
                        i32.const 1074792452
                        i32.const 1074792440
                        i32.store
                        i32.const 1074792440
                        i32.const 1074792432
                        i32.store
                        i32.const 1074792460
                        i32.const 1074792448
                        i32.store
                        i32.const 1074792448
                        i32.const 1074792440
                        i32.store
                        i32.const 1074792468
                        i32.const 1074792456
                        i32.store
                        i32.const 1074792456
                        i32.const 1074792448
                        i32.store
                        i32.const 1074792476
                        i32.const 1074792464
                        i32.store
                        i32.const 1074792464
                        i32.const 1074792456
                        i32.store
                        i32.const 1074792484
                        i32.const 1074792472
                        i32.store
                        i32.const 1074792472
                        i32.const 1074792464
                        i32.store
                        i32.const 1074792492
                        i32.const 1074792480
                        i32.store
                        i32.const 1074792480
                        i32.const 1074792472
                        i32.store
                        i32.const 1074792516
                        local.get 1
                        i32.store
                        i32.const 1074792488
                        i32.const 1074792480
                        i32.store
                        i32.const 1074792508
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
                        i32.const 1074792528
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
                    i32.const 1074792532
                    i32.const 1074792532
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
                    i32.const 1074792216
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
                      i32.const 1074792216
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
                      i32.const 1074792516
                      local.get 1
                      i32.store
                      i32.const 1074792508
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
                      i32.const 1074792528
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
                      i32.const 1074792216
                      i64.load align=4
                      local.set 9
                      local.get 3
                      i32.const 16
                      i32.add
                      i32.const 1074792224
                      i64.load align=4
                      i64.store align=4
                      local.get 3
                      local.get 9
                      i64.store offset=8 align=4
                      i32.const 1074792220
                      local.get 4
                      i32.store
                      i32.const 1074792216
                      local.get 1
                      i32.store
                      i32.const 1074792224
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.store
                      i32.const 1074792228
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
                        call 60
                        br 7 (;@3;)
                      end
                      local.get 0
                      i32.const 248
                      i32.and
                      i32.const 1074792232
                      i32.add
                      local.set 1
                      block (result i32)  ;; label = @10
                        i32.const 1074792496
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
                          i32.const 1074792496
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
                    i32.const 1074792516
                    i32.load
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 2
                    i32.const 1074792512
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
                      call 51
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
                      call 60
                      br 8 (;@1;)
                    end
                    local.get 3
                    i32.const 248
                    i32.and
                    i32.const 1074792232
                    i32.add
                    local.set 0
                    block (result i32)  ;; label = @9
                      i32.const 1074792496
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
                        i32.const 1074792496
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
                  i32.const 1074792508
                  local.get 0
                  local.get 5
                  i32.sub
                  local.tee 1
                  i32.store
                  i32.const 1074792516
                  i32.const 1074792516
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
                i32.const 1074792512
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
                    i32.const 1074792512
                    i32.const 0
                    i32.store
                    i32.const 1074792504
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
                  i32.const 1074792504
                  local.get 2
                  i32.store
                  i32.const 1074792512
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
              i32.const 1074792516
              i32.const 1074792516
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
              i32.const 1074792508
              i32.const 1074792508
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
              i32.const 1074792528
              i32.const 2097152
              i32.store
              br 2 (;@3;)
            end
            i32.const 1074792516
            local.get 4
            i32.store
            i32.const 1074792508
            i32.const 1074792508
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
          i32.const 1074792512
          local.get 4
          i32.store
          i32.const 1074792504
          i32.const 1074792504
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
        i32.const 1074792508
        i32.load
        local.tee 1
        local.get 5
        i32.le_u
        br_if 0 (;@2;)
        i32.const 1074792508
        local.get 1
        local.get 5
        i32.sub
        local.tee 1
        i32.store
        i32.const 1074792516
        i32.const 1074792516
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
  (func (;10;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 1
    i32.load offset=4
    local.set 8
    local.get 1
    i32.load
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 5
          local.set 9
          local.get 4
          local.tee 5
          i32.const 5
          i32.eq
          br_if 1 (;@2;)
          local.get 8
          local.get 4
          local.get 10
          i32.add
          local.tee 2
          i32.eq
          if  ;; label = @4
            i32.const 4
            local.set 9
            br 2 (;@2;)
          end
          local.get 1
          local.get 2
          i32.const 1
          i32.add
          i32.store
          local.get 5
          i32.const 1
          i32.add
          local.set 4
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
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const 4
        i32.eq
        local.get 2
        i32.const 15
        i32.gt_u
        i32.and
        br_if 0 (;@2;)
        i32.const 14
        local.set 9
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 3 (;@2;)
            end
            local.get 3
            i32.const 4
            i32.add
            local.get 1
            call 55
            local.get 0
            block (result i32)  ;; label = @5
              local.get 3
              i32.load offset=4
              i32.const -2147483648
              i32.ne
              if  ;; label = @6
                local.get 0
                local.get 3
                i64.load offset=4 align=4
                i64.store align=4
                local.get 0
                i32.const 8
                i32.add
                local.get 3
                i32.const 12
                i32.add
                i32.load
                i32.store
                i32.const -2147483647
                br 1 (;@5;)
              end
              local.get 0
              local.get 3
              i32.load8_u offset=8
              i32.store8
              i32.const -2147483646
            end
            i32.store offset=12
            br 3 (;@1;)
          end
          local.get 3
          i32.const 4
          i32.add
          local.get 1
          call 55
          local.get 3
          i32.load8_u offset=8
          local.set 14
          local.get 3
          i32.load offset=4
          local.tee 10
          i32.const -2147483648
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const -2147483646
            i32.store offset=12
            local.get 0
            local.get 14
            i32.store8
            br 3 (;@1;)
          end
          local.get 3
          i32.const 15
          i32.add
          local.tee 15
          i64.load8_u
          local.set 18
          local.get 3
          i32.const 13
          i32.add
          local.tee 16
          i64.load16_u align=1
          local.set 19
          local.get 3
          i64.load32_u offset=9 align=1
          local.set 17
          local.get 3
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
          local.tee 2
          global.set 0
          local.get 1
          local.tee 9
          i32.load offset=4
          local.set 13
          local.get 1
          i32.load
          local.set 11
          i32.const -5
          local.set 1
          i32.const 5
          local.set 6
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 1
                local.tee 4
                i32.eqz
                br_if 1 (;@5;)
                local.get 13
                local.get 1
                local.get 11
                i32.add
                local.tee 1
                i32.const 5
                i32.add
                local.tee 12
                i32.eq
                if  ;; label = @7
                  i32.const 4
                  local.set 6
                  br 2 (;@5;)
                end
                local.get 9
                local.get 1
                i32.const 6
                i32.add
                i32.store
                local.get 4
                i32.const 1
                i32.add
                local.set 1
                local.get 12
                i32.load8_s
                local.tee 12
                i32.const 127
                i32.and
                local.get 5
                i32.shl
                local.get 8
                i32.or
                local.set 8
                local.get 5
                i32.const 7
                i32.add
                local.set 5
                local.get 12
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
              end
              local.get 4
              i32.const -1
              i32.eq
              local.get 12
              i32.const 15
              i32.gt_u
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.set 4
              i32.const 1
              local.set 6
              i32.const 0
              local.set 5
              block  ;; label = @6
                i32.const 1048576
                local.get 8
                local.get 8
                i32.const 1048576
                i32.ge_u
                select
                i32.const 0
                local.get 13
                local.get 1
                local.get 11
                i32.add
                local.tee 11
                i32.const 5
                i32.add
                i32.sub
                local.get 8
                i32.ge_u
                select
                local.tee 1
                if  ;; label = @7
                  i32.const 1074792076
                  i32.load8_u
                  drop
                  local.get 1
                  call 9
                  local.tee 6
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 1
                  local.set 5
                end
                local.get 2
                local.get 6
                i32.store offset=8
                local.get 2
                local.get 5
                i32.store offset=4
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 8
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 13
                    local.get 4
                    local.get 11
                    i32.add
                    local.tee 1
                    i32.const 5
                    i32.add
                    local.tee 5
                    i32.eq
                    if  ;; label = @9
                      local.get 7
                      i32.const -2147483648
                      i32.store
                      local.get 7
                      i32.const 4
                      i32.store8 offset=4
                      local.get 2
                      i32.load offset=4
                      local.tee 1
                      i32.eqz
                      br_if 5 (;@4;)
                      local.get 2
                      i32.load offset=8
                      local.get 1
                      call 3
                      br 5 (;@4;)
                    else
                      local.get 9
                      local.get 1
                      i32.const 6
                      i32.add
                      i32.store
                      local.get 5
                      i32.load8_u
                      local.set 1
                      local.get 2
                      i32.load offset=4
                      local.get 4
                      i32.eq
                      if  ;; label = @10
                        local.get 2
                        i32.const 4
                        i32.add
                        call 56
                        local.get 2
                        i32.load offset=8
                        local.set 6
                      end
                      local.get 4
                      local.get 6
                      i32.add
                      local.get 1
                      i32.store8
                      local.get 4
                      i32.const 1
                      i32.add
                      local.set 4
                      br 2 (;@7;)
                    end
                    unreachable
                  end
                end
                local.get 7
                local.get 2
                i64.load offset=4 align=4
                i64.store align=4
                local.get 7
                i32.const 8
                i32.add
                local.get 2
                i32.const 12
                i32.add
                i32.load
                i32.store
                br 2 (;@4;)
              end
              i32.const 1
              call 14
              unreachable
            end
            local.get 7
            i32.const -2147483648
            i32.store
            local.get 7
            local.get 6
            i32.store8 offset=4
          end
          local.get 2
          i32.const 16
          i32.add
          global.set 0
          local.get 3
          i32.load8_u offset=8
          local.set 1
          local.get 14
          i64.extend_i32_u
          i64.const 255
          i64.and
          local.get 17
          i64.const 8
          i64.shl
          i64.or
          i32.wrap_i64
          local.set 5
          local.get 3
          i32.load offset=4
          local.tee 4
          i32.const -2147483648
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const -2147483646
            i32.store offset=12
            local.get 0
            local.get 1
            i32.store8
            local.get 10
            i32.eqz
            br_if 3 (;@1;)
            local.get 5
            local.get 10
            call 3
            br 3 (;@1;)
          end
          local.get 15
          i64.load8_u
          local.set 20
          local.get 16
          i64.load16_u align=1
          local.set 21
          local.get 3
          i64.load32_u offset=9 align=1
          local.set 22
          local.get 0
          local.get 4
          i32.store offset=12
          local.get 0
          local.get 17
          local.get 18
          i64.const 48
          i64.shl
          local.get 19
          i64.const 32
          i64.shl
          i64.or
          i64.or
          i64.const 24
          i64.shr_u
          i64.store32 offset=8
          local.get 0
          local.get 5
          i32.store offset=4
          local.get 0
          local.get 10
          i32.store
          local.get 0
          local.get 1
          i64.extend_i32_u
          i64.const 255
          i64.and
          local.get 22
          local.get 20
          i64.const 48
          i64.shl
          local.get 21
          i64.const 32
          i64.shl
          i64.or
          i64.or
          i64.const 8
          i64.shl
          i64.or
          i64.store offset=16 align=4
          br 2 (;@1;)
        end
        local.get 0
        i32.const -2147483648
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 0
      i32.const -2147483646
      i32.store offset=12
      local.get 0
      local.get 9
      i32.store8
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;11;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    call 16
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=16
        local.tee 4
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 0
          i32.store offset=8
          local.get 0
          i64.const 17179869184
          i64.store align=4
          br 1 (;@2;)
        end
        local.get 2
        i32.load offset=20
        local.set 5
        i32.const 1074792076
        i32.load8_u
        drop
        i32.const 32
        call 9
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 5
        i32.store offset=4
        local.get 3
        local.get 4
        i32.store
        local.get 2
        i32.const 1
        i32.store offset=36
        local.get 2
        local.get 3
        i32.store offset=32
        local.get 2
        i32.const 4
        i32.store offset=28
        local.get 2
        i32.const 40
        i32.add
        local.get 1
        i32.const 40
        call 63
        drop
        i32.const 12
        local.set 4
        i32.const 1
        local.set 1
        loop  ;; label = @3
          local.get 2
          i32.const 8
          i32.add
          local.get 2
          i32.const 40
          i32.add
          call 16
          local.get 2
          i32.load offset=8
          local.tee 5
          if  ;; label = @4
            local.get 2
            i32.load offset=12
            local.set 7
            local.get 2
            i32.load offset=28
            local.get 1
            i32.eq
            if  ;; label = @5
              global.get 0
              i32.const 16
              i32.sub
              local.tee 3
              global.set 0
              local.get 3
              i32.const 8
              i32.add
              local.get 2
              i32.const 28
              i32.add
              local.get 1
              i32.const 4
              i32.const 8
              call 57
              local.get 3
              i32.load offset=8
              local.tee 6
              i32.const -2147483647
              i32.ne
              if  ;; label = @6
                local.get 3
                i32.load offset=12
                drop
                local.get 6
                call 14
                unreachable
              end
              local.get 3
              i32.const 16
              i32.add
              global.set 0
              local.get 2
              i32.load offset=32
              local.set 3
            end
            local.get 3
            local.get 4
            i32.add
            local.tee 6
            local.get 7
            i32.store
            local.get 6
            i32.const 4
            i32.sub
            local.get 5
            i32.store
            local.get 2
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.store offset=36
            local.get 4
            i32.const 8
            i32.add
            local.set 4
            br 1 (;@3;)
          end
        end
        local.get 0
        local.get 2
        i64.load offset=28 align=4
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i32.const 36
        i32.add
        i32.load
        i32.store
      end
      local.get 2
      i32.const 80
      i32.add
      global.set 0
      return
    end
    i32.const 4
    call 14
    unreachable)
  (func (;12;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 2
    i32.add
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.eqz
            if  ;; label = @5
              local.get 1
              local.set 6
              br 1 (;@4;)
            end
            local.get 1
            local.set 6
            loop  ;; label = @5
              local.get 4
              local.tee 9
              block (result i32)  ;; label = @6
                local.get 6
                local.tee 4
                i32.load8_s
                local.tee 5
                i32.const 0
                i32.ge_s
                if  ;; label = @7
                  local.get 5
                  i32.const 255
                  i32.and
                  local.set 3
                  local.get 4
                  i32.const 1
                  i32.add
                  br 1 (;@6;)
                end
                local.get 4
                i32.load8_u offset=1
                i32.const 63
                i32.and
                local.set 3
                local.get 5
                i32.const 31
                i32.and
                local.set 6
                local.get 5
                i32.const -33
                i32.le_u
                if  ;; label = @7
                  local.get 6
                  i32.const 6
                  i32.shl
                  local.get 3
                  i32.or
                  local.set 3
                  local.get 4
                  i32.const 2
                  i32.add
                  br 1 (;@6;)
                end
                local.get 4
                i32.load8_u offset=2
                i32.const 63
                i32.and
                local.get 3
                i32.const 6
                i32.shl
                i32.or
                local.set 3
                local.get 5
                i32.const -16
                i32.lt_u
                if  ;; label = @7
                  local.get 3
                  local.get 6
                  i32.const 12
                  i32.shl
                  i32.or
                  local.set 3
                  local.get 4
                  i32.const 3
                  i32.add
                  br 1 (;@6;)
                end
                local.get 6
                i32.const 18
                i32.shl
                i32.const 1835008
                i32.and
                local.get 4
                i32.load8_u offset=3
                i32.const 63
                i32.and
                local.get 3
                i32.const 6
                i32.shl
                i32.or
                i32.or
                local.set 3
                local.get 4
                i32.const 4
                i32.add
              end
              local.tee 6
              local.get 4
              i32.sub
              i32.add
              local.set 4
              block  ;; label = @6
                local.get 3
                i32.const 32
                i32.eq
                local.get 3
                i32.const 9
                i32.sub
                i32.const 5
                i32.lt_u
                i32.or
                br_if 0 (;@6;)
                local.get 3
                i32.const 128
                i32.lt_u
                br_if 2 (;@4;)
                block  ;; label = @7
                  local.get 3
                  i32.const 8
                  i32.shr_u
                  local.tee 5
                  i32.const 31
                  i32.le_u
                  if  ;; label = @8
                    local.get 5
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 5
                    i32.const 22
                    i32.ne
                    local.get 3
                    i32.const 5760
                    i32.ne
                    i32.or
                    br_if 4 (;@4;)
                    br 2 (;@6;)
                  end
                  local.get 5
                  i32.const 32
                  i32.ne
                  if  ;; label = @8
                    local.get 5
                    i32.const 48
                    i32.ne
                    local.get 3
                    i32.const 12288
                    i32.ne
                    i32.or
                    br_if 4 (;@4;)
                    br 2 (;@6;)
                  end
                  local.get 3
                  i32.const 255
                  i32.and
                  i32.const 1049732
                  i32.add
                  i32.load8_u
                  i32.const 2
                  i32.and
                  i32.eqz
                  br_if 3 (;@4;)
                  br 1 (;@6;)
                end
                local.get 3
                i32.const 255
                i32.and
                i32.const 1049732
                i32.add
                i32.load8_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 2 (;@4;)
              end
              local.get 6
              local.get 7
              i32.ne
              br_if 0 (;@5;)
            end
            br 1 (;@3;)
          end
          local.get 6
          local.get 7
          i32.ne
          if  ;; label = @4
            loop  ;; label = @5
              local.get 7
              local.tee 5
              i32.const 1
              i32.sub
              local.tee 7
              i32.load8_s
              local.tee 3
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                local.get 3
                i32.const 63
                i32.and
                block (result i32)  ;; label = @7
                  local.get 5
                  i32.const 2
                  i32.sub
                  local.tee 7
                  i32.load8_u
                  local.tee 8
                  i32.extend8_s
                  local.tee 3
                  i32.const -64
                  i32.ge_s
                  if  ;; label = @8
                    local.get 8
                    i32.const 31
                    i32.and
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.const 63
                  i32.and
                  block (result i32)  ;; label = @8
                    local.get 5
                    i32.const 3
                    i32.sub
                    local.tee 7
                    i32.load8_u
                    local.tee 8
                    i32.extend8_s
                    local.tee 3
                    i32.const -64
                    i32.ge_s
                    if  ;; label = @9
                      local.get 8
                      i32.const 15
                      i32.and
                      br 1 (;@8;)
                    end
                    local.get 3
                    i32.const 63
                    i32.and
                    local.get 5
                    i32.const 4
                    i32.sub
                    local.tee 7
                    i32.load8_u
                    i32.const 7
                    i32.and
                    i32.const 6
                    i32.shl
                    i32.or
                  end
                  i32.const 6
                  i32.shl
                  i32.or
                end
                i32.const 6
                i32.shl
                i32.or
                local.set 3
              end
              block  ;; label = @6
                local.get 3
                i32.const 32
                i32.eq
                local.get 3
                i32.const 9
                i32.sub
                i32.const 5
                i32.lt_u
                i32.or
                br_if 0 (;@6;)
                local.get 3
                i32.const 128
                i32.lt_u
                br_if 4 (;@2;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const 8
                    i32.shr_u
                    local.tee 8
                    i32.const 31
                    i32.le_u
                    if  ;; label = @9
                      local.get 8
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 8
                      i32.const 22
                      i32.ne
                      local.get 3
                      i32.const 5760
                      i32.ne
                      i32.or
                      br_if 7 (;@2;)
                      br 3 (;@6;)
                    end
                    local.get 8
                    i32.const 32
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 8
                    i32.const 48
                    i32.ne
                    local.get 3
                    i32.const 12288
                    i32.ne
                    i32.or
                    br_if 6 (;@2;)
                    br 2 (;@6;)
                  end
                  local.get 3
                  i32.const 255
                  i32.and
                  i32.const 1049732
                  i32.add
                  i32.load8_u
                  i32.const 1
                  i32.and
                  br_if 1 (;@6;)
                  br 5 (;@2;)
                end
                local.get 3
                i32.const 255
                i32.and
                i32.const 1049732
                i32.add
                i32.load8_u
                i32.const 2
                i32.and
                i32.eqz
                br_if 4 (;@2;)
              end
              local.get 6
              local.get 7
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 2
          br_if 2 (;@1;)
        end
        i32.const 0
        local.set 9
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 4
      local.get 6
      i32.sub
      local.get 5
      i32.add
      local.set 4
    end
    local.get 0
    local.get 4
    local.get 9
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    local.get 9
    i32.add
    i32.store)
  (func (;13;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    i32.const 1
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              br_table 4 (;@1;) 0 (;@5;) 1 (;@4;)
            end
            i32.const 1
            local.set 4
            i32.const 1
            local.set 3
            local.get 1
            i32.load8_u
            i32.const 43
            i32.sub
            br_table 3 (;@1;) 1 (;@3;) 3 (;@1;) 1 (;@3;)
          end
          local.get 1
          i32.load8_u
          i32.const 43
          i32.eq
          if  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            i32.const 4
            i32.lt_u
            local.get 2
            i32.const 1
            i32.sub
            local.tee 4
            local.set 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 2
          local.set 4
          local.get 2
          i32.const 3
          i32.ge_u
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 3
        loop  ;; label = @3
          local.get 1
          i32.load8_u
          i32.const 48
          i32.sub
          local.tee 2
          i32.const 9
          i32.gt_u
          local.tee 5
          if  ;; label = @4
            i32.const 1
            local.set 3
            br 3 (;@1;)
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 3
          i32.const 10
          i32.mul
          local.get 2
          i32.add
          local.set 3
          local.get 4
          i32.const 1
          i32.sub
          local.tee 4
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      i32.const 0
      local.set 3
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.const 0
          i32.ne
          local.set 5
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.load8_u
          i32.const 48
          i32.sub
          local.tee 4
          i32.const 9
          i32.gt_u
          br_if 1 (;@2;)
          local.get 3
          i32.const 255
          i32.and
          i32.const 10
          i32.mul
          local.tee 6
          i32.const 8
          i32.shr_u
          br_if 1 (;@2;)
          local.get 2
          i32.const 1
          i32.sub
          local.set 2
          local.get 4
          local.get 6
          i32.add
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 6
          i32.const 255
          i32.and
          local.get 4
          i32.const 255
          i32.and
          i32.add
          local.tee 4
          i32.const 255
          i32.and
          local.get 4
          i32.eq
          br_if 0 (;@3;)
        end
        i32.const 2
        local.set 3
        br 1 (;@1;)
      end
      i32.const 1
      local.set 5
      i32.const 1
      i32.const 2
      local.get 4
      i32.const 9
      i32.gt_u
      select
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store8 offset=1
    local.get 0
    local.get 5
    i32.store8)
  (func (;14;) (type 3) (param i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      call 27
    end
    unreachable)
  (func (;15;) (type 4) (param i32 i32 i32)
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
    i32.const 1049460
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 4294967296
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
    call 28
    unreachable)
  (func (;16;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load8_u offset=37
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=4
      local.set 10
      block  ;; label = @2
        local.get 1
        i32.load offset=16
        local.tee 8
        local.get 1
        i32.load offset=12
        local.tee 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 8
        local.get 1
        i32.load offset=8
        local.tee 15
        i32.gt_u
        local.tee 16
        br_if 0 (;@2;)
        local.get 1
        i32.const 20
        i32.add
        local.set 17
        local.get 1
        local.get 1
        i32.load8_u offset=24
        local.tee 7
        i32.add
        i32.const 19
        i32.add
        i32.load8_u
        local.tee 11
        i32.const 16843009
        i32.mul
        local.set 13
        local.get 7
        i32.const 5
        i32.lt_u
        local.set 18
        loop  ;; label = @3
          local.get 4
          local.get 10
          i32.add
          local.set 5
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                local.get 4
                i32.sub
                local.tee 6
                i32.const 7
                i32.le_u
                if  ;; label = @7
                  local.get 4
                  local.get 8
                  i32.eq
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 2
                  loop  ;; label = @8
                    local.get 2
                    local.get 5
                    i32.add
                    i32.load8_u
                    local.get 11
                    i32.eq
                    br_if 4 (;@4;)
                    local.get 6
                    local.get 2
                    i32.const 1
                    i32.add
                    local.tee 2
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    local.get 5
                    i32.const 3
                    i32.add
                    i32.const -4
                    i32.and
                    local.tee 3
                    i32.ne
                    if  ;; label = @9
                      local.get 3
                      local.get 5
                      i32.sub
                      local.set 3
                      i32.const 0
                      local.set 2
                      loop  ;; label = @10
                        local.get 2
                        local.get 5
                        i32.add
                        i32.load8_u
                        local.get 11
                        i32.eq
                        br_if 6 (;@4;)
                        local.get 3
                        local.get 2
                        i32.const 1
                        i32.add
                        local.tee 2
                        i32.ne
                        br_if 0 (;@10;)
                      end
                      local.get 3
                      local.get 6
                      i32.const 8
                      i32.sub
                      local.tee 9
                      i32.gt_u
                      br_if 2 (;@7;)
                      br 1 (;@8;)
                    end
                    local.get 6
                    i32.const 8
                    i32.sub
                    local.set 9
                    i32.const 0
                    local.set 3
                  end
                  loop  ;; label = @8
                    i32.const 16843008
                    local.get 3
                    local.get 5
                    i32.add
                    local.tee 2
                    i32.load
                    local.get 13
                    i32.xor
                    local.tee 12
                    i32.sub
                    local.get 12
                    i32.or
                    i32.const 16843008
                    local.get 2
                    i32.const 4
                    i32.add
                    i32.load
                    local.get 13
                    i32.xor
                    local.tee 2
                    i32.sub
                    local.get 2
                    i32.or
                    i32.and
                    i32.const -2139062144
                    i32.and
                    i32.const -2139062144
                    i32.ne
                    br_if 1 (;@7;)
                    local.get 3
                    i32.const 8
                    i32.add
                    local.tee 3
                    local.get 9
                    i32.le_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 3
                local.get 6
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                local.get 5
                i32.add
                local.set 5
                local.get 8
                local.get 3
                i32.sub
                local.get 4
                i32.sub
                local.set 6
                i32.const 0
                local.set 2
                loop  ;; label = @7
                  local.get 2
                  local.get 5
                  i32.add
                  i32.load8_u
                  local.get 11
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 6
                  local.get 2
                  i32.const 1
                  i32.add
                  local.tee 2
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 1
              local.get 8
              i32.store offset=12
              br 3 (;@2;)
            end
            local.get 2
            local.get 3
            i32.add
            local.set 2
          end
          local.get 1
          local.get 2
          local.get 4
          i32.add
          i32.const 1
          i32.add
          local.tee 4
          i32.store offset=12
          block  ;; label = @4
            local.get 4
            local.get 7
            i32.lt_u
            local.get 4
            local.get 15
            i32.gt_u
            i32.or
            br_if 0 (;@4;)
            local.get 18
            if  ;; label = @5
              local.get 10
              local.get 4
              local.get 7
              i32.sub
              local.tee 2
              i32.add
              local.set 6
              local.get 17
              local.set 3
              i32.const 0
              local.set 9
              block  ;; label = @6
                local.get 7
                local.tee 5
                i32.eqz
                br_if 0 (;@6;)
                loop  ;; label = @7
                  local.get 6
                  i32.load8_u
                  local.tee 12
                  local.get 3
                  i32.load8_u
                  local.tee 19
                  i32.eq
                  if  ;; label = @8
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    local.get 5
                    i32.const 1
                    i32.sub
                    local.tee 5
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                end
                local.get 12
                local.get 19
                i32.sub
                local.set 9
              end
              local.get 9
              br_if 1 (;@4;)
              local.get 1
              i32.load offset=28
              local.set 7
              local.get 1
              local.get 4
              i32.store offset=28
              local.get 7
              local.get 10
              i32.add
              local.set 14
              local.get 2
              local.get 7
              i32.sub
              local.set 2
              br 4 (;@1;)
            end
            local.get 7
            i32.const 4
            i32.const 1050068
            call 15
            unreachable
          end
          local.get 4
          local.get 8
          i32.gt_u
          br_if 1 (;@2;)
          local.get 16
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 1
      i32.const 1
      i32.store8 offset=37
      block  ;; label = @2
        local.get 1
        i32.load8_u offset=36
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 1
          i32.load offset=32
          local.set 4
          local.get 1
          i32.load offset=28
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        i32.load offset=32
        local.tee 4
        local.get 1
        i32.load offset=28
        local.tee 3
        i32.eq
        br_if 1 (;@1;)
      end
      local.get 3
      local.get 10
      i32.add
      local.set 14
      local.get 4
      local.get 3
      i32.sub
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 14
    i32.store)
  (func (;17;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block (result i32)  ;; label = @2
        i32.const 0
        local.get 1
        local.get 1
        local.get 2
        i32.add
        local.tee 2
        i32.gt_u
        br_if 0 (;@2;)
        drop
        i32.const 0
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
        br_if 0 (;@2;)
        drop
        local.get 3
        local.get 1
        if (result i32)  ;; label = @3
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
        call 30
        local.get 3
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=16
        local.set 0
        local.get 3
        i32.load offset=12
      end
      local.get 0
      local.set 6
      call 14
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
  (func (;18;) (type 4) (param i32 i32 i32)
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
      call 58
      local.get 3
      i32.load offset=8
      local.tee 2
      i32.const -2147483647
      i32.ne
      if  ;; label = @2
        local.get 3
        i32.load offset=12
        drop
        local.get 2
        call 14
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
    call 63
    drop
    local.get 0
    local.get 2
    local.get 4
    i32.add
    i32.store offset=8)
  (func (;19;) (type 3) (param i32)
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
    call 58
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
      call 14
      unreachable
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;20;) (type 2) (param i32 i32)
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
            call 53
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
          call 53
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
          call 53
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
            call 53
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
            call 53
            local.get 3
            local.get 9
            local.get 6
            call 53
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
            call 53
            local.get 3
            local.get 9
            local.get 6
            call 53
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
        call 53
        local.get 1
        i32.const 4
        i32.add
        local.get 3
        call 54
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
      call 53
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
      call 53
      local.get 3
      call 54
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
          call 4
          br 2 (;@1;)
        end
        local.get 1
        i32.load offset=8
        local.tee 0
        local.get 1
        i32.load offset=12
        call 6
        local.get 1
        i32.load offset=4
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.const 28
        i32.mul
        call 3
        br 1 (;@1;)
      end
      local.get 1
      i32.const 4
      i32.add
      call 4
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;21;) (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 536870913
                i32.lt_u
                if  ;; label = @7
                  local.get 1
                  local.get 0
                  i32.const 537921164
                  i32.add
                  local.tee 7
                  i32.store offset=36
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 4
                            local.tee 3
                            i32.const 5
                            i32.eq
                            local.get 0
                            local.get 3
                            i32.eq
                            i32.or
                            br_if 1 (;@11;)
                            local.get 3
                            i32.const 1
                            i32.add
                            local.set 4
                            local.get 3
                            i32.const 537921164
                            i32.add
                            i32.load8_s
                            local.tee 6
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
                            local.get 6
                            i32.const 0
                            i32.lt_s
                            br_if 0 (;@12;)
                          end
                          local.get 1
                          local.get 3
                          i32.const 537921165
                          i32.add
                          local.tee 2
                          i32.store offset=32
                          local.get 3
                          i32.const 4
                          i32.eq
                          local.get 6
                          i32.const 15
                          i32.gt_u
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 1
                          local.set 0
                          block (result i32)  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    br_table 0 (;@16;) 7 (;@9;) 1 (;@15;) 2 (;@14;) 8 (;@8;) 6 (;@10;) 5 (;@11;)
                                  end
                                  local.get 2
                                  local.get 7
                                  i32.eq
                                  br_if 4 (;@11;)
                                  local.get 2
                                  i32.load8_u
                                  local.set 4
                                  i32.const 0
                                  local.set 0
                                  br 6 (;@9;)
                                end
                                local.get 1
                                i32.const -64
                                i32.sub
                                local.get 1
                                i32.const 32
                                i32.add
                                call 22
                                local.get 1
                                i32.load offset=64
                                i32.const -2147483648
                                i32.eq
                                br_if 1 (;@13;)
                                local.get 1
                                i32.const 108
                                i32.add
                                local.get 1
                                i32.const 72
                                i32.add
                                i32.load
                                i32.store align=2
                                local.get 1
                                local.get 1
                                i64.load offset=64 align=4
                                i64.store offset=100 align=2
                                i32.const 2
                                br 2 (;@12;)
                              end
                              local.get 1
                              i32.const -64
                              i32.sub
                              local.get 1
                              i32.const 32
                              i32.add
                              call 22
                              local.get 1
                              i32.load offset=64
                              i32.const -2147483648
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 1
                              i32.const 108
                              i32.add
                              local.get 1
                              i32.const 72
                              i32.add
                              i32.load
                              i32.store align=2
                              local.get 1
                              local.get 1
                              i64.load offset=64 align=4
                              i64.store offset=100 align=2
                              i32.const 3
                              br 1 (;@12;)
                            end
                            local.get 1
                            i32.load8_u offset=68
                            local.set 2
                            i32.const 6
                          end
                          local.tee 0
                          i32.const 6
                          i32.ne
                          br_if 5 (;@6;)
                        end
                        local.get 1
                        i32.const 0
                        i32.store
                        br 9 (;@1;)
                      end
                      i32.const 5
                      local.set 0
                    end
                    local.get 1
                    i32.const 0
                    i32.store
                    local.get 1
                    i32.const 40
                    i32.add
                    local.get 1
                    i32.const 104
                    i32.add
                    i64.load align=2
                    i64.store align=2
                    local.get 1
                    local.get 4
                    i32.store8 offset=33
                    local.get 1
                    local.get 1
                    i64.load offset=98 align=2
                    i64.store offset=34 align=2
                    local.get 1
                    local.get 0
                    i32.store8 offset=32
                    br 6 (;@2;)
                  end
                  local.get 1
                  i32.const 0
                  i32.store
                  local.get 1
                  i32.const 40
                  i32.add
                  local.get 1
                  i32.const 104
                  i32.add
                  i64.load align=2
                  i64.store align=2
                  local.get 1
                  local.get 1
                  i64.load offset=98 align=2
                  i64.store offset=34 align=2
                  local.get 1
                  i32.const 4
                  i32.store8 offset=32
                  br 2 (;@5;)
                end
                local.get 0
                i32.const 536870912
                i32.const 1048764
                call 15
                unreachable
              end
              local.get 1
              i32.const 0
              i32.store
              local.get 1
              i32.const 40
              i32.add
              local.get 1
              i32.const 104
              i32.add
              i64.load align=2
              i64.store align=2
              local.get 1
              local.get 2
              i32.store8 offset=33
              local.get 1
              local.get 1
              i64.load offset=98 align=2
              i64.store offset=34 align=2
              local.get 1
              local.get 0
              i32.store8 offset=32
              local.get 0
              i32.const 2
              i32.sub
              br_table 2 (;@3;) 1 (;@4;) 0 (;@5;) 3 (;@2;)
            end
            i32.const 1074792076
            i32.load8_u
            drop
            i32.const 10
            call 9
            local.tee 0
            if  ;; label = @5
              local.get 0
              i32.const 8
              i32.add
              i32.const 1048828
              i32.load16_u align=1
              i32.store16 align=1
              local.get 0
              i32.const 1048820
              i64.load align=1
              i64.store align=1
              local.get 1
              call 5
              local.get 1
              i64.const -9223372032559808502
              i64.store offset=16 align=4
              local.get 1
              local.get 0
              i32.store offset=12
              local.get 1
              i32.const 10
              i32.store offset=8
              local.get 1
              i64.const 4294967299
              i64.store align=4
              br 3 (;@2;)
            end
            i32.const 1
            call 14
            unreachable
          end
          local.get 1
          local.get 1
          i32.const 36
          i32.add
          i32.store offset=48
          local.get 1
          i32.const 1
          i32.store offset=68
          local.get 1
          i32.const 1048812
          i32.store offset=64
          local.get 1
          i64.const 1
          i64.store offset=76 align=4
          local.get 1
          i32.const 2
          i32.store offset=92
          local.get 1
          local.get 1
          i32.const 88
          i32.add
          i32.store offset=72
          local.get 1
          local.get 1
          i32.const 48
          i32.add
          i32.store offset=88
          local.get 1
          i32.const 52
          i32.add
          local.get 1
          i32.const -64
          i32.sub
          call 24
          local.get 1
          call 5
          local.get 1
          i32.const 16
          i32.add
          local.get 1
          i32.const 60
          i32.add
          i32.load
          i32.store
          local.get 1
          i64.const 8589934595
          i64.store align=4
          local.get 1
          i32.const -2147483647
          i32.store offset=20
          local.get 1
          local.get 1
          i64.load offset=52 align=4
          i64.store offset=8 align=4
          br 1 (;@2;)
        end
        local.get 1
        local.get 1
        i32.const 36
        i32.add
        i32.store offset=48
        local.get 1
        i32.const 1
        i32.store offset=68
        local.get 1
        i32.const 1048796
        i32.store offset=64
        local.get 1
        i64.const 1
        i64.store offset=76 align=4
        local.get 1
        i32.const 2
        i32.store offset=92
        local.get 1
        local.get 1
        i32.const 88
        i32.add
        i32.store offset=72
        local.get 1
        local.get 1
        i32.const 48
        i32.add
        i32.store offset=88
        local.get 1
        i32.const 52
        i32.add
        local.get 1
        i32.const -64
        i32.sub
        call 24
        local.get 1
        call 5
        local.get 1
        i32.const 16
        i32.add
        local.get 1
        i32.const 60
        i32.add
        i32.load
        i32.store
        local.get 1
        i64.const 3
        i64.store align=4
        local.get 1
        i32.const -2147483647
        i32.store offset=20
        local.get 1
        local.get 1
        i64.load offset=52 align=4
        i64.store offset=8 align=4
      end
      local.get 1
      i32.load8_u offset=32
      i32.const 6
      i32.and
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=36
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=40
      local.get 0
      call 3
    end
    local.get 1
    i32.const -64
    i32.sub
    local.get 1
    call 20
    local.get 1
    i32.load offset=72
    local.tee 0
    i32.const 536870913
    i32.ge_u
    if  ;; label = @1
      local.get 0
      i32.const 536870912
      i32.const 1048832
      call 15
      unreachable
    end
    i32.const 1050252
    local.get 1
    i32.load offset=68
    local.tee 3
    local.get 0
    call 63
    drop
    local.get 0
    call 1
    local.get 1
    i32.load offset=64
    local.tee 0
    if  ;; label = @1
      local.get 3
      local.get 0
      call 3
    end
    local.get 1
    i32.const 112
    i32.add
    global.set 0)
  (func (;22;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 1
    i32.load
    local.set 6
    local.get 1
    i32.load offset=4
    local.set 10
    i32.const -5
    local.set 4
    i32.const 5
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 10
          local.get 2
          local.get 6
          i32.add
          local.tee 4
          i32.const 5
          i32.add
          local.tee 9
          i32.eq
          if  ;; label = @4
            i32.const 4
            local.set 8
            br 2 (;@2;)
          end
          local.get 1
          local.get 4
          i32.const 6
          i32.add
          i32.store
          local.get 2
          i32.const 1
          i32.add
          local.set 4
          local.get 9
          i32.load8_s
          local.tee 9
          i32.const 127
          i32.and
          local.get 7
          i32.shl
          local.get 5
          i32.or
          local.set 5
          local.get 7
          i32.const 7
          i32.add
          local.set 7
          local.get 9
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const -1
        i32.eq
        local.get 9
        i32.const 15
        i32.gt_u
        i32.and
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1048576
            local.get 5
            local.get 5
            i32.const 1048576
            i32.ge_u
            select
            local.tee 2
            i32.const 0
            local.get 10
            local.get 4
            local.get 6
            i32.add
            local.tee 7
            i32.const 5
            i32.add
            i32.sub
            local.get 5
            i32.ge_u
            select
            local.tee 4
            i32.eqz
            if  ;; label = @5
              i32.const 1
              local.set 4
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            i32.const 1074792076
            i32.load8_u
            drop
            local.get 4
            call 9
            local.tee 4
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 3
          i32.const 0
          i32.store offset=12
          local.get 3
          local.get 4
          i32.store offset=8
          local.get 3
          local.get 2
          i32.store offset=4
          local.get 5
          if  ;; label = @4
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 10
              local.get 2
              local.get 7
              i32.add
              local.tee 6
              i32.const 5
              i32.add
              local.tee 8
              i32.eq
              if  ;; label = @6
                local.get 0
                i32.const -2147483648
                i32.store
                local.get 0
                i32.const 4
                i32.store8 offset=4
                local.get 3
                i32.load offset=4
                local.tee 0
                i32.eqz
                br_if 5 (;@1;)
                local.get 3
                i32.load offset=8
                local.get 0
                call 3
                br 5 (;@1;)
              end
              local.get 1
              local.get 6
              i32.const 6
              i32.add
              i32.store
              local.get 8
              i32.load8_u
              local.set 6
              local.get 3
              i32.load offset=4
              local.get 2
              i32.eq
              if  ;; label = @6
                local.get 3
                i32.const 4
                i32.add
                call 19
                local.get 3
                i32.load offset=8
                local.set 4
              end
              local.get 2
              local.get 4
              i32.add
              local.get 6
              i32.store8
              local.get 3
              local.get 2
              i32.const 1
              i32.add
              local.tee 2
              i32.store offset=12
              local.get 2
              local.get 5
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 0
          local.get 3
          i64.load offset=4 align=4
          i64.store align=4
          local.get 0
          i32.const 8
          i32.add
          local.get 3
          i32.const 12
          i32.add
          i32.load
          i32.store
          br 2 (;@1;)
        end
        unreachable
      end
      local.get 0
      i32.const -2147483648
      i32.store
      local.get 0
      local.get 8
      i32.store8 offset=4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;23;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.tee 0
    i32.load offset=8
    local.set 5
    local.get 0
    i32.load offset=4
    local.set 3
    i32.const 1
    local.set 6
    local.get 1
    i32.load offset=20
    i32.const 1049080
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
              i32.const 1049128
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
              i32.const 1049132
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
            i32.const 1049100
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
            call 38
            i32.eqz
            if  ;; label = @5
              local.get 2
              i32.load offset=48
              i32.const 1049130
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
          call 38
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
      i32.const 1049133
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
  (func (;24;) (type 2) (param i32 i32)
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
                  local.set 2
                  local.get 5
                  i32.const -4
                  i32.and
                  local.tee 5
                  local.set 8
                  loop  ;; label = @8
                    local.get 2
                    i32.load
                    local.get 2
                    i32.const 8
                    i32.sub
                    i32.load
                    local.get 2
                    i32.const 16
                    i32.sub
                    i32.load
                    local.get 2
                    i32.const 24
                    i32.sub
                    i32.load
                    local.get 3
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    local.set 3
                    local.get 2
                    i32.const 32
                    i32.add
                    local.set 2
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
                  local.set 2
                  loop  ;; label = @8
                    local.get 2
                    i32.load
                    local.get 3
                    i32.add
                    local.set 3
                    local.get 2
                    i32.const 8
                    i32.add
                    local.set 2
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
                  local.get 3
                  i32.const 0
                  i32.lt_s
                  br_if 1 (;@6;)
                  local.get 6
                  i32.load offset=4
                  i32.eqz
                  local.get 3
                  i32.const 16
                  i32.lt_u
                  i32.and
                  br_if 1 (;@6;)
                  local.get 3
                  i32.const 1
                  i32.shl
                  local.set 3
                end
                local.get 3
                i32.const 0
                i32.lt_s
                br_if 3 (;@3;)
                local.get 3
                br_if 1 (;@5;)
              end
              i32.const 1
              local.set 2
              i32.const 0
              local.set 3
              br 1 (;@4;)
            end
            i32.const 1074792076
            i32.load8_u
            drop
            local.get 3
            call 9
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 4
          i32.const 0
          i32.store offset=8
          local.get 4
          local.get 2
          i32.store offset=4
          local.get 4
          local.get 3
          i32.store
          local.get 4
          i32.const 1048856
          local.get 1
          call 32
          i32.eqz
          br_if 2 (;@1;)
          global.get 0
          i32.const -64
          i32.add
          local.tee 0
          global.set 0
          local.get 0
          i32.const 86
          i32.store offset=12
          local.get 0
          i32.const 1048960
          i32.store offset=8
          local.get 0
          i32.const 1048944
          i32.store offset=20
          local.get 0
          local.get 4
          i32.const 15
          i32.add
          i32.store offset=16
          local.get 0
          i32.const 2
          i32.store offset=28
          local.get 0
          i32.const 1049084
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
          i32.const 1049064
          call 28
          unreachable
        end
        call 27
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
  (func (;25;) (type 5) (result i32)
    i32.const 537921164)
  (func (;26;) (type 6))
  (func (;27;) (type 6)
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
    i32.const 1048900
    i32.store offset=8
    local.get 0
    i64.const 4
    i64.store offset=16 align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 1048928
    call 28
    unreachable)
  (func (;28;) (type 2) (param i32 i32)
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
      i32.const 5
      local.get 2
      call 61
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
    i32.const 6
    local.get 2
    call 61
    unreachable)
  (func (;29;) (type 4) (param i32 i32 i32)
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
      call 14
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
      call 14
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
    call 30
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
      call 14
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
  (func (;30;) (type 4) (param i32 i32 i32)
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
          call 31
          br 2 (;@1;)
        end
      end
      i32.const 1074792076
      i32.load8_u
      drop
      local.get 1
      call 9
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
  (func (;31;) (type 0) (param i32 i32 i32) (result i32)
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
                      i32.const 1074792516
                      i32.load
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 7
                      i32.const 1074792512
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
                      call 51
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
                      call 52
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
                    call 52
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
                i32.const 1074792504
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
                i32.const 1074792512
                local.get 1
                i32.store
                i32.const 1074792504
                local.get 2
                i32.store
                local.get 0
                return
              end
              i32.const 1074792508
              i32.load
              local.get 3
              i32.add
              local.tee 3
              local.get 1
              i32.gt_u
              br_if 4 (;@1;)
            end
            local.get 2
            call 9
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
            call 63
            local.get 0
            call 50
            local.set 0
          end
          local.get 0
          return
        end
        i32.const 1050125
        i32.const 1050172
        call 44
        unreachable
      end
      i32.const 1050188
      i32.const 1050236
      call 44
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
    i32.const 1074792508
    local.get 1
    i32.store
    i32.const 1074792516
    local.get 2
    i32.store
    local.get 0)
  (func (;32;) (type 0) (param i32 i32 i32) (result i32)
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
  (func (;33;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1048848
    i32.const 5
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0))
  (func (;34;) (type 3) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 1
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      call 3
    end)
  (func (;35;) (type 0) (param i32 i32 i32) (result i32)
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
      call 29
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
    call 63
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;36;) (type 1) (param i32 i32) (result i32)
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
              call 14
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
              call 14
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
            call 30
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
              call 14
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
        call 29
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
      call 63
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
  (func (;37;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1048856
    local.get 1
    call 32)
  (func (;38;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 4
    global.set 0
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=28
          local.tee 2
          i32.const 16
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 2
            i32.const 32
            i32.and
            br_if 1 (;@3;)
            local.get 0
            i64.load8_u
            local.get 1
            call 41
            br 3 (;@1;)
          end
          local.get 0
          i32.load8_u
          local.set 0
          i32.const 127
          local.set 2
          loop  ;; label = @4
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
            br_if 0 (;@4;)
          end
          br 1 (;@2;)
        end
        local.get 0
        i32.load8_u
        local.set 0
        i32.const 127
        local.set 2
        loop  ;; label = @3
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
          br_if 0 (;@3;)
        end
        local.get 3
        i32.const 129
        i32.ge_u
        if  ;; label = @3
          local.get 3
          call 39
          unreachable
        end
        local.get 1
        i32.const 1049172
        i32.const 2
        local.get 5
        i32.const 128
        local.get 3
        i32.sub
        call 42
        br 1 (;@1;)
      end
      local.get 3
      i32.const 129
      i32.ge_u
      if  ;; label = @2
        local.get 3
        call 39
        unreachable
      end
      local.get 1
      i32.const 1049172
      i32.const 2
      local.get 5
      i32.const 128
      local.get 3
      i32.sub
      call 42
    end
    local.get 4
    i32.const 128
    i32.add
    global.set 0)
  (func (;39;) (type 3) (param i32)
    (local i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.const 128
    i32.store offset=4
    local.get 1
    i32.const 2
    i32.store offset=12
    local.get 1
    i32.const 1049428
    i32.store offset=8
    local.get 1
    i64.const 2
    i64.store offset=20 align=4
    local.get 1
    i64.const 4294967296
    local.tee 2
    local.get 1
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 1
    local.get 2
    local.get 1
    i64.extend_i32_u
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
    i32.const 1049156
    call 28
    unreachable)
  (func (;40;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call 41)
  (func (;41;) (type 9) (param i64 i32) (result i32)
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
        i32.const 1049174
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
        i32.const 1049174
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
      i32.const 1049174
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
        i32.const 1049174
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
    call 42
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;42;) (type 7) (param i32 i32 i32 i32 i32) (result i32)
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
      call 43
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
            call 43
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
          call 43
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
      call 43
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
  (func (;43;) (type 7) (param i32 i32 i32 i32 i32) (result i32)
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
  (func (;44;) (type 2) (param i32 i32)
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
    call 28
    unreachable)
  (func (;45;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=4
    local.set 7
    local.get 0
    i32.load
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          i32.const 1
          i32.and
          i32.eqz
          local.tee 0
          local.get 1
          i32.load
          local.tee 4
          i32.eqz
          i32.and
          i32.eqz
          if  ;; label = @4
            block  ;; label = @5
              local.get 0
              br_if 0 (;@5;)
              local.get 6
              local.get 7
              i32.add
              local.set 11
              block  ;; label = @6
                local.get 1
                i32.load offset=12
                local.tee 10
                i32.eqz
                if  ;; label = @7
                  local.get 6
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 6
                local.set 2
                loop  ;; label = @7
                  local.get 2
                  local.tee 0
                  local.get 11
                  i32.eq
                  br_if 2 (;@5;)
                  block (result i32)  ;; label = @8
                    local.get 0
                    i32.const 1
                    i32.add
                    local.get 0
                    i32.load8_s
                    local.tee 9
                    i32.const 0
                    i32.ge_s
                    br_if 0 (;@8;)
                    drop
                    local.get 0
                    i32.const 2
                    i32.add
                    local.get 9
                    i32.const -32
                    i32.lt_u
                    br_if 0 (;@8;)
                    drop
                    local.get 0
                    i32.const 3
                    i32.add
                    local.get 9
                    i32.const -16
                    i32.lt_u
                    br_if 0 (;@8;)
                    drop
                    local.get 0
                    i32.const 4
                    i32.add
                  end
                  local.tee 2
                  local.get 0
                  i32.sub
                  local.get 3
                  i32.add
                  local.set 3
                  local.get 10
                  local.get 8
                  i32.const 1
                  i32.add
                  local.tee 8
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 2
              local.get 11
              i32.eq
              br_if 0 (;@5;)
              local.get 2
              i32.load8_s
              drop
              local.get 3
              local.get 7
              block (result i32)  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 7
                  i32.lt_u
                  if  ;; label = @8
                    local.get 3
                    local.get 6
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    br_if 1 (;@7;)
                    i32.const 0
                    br 2 (;@6;)
                  end
                  local.get 3
                  local.get 7
                  i32.eq
                  br_if 0 (;@7;)
                  i32.const 0
                  br 1 (;@6;)
                end
                local.get 6
              end
              local.tee 0
              select
              local.set 7
              local.get 0
              local.get 6
              local.get 0
              select
              local.set 6
            end
            local.get 4
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            i32.load offset=4
            local.set 13
            local.get 7
            i32.const 16
            i32.ge_u
            if  ;; label = @5
              local.get 7
              local.get 6
              local.get 6
              i32.const 3
              i32.add
              i32.const -4
              i32.and
              local.tee 3
              i32.sub
              local.tee 8
              i32.add
              local.tee 10
              i32.const 3
              i32.and
              local.set 9
              i32.const 0
              local.set 0
              local.get 3
              local.get 6
              i32.ne
              if  ;; label = @6
                local.get 8
                i32.const -4
                i32.le_u
                if  ;; label = @7
                  i32.const 0
                  local.set 4
                  loop  ;; label = @8
                    local.get 0
                    local.get 4
                    local.get 6
                    i32.add
                    local.tee 2
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 2
                    i32.const 1
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 2
                    i32.const 2
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 2
                    i32.const 3
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.set 0
                    local.get 4
                    i32.const 4
                    i32.add
                    local.tee 4
                    br_if 0 (;@8;)
                  end
                end
                local.get 6
                local.set 2
                loop  ;; label = @7
                  local.get 0
                  local.get 2
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 0
                  local.get 2
                  i32.const 1
                  i32.add
                  local.set 2
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
                local.get 3
                local.get 10
                i32.const -4
                i32.and
                i32.add
                local.tee 2
                i32.load8_s
                i32.const -65
                i32.gt_s
                local.set 5
                local.get 9
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                local.get 5
                local.get 2
                i32.load8_s offset=1
                i32.const -65
                i32.gt_s
                i32.add
                local.set 5
                local.get 9
                i32.const 2
                i32.eq
                br_if 0 (;@6;)
                local.get 5
                local.get 2
                i32.load8_s offset=2
                i32.const -65
                i32.gt_s
                i32.add
                local.set 5
              end
              local.get 10
              i32.const 2
              i32.shr_u
              local.set 4
              local.get 0
              local.get 5
              i32.add
              local.set 5
              loop  ;; label = @6
                local.get 3
                local.set 10
                local.get 4
                i32.eqz
                br_if 4 (;@2;)
                i32.const 192
                local.get 4
                local.get 4
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
                local.set 2
                local.get 4
                i32.const 4
                i32.ge_u
                if  ;; label = @7
                  local.get 3
                  local.get 11
                  i32.const 1008
                  i32.and
                  i32.add
                  local.set 9
                  local.get 3
                  local.set 0
                  loop  ;; label = @8
                    local.get 2
                    local.get 0
                    i32.load
                    local.tee 2
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 2
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    i32.add
                    local.get 0
                    i32.load offset=4
                    local.tee 2
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 2
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    i32.add
                    local.get 0
                    i32.load offset=8
                    local.tee 2
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 2
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    i32.add
                    local.get 0
                    i32.load offset=12
                    local.tee 2
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 2
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    i32.add
                    local.set 2
                    local.get 0
                    i32.const 16
                    i32.add
                    local.tee 0
                    local.get 9
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 4
                local.get 12
                i32.sub
                local.set 4
                local.get 10
                local.get 11
                i32.add
                local.set 3
                local.get 2
                i32.const 8
                i32.shr_u
                i32.const 16711935
                i32.and
                local.get 2
                i32.const 16711935
                i32.and
                i32.add
                i32.const 65537
                i32.mul
                i32.const 16
                i32.shr_u
                local.get 5
                i32.add
                local.set 5
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
              local.tee 2
              i32.load
              local.tee 0
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 0
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.set 0
              local.get 8
              i32.const 1
              i32.eq
              br_if 2 (;@3;)
              local.get 0
              local.get 2
              i32.load offset=4
              local.tee 0
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 0
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.set 0
              local.get 8
              i32.const 2
              i32.eq
              br_if 2 (;@3;)
              local.get 0
              local.get 2
              i32.load offset=8
              local.tee 0
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 0
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.set 0
              br 2 (;@3;)
            end
            local.get 7
            i32.eqz
            if  ;; label = @5
              br 3 (;@2;)
            end
            local.get 7
            i32.const 3
            i32.and
            local.set 2
            block  ;; label = @5
              local.get 7
              i32.const 4
              i32.lt_u
              if  ;; label = @6
                i32.const 0
                local.set 8
                br 1 (;@5;)
              end
              local.get 6
              local.set 0
              local.get 7
              i32.const 12
              i32.and
              local.tee 8
              local.set 3
              loop  ;; label = @6
                local.get 5
                local.get 0
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 0
                i32.const 1
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 0
                i32.const 2
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 0
                i32.const 3
                i32.add
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.set 5
                local.get 0
                i32.const 4
                i32.add
                local.set 0
                local.get 3
                i32.const 4
                i32.sub
                local.tee 3
                br_if 0 (;@6;)
              end
            end
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 6
            local.get 8
            i32.add
            local.set 0
            loop  ;; label = @5
              local.get 5
              local.get 0
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 5
              local.get 0
              i32.const 1
              i32.add
              local.set 0
              local.get 2
              i32.const 1
              i32.sub
              local.tee 2
              br_if 0 (;@5;)
            end
            br 2 (;@2;)
          end
          br 2 (;@1;)
        end
        local.get 0
        i32.const 8
        i32.shr_u
        i32.const 459007
        i32.and
        local.get 0
        i32.const 16711935
        i32.and
        i32.add
        i32.const 65537
        i32.mul
        i32.const 16
        i32.shr_u
        local.get 5
        i32.add
        local.set 5
      end
      block  ;; label = @2
        local.get 5
        local.get 13
        i32.lt_u
        if  ;; label = @3
          local.get 13
          local.get 5
          i32.sub
          local.set 4
          i32.const 0
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load8_u offset=32
                i32.const 1
                i32.sub
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;)
              end
              local.get 4
              local.set 0
              i32.const 0
              local.set 4
              br 1 (;@4;)
            end
            local.get 4
            i32.const 1
            i32.shr_u
            local.set 0
            local.get 4
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 4
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.load offset=16
          local.set 2
          local.get 1
          i32.load offset=24
          local.set 3
          local.get 1
          i32.load offset=20
          local.set 1
          loop  ;; label = @4
            local.get 0
            i32.const 1
            i32.sub
            local.tee 0
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            local.get 2
            local.get 3
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
      local.get 1
      local.get 6
      local.get 7
      local.get 3
      i32.load offset=12
      call_indirect (type 0)
      if  ;; label = @2
        i32.const 1
        return
      end
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 0
        local.get 4
        i32.eq
        if  ;; label = @3
          i32.const 0
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.get 2
        local.get 3
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 0
      i32.const 1
      i32.sub
      local.get 4
      i32.lt_u
      return
    end
    local.get 1
    i32.load offset=20
    local.get 6
    local.get 7
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0))
  (func (;46;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func (;47;) (type 0) (param i32 i32 i32) (result i32)
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
            i32.const 1049124
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
  (func (;48;) (type 1) (param i32 i32) (result i32)
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
      i32.const 1049124
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
  (func (;49;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1049100
    local.get 1
    call 32)
  (func (;50;) (type 3) (param i32)
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
        i32.const 1074792512
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
          i32.const 1074792504
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
        call 51
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
                  i32.const 1074792516
                  i32.load
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1074792512
                  i32.load
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 2
                  local.get 3
                  i32.const -8
                  i32.and
                  local.tee 2
                  call 51
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
                  i32.const 1074792512
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1074792504
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
              call 60
              i32.const 0
              local.set 1
              i32.const 1074792536
              i32.const 1074792536
              i32.load
              i32.const 1
              i32.sub
              local.tee 0
              i32.store
              local.get 0
              br_if 4 (;@1;)
              i32.const 1074792224
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
              i32.const 1074792536
              i32.const 4095
              local.get 1
              local.get 1
              i32.const 4095
              i32.le_u
              select
              i32.store
              return
            end
            i32.const 1074792516
            local.get 1
            i32.store
            i32.const 1074792508
            i32.const 1074792508
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
            i32.const 1074792512
            i32.load
            local.get 1
            i32.eq
            if  ;; label = @5
              i32.const 1074792504
              i32.const 0
              i32.store
              i32.const 1074792512
              i32.const 0
              i32.store
            end
            local.get 0
            i32.const 1074792528
            i32.load
            local.tee 3
            i32.le_u
            br_if 3 (;@1;)
            i32.const 1074792516
            i32.load
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            local.set 0
            i32.const 1074792508
            i32.load
            local.tee 4
            i32.const 41
            i32.lt_u
            br_if 2 (;@2;)
            i32.const 1074792216
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
          i32.const 1074792512
          local.get 1
          i32.store
          i32.const 1074792504
          i32.const 1074792504
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
        i32.const 1074792232
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 1074792496
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
            i32.const 1074792496
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
      i32.const 1074792224
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
      i32.const 1074792536
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
      i32.const 1074792528
      i32.const -1
      i32.store
    end)
  (func (;51;) (type 2) (param i32 i32)
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
          i32.const 1074792088
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
          i32.const 1074792500
          i32.const 1074792500
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
        i32.const 1074792496
        i32.const 1074792496
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
  (func (;52;) (type 2) (param i32 i32)
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
        i32.const 1074792512
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
          i32.const 1074792504
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
        call 51
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
              i32.const 1074792516
              i32.load
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 1074792512
              i32.load
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 2
              call 51
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
              i32.const 1074792512
              i32.load
              i32.ne
              br_if 1 (;@4;)
              i32.const 1074792504
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
            call 60
            return
          end
          local.get 1
          i32.const 248
          i32.and
          i32.const 1074792232
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1074792496
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
              i32.const 1074792496
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
        i32.const 1074792516
        local.get 0
        i32.store
        i32.const 1074792508
        i32.const 1074792508
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
        i32.const 1074792512
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1074792504
        i32.const 0
        i32.store
        i32.const 1074792512
        i32.const 0
        i32.store
        return
      end
      i32.const 1074792512
      local.get 0
      i32.store
      i32.const 1074792504
      i32.const 1074792504
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
  (func (;53;) (type 4) (param i32 i32 i32)
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
      call 17
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
    call 63
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8)
  (func (;54;) (type 2) (param i32 i32)
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
            call 53
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
          call 53
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
                local.get 5
                i32.add
                local.tee 4
                local.get 3
                i32.store8
                local.get 3
                i32.const 128
                i32.lt_u
                br_if 0 (;@6;)
                local.get 4
                local.get 3
                i32.const 128
                i32.or
                i32.store8
                local.get 3
                i32.const 7
                i32.shr_u
                local.set 3
                i32.const 5
                local.set 4
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
            local.set 4
          end
          local.get 1
          local.get 2
          i32.const 8
          i32.add
          local.get 4
          call 53
          local.get 1
          local.get 0
          local.get 6
          call 53
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
        call 53
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
              local.get 5
              i32.add
              local.tee 4
              local.get 3
              i32.store8
              local.get 3
              i32.const 128
              i32.lt_u
              br_if 0 (;@5;)
              local.get 4
              local.get 3
              i32.const 128
              i32.or
              i32.store8
              local.get 3
              i32.const 7
              i32.shr_u
              local.set 3
              i32.const 5
              local.set 4
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
          local.set 4
        end
        local.get 1
        local.get 2
        i32.const 8
        i32.add
        local.get 4
        call 53
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
                call 53
                br 2 (;@4;)
              end
              local.get 2
              i32.const 1
              i32.store8 offset=8
              i32.const 0
              local.set 5
              local.get 2
              i32.const 0
              i32.store offset=9 align=1
              local.get 1
              local.get 2
              i32.const 8
              i32.add
              i32.const 1
              call 53
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
                    local.get 5
                    i32.add
                    local.tee 4
                    local.get 3
                    i32.store8
                    local.get 3
                    i32.const 128
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 3
                    i32.const 128
                    i32.or
                    i32.store8
                    local.get 3
                    i32.const 7
                    i32.shr_u
                    local.set 3
                    i32.const 5
                    local.set 4
                    local.get 5
                    i32.const 1
                    i32.add
                    local.tee 5
                    i32.const 5
                    i32.ne
                    br_if 1 (;@7;)
                    br 2 (;@6;)
                  end
                end
                local.get 5
                i32.const 1
                i32.add
                local.set 4
              end
              local.get 1
              local.get 2
              i32.const 8
              i32.add
              local.get 4
              call 53
              local.get 1
              local.get 8
              local.get 0
              call 53
              br 1 (;@4;)
            end
            local.get 2
            i32.const 2
            i32.store8 offset=8
            i32.const 0
            local.set 5
            local.get 2
            i32.const 0
            i32.store offset=9 align=1
            local.get 1
            local.get 2
            i32.const 8
            i32.add
            i32.const 1
            call 53
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
                  local.get 5
                  i32.add
                  local.tee 4
                  local.get 3
                  i32.store8
                  local.get 3
                  i32.const 128
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 4
                  local.get 3
                  i32.const 128
                  i32.or
                  i32.store8
                  local.get 3
                  i32.const 7
                  i32.shr_u
                  local.set 3
                  i32.const 5
                  local.set 4
                  local.get 5
                  i32.const 1
                  i32.add
                  local.tee 5
                  i32.const 5
                  i32.ne
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
              end
              local.get 5
              i32.const 1
              i32.add
              local.set 4
            end
            local.get 1
            local.get 2
            i32.const 8
            i32.add
            local.get 4
            call 53
            local.get 1
            local.get 8
            local.get 0
            call 53
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
      call 53
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
            local.get 5
            i32.add
            local.tee 4
            local.get 3
            i32.store8
            local.get 3
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 3
            i32.const 128
            i32.or
            i32.store8
            local.get 3
            i32.const 7
            i32.shr_u
            local.set 3
            i32.const 5
            local.set 4
            local.get 5
            i32.const 1
            i32.add
            local.tee 5
            i32.const 5
            i32.ne
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 4
      end
      local.get 1
      local.get 2
      i32.const 8
      i32.add
      local.get 4
      call 53
      local.get 1
      local.get 7
      local.get 6
      call 53
      local.get 0
      i32.load offset=20
      local.set 6
      local.get 0
      i32.load offset=16
      local.set 5
      i32.const 0
      local.set 4
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
            local.tee 0
            local.get 3
            i32.store8
            local.get 3
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            local.get 3
            i32.const 128
            i32.or
            i32.store8
            local.get 3
            i32.const 7
            i32.shr_u
            local.set 3
            i32.const 5
            local.set 0
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
        local.set 0
      end
      local.get 1
      local.get 2
      i32.const 8
      i32.add
      local.get 0
      call 53
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=8
      local.set 3
      loop  ;; label = @2
        local.get 5
        i32.load8_u
        local.set 4
        local.get 1
        i32.load
        local.get 3
        i32.eq
        if  ;; label = @3
          local.get 1
          call 56
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        local.get 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 0
        i32.store offset=8
        local.get 1
        i32.load offset=4
        local.get 3
        i32.add
        local.get 4
        i32.store8
        local.get 0
        local.set 3
        local.get 6
        i32.const 1
        i32.sub
        local.tee 6
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;55;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.load
    local.set 6
    local.get 1
    i32.load offset=4
    local.set 8
    i32.const -5
    local.set 3
    i32.const 5
    local.set 9
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        local.tee 5
        i32.eqz
        br_if 1 (;@1;)
        local.get 8
        local.get 3
        local.get 6
        i32.add
        local.tee 3
        i32.const 5
        i32.add
        local.tee 7
        i32.eq
        if  ;; label = @3
          i32.const 4
          local.set 9
          br 2 (;@1;)
        end
        local.get 1
        local.get 3
        i32.const 6
        i32.add
        i32.store
        local.get 5
        i32.const 1
        i32.add
        local.set 3
        local.get 7
        i32.load8_s
        local.tee 7
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
        local.get 7
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const -1
      i32.eq
      local.get 7
      i32.const 15
      i32.gt_u
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        block (result i32)  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                local.get 8
                local.get 3
                local.get 6
                i32.add
                local.tee 8
                i32.const 5
                i32.add
                local.tee 3
                i32.sub
                i32.le_u
                if  ;; label = @7
                  local.get 1
                  local.get 2
                  local.get 3
                  i32.add
                  i32.store
                  local.get 2
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 7
                  i32.sub
                  local.tee 1
                  i32.const 0
                  local.get 1
                  local.get 2
                  i32.le_u
                  select
                  local.set 9
                  local.get 3
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.get 3
                  i32.sub
                  local.set 7
                  i32.const 0
                  local.set 1
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          local.get 3
                          i32.add
                          i32.load8_u
                          local.tee 5
                          i32.extend8_s
                          local.tee 6
                          i32.const 0
                          i32.ge_s
                          if  ;; label = @12
                            local.get 7
                            local.get 1
                            i32.sub
                            i32.const 3
                            i32.and
                            br_if 1 (;@11;)
                            local.get 1
                            local.get 9
                            i32.ge_u
                            br_if 2 (;@10;)
                            loop  ;; label = @13
                              local.get 1
                              local.get 8
                              i32.add
                              local.tee 5
                              i32.const 9
                              i32.add
                              i32.load
                              local.get 5
                              i32.const 5
                              i32.add
                              i32.load
                              i32.or
                              i32.const -2139062144
                              i32.and
                              br_if 3 (;@10;)
                              local.get 1
                              i32.const 8
                              i32.add
                              local.tee 1
                              local.get 9
                              i32.lt_u
                              br_if 0 (;@13;)
                            end
                            br 2 (;@10;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 5
                                          i32.const 1049476
                                          i32.add
                                          i32.load8_u
                                          i32.const 2
                                          i32.sub
                                          br_table 2 (;@17;) 0 (;@19;) 1 (;@18;) 7 (;@12;)
                                        end
                                        local.get 1
                                        i32.const 1
                                        i32.add
                                        local.tee 4
                                        local.get 2
                                        i32.ge_u
                                        br_if 6 (;@12;)
                                        local.get 3
                                        local.get 4
                                        i32.add
                                        i32.load8_s
                                        local.set 4
                                        block  ;; label = @19
                                          local.get 5
                                          i32.const 224
                                          i32.ne
                                          if  ;; label = @20
                                            local.get 5
                                            i32.const 237
                                            i32.eq
                                            br_if 1 (;@19;)
                                            local.get 6
                                            i32.const 31
                                            i32.add
                                            i32.const 255
                                            i32.and
                                            i32.const 12
                                            i32.lt_u
                                            br_if 4 (;@16;)
                                            local.get 6
                                            i32.const -2
                                            i32.and
                                            i32.const -18
                                            i32.ne
                                            br_if 8 (;@12;)
                                            local.get 4
                                            i32.const -64
                                            i32.lt_s
                                            br_if 5 (;@15;)
                                            br 8 (;@12;)
                                          end
                                          local.get 4
                                          i32.const -32
                                          i32.and
                                          i32.const -96
                                          i32.eq
                                          br_if 4 (;@15;)
                                          br 7 (;@12;)
                                        end
                                        local.get 4
                                        i32.const -97
                                        i32.gt_s
                                        br_if 6 (;@12;)
                                        br 3 (;@15;)
                                      end
                                      local.get 1
                                      i32.const 1
                                      i32.add
                                      local.tee 4
                                      local.get 2
                                      i32.ge_u
                                      br_if 5 (;@12;)
                                      local.get 3
                                      local.get 4
                                      i32.add
                                      i32.load8_s
                                      local.set 4
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 5
                                              i32.const 240
                                              i32.sub
                                              br_table 1 (;@20;) 0 (;@21;) 0 (;@21;) 0 (;@21;) 2 (;@19;) 0 (;@21;)
                                            end
                                            local.get 6
                                            i32.const 15
                                            i32.add
                                            i32.const 255
                                            i32.and
                                            i32.const 2
                                            i32.gt_u
                                            br_if 8 (;@12;)
                                            local.get 4
                                            i32.const -64
                                            i32.lt_s
                                            br_if 2 (;@18;)
                                            br 8 (;@12;)
                                          end
                                          local.get 4
                                          i32.const 112
                                          i32.add
                                          i32.const 255
                                          i32.and
                                          i32.const 48
                                          i32.lt_u
                                          br_if 1 (;@18;)
                                          br 7 (;@12;)
                                        end
                                        local.get 4
                                        i32.const -113
                                        i32.gt_s
                                        br_if 6 (;@12;)
                                      end
                                      local.get 1
                                      i32.const 2
                                      i32.add
                                      local.tee 5
                                      local.get 2
                                      i32.ge_u
                                      br_if 5 (;@12;)
                                      local.get 3
                                      local.get 5
                                      i32.add
                                      i32.load8_s
                                      i32.const -65
                                      i32.gt_s
                                      br_if 5 (;@12;)
                                      local.get 1
                                      i32.const 3
                                      i32.add
                                      local.tee 1
                                      local.get 2
                                      i32.ge_u
                                      br_if 5 (;@12;)
                                      local.get 1
                                      local.get 3
                                      i32.add
                                      i32.load8_s
                                      i32.const -65
                                      i32.le_s
                                      br_if 4 (;@13;)
                                      br 5 (;@12;)
                                    end
                                    local.get 1
                                    i32.const 1
                                    i32.add
                                    local.tee 1
                                    local.get 2
                                    i32.lt_u
                                    br_if 2 (;@14;)
                                    br 4 (;@12;)
                                  end
                                  local.get 4
                                  i32.const -64
                                  i32.ge_s
                                  br_if 3 (;@12;)
                                end
                                local.get 1
                                i32.const 2
                                i32.add
                                local.tee 1
                                local.get 2
                                i32.ge_u
                                br_if 2 (;@12;)
                                local.get 1
                                local.get 3
                                i32.add
                                i32.load8_s
                                i32.const -65
                                i32.le_s
                                br_if 1 (;@13;)
                                br 2 (;@12;)
                              end
                              local.get 1
                              local.get 3
                              i32.add
                              i32.load8_s
                              i32.const -65
                              i32.gt_s
                              br_if 1 (;@12;)
                            end
                            local.get 1
                            i32.const 1
                            i32.add
                            local.set 1
                            br 3 (;@9;)
                          end
                          local.get 0
                          i32.const -2147483648
                          i32.store
                          local.get 0
                          i32.const 8
                          i32.store8 offset=4
                          return
                        end
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 1
                        br 1 (;@9;)
                      end
                      local.get 1
                      local.get 2
                      i32.ge_u
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 1
                        local.get 8
                        i32.add
                        i32.const 5
                        i32.add
                        i32.load8_s
                        i32.const 0
                        i32.lt_s
                        br_if 1 (;@9;)
                        local.get 2
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 1
                        i32.ne
                        br_if 0 (;@10;)
                      end
                      br 3 (;@6;)
                    end
                    local.get 1
                    local.get 2
                    i32.lt_u
                    br_if 0 (;@8;)
                  end
                  br 1 (;@6;)
                end
                local.get 0
                i32.const -2147483648
                i32.store
                local.get 0
                i32.const 4
                i32.store8 offset=4
                return
              end
              i32.const 0
              local.get 2
              i32.const 0
              i32.lt_s
              br_if 2 (;@3;)
              drop
              local.get 2
              br_if 1 (;@4;)
            end
            i32.const 0
            local.set 1
            i32.const 1
            local.set 4
            br 2 (;@2;)
          end
          i32.const 1074792076
          i32.load8_u
          drop
          local.get 2
          local.tee 1
          call 9
          local.tee 4
          br_if 1 (;@2;)
          i32.const 1
        end
        call 14
        unreachable
      end
      local.get 4
      local.get 3
      local.get 2
      call 63
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
      return
    end
    local.get 0
    i32.const -2147483648
    i32.store
    local.get 0
    local.get 9
    i32.store8 offset=4)
  (func (;56;) (type 3) (param i32)
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
    call 57
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
      call 14
      unreachable
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;57;) (type 10) (param i32 i32 i32 i32 i32)
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
            call 31
            br 2 (;@2;)
          end
        end
        local.get 7
        if  ;; label = @3
          i32.const 1074792076
          i32.load8_u
          drop
          local.get 7
          call 9
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
  (func (;58;) (type 11) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 4
    global.set 0
    block (result i32)  ;; label = @1
      i32.const 0
      local.get 2
      local.get 2
      local.get 3
      i32.add
      local.tee 3
      i32.gt_u
      br_if 0 (;@1;)
      drop
      i32.const 0
      i32.const 8
      local.get 1
      i32.load
      local.tee 2
      i32.const 1
      i32.shl
      local.tee 5
      local.get 3
      local.get 3
      local.get 5
      i32.lt_u
      select
      local.tee 3
      local.get 3
      i32.const 8
      i32.le_u
      select
      local.tee 3
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      drop
      local.get 4
      local.get 2
      if (result i32)  ;; label = @2
        local.get 4
        local.get 2
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
      i32.const 8
      i32.add
      local.get 3
      local.get 4
      i32.const 20
      i32.add
      call 30
      local.get 4
      i32.load offset=8
      i32.eqz
      if  ;; label = @2
        local.get 4
        i32.load offset=12
        local.set 2
        local.get 1
        local.get 3
        i32.store
        local.get 1
        local.get 2
        i32.store offset=4
        i32.const -2147483647
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=16
      local.set 1
      local.get 4
      i32.load offset=12
    end
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 4
    i32.const 32
    i32.add
    global.set 0)
  (func (;59;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func (;60;) (type 2) (param i32 i32)
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
    i32.const 1074792088
    i32.add
    local.set 4
    i32.const 1
    local.get 2
    i32.shl
    local.tee 3
    i32.const 1074792500
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
      i32.const 1074792500
      i32.const 1074792500
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
  (func (;61;) (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const 1074792084
    i32.const 1074792084
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
        i32.const 1074792544
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          i32.const 1074792540
          i32.const 1074792540
          i32.load
          i32.const 1
          i32.add
          i32.store
          i32.const 1074792080
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
      i32.const 1074792544
      i32.const 0
      i32.store8
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      unreachable
    end
    unreachable)
  (func (;62;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;63;) (type 0) (param i32 i32 i32) (result i32)
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
  (table (;0;) 15 15 funcref)
  (memory (;0;) 16401)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1074792545))
  (global (;2;) i32 (i32.const 1074792560))
  (export "memory" (memory 0))
  (export "smart_nft_view_command_buffer" (func 7))
  (export "smart_nft_view_command" (func 8))
  (export "smart_nft_exec_ret" (func 21))
  (export "smart_nft_exec_buffer" (func 25))
  (export "smart_nft_exec_buffer_free" (func 26))
  (export "smart_nft_view_command_buffer_free" (func 26))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func 40 23 46 45 59 62 34 35 36 37 33 47 48 49)
  (data (;0;) (i32.const 1048576) "memkeyGet the memory keysmemsetSet the memory [key] [val1,val2]memgetGet the memory [key]src/nft1_program_basic/view/command_exec/src/lib.rsY\00\10\003\00\00\00,\00\00\00>\00\00\00Y\00\10\003\00\00\00g\00\00\00\16\00\00\00Y\00\10\003\00\00\00l\00\00\00\19\00\00\00Y\00\10\003\00\00\00~\00\00\002\00\00\00Memory keys: \00\00\00\cc\00\10\00\0d\00\00\00Memory: \e4\00\10\00\08\00\00\00Memory set\00\00Y\00\10\003\00\00\00\95\00\00\00\15\00\00\00Error\00\00\00\07\00\00\00\0c\00\00\00\04\00\00\00\08\00\00\00\09\00\00\00\0a\00\00\00capacity overflow\00\00\000\01\10\00\11\00\00\00alloc/src/raw_vec.rsL\01\10\00\14\00\00\00\18\00\00\00\05")
  (data (;1;) (i32.const 1048952) "\01\00\00\00\0b\00\00\00a formatting trait implementation returned an error when the underlying stream did notalloc/src/fmt.rs\00\00\d6\01\10\00\10\00\00\00~\02\00\00\0e\00\00\00[: \00\01\00\00\00\00\00\00\00\f9\01\10\00\02\00\00\00\00\00\00\00\0c\00\00\00\04\00\00\00\0c\00\00\00\0d\00\00\00\0e\00\00\00    , ,\0a\0a]core/src/fmt/num.rs\00\00\00.\02\10\00\13\00\00\00f\00\00\00\17\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899range start index  out of range for slice of length \00\00\1e\03\10\00\12\00\00\000\03\10\00\22\00\00\00range end index d\03\10\00\10\00\00\000\03\10\00\22\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01")
  (data (;2;) (i32.const 1049670) "\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04")
  (data (;3;) (i32.const 1049732) "\02\02\02\02\02\02\02\02\02\03\03\01\01\01")
  (data (;4;) (i32.const 1049764) "\01\00\00\00\00\00\00\00\02\02\00\00\00\00\00\02")
  (data (;5;) (i32.const 1049827) "\02")
  (data (;6;) (i32.const 1049865) "\01")
  (data (;7;) (i32.const 1049892) "\01")
  (data (;8;) (i32.const 1049988) "/rustc/0609062a91c8f445c3e9a0de57e402f9b1b8b0a7/library/core/src/str/pattern.rs\00\84\05\10\00O\00\00\00\be\01\00\007\00\00\00/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00\e4\05\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\e4\05\10\00)\00\00\00\ae\04\00\00\0d"))
