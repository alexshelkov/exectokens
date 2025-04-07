(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (func (;0;) (type 4) (param i32 i32 i32)
    local.get 1
    i32.const 500
    i32.mul
    local.get 0
    i32.add
    i32.const 2
    i32.shl
    local.tee 0
    i32.const 999999
    i32.le_u
    if  ;; label = @1
      local.get 0
      i32.const 1074791385
      i32.add
      local.get 2
      i32.const 8
      i32.shr_u
      i32.store8
      local.get 0
      i32.const 1074791384
      i32.add
      local.get 2
      i32.store8
      local.get 0
      i32.const 1074791386
      i32.add
      local.get 2
      i32.const 16
      i32.shr_u
      i32.store8
      local.get 0
      i32.const 1074791387
      i32.add
      i32.const 255
      i32.store8
      return
    end
    local.get 0
    i32.const 1000000
    i32.const 1048616
    call 1
    unreachable)
  (func (;1;) (type 4) (param i32 i32 i32)
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
    i32.const 1048892
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 4294967296
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
    call 18
    unreachable)
  (func (;2;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32)
    local.get 1
    i32.const 255
    i32.and
    i32.const 10
    i32.mul
    local.set 3
    local.get 0
    i32.const 255
    i32.and
    i32.const 10
    i32.mul
    local.set 4
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 0
      local.get 3
      i32.add
      local.set 5
      i32.const 0
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 4
        i32.add
        local.get 5
        local.get 2
        call 0
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.const 10
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      i32.const 10
      i32.ne
      br_if 0 (;@1;)
    end)
  (func (;3;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 8
    global.set 0
    local.get 2
    local.get 3
    i32.add
    local.set 12
    local.get 4
    i32.const 255
    i32.and
    local.tee 10
    i32.const 2
    i32.shl
    local.set 13
    loop  ;; label = @1
      block  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 2
          i32.load8_s
          local.tee 3
          i32.const 0
          i32.ge_s
          if  ;; label = @4
            local.get 3
            i32.const 255
            i32.and
            local.set 9
            local.get 2
            i32.const 1
            i32.add
            br 1 (;@3;)
          end
          local.get 2
          i32.load8_u offset=1
          i32.const 63
          i32.and
          local.set 5
          local.get 3
          i32.const 31
          i32.and
          local.set 4
          local.get 3
          i32.const -33
          i32.le_u
          if  ;; label = @4
            local.get 4
            i32.const 6
            i32.shl
            local.get 5
            i32.or
            local.set 9
            local.get 2
            i32.const 2
            i32.add
            br 1 (;@3;)
          end
          local.get 2
          i32.load8_u offset=2
          i32.const 63
          i32.and
          local.get 5
          i32.const 6
          i32.shl
          i32.or
          local.set 5
          local.get 3
          i32.const -16
          i32.lt_u
          if  ;; label = @4
            local.get 5
            local.get 4
            i32.const 12
            i32.shl
            i32.or
            local.set 9
            local.get 2
            i32.const 3
            i32.add
            br 1 (;@3;)
          end
          local.get 4
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          local.get 2
          i32.load8_u offset=3
          i32.const 63
          i32.and
          local.get 5
          i32.const 6
          i32.shl
          i32.or
          i32.or
          local.tee 9
          i32.const 1114112
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i32.const 4
          i32.add
        end
        local.set 2
        i32.const 1048653
        local.set 5
        i32.const 1048653
        local.set 3
        i32.const 1048653
        local.set 4
        i32.const 1048653
        local.set 6
        i32.const 1048653
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            block (result i32)  ;; label = @5
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
                                            local.get 9
                                            i32.const 65
                                            i32.sub
                                            br_table 1 (;@19;) 17 (;@3;) 2 (;@18;) 17 (;@3;) 3 (;@17;) 17 (;@3;) 4 (;@16;) 17 (;@3;) 5 (;@15;) 17 (;@3;) 17 (;@3;) 17 (;@3;) 6 (;@14;) 7 (;@13;) 8 (;@12;) 9 (;@11;) 17 (;@3;) 10 (;@10;) 11 (;@9;) 12 (;@8;) 17 (;@3;) 13 (;@7;) 0 (;@20;)
                                          end
                                          local.get 9
                                          i32.const 45
                                          i32.eq
                                          br_if 13 (;@6;)
                                          i32.const 1048653
                                          br 14 (;@5;)
                                        end
                                        i32.const 1048638
                                        local.set 4
                                        i32.const 1048635
                                        local.set 3
                                        i32.const 1048632
                                        local.set 5
                                        br 14 (;@4;)
                                      end
                                      i32.const 1048644
                                      local.set 3
                                      i32.const 1048641
                                      local.set 5
                                      i32.const 1048644
                                      local.set 4
                                      i32.const 1048644
                                      local.set 6
                                      i32.const 1048641
                                      local.set 7
                                      br 14 (;@3;)
                                    end
                                    i32.const 1048647
                                    local.set 4
                                    i32.const 1048644
                                    local.set 3
                                    i32.const 1048638
                                    local.set 5
                                    i32.const 1048644
                                    local.set 6
                                    i32.const 1048638
                                    local.set 7
                                    br 13 (;@3;)
                                  end
                                  i32.const 1048635
                                  local.set 4
                                  i32.const 1048644
                                  local.set 3
                                  i32.const 1048641
                                  local.set 5
                                  i32.const 1048635
                                  local.set 6
                                  i32.const 1048641
                                  local.set 7
                                  br 12 (;@3;)
                                end
                                i32.const 1048632
                                local.set 3
                                i32.const 1048638
                                local.set 5
                                i32.const 1048632
                                local.set 4
                                i32.const 1048632
                                local.set 6
                                i32.const 1048638
                                local.set 7
                                br 11 (;@3;)
                              end
                              i32.const 1048638
                              local.set 3
                              i32.const 1048635
                              local.set 5
                              i32.const 1048638
                              local.set 4
                              br 9 (;@4;)
                            end
                            i32.const 1048638
                            local.set 3
                            i32.const 1048635
                            local.set 5
                            i32.const 1048638
                            local.set 4
                            i32.const 1048638
                            local.set 6
                            i32.const 1048635
                            local.set 7
                            br 9 (;@3;)
                          end
                          i32.const 1048635
                          local.set 3
                          i32.const 1048632
                          local.set 5
                          i32.const 1048635
                          local.set 4
                          i32.const 1048635
                          local.set 6
                          i32.const 1048632
                          local.set 7
                          br 8 (;@3;)
                        end
                        i32.const 1048644
                        local.set 6
                        i32.const 1048635
                        local.set 3
                        i32.const 1048647
                        local.set 5
                        i32.const 1048647
                        local.set 4
                        i32.const 1048644
                        local.set 7
                        br 7 (;@3;)
                      end
                      i32.const 1048635
                      local.set 3
                      i32.const 1048647
                      local.set 5
                      i32.const 1048647
                      local.set 4
                      br 5 (;@4;)
                    end
                    i32.const 1048647
                    local.set 7
                    i32.const 1048650
                    local.set 6
                    i32.const 1048632
                    local.set 4
                    i32.const 1048644
                    local.set 3
                    i32.const 1048641
                    local.set 5
                    br 5 (;@3;)
                  end
                  i32.const 1048632
                  local.set 3
                  i32.const 1048638
                  local.set 5
                  i32.const 1048632
                  local.set 4
                  i32.const 1048632
                  local.set 6
                  i32.const 1048632
                  local.set 7
                  br 4 (;@3;)
                end
                i32.const 1048632
                local.set 6
                i32.const 1048635
                local.set 5
                i32.const 1048635
                local.set 3
                i32.const 1048635
                local.set 4
                i32.const 1048632
                local.set 7
                br 3 (;@3;)
              end
              i32.const 1048638
            end
            local.set 3
            br 1 (;@3;)
          end
          i32.const 1048635
          local.set 6
          i32.const 1048635
          local.set 7
        end
        local.get 8
        i32.const 3
        i32.store offset=44
        local.get 8
        local.get 7
        i32.store offset=40
        local.get 8
        i32.const 3
        i32.store offset=36
        local.get 8
        local.get 6
        i32.store offset=32
        local.get 8
        i32.const 3
        i32.store offset=28
        local.get 8
        local.get 4
        i32.store offset=24
        local.get 8
        i32.const 3
        i32.store offset=20
        local.get 8
        local.get 3
        i32.store offset=16
        local.get 8
        i32.const 3
        i32.store offset=12
        local.get 8
        local.get 5
        i32.store offset=8
        i32.const 0
        local.set 9
        i32.const 0
        local.set 11
        loop  ;; label = @3
          block  ;; label = @4
            local.get 8
            i32.const 8
            i32.add
            local.get 11
            i32.add
            local.tee 3
            i32.load offset=4
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load
            local.tee 6
            local.get 4
            i32.add
            local.set 14
            local.get 9
            local.get 10
            i32.mul
            local.get 1
            i32.add
            local.set 15
            local.get 0
            local.set 5
            loop  ;; label = @5
              block (result i32)  ;; label = @6
                local.get 6
                i32.load8_s
                local.tee 3
                i32.const 0
                i32.ge_s
                if  ;; label = @7
                  local.get 3
                  i32.const 255
                  i32.and
                  local.set 3
                  local.get 6
                  i32.const 1
                  i32.add
                  br 1 (;@6;)
                end
                local.get 6
                i32.load8_u offset=1
                i32.const 63
                i32.and
                local.set 7
                local.get 3
                i32.const 31
                i32.and
                local.set 4
                local.get 3
                i32.const -33
                i32.le_u
                if  ;; label = @7
                  local.get 4
                  i32.const 6
                  i32.shl
                  local.get 7
                  i32.or
                  local.set 3
                  local.get 6
                  i32.const 2
                  i32.add
                  br 1 (;@6;)
                end
                local.get 6
                i32.load8_u offset=2
                i32.const 63
                i32.and
                local.get 7
                i32.const 6
                i32.shl
                i32.or
                local.set 7
                local.get 3
                i32.const -16
                i32.lt_u
                if  ;; label = @7
                  local.get 7
                  local.get 4
                  i32.const 12
                  i32.shl
                  i32.or
                  local.set 3
                  local.get 6
                  i32.const 3
                  i32.add
                  br 1 (;@6;)
                end
                local.get 4
                i32.const 18
                i32.shl
                i32.const 1835008
                i32.and
                local.get 6
                i32.load8_u offset=3
                i32.const 63
                i32.and
                local.get 7
                i32.const 6
                i32.shl
                i32.or
                i32.or
                local.tee 3
                i32.const 1114112
                i32.eq
                br_if 2 (;@4;)
                local.get 6
                i32.const 4
                i32.add
              end
              local.set 6
              block  ;; label = @6
                local.get 3
                i32.const 35
                i32.ne
                if  ;; label = @7
                  local.get 3
                  i32.const 1114112
                  i32.ne
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                i32.const 0
                local.set 7
                loop  ;; label = @7
                  local.get 7
                  local.get 15
                  i32.add
                  local.set 16
                  local.get 10
                  local.set 4
                  local.get 5
                  local.set 3
                  loop  ;; label = @8
                    local.get 3
                    local.get 16
                    i32.const 0
                    call 0
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    local.get 4
                    i32.const 1
                    i32.sub
                    local.tee 4
                    br_if 0 (;@8;)
                  end
                  local.get 7
                  i32.const 1
                  i32.add
                  local.tee 7
                  local.get 10
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 5
              local.get 10
              i32.add
              local.set 5
              local.get 6
              local.get 14
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 9
          i32.const 1
          i32.add
          local.set 9
          local.get 11
          i32.const 8
          i32.add
          local.tee 11
          i32.const 40
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 0
        local.get 13
        i32.add
        local.set 0
        local.get 2
        local.get 12
        i32.ne
        br_if 1 (;@1;)
      end
    end
    local.get 8
    i32.const 48
    i32.add
    global.set 0)
  (func (;4;) (type 6)
    (local i32 i32 i32 i32)
    i32.const 1049548
    i32.const 0
    i32.store8
    i32.const 1049544
    i32.load16_u
    i32.const 1049546
    i32.load8_u
    i32.const 16
    i32.shl
    i32.or
    local.set 2
    loop  ;; label = @1
      local.get 0
      local.set 1
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 1
        local.get 0
        local.get 2
        call 2
        local.get 0
        i32.const 255
        i32.and
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        i32.const 49
        i32.lt_u
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 0
      local.get 1
      i32.const 255
      i32.and
      i32.const 48
      i32.le_u
      br_if 0 (;@1;)
    end)
  (func (;5;) (type 7) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 1049552
    i32.const 1049552
    i32.load
    local.get 0
    i32.add
    local.tee 6
    i32.store
    i32.const 1049556
    i32.const 1049556
    i32.load
    local.get 0
    i32.add
    i32.store
    local.get 6
    i32.const 25
    i32.ge_u
    if  ;; label = @1
      i32.const 1049544
      i32.load16_u
      i32.const 1049546
      i32.load8_u
      i32.const 16
      i32.shl
      i32.or
      local.set 2
      loop  ;; label = @2
        local.get 1
        local.set 0
        i32.const 0
        local.set 1
        loop  ;; label = @3
          local.get 0
          local.get 1
          local.get 2
          call 2
          local.get 1
          i32.const 255
          i32.and
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          i32.const 49
          i32.lt_u
          br_if 0 (;@3;)
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 255
        i32.and
        i32.const 48
        i32.le_u
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1049548
              i32.load8_u
              i32.const 1
              i32.sub
              br_table 2 (;@3;) 1 (;@4;) 0 (;@5;)
            end
            i32.const 50
            i32.const 240
            i32.const 1048656
            i32.const 20
            i32.const 5
            call 3
            br 2 (;@2;)
          end
          i32.const 160
          i32.const 240
          i32.const 1048676
          i32.const 9
          i32.const 5
          call 3
          i32.const 100
          i32.const 275
          i32.const 1048685
          i32.const 26
          i32.const 3
          call 3
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 1049549
                    i32.load8_u
                    i32.const 37
                    i32.sub
                    br_table 2 (;@6;) 0 (;@8;) 3 (;@5;) 1 (;@7;) 5 (;@3;)
                  end
                  i32.const 0
                  local.set 1
                  i32.const 1075796384
                  i32.load8_u
                  i32.const 1
                  i32.eq
                  br_if 4 (;@3;)
                  i32.const 255
                  local.set 0
                  br 3 (;@4;)
                end
                i32.const 0
                local.set 1
                i32.const 1075796384
                i32.load8_u
                i32.const 255
                i32.eq
                br_if 3 (;@3;)
                i32.const 1
                local.set 0
                br 2 (;@4;)
              end
              i32.const 0
              local.set 0
              i32.const 1049540
              i32.load8_u
              i32.const 1
              i32.eq
              br_if 2 (;@3;)
              i32.const 255
              local.set 1
              br 1 (;@4;)
            end
            i32.const 0
            local.set 0
            i32.const 1049540
            i32.load8_u
            i32.const 255
            i32.eq
            br_if 1 (;@3;)
            i32.const 1
            local.set 1
          end
          i32.const 1075796384
          local.get 0
          i32.store8
          i32.const 1049540
          local.get 1
          i32.store8
        end
        i32.const 1049549
        i32.const 0
        i32.store8
        block  ;; label = @3
          i32.const 1049556
          i32.load
          i32.const 1049532
          i32.load
          i32.lt_u
          if  ;; label = @4
            i32.const 1049542
            i32.load8_u
            local.set 1
            i32.const 1049541
            i32.load8_u
            local.set 0
            br 1 (;@3;)
          end
          block  ;; label = @4
            i32.const 1049540
            i32.load8_u
            i32.const 1075791384
            i32.load8_u
            i32.add
            local.tee 3
            i32.const 255
            i32.and
            i32.const 49
            i32.le_u
            if  ;; label = @5
              i32.const 1075796384
              i32.load8_u
              i32.const 1075791385
              i32.load8_u
              i32.add
              local.tee 4
              i32.const 255
              i32.and
              i32.const 49
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 1049548
            i32.const 2
            i32.store8
            i32.const 1049556
            i32.const 0
            i32.store
            br 2 (;@2;)
          end
          i32.const 0
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 1049536
                      i32.load
                      local.tee 2
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 1075791384
                      local.set 1
                      local.get 3
                      i32.const 255
                      i32.and
                      local.set 5
                      loop  ;; label = @10
                        local.get 0
                        i32.const 2500
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 5
                        local.get 1
                        i32.load8_u
                        i32.eq
                        if  ;; label = @11
                          local.get 1
                          i32.const 1
                          i32.add
                          i32.load8_u
                          local.get 4
                          i32.const 255
                          i32.and
                          i32.eq
                          br_if 5 (;@6;)
                        end
                        local.get 1
                        i32.const 2
                        i32.add
                        local.set 1
                        local.get 2
                        local.get 0
                        i32.const 1
                        i32.add
                        local.tee 0
                        i32.ne
                        br_if 0 (;@10;)
                      end
                      local.get 2
                      i32.const 1
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 1
                      i32.shl
                      i32.const 1075791380
                      i32.add
                      local.set 1
                      local.get 2
                      i32.const 2
                      i32.sub
                      i32.const 2500
                      i32.lt_u
                      local.set 5
                      local.get 2
                      local.set 0
                      loop  ;; label = @10
                        local.get 5
                        i32.eqz
                        br_if 2 (;@8;)
                        local.get 1
                        i32.const 2
                        i32.add
                        local.get 1
                        i32.load16_u align=1
                        i32.store16 align=1
                        local.get 1
                        i32.const 2
                        i32.sub
                        local.set 1
                        local.get 0
                        i32.const 1
                        i32.sub
                        local.tee 0
                        i32.const 1
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                    end
                    i32.const 1075791385
                    local.get 4
                    i32.store8
                    i32.const 1075791384
                    local.get 3
                    i32.store8
                    i32.const 1049541
                    i32.load8_u
                    local.tee 0
                    local.get 3
                    i32.const 255
                    i32.and
                    i32.ne
                    i32.const 1049542
                    i32.load8_u
                    local.tee 1
                    local.get 4
                    i32.const 255
                    i32.and
                    i32.ne
                    i32.or
                    br_if 4 (;@4;)
                    local.get 2
                    i32.const 2499
                    i32.le_u
                    if  ;; label = @9
                      local.get 2
                      i32.const 1
                      i32.sub
                      local.tee 0
                      i32.const 2500
                      i32.ge_u
                      br_if 4 (;@5;)
                      i32.const 1049536
                      local.get 2
                      i32.const 1
                      i32.add
                      i32.store
                      local.get 2
                      i32.const 1
                      i32.shl
                      i32.const 1075791384
                      i32.add
                      local.get 0
                      i32.const 1
                      i32.shl
                      i32.const 1075791384
                      i32.add
                      i32.load16_u align=1
                      i32.store16 align=1
                    end
                    i32.const 1049542
                    local.get 4
                    i32.const 3
                    i32.add
                    i32.const 255
                    i32.and
                    i32.const 50
                    i32.rem_u
                    local.tee 1
                    i32.store8
                    i32.const 1049541
                    local.get 3
                    i32.const 5
                    i32.add
                    i32.const 255
                    i32.and
                    i32.const 50
                    i32.rem_u
                    local.tee 0
                    i32.store8
                    br 4 (;@4;)
                  end
                  local.get 0
                  i32.const 2
                  i32.sub
                  i32.const 2500
                  i32.const 1048744
                  call 1
                  unreachable
                end
                i32.const 2500
                i32.const 2500
                i32.const 1048760
                call 1
                unreachable
              end
              i32.const 1049548
              i32.const 2
              i32.store8
              i32.const 1049556
              i32.const 0
              i32.store
              br 3 (;@2;)
            end
            i32.const -1
            i32.const 2500
            i32.const 1048712
            call 1
            unreachable
          end
          i32.const 1049556
          i32.const 0
          i32.store
        end
        local.get 0
        local.get 1
        i32.const 1075796388
        i32.load16_u
        i32.const 1075796390
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        call 2
        i32.const 1049536
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const -5000
        local.set 1
        loop  ;; label = @3
          local.get 1
          if  ;; label = @4
            local.get 1
            i32.const 1075796384
            i32.add
            i32.load8_u
            local.get 1
            i32.const 1075796385
            i32.add
            i32.load8_u
            i32.const 1075796392
            i32.load16_u
            i32.const 1075796394
            i32.load8_u
            i32.const 16
            i32.shl
            i32.or
            call 2
            local.get 1
            i32.const 2
            i32.add
            local.set 1
            local.get 0
            i32.const 1
            i32.sub
            local.tee 0
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
        end
        i32.const 2500
        i32.const 2500
        i32.const 1048728
        call 1
        unreachable
      end
      i32.const 1049552
      i32.const 0
      i32.store
    end
    local.get 6
    i32.const 24
    i32.gt_u)
  (func (;6;) (type 2) (result i32)
    i32.const 1074791384)
  (func (;7;) (type 6)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    i32.const 1075796395
    i32.load8_u
    drop
    i32.const 1073741824
    call 8
    local.tee 0
    if  ;; label = @1
      local.get 3
      local.get 0
      i32.const 1049560
      i32.const 1073741824
      call 29
      local.tee 16
      i32.const 1073741824
      i32.add
      local.tee 14
      i32.store offset=4
      i32.const 0
      local.set 0
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 1
              local.tee 9
              i32.const 5
              i32.eq
              br_if 1 (;@4;)
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 9
              local.get 16
              i32.add
              i32.load8_s
              local.tee 5
              i32.const 127
              i32.and
              local.get 0
              i32.shl
              local.get 12
              i32.or
              local.set 12
              local.get 0
              i32.const 7
              i32.add
              local.set 0
              local.get 5
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
            end
            local.get 3
            local.get 1
            local.get 16
            i32.add
            local.tee 0
            i32.store
            i32.const 4
            local.set 7
            local.get 9
            i32.const 4
            i32.eq
            local.get 5
            i32.const 15
            i32.gt_u
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.set 9
            i32.const 32768
            local.get 12
            local.get 12
            i32.const 32768
            i32.ge_u
            select
            i32.const 0
            local.get 14
            local.get 0
            i32.sub
            local.get 12
            i32.ge_u
            select
            local.tee 0
            if  ;; label = @5
              i32.const 1075796395
              i32.load8_u
              drop
              local.get 0
              i32.const 5
              i32.shl
              call 8
              local.tee 7
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              local.set 9
            end
            local.get 3
            i32.const 0
            i32.store offset=16
            local.get 3
            local.get 7
            i32.store offset=12
            local.get 3
            local.get 9
            i32.store offset=8
            local.get 3
            i32.const 29
            i32.add
            local.set 23
            local.get 3
            i32.const 31
            i32.add
            local.set 24
            i32.const 0
            local.set 9
            local.get 12
            local.set 14
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 14
                  if  ;; label = @8
                    i32.const 0
                    local.set 1
                    local.get 3
                    i32.load offset=4
                    local.set 2
                    local.get 3
                    i32.load
                    local.set 6
                    i32.const 0
                    local.set 0
                    i32.const 0
                    local.set 18
                    block  ;; label = @9
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 0
                          local.tee 5
                          i32.const 5
                          i32.eq
                          br_if 1 (;@10;)
                          local.get 0
                          local.get 6
                          i32.add
                          local.tee 4
                          local.get 2
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 0
                          i32.const 1
                          i32.add
                          local.set 0
                          local.get 4
                          i32.load8_s
                          local.tee 4
                          i32.const 127
                          i32.and
                          local.get 1
                          i32.shl
                          local.get 18
                          i32.or
                          local.set 18
                          local.get 1
                          i32.const 7
                          i32.add
                          local.set 1
                          local.get 4
                          i32.const 0
                          i32.lt_s
                          br_if 0 (;@11;)
                        end
                        local.get 3
                        local.get 0
                        local.get 6
                        i32.add
                        i32.store
                        local.get 5
                        i32.const 4
                        i32.eq
                        local.get 4
                        i32.const 15
                        i32.gt_u
                        i32.and
                        br_if 4 (;@6;)
                        local.get 3
                        i32.const 20
                        i32.add
                        local.get 3
                        call 9
                        local.get 3
                        i32.load offset=20
                        local.tee 19
                        i32.const -2147483648
                        i32.ne
                        local.tee 11
                        i32.eqz
                        br_if 4 (;@6;)
                        local.get 3
                        i64.load32_u offset=25 align=1
                        local.tee 31
                        local.get 24
                        i64.load8_u
                        i64.const 48
                        i64.shl
                        local.get 23
                        i64.load16_u align=1
                        i64.const 32
                        i64.shl
                        i64.or
                        i64.or
                        i64.const 24
                        i64.shr_u
                        i32.wrap_i64
                        local.set 25
                        local.get 3
                        i32.load
                        local.tee 4
                        i32.const 5
                        i32.add
                        local.set 13
                        local.get 3
                        i32.load8_u offset=24
                        local.tee 26
                        i64.extend_i32_u
                        i64.const 255
                        i64.and
                        local.get 31
                        i64.const 8
                        i64.shl
                        i64.or
                        i32.wrap_i64
                        local.set 22
                        i32.const 0
                        local.set 1
                        local.get 3
                        i32.load offset=4
                        local.set 6
                        i32.const 0
                        local.set 0
                        i32.const 0
                        local.set 5
                        block  ;; label = @11
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              local.get 0
                              local.tee 2
                              i32.const 5
                              i32.ne
                              if (result i32)  ;; label = @14
                                local.get 0
                                local.get 4
                                i32.add
                                local.tee 10
                                local.get 6
                                i32.ne
                                br_if 1 (;@13;)
                                local.get 6
                              else
                                local.get 13
                              end
                              i32.store
                              br 2 (;@11;)
                            end
                            local.get 2
                            i32.const 1
                            i32.add
                            local.set 0
                            local.get 10
                            i32.load8_s
                            local.tee 10
                            i32.const 127
                            i32.and
                            local.get 1
                            i32.shl
                            local.get 5
                            i32.or
                            local.set 5
                            local.get 1
                            i32.const 7
                            i32.add
                            local.set 1
                            local.get 10
                            i32.const 0
                            i32.lt_s
                            br_if 0 (;@12;)
                          end
                          local.get 3
                          local.get 0
                          local.get 4
                          i32.add
                          local.tee 1
                          i32.store
                          local.get 2
                          i32.const 4
                          i32.eq
                          local.get 10
                          i32.const 15
                          i32.gt_u
                          i32.and
                          br_if 0 (;@11;)
                          local.get 1
                          i32.const 1
                          i32.sub
                          local.set 0
                          block (result i32)  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 5
                                              br_table 0 (;@21;) 1 (;@20;) 2 (;@19;) 3 (;@18;) 4 (;@17;) 5 (;@16;) 6 (;@15;) 7 (;@14;) 10 (;@11;)
                                            end
                                            local.get 1
                                            local.get 6
                                            i32.eq
                                            br_if 9 (;@11;)
                                            local.get 3
                                            local.get 0
                                            i32.const 2
                                            i32.add
                                            i32.store
                                            i32.const 0
                                            local.set 0
                                            i32.const 0
                                            local.set 17
                                            block  ;; label = @21
                                              local.get 1
                                              i32.load8_u
                                              br_table 14 (;@7;) 0 (;@21;) 10 (;@11;)
                                            end
                                            i32.const 1
                                            local.set 17
                                            br 13 (;@7;)
                                          end
                                          local.get 1
                                          i32.const 5
                                          i32.add
                                          local.set 10
                                          i32.const 0
                                          local.set 0
                                          i32.const 0
                                          local.set 5
                                          i32.const 0
                                          local.set 2
                                          loop  ;; label = @20
                                            block  ;; label = @21
                                              local.get 3
                                              local.get 5
                                              local.tee 8
                                              i32.const 5
                                              i32.ne
                                              if (result i32)  ;; label = @22
                                                local.get 1
                                                local.get 5
                                                i32.add
                                                local.tee 4
                                                local.get 6
                                                i32.ne
                                                br_if 1 (;@21;)
                                                local.get 6
                                              else
                                                local.get 10
                                              end
                                              i32.store
                                              br 10 (;@11;)
                                            end
                                            local.get 8
                                            i32.const 1
                                            i32.add
                                            local.set 5
                                            local.get 4
                                            i32.load8_s
                                            local.tee 4
                                            i32.const 127
                                            i32.and
                                            local.get 0
                                            i32.shl
                                            local.get 2
                                            i32.or
                                            local.set 2
                                            local.get 0
                                            i32.const 7
                                            i32.add
                                            local.set 0
                                            local.get 4
                                            i32.const 0
                                            i32.lt_s
                                            br_if 0 (;@20;)
                                          end
                                          local.get 3
                                          local.get 1
                                          local.get 5
                                          i32.add
                                          i32.store
                                          local.get 8
                                          i32.const 4
                                          i32.eq
                                          local.get 4
                                          i32.const 15
                                          i32.gt_u
                                          i32.and
                                          br_if 8 (;@11;)
                                          i32.const 1
                                          local.set 0
                                          i32.const 0
                                          local.get 2
                                          i32.const 1
                                          i32.and
                                          i32.sub
                                          local.get 2
                                          i32.const 1
                                          i32.shr_u
                                          i32.xor
                                          local.tee 8
                                          i32.const 8
                                          i32.shr_u
                                          local.set 15
                                          br 12 (;@7;)
                                        end
                                        local.get 3
                                        i32.const 20
                                        i32.add
                                        local.get 3
                                        call 9
                                        local.get 3
                                        i32.load offset=20
                                        local.tee 0
                                        i32.const -2147483648
                                        i32.eq
                                        br_if 5 (;@13;)
                                        local.get 0
                                        i32.const 8
                                        i32.shr_u
                                        local.set 15
                                        local.get 3
                                        i64.load offset=24 align=4
                                        local.set 30
                                        local.get 0
                                        local.set 8
                                        i32.const 2
                                        br 6 (;@12;)
                                      end
                                      local.get 3
                                      i32.const 20
                                      i32.add
                                      local.get 3
                                      call 9
                                      local.get 3
                                      i32.load offset=20
                                      local.tee 0
                                      i32.const -2147483648
                                      i32.eq
                                      br_if 4 (;@13;)
                                      local.get 0
                                      i32.const 8
                                      i32.shr_u
                                      local.set 15
                                      local.get 3
                                      i64.load offset=24 align=4
                                      local.set 30
                                      local.get 0
                                      local.set 8
                                      i32.const 3
                                      br 5 (;@12;)
                                    end
                                    local.get 3
                                    i32.const 20
                                    i32.add
                                    local.get 3
                                    call 9
                                    local.get 3
                                    i32.load offset=20
                                    local.tee 0
                                    i32.const -2147483648
                                    i32.eq
                                    br_if 3 (;@13;)
                                    local.get 0
                                    i32.const 8
                                    i32.shr_u
                                    local.set 15
                                    local.get 3
                                    i64.load offset=24 align=4
                                    local.set 30
                                    local.get 0
                                    local.set 8
                                    i32.const 4
                                    br 4 (;@12;)
                                  end
                                  local.get 3
                                  i32.const 20
                                  i32.add
                                  local.get 3
                                  call 9
                                  local.get 3
                                  i32.load offset=20
                                  local.tee 0
                                  i32.const -2147483648
                                  i32.eq
                                  br_if 2 (;@13;)
                                  local.get 0
                                  i32.const 8
                                  i32.shr_u
                                  local.set 15
                                  local.get 3
                                  i64.load offset=24 align=4
                                  local.set 30
                                  local.get 0
                                  local.set 8
                                  i32.const 5
                                  br 3 (;@12;)
                                end
                                local.get 3
                                i32.const 20
                                i32.add
                                local.get 3
                                call 9
                                local.get 3
                                i32.load offset=20
                                local.tee 0
                                i32.const -2147483648
                                i32.eq
                                br_if 1 (;@13;)
                                local.get 0
                                i32.const 8
                                i32.shr_u
                                local.set 15
                                local.get 3
                                i64.load offset=24 align=4
                                local.set 30
                                local.get 0
                                local.set 8
                                i32.const 6
                                br 2 (;@12;)
                              end
                              local.get 1
                              local.get 6
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 3
                              local.get 0
                              i32.const 2
                              i32.add
                              local.tee 8
                              i32.store
                              local.get 6
                              local.get 8
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 1
                              i32.load8_u
                              local.set 17
                              local.get 3
                              local.get 0
                              i32.const 3
                              i32.add
                              local.tee 8
                              i32.store
                              local.get 6
                              local.get 8
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 0
                              i32.load8_u offset=2
                              local.set 27
                              local.get 3
                              local.get 0
                              i32.const 4
                              i32.add
                              local.tee 8
                              i32.store
                              local.get 6
                              local.get 8
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 0
                              i32.load8_u offset=3
                              local.set 28
                              local.get 3
                              local.get 0
                              i32.const 5
                              i32.add
                              i32.store
                              local.get 0
                              i32.load8_u offset=4
                              local.set 8
                              i32.const 7
                              local.set 0
                              br 6 (;@7;)
                            end
                            local.get 3
                            i32.load8_u offset=24
                            local.set 17
                            i32.const 8
                          end
                          local.tee 0
                          i32.const 8
                          i32.ne
                          br_if 4 (;@7;)
                        end
                        local.get 19
                        i32.eqz
                        br_if 4 (;@6;)
                        local.get 22
                        local.get 19
                        call 10
                        br 4 (;@6;)
                      end
                      local.get 6
                      i32.const 5
                      i32.add
                      local.set 2
                    end
                    local.get 3
                    local.get 2
                    i32.store
                    br 2 (;@6;)
                  end
                  local.get 3
                  i32.load offset=8
                  local.tee 14
                  i32.const -2147483648
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 3
                  i32.load16_u offset=13 align=1
                  local.set 8
                  local.get 3
                  i32.const 15
                  i32.add
                  i32.load8_u
                  local.set 0
                  local.get 3
                  i32.load8_u offset=12
                  local.get 16
                  i32.const 1073741824
                  call 10
                  local.get 0
                  i32.const 24
                  i32.shl
                  local.get 8
                  i32.const 8
                  i32.shl
                  i32.or
                  i32.or
                  local.tee 8
                  local.get 12
                  i32.const 5
                  i32.shl
                  i32.add
                  local.set 9
                  local.get 8
                  local.set 0
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 12
                      i32.eqz
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 0
                        i32.load
                        local.tee 2
                        i32.const -2147483648
                        i32.eq
                        if  ;; label = @11
                          local.get 0
                          i32.const 32
                          i32.add
                          local.set 0
                          br 2 (;@9;)
                        end
                        local.get 0
                        i32.load offset=28
                        local.set 6
                        local.get 0
                        i32.load offset=16
                        local.set 1
                        local.get 0
                        i32.load offset=4
                        local.set 7
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.load8_u offset=12
                                local.tee 5
                                i32.const 1
                                i32.ne
                                if  ;; label = @15
                                  local.get 5
                                  i32.const 7
                                  i32.ne
                                  if  ;; label = @16
                                    local.get 1
                                    i32.eqz
                                    local.get 5
                                    i32.const 7
                                    i32.sub
                                    i32.const 255
                                    i32.and
                                    i32.const 251
                                    i32.lt_u
                                    i32.or
                                    br_if 5 (;@11;)
                                    local.get 0
                                    i32.load offset=20
                                    local.get 1
                                    call 10
                                    br 5 (;@11;)
                                  end
                                  local.get 0
                                  i32.load8_u offset=15
                                  local.set 1
                                  local.get 0
                                  i32.load8_u offset=14
                                  local.set 5
                                  local.get 0
                                  i32.load8_u offset=13
                                  local.set 12
                                  local.get 6
                                  br_table 1 (;@14;) 2 (;@13;) 3 (;@12;) 4 (;@11;)
                                end
                                local.get 6
                                i32.const 3
                                i32.ne
                                br_if 3 (;@11;)
                                i32.const 1049532
                                local.get 1
                                i32.store
                                br 3 (;@11;)
                              end
                              i32.const 1075796390
                              local.get 1
                              i32.store8
                              i32.const 1075796389
                              local.get 5
                              i32.store8
                              i32.const 1075796388
                              local.get 12
                              i32.store8
                              br 2 (;@11;)
                            end
                            i32.const 1075796394
                            local.get 1
                            i32.store8
                            i32.const 1075796393
                            local.get 5
                            i32.store8
                            i32.const 1075796392
                            local.get 12
                            i32.store8
                            br 1 (;@11;)
                          end
                          i32.const 1049546
                          local.get 1
                          i32.store8
                          i32.const 1049545
                          local.get 5
                          i32.store8
                          i32.const 1049544
                          local.get 12
                          i32.store8
                        end
                        local.get 2
                        if  ;; label = @11
                          local.get 7
                          local.get 2
                          call 10
                        end
                        local.get 0
                        i32.const 32
                        i32.add
                        local.tee 0
                        local.get 9
                        i32.ne
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    local.get 0
                    local.get 9
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 9
                    local.get 0
                    i32.sub
                    i32.const 5
                    i32.shr_u
                    local.set 9
                    loop  ;; label = @9
                      local.get 0
                      i32.load
                      local.tee 1
                      if  ;; label = @10
                        local.get 0
                        i32.const 4
                        i32.add
                        i32.load
                        local.get 1
                        call 10
                      end
                      block  ;; label = @10
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
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 16
                        i32.add
                        i32.load
                        local.tee 1
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 20
                        i32.add
                        i32.load
                        local.get 1
                        call 10
                      end
                      local.get 0
                      i32.const 32
                      i32.add
                      local.set 0
                      local.get 9
                      i32.const 1
                      i32.sub
                      local.tee 9
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 14
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 8
                  local.get 14
                  i32.const 5
                  i32.shl
                  call 10
                  br 4 (;@3;)
                end
                local.get 11
                i32.eqz
                br_if 0 (;@6;)
                local.get 14
                i32.const 1
                i32.sub
                local.set 14
                local.get 3
                i32.load offset=8
                local.get 9
                i32.eq
                if  ;; label = @7
                  i32.const 0
                  local.set 2
                  global.get 0
                  i32.const 32
                  i32.sub
                  local.tee 6
                  global.set 0
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 3
                      i32.const 8
                      i32.add
                      local.tee 20
                      i32.load
                      local.tee 1
                      i32.const -1
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 1
                      i32.const 1
                      i32.shl
                      local.tee 5
                      local.get 1
                      i32.const 1
                      i32.add
                      local.tee 7
                      local.get 5
                      local.get 7
                      i32.gt_u
                      select
                      local.tee 5
                      i32.const 134217727
                      i32.gt_u
                      br_if 0 (;@9;)
                      i32.const 4
                      local.get 5
                      local.get 5
                      i32.const 4
                      i32.le_u
                      select
                      local.tee 29
                      i32.const 5
                      i32.shl
                      local.tee 5
                      i32.const 2147483644
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 6
                      local.get 1
                      if (result i32)  ;; label = @10
                        local.get 6
                        local.get 1
                        i32.const 5
                        i32.shl
                        i32.store offset=28
                        local.get 6
                        local.get 20
                        i32.load offset=4
                        i32.store offset=20
                        i32.const 4
                      else
                        i32.const 0
                      end
                      i32.store offset=24
                      local.get 6
                      i32.const 8
                      i32.add
                      local.set 21
                      block (result i32)  ;; label = @10
                        block  ;; label = @11
                          block (result i32)  ;; label = @12
                            local.get 6
                            i32.const 20
                            i32.add
                            local.tee 1
                            i32.load offset=4
                            if  ;; label = @13
                              local.get 1
                              i32.load offset=8
                              local.tee 2
                              if  ;; label = @14
                                block (result i32)  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 1
                                      i32.load
                                      local.tee 1
                                      i32.const 4
                                      i32.sub
                                      local.tee 7
                                      i32.load
                                      local.tee 13
                                      i32.const -8
                                      i32.and
                                      local.tee 4
                                      i32.const 4
                                      i32.const 8
                                      local.get 13
                                      i32.const 3
                                      i32.and
                                      local.tee 10
                                      select
                                      local.get 2
                                      i32.add
                                      i32.ge_u
                                      if  ;; label = @18
                                        local.get 10
                                        i32.const 0
                                        local.get 4
                                        local.get 2
                                        i32.const 39
                                        i32.add
                                        i32.gt_u
                                        select
                                        br_if 1 (;@17;)
                                        i32.const 16
                                        local.get 5
                                        i32.const 11
                                        i32.add
                                        i32.const -8
                                        i32.and
                                        local.get 5
                                        i32.const 11
                                        i32.lt_u
                                        select
                                        local.set 2
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 10
                                            i32.eqz
                                            if  ;; label = @21
                                              local.get 2
                                              i32.const 256
                                              i32.lt_u
                                              local.get 4
                                              local.get 2
                                              i32.const 4
                                              i32.or
                                              i32.lt_u
                                              i32.or
                                              local.get 4
                                              local.get 2
                                              i32.sub
                                              i32.const 131073
                                              i32.ge_u
                                              i32.or
                                              br_if 1 (;@20;)
                                              br 2 (;@19;)
                                            end
                                            local.get 1
                                            i32.const 8
                                            i32.sub
                                            local.tee 10
                                            local.get 4
                                            i32.add
                                            local.set 11
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 2
                                                  local.get 4
                                                  i32.gt_u
                                                  if  ;; label = @24
                                                    local.get 11
                                                    i32.const 1075796832
                                                    i32.load
                                                    i32.eq
                                                    br_if 3 (;@21;)
                                                    local.get 11
                                                    i32.const 1075796828
                                                    i32.load
                                                    i32.eq
                                                    br_if 2 (;@22;)
                                                    local.get 11
                                                    i32.load offset=4
                                                    local.tee 13
                                                    i32.const 2
                                                    i32.and
                                                    br_if 4 (;@20;)
                                                    local.get 13
                                                    i32.const -8
                                                    i32.and
                                                    local.tee 13
                                                    local.get 4
                                                    i32.add
                                                    local.tee 4
                                                    local.get 2
                                                    i32.lt_u
                                                    br_if 4 (;@20;)
                                                    local.get 11
                                                    local.get 13
                                                    call 23
                                                    local.get 4
                                                    local.get 2
                                                    i32.sub
                                                    local.tee 11
                                                    i32.const 16
                                                    i32.lt_u
                                                    br_if 1 (;@23;)
                                                    local.get 7
                                                    local.get 2
                                                    local.get 7
                                                    i32.load
                                                    i32.const 1
                                                    i32.and
                                                    i32.or
                                                    i32.const 2
                                                    i32.or
                                                    i32.store
                                                    local.get 2
                                                    local.get 10
                                                    i32.add
                                                    local.tee 2
                                                    local.get 11
                                                    i32.const 3
                                                    i32.or
                                                    i32.store offset=4
                                                    local.get 4
                                                    local.get 10
                                                    i32.add
                                                    local.tee 7
                                                    local.get 7
                                                    i32.load offset=4
                                                    i32.const 1
                                                    i32.or
                                                    i32.store offset=4
                                                    local.get 2
                                                    local.get 11
                                                    call 24
                                                    local.get 1
                                                    br 9 (;@15;)
                                                  end
                                                  local.get 4
                                                  local.get 2
                                                  i32.sub
                                                  local.tee 4
                                                  i32.const 15
                                                  i32.le_u
                                                  br_if 4 (;@19;)
                                                  local.get 7
                                                  local.get 2
                                                  local.get 13
                                                  i32.const 1
                                                  i32.and
                                                  i32.or
                                                  i32.const 2
                                                  i32.or
                                                  i32.store
                                                  local.get 2
                                                  local.get 10
                                                  i32.add
                                                  local.tee 2
                                                  local.get 4
                                                  i32.const 3
                                                  i32.or
                                                  i32.store offset=4
                                                  local.get 11
                                                  local.get 11
                                                  i32.load offset=4
                                                  i32.const 1
                                                  i32.or
                                                  i32.store offset=4
                                                  local.get 2
                                                  local.get 4
                                                  call 24
                                                  local.get 1
                                                  br 8 (;@15;)
                                                end
                                                local.get 7
                                                local.get 4
                                                local.get 7
                                                i32.load
                                                i32.const 1
                                                i32.and
                                                i32.or
                                                i32.const 2
                                                i32.or
                                                i32.store
                                                local.get 4
                                                local.get 10
                                                i32.add
                                                local.tee 2
                                                local.get 2
                                                i32.load offset=4
                                                i32.const 1
                                                i32.or
                                                i32.store offset=4
                                                local.get 1
                                                br 7 (;@15;)
                                              end
                                              i32.const 1075796820
                                              i32.load
                                              local.get 4
                                              i32.add
                                              local.tee 4
                                              local.get 2
                                              i32.lt_u
                                              br_if 1 (;@20;)
                                              block  ;; label = @22
                                                local.get 4
                                                local.get 2
                                                i32.sub
                                                local.tee 11
                                                i32.const 15
                                                i32.le_u
                                                if  ;; label = @23
                                                  local.get 7
                                                  local.get 13
                                                  i32.const 1
                                                  i32.and
                                                  local.get 4
                                                  i32.or
                                                  i32.const 2
                                                  i32.or
                                                  i32.store
                                                  local.get 4
                                                  local.get 10
                                                  i32.add
                                                  local.tee 2
                                                  local.get 2
                                                  i32.load offset=4
                                                  i32.const 1
                                                  i32.or
                                                  i32.store offset=4
                                                  i32.const 0
                                                  local.set 11
                                                  i32.const 0
                                                  local.set 2
                                                  br 1 (;@22;)
                                                end
                                                local.get 7
                                                local.get 2
                                                local.get 13
                                                i32.const 1
                                                i32.and
                                                i32.or
                                                i32.const 2
                                                i32.or
                                                i32.store
                                                local.get 2
                                                local.get 10
                                                i32.add
                                                local.tee 2
                                                local.get 11
                                                i32.const 1
                                                i32.or
                                                i32.store offset=4
                                                local.get 4
                                                local.get 10
                                                i32.add
                                                local.tee 7
                                                local.get 11
                                                i32.store
                                                local.get 7
                                                local.get 7
                                                i32.load offset=4
                                                i32.const -2
                                                i32.and
                                                i32.store offset=4
                                              end
                                              i32.const 1075796828
                                              local.get 2
                                              i32.store
                                              i32.const 1075796820
                                              local.get 11
                                              i32.store
                                              local.get 1
                                              br 6 (;@15;)
                                            end
                                            i32.const 1075796824
                                            i32.load
                                            local.get 4
                                            i32.add
                                            local.tee 4
                                            local.get 2
                                            i32.gt_u
                                            br_if 4 (;@16;)
                                          end
                                          i32.const 0
                                          local.get 5
                                          call 8
                                          local.tee 2
                                          i32.eqz
                                          br_if 4 (;@15;)
                                          drop
                                          local.get 2
                                          local.get 1
                                          i32.const -4
                                          i32.const -8
                                          local.get 7
                                          i32.load
                                          local.tee 2
                                          i32.const 3
                                          i32.and
                                          select
                                          local.get 2
                                          i32.const -8
                                          i32.and
                                          i32.add
                                          local.tee 2
                                          local.get 5
                                          local.get 2
                                          local.get 5
                                          i32.lt_u
                                          select
                                          call 29
                                          local.get 1
                                          call 22
                                          local.set 1
                                        end
                                        local.get 1
                                        br 3 (;@15;)
                                      end
                                      i32.const 1049405
                                      i32.const 1049452
                                      call 21
                                      unreachable
                                    end
                                    i32.const 1049468
                                    i32.const 1049516
                                    call 21
                                    unreachable
                                  end
                                  local.get 7
                                  local.get 2
                                  local.get 13
                                  i32.const 1
                                  i32.and
                                  i32.or
                                  i32.const 2
                                  i32.or
                                  i32.store
                                  local.get 2
                                  local.get 10
                                  i32.add
                                  local.tee 7
                                  local.get 4
                                  local.get 2
                                  i32.sub
                                  local.tee 2
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  i32.const 1075796824
                                  local.get 2
                                  i32.store
                                  i32.const 1075796832
                                  local.get 7
                                  i32.store
                                  local.get 1
                                end
                                br 2 (;@12;)
                              end
                            end
                            local.get 5
                            i32.eqz
                            br_if 1 (;@11;)
                            i32.const 1075796395
                            i32.load8_u
                            drop
                            local.get 5
                            call 8
                          end
                          local.tee 1
                          i32.const 4
                          local.get 1
                          select
                          local.set 2
                          local.get 1
                          i32.eqz
                          br 1 (;@10;)
                        end
                        i32.const 4
                        local.set 2
                        i32.const 0
                      end
                      local.set 1
                      local.get 21
                      local.get 5
                      i32.store offset=8
                      local.get 21
                      local.get 2
                      i32.store offset=4
                      local.get 21
                      local.get 1
                      i32.store
                      local.get 6
                      i32.load offset=8
                      i32.const 1
                      i32.eq
                      if  ;; label = @10
                        local.get 6
                        i32.load offset=16
                        drop
                        local.get 6
                        i32.load offset=12
                        local.set 2
                        br 1 (;@9;)
                      end
                      local.get 6
                      i32.load offset=12
                      local.set 1
                      local.get 20
                      local.get 29
                      i32.store
                      local.get 20
                      local.get 1
                      i32.store offset=4
                      local.get 6
                      i32.const 32
                      i32.add
                      global.set 0
                      br 1 (;@8;)
                    end
                    local.get 2
                    call 11
                    unreachable
                  end
                  local.get 3
                  i32.load offset=12
                  local.set 7
                end
                local.get 7
                local.get 9
                i32.const 5
                i32.shl
                i32.add
                local.tee 1
                local.get 18
                i32.store offset=28 align=1
                local.get 1
                local.get 30
                i64.store offset=20 align=1
                local.get 1
                local.get 8
                i32.const 255
                i32.and
                local.get 15
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=16 align=1
                local.get 1
                local.get 28
                i32.store8 offset=15
                local.get 1
                local.get 27
                i32.store8 offset=14
                local.get 1
                local.get 17
                i32.store8 offset=13
                local.get 1
                local.get 0
                i32.store8 offset=12
                local.get 1
                local.get 25
                i32.store offset=8 align=1
                local.get 1
                local.get 22
                i32.const 8
                i32.shr_u
                local.tee 0
                i32.store16 offset=5 align=1
                local.get 1
                local.get 26
                i32.store8 offset=4
                local.get 1
                local.get 19
                i32.store
                local.get 1
                i32.const 7
                i32.add
                local.get 0
                i32.const 16
                i32.shr_u
                i32.store8
                local.get 3
                local.get 9
                i32.const 1
                i32.add
                local.tee 9
                i32.store offset=16
                br 1 (;@5;)
              end
            end
            local.get 3
            i32.load offset=12
            local.set 8
            local.get 9
            if  ;; label = @5
              local.get 8
              local.set 0
              loop  ;; label = @6
                local.get 0
                i32.load
                local.tee 1
                if  ;; label = @7
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.load
                  local.get 1
                  call 10
                end
                block  ;; label = @7
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
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 16
                  i32.add
                  i32.load
                  local.tee 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  local.get 1
                  call 10
                end
                local.get 0
                i32.const 32
                i32.add
                local.set 0
                local.get 9
                i32.const 1
                i32.sub
                local.tee 9
                br_if 0 (;@6;)
              end
            end
            local.get 3
            i32.load offset=8
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            local.get 0
            i32.const 5
            i32.shl
            call 10
          end
          local.get 16
          i32.const 1073741824
          call 10
        end
        local.get 3
        i32.const 32
        i32.add
        global.set 0
        return
      end
      i32.const 4
      call 11
      unreachable
    end
    i32.const 1
    call 11
    unreachable)
  (func (;8;) (type 7) (param i32) (result i32)
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
                      i32.const 1075796812
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
                      i32.const 1075796820
                      i32.load
                      i32.le_u
                      br_if 7 (;@2;)
                      local.get 1
                      br_if 2 (;@7;)
                      i32.const 1075796816
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
                    i32.const 1075796816
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
                    i32.const 1075796404
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
                    i32.const 1075796548
                    i32.add
                    local.tee 2
                    local.get 0
                    i32.const 1075796556
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
                    i32.const 1075796812
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
                  i32.const 1075796548
                  i32.add
                  local.tee 1
                  local.get 0
                  i32.const 1075796556
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
                  i32.const 1075796812
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
                i32.const 1075796820
                i32.load
                local.tee 1
                if  ;; label = @7
                  local.get 1
                  i32.const -8
                  i32.and
                  i32.const 1075796548
                  i32.add
                  local.set 0
                  i32.const 1075796828
                  i32.load
                  local.set 3
                  block (result i32)  ;; label = @8
                    i32.const 1075796812
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
                      i32.const 1075796812
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
                i32.const 1075796828
                local.get 6
                i32.store
                i32.const 1075796820
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
              i32.const 1075796404
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
                      i32.const 1075796404
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
                      i32.const 1075796816
                      i32.const 1075796816
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
                    i32.const 1075796820
                    i32.load
                    local.tee 4
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 4
                    i32.const -8
                    i32.and
                    i32.const 1075796548
                    i32.add
                    local.set 0
                    i32.const 1075796828
                    i32.load
                    local.set 2
                    block (result i32)  ;; label = @9
                      i32.const 1075796812
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
                        i32.const 1075796812
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
                i32.const 1075796828
                local.get 6
                i32.store
                i32.const 1075796820
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
              i32.const 1075796404
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
        i32.const 1075796820
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
            i32.const 1075796404
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
            i32.const 1075796816
            i32.const 1075796816
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
              call 26
              br 2 (;@3;)
            end
            local.get 3
            i32.const 248
            i32.and
            i32.const 1075796548
            i32.add
            local.set 0
            block (result i32)  ;; label = @5
              i32.const 1075796812
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
                i32.const 1075796812
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
                i32.const 1075796820
                i32.load
                local.tee 1
                i32.gt_u
                if  ;; label = @7
                  local.get 5
                  i32.const 1075796824
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
                    i32.const 1075796836
                    i32.const 0
                    local.get 2
                    i32.const -65536
                    i32.and
                    local.get 3
                    select
                    local.tee 4
                    i32.const 1075796836
                    i32.load
                    i32.add
                    local.tee 0
                    i32.store
                    i32.const 1075796840
                    i32.const 1075796840
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
                        i32.const 1075796832
                        i32.load
                        local.tee 2
                        if  ;; label = @11
                          i32.const 1075796532
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
                        i32.const 1075796848
                        i32.load
                        local.tee 0
                        i32.const 0
                        local.get 0
                        local.get 1
                        i32.le_u
                        select
                        i32.eqz
                        if  ;; label = @11
                          i32.const 1075796848
                          local.get 1
                          i32.store
                        end
                        i32.const 1075796852
                        i32.const 4095
                        i32.store
                        i32.const 1075796536
                        local.get 4
                        i32.store
                        i32.const 1075796532
                        local.get 1
                        i32.store
                        i32.const 1075796560
                        i32.const 1075796548
                        i32.store
                        i32.const 1075796568
                        i32.const 1075796556
                        i32.store
                        i32.const 1075796556
                        i32.const 1075796548
                        i32.store
                        i32.const 1075796576
                        i32.const 1075796564
                        i32.store
                        i32.const 1075796564
                        i32.const 1075796556
                        i32.store
                        i32.const 1075796584
                        i32.const 1075796572
                        i32.store
                        i32.const 1075796572
                        i32.const 1075796564
                        i32.store
                        i32.const 1075796592
                        i32.const 1075796580
                        i32.store
                        i32.const 1075796580
                        i32.const 1075796572
                        i32.store
                        i32.const 1075796600
                        i32.const 1075796588
                        i32.store
                        i32.const 1075796588
                        i32.const 1075796580
                        i32.store
                        i32.const 1075796608
                        i32.const 1075796596
                        i32.store
                        i32.const 1075796596
                        i32.const 1075796588
                        i32.store
                        i32.const 1075796616
                        i32.const 1075796604
                        i32.store
                        i32.const 1075796604
                        i32.const 1075796596
                        i32.store
                        i32.const 1075796544
                        i32.const 0
                        i32.store
                        i32.const 1075796624
                        i32.const 1075796612
                        i32.store
                        i32.const 1075796612
                        i32.const 1075796604
                        i32.store
                        i32.const 1075796620
                        i32.const 1075796612
                        i32.store
                        i32.const 1075796632
                        i32.const 1075796620
                        i32.store
                        i32.const 1075796628
                        i32.const 1075796620
                        i32.store
                        i32.const 1075796640
                        i32.const 1075796628
                        i32.store
                        i32.const 1075796636
                        i32.const 1075796628
                        i32.store
                        i32.const 1075796648
                        i32.const 1075796636
                        i32.store
                        i32.const 1075796644
                        i32.const 1075796636
                        i32.store
                        i32.const 1075796656
                        i32.const 1075796644
                        i32.store
                        i32.const 1075796652
                        i32.const 1075796644
                        i32.store
                        i32.const 1075796664
                        i32.const 1075796652
                        i32.store
                        i32.const 1075796660
                        i32.const 1075796652
                        i32.store
                        i32.const 1075796672
                        i32.const 1075796660
                        i32.store
                        i32.const 1075796668
                        i32.const 1075796660
                        i32.store
                        i32.const 1075796680
                        i32.const 1075796668
                        i32.store
                        i32.const 1075796676
                        i32.const 1075796668
                        i32.store
                        i32.const 1075796688
                        i32.const 1075796676
                        i32.store
                        i32.const 1075796696
                        i32.const 1075796684
                        i32.store
                        i32.const 1075796684
                        i32.const 1075796676
                        i32.store
                        i32.const 1075796704
                        i32.const 1075796692
                        i32.store
                        i32.const 1075796692
                        i32.const 1075796684
                        i32.store
                        i32.const 1075796712
                        i32.const 1075796700
                        i32.store
                        i32.const 1075796700
                        i32.const 1075796692
                        i32.store
                        i32.const 1075796720
                        i32.const 1075796708
                        i32.store
                        i32.const 1075796708
                        i32.const 1075796700
                        i32.store
                        i32.const 1075796728
                        i32.const 1075796716
                        i32.store
                        i32.const 1075796716
                        i32.const 1075796708
                        i32.store
                        i32.const 1075796736
                        i32.const 1075796724
                        i32.store
                        i32.const 1075796724
                        i32.const 1075796716
                        i32.store
                        i32.const 1075796744
                        i32.const 1075796732
                        i32.store
                        i32.const 1075796732
                        i32.const 1075796724
                        i32.store
                        i32.const 1075796752
                        i32.const 1075796740
                        i32.store
                        i32.const 1075796740
                        i32.const 1075796732
                        i32.store
                        i32.const 1075796760
                        i32.const 1075796748
                        i32.store
                        i32.const 1075796748
                        i32.const 1075796740
                        i32.store
                        i32.const 1075796768
                        i32.const 1075796756
                        i32.store
                        i32.const 1075796756
                        i32.const 1075796748
                        i32.store
                        i32.const 1075796776
                        i32.const 1075796764
                        i32.store
                        i32.const 1075796764
                        i32.const 1075796756
                        i32.store
                        i32.const 1075796784
                        i32.const 1075796772
                        i32.store
                        i32.const 1075796772
                        i32.const 1075796764
                        i32.store
                        i32.const 1075796792
                        i32.const 1075796780
                        i32.store
                        i32.const 1075796780
                        i32.const 1075796772
                        i32.store
                        i32.const 1075796800
                        i32.const 1075796788
                        i32.store
                        i32.const 1075796788
                        i32.const 1075796780
                        i32.store
                        i32.const 1075796808
                        i32.const 1075796796
                        i32.store
                        i32.const 1075796796
                        i32.const 1075796788
                        i32.store
                        i32.const 1075796832
                        local.get 1
                        i32.store
                        i32.const 1075796804
                        i32.const 1075796796
                        i32.store
                        i32.const 1075796824
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
                        i32.const 1075796844
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
                    i32.const 1075796848
                    i32.const 1075796848
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
                    i32.const 1075796532
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
                      i32.const 1075796532
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
                      i32.const 1075796832
                      local.get 1
                      i32.store
                      i32.const 1075796824
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
                      i32.const 1075796844
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
                      i32.const 1075796532
                      i64.load align=4
                      local.set 9
                      local.get 3
                      i32.const 16
                      i32.add
                      i32.const 1075796540
                      i64.load align=4
                      i64.store align=4
                      local.get 3
                      local.get 9
                      i64.store offset=8 align=4
                      i32.const 1075796536
                      local.get 4
                      i32.store
                      i32.const 1075796532
                      local.get 1
                      i32.store
                      i32.const 1075796540
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.store
                      i32.const 1075796544
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
                        call 26
                        br 7 (;@3;)
                      end
                      local.get 0
                      i32.const 248
                      i32.and
                      i32.const 1075796548
                      i32.add
                      local.set 1
                      block (result i32)  ;; label = @10
                        i32.const 1075796812
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
                          i32.const 1075796812
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
                    i32.const 1075796832
                    i32.load
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 2
                    i32.const 1075796828
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
                      call 23
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
                      call 26
                      br 8 (;@1;)
                    end
                    local.get 3
                    i32.const 248
                    i32.and
                    i32.const 1075796548
                    i32.add
                    local.set 0
                    block (result i32)  ;; label = @9
                      i32.const 1075796812
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
                        i32.const 1075796812
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
                  i32.const 1075796824
                  local.get 0
                  local.get 5
                  i32.sub
                  local.tee 1
                  i32.store
                  i32.const 1075796832
                  i32.const 1075796832
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
                i32.const 1075796828
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
                    i32.const 1075796828
                    i32.const 0
                    i32.store
                    i32.const 1075796820
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
                  i32.const 1075796820
                  local.get 2
                  i32.store
                  i32.const 1075796828
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
              i32.const 1075796832
              i32.const 1075796832
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
              i32.const 1075796824
              i32.const 1075796824
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
              i32.const 1075796844
              i32.const 2097152
              i32.store
              br 2 (;@3;)
            end
            i32.const 1075796832
            local.get 4
            i32.store
            i32.const 1075796824
            i32.const 1075796824
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
          i32.const 1075796828
          local.get 4
          i32.store
          i32.const 1075796820
          i32.const 1075796820
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
        i32.const 1075796824
        i32.load
        local.tee 1
        local.get 5
        i32.le_u
        br_if 0 (;@2;)
        i32.const 1075796824
        local.get 1
        local.get 5
        i32.sub
        local.tee 1
        i32.store
        i32.const 1075796832
        i32.const 1075796832
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
  (func (;9;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
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
                                          i32.const 1049108
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
          i32.const 1075796395
          i32.load8_u
          drop
          local.get 2
          local.tee 1
          call 8
          local.tee 4
          br_if 1 (;@2;)
          i32.const 1
        end
        call 11
        unreachable
      end
      local.get 4
      local.get 3
      local.get 2
      call 29
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
  (func (;10;) (type 0) (param i32 i32)
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
        call 22
        return
      end
      i32.const 1049405
      i32.const 1049452
      call 21
      unreachable
    end
    i32.const 1049468
    i32.const 1049516
    call 21
    unreachable)
  (func (;11;) (type 5) (param i32)
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
      i32.const 1048796
      i32.store offset=8
      local.get 0
      i64.const 4
      i64.store offset=16 align=4
      local.get 0
      i32.const 8
      i32.add
      i32.const 1048824
      call 18
      unreachable
    end
    unreachable)
  (func (;12;) (type 2) (result i32)
    i32.const 1049560)
  (func (;13;) (type 2) (result i32)
    i32.const 500)
  (func (;14;) (type 2) (result i32)
    i32.const 1)
  (func (;15;) (type 2) (result i32)
    i32.const 25)
  (func (;16;) (type 5) (param i32)
    i32.const 1049549
    i32.const 0
    i32.store8)
  (func (;17;) (type 5) (param i32)
    (local i32)
    local.get 0
    i32.const 255
    i32.and
    local.tee 1
    i32.const 37
    i32.sub
    i32.const 4
    i32.ge_u
    if  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 32
        i32.ne
        br_if 0 (;@2;)
        i32.const 1049548
        i32.load8_u
        i32.const 253
        i32.and
        br_if 0 (;@2;)
        i32.const 1075791388
        i32.const 6423
        i32.store16 align=1
        i32.const 1075791384
        i32.const 421009689
        i32.store align=1
        i32.const 1049536
        i32.const 3
        i32.store
        i32.const 1049541
        i32.const 10
        i32.store8
        i32.const 1049542
        i32.const 10
        i32.store8
        i32.const 1049540
        i32.const 1
        i32.store8
        i32.const 1049548
        i32.const 1
        i32.store8
        i32.const 1075796384
        i32.const 0
        i32.store8
      end
      return
    end
    i32.const 1049549
    local.get 0
    i32.store8)
  (func (;18;) (type 0) (param i32 i32)
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
      i32.const 2
      local.get 2
      call 27
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
    i32.const 3
    local.get 2
    call 27
    unreachable)
  (func (;19;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 6
    global.set 0
    i32.const 39
    local.set 2
    block  ;; label = @1
      local.get 0
      i64.load32_u
      local.tee 14
      i64.const 10000
      i64.lt_u
      if  ;; label = @2
        local.get 14
        local.set 15
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 6
        i32.const 9
        i32.add
        local.get 2
        i32.add
        local.tee 0
        i32.const 4
        i32.sub
        local.get 14
        i64.const 10000
        i64.div_u
        local.tee 15
        i64.const 55536
        i64.mul
        local.get 14
        i64.add
        i32.wrap_i64
        local.tee 3
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 4
        i32.const 1
        i32.shl
        i32.const 1048908
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 0
        i32.const 2
        i32.sub
        local.get 4
        i32.const -100
        i32.mul
        local.get 3
        i32.add
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1048908
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 2
        i32.const 4
        i32.sub
        local.set 2
        local.get 14
        i64.const 99999999
        i64.gt_u
        local.get 15
        local.set 14
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 15
      i64.const 99
      i64.le_u
      if  ;; label = @2
        local.get 15
        i32.wrap_i64
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 2
      i32.sub
      local.tee 2
      local.get 6
      i32.const 9
      i32.add
      i32.add
      local.get 15
      i32.wrap_i64
      local.tee 3
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const -100
      i32.mul
      local.get 3
      i32.add
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1048908
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
        local.get 6
        i32.const 9
        i32.add
        i32.add
        local.get 0
        i32.const 1
        i32.shl
        i32.const 1048908
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1
      i32.sub
      local.tee 2
      local.get 6
      i32.const 9
      i32.add
      i32.add
      local.get 0
      i32.const 48
      i32.or
      i32.store8
    end
    i32.const 39
    local.get 2
    i32.sub
    local.set 4
    i32.const 1
    local.set 0
    i32.const 43
    i32.const 1114112
    local.get 1
    i32.load offset=28
    local.tee 3
    i32.const 1
    i32.and
    local.tee 5
    select
    local.set 8
    local.get 3
    i32.const 4
    i32.and
    i32.const 2
    i32.shr_u
    local.set 9
    local.get 6
    i32.const 9
    i32.add
    local.get 2
    i32.add
    local.set 10
    block  ;; label = @1
      local.get 1
      i32.load
      i32.eqz
      if  ;; label = @2
        local.get 1
        i32.load offset=20
        local.tee 2
        local.get 1
        i32.load offset=24
        local.tee 1
        local.get 8
        local.get 9
        call 20
        br_if 1 (;@1;)
        local.get 2
        local.get 10
        local.get 4
        local.get 1
        i32.load offset=12
        call_indirect (type 1)
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=4
      local.tee 7
      local.get 4
      local.get 5
      i32.add
      local.tee 11
      i32.le_u
      if  ;; label = @2
        local.get 1
        i32.load offset=20
        local.tee 2
        local.get 1
        i32.load offset=24
        local.tee 1
        local.get 8
        local.get 9
        call 20
        br_if 1 (;@1;)
        local.get 2
        local.get 10
        local.get 4
        local.get 1
        i32.load offset=12
        call_indirect (type 1)
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      i32.const 8
      i32.and
      if  ;; label = @2
        local.get 1
        i32.load offset=16
        local.set 12
        local.get 1
        i32.const 48
        i32.store offset=16
        local.get 1
        i32.load8_u offset=32
        local.set 13
        local.get 1
        i32.const 1
        i32.store8 offset=32
        local.get 1
        i32.load offset=20
        local.tee 3
        local.get 1
        i32.load offset=24
        local.tee 11
        local.get 8
        local.get 9
        call 20
        br_if 1 (;@1;)
        local.get 2
        local.get 7
        i32.add
        local.get 5
        i32.sub
        i32.const 38
        i32.sub
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.const 1
          i32.sub
          local.tee 2
          if  ;; label = @4
            local.get 3
            i32.const 48
            local.get 11
            i32.load offset=16
            call_indirect (type 3)
            i32.eqz
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
        end
        local.get 3
        local.get 10
        local.get 4
        local.get 11
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        local.get 1
        local.get 13
        i32.store8 offset=32
        local.get 1
        local.get 12
        i32.store offset=16
        i32.const 0
        local.set 0
        br 1 (;@1;)
      end
      local.get 7
      local.get 11
      i32.sub
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load8_u offset=32
            local.tee 2
            i32.const 1
            i32.sub
            br_table 0 (;@4;) 1 (;@3;) 0 (;@4;) 2 (;@2;)
          end
          local.get 3
          local.set 2
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 3
        i32.const 1
        i32.shr_u
        local.set 2
        local.get 3
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 3
      end
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 1
      i32.load offset=16
      local.set 7
      local.get 1
      i32.load offset=24
      local.set 5
      local.get 1
      i32.load offset=20
      local.set 1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.const 1
          i32.sub
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          local.get 7
          local.get 5
          i32.load offset=16
          call_indirect (type 3)
          i32.eqz
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 1
      local.get 5
      local.get 8
      local.get 9
      call 20
      br_if 0 (;@1;)
      local.get 1
      local.get 10
      local.get 4
      local.get 5
      i32.load offset=12
      call_indirect (type 1)
      br_if 0 (;@1;)
      i32.const 0
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 3
        i32.eq
        if  ;; label = @3
          i32.const 0
          local.set 0
          br 2 (;@1;)
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 1
        local.get 7
        local.get 5
        i32.load offset=16
        call_indirect (type 3)
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 2
      i32.const 1
      i32.sub
      local.get 3
      i32.lt_u
      local.set 0
    end
    local.get 6
    i32.const 48
    i32.add
    global.set 0
    local.get 0)
  (func (;20;) (type 9) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 3)
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
    call_indirect (type 1))
  (func (;21;) (type 0) (param i32 i32)
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
    call 18
    unreachable)
  (func (;22;) (type 5) (param i32)
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
        i32.const 1075796828
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
          i32.const 1075796820
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
        call 23
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
                  i32.const 1075796832
                  i32.load
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1075796828
                  i32.load
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 2
                  local.get 3
                  i32.const -8
                  i32.and
                  local.tee 2
                  call 23
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
                  i32.const 1075796828
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1075796820
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
              call 26
              i32.const 0
              local.set 1
              i32.const 1075796852
              i32.const 1075796852
              i32.load
              i32.const 1
              i32.sub
              local.tee 0
              i32.store
              local.get 0
              br_if 4 (;@1;)
              i32.const 1075796540
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
              i32.const 1075796852
              i32.const 4095
              local.get 1
              local.get 1
              i32.const 4095
              i32.le_u
              select
              i32.store
              return
            end
            i32.const 1075796832
            local.get 1
            i32.store
            i32.const 1075796824
            i32.const 1075796824
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
            i32.const 1075796828
            i32.load
            local.get 1
            i32.eq
            if  ;; label = @5
              i32.const 1075796820
              i32.const 0
              i32.store
              i32.const 1075796828
              i32.const 0
              i32.store
            end
            local.get 0
            i32.const 1075796844
            i32.load
            local.tee 3
            i32.le_u
            br_if 3 (;@1;)
            i32.const 1075796832
            i32.load
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            local.set 0
            i32.const 1075796824
            i32.load
            local.tee 4
            i32.const 41
            i32.lt_u
            br_if 2 (;@2;)
            i32.const 1075796532
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
          i32.const 1075796828
          local.get 1
          i32.store
          i32.const 1075796820
          i32.const 1075796820
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
        i32.const 1075796548
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 1075796812
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
            i32.const 1075796812
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
      i32.const 1075796540
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
      i32.const 1075796852
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
      i32.const 1075796844
      i32.const -1
      i32.store
    end)
  (func (;23;) (type 0) (param i32 i32)
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
          i32.const 1075796404
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
          i32.const 1075796816
          i32.const 1075796816
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
        i32.const 1075796812
        i32.const 1075796812
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
  (func (;24;) (type 0) (param i32 i32)
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
        i32.const 1075796828
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
          i32.const 1075796820
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
        call 23
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
              i32.const 1075796832
              i32.load
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 1075796828
              i32.load
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 2
              call 23
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
              i32.const 1075796828
              i32.load
              i32.ne
              br_if 1 (;@4;)
              i32.const 1075796820
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
            call 26
            return
          end
          local.get 1
          i32.const 248
          i32.and
          i32.const 1075796548
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1075796812
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
              i32.const 1075796812
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
        i32.const 1075796832
        local.get 0
        i32.store
        i32.const 1075796824
        i32.const 1075796824
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
        i32.const 1075796828
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1075796820
        i32.const 0
        i32.store
        i32.const 1075796828
        i32.const 0
        i32.store
        return
      end
      i32.const 1075796828
      local.get 0
      i32.store
      i32.const 1075796820
      i32.const 1075796820
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
  (func (;25;) (type 0) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func (;26;) (type 0) (param i32 i32)
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
    i32.const 1075796404
    i32.add
    local.set 4
    i32.const 1
    local.get 2
    i32.shl
    local.tee 3
    i32.const 1075796816
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
      i32.const 1075796816
      i32.const 1075796816
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
  (func (;27;) (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const 1075796400
    i32.const 1075796400
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
        i32.const 1075796860
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          i32.const 1075796856
          i32.const 1075796856
          i32.load
          i32.const 1
          i32.add
          i32.store
          i32.const 1075796396
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
        call_indirect (type 0)
        unreachable
      end
      i32.const 1075796860
      i32.const 0
      i32.store8
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      unreachable
    end
    unreachable)
  (func (;28;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;29;) (type 1) (param i32 i32 i32) (result i32)
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
  (table (;0;) 4 4 funcref)
  (memory (;0;) 16416)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1075796861))
  (global (;2;) i32 (i32.const 1075796864))
  (export "memory" (memory 0))
  (export "smart_nft_view_canvas" (func 4))
  (export "smart_nft_view_canvas_tick" (func 5))
  (export "smart_nft_view_canvas_buffer" (func 6))
  (export "smart_nft_view_attrs" (func 7))
  (export "smart_nft_view_attr_buffer" (func 12))
  (export "smart_nft_view_canvas_get_height" (func 13))
  (export "smart_nft_view_canvas_get_scale" (func 14))
  (export "smart_nft_view_canvas_get_ticker" (func 15))
  (export "smart_nft_view_canvas_keyup" (func 16))
  (export "smart_nft_view_canvas_keydown" (func 17))
  (export "smart_nft_view_canvas_get_width" (func 13))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func 19 25 28)
  (data (;0;) (i32.const 1048576) "src/nft1_program_snake/view/src/lib.rs\00\00\00\00\10\00&\00\00\003\00\00\00\09\00\00\00 # # #### ###  ##   #   PRESS SPACE TO STARTGAME OVERPRESS SPACE TO START AGAIN\00\00\00\10\00&\00\00\00\06\01\00\00+\00\00\00\00\00\10\00&\00\00\00\13\01\00\00\1a\00\00\00\00\00\10\00&\00\00\00\00\01\00\00\1c\00\00\00\00\00\10\00&\00\00\00\f8\00\00\00\14\00\00\00capacity overflow\00\00\00\c8\00\10\00\11\00\00\00alloc/src/raw_vec.rs\e4\00\10\00\14\00\00\00\18\00\00\00\05\00\00\00index out of bounds: the len is  but the index is \00\00\08\01\10\00 \00\00\00(\01\10\00\12\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01")
  (data (;1;) (i32.const 1049302) "\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04")
  (data (;2;) (i32.const 1049364) "/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00\14\03\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\14\03\10\00)\00\00\00\ae\04\00\00\0d")
  (data (;3;) (i32.const 1049532) "2\00\00\00\03\00\00\00\01\0a\0a\00\ff\ff\ff"))
