(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (import "wbg" "__wbg_smartnftattrset_fe831d34e85b43e7" (func (;0;) (type 5)))
  (import "wbg" "__wbg_smartnftattrget_1e2a218d71a98ed9" (func (;1;) (type 3)))
  (func (;2;) (type 6) (param i32) (result i32)
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
                    i32.const 1049676
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
                    i32.const 1049264
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
                  i32.const 1049672
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
                      i32.const 1049408
                      i32.add
                      local.tee 3
                      local.get 0
                      i32.const 1049416
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
                      i32.const 1049672
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
                  i32.const 1049680
                  i32.load
                  i32.le_u
                  br_if 3 (;@4;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.eqz
                      if  ;; label = @10
                        i32.const 1049676
                        i32.load
                        local.tee 0
                        i32.eqz
                        br_if 6 (;@4;)
                        local.get 0
                        i32.ctz
                        i32.const 2
                        i32.shl
                        i32.const 1049264
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
                            i32.const 1049264
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
                            i32.const 1049676
                            i32.const 1049676
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
                        i32.const 1049408
                        i32.add
                        local.tee 3
                        local.get 1
                        i32.const 1049416
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
                        i32.const 1049672
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
                      i32.const 1049680
                      i32.load
                      local.tee 4
                      if  ;; label = @10
                        local.get 4
                        i32.const -8
                        i32.and
                        i32.const 1049408
                        i32.add
                        local.set 1
                        i32.const 1049688
                        i32.load
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 1049672
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
                            i32.const 1049672
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
                      i32.const 1049688
                      local.get 6
                      i32.store
                      i32.const 1049680
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
                        i32.const 1049680
                        i32.load
                        local.tee 6
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 6
                        i32.const -8
                        i32.and
                        i32.const 1049408
                        i32.add
                        local.set 0
                        i32.const 1049688
                        i32.load
                        local.set 2
                        block (result i32)  ;; label = @11
                          i32.const 1049672
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
                            i32.const 1049672
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
                    i32.const 1049688
                    local.get 3
                    i32.store
                    i32.const 1049680
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
                  i32.const 1049264
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
            i32.const 1049680
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
            i32.const 1049264
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
            i32.const 1049676
            i32.const 1049676
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
                    i32.const 1049680
                    i32.load
                    local.tee 1
                    i32.gt_u
                    if  ;; label = @9
                      local.get 5
                      i32.const 1049684
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
                        i32.const 1049696
                        local.get 8
                        i32.load offset=8
                        local.tee 4
                        i32.const 1049696
                        i32.load
                        i32.add
                        local.tee 0
                        i32.store
                        i32.const 1049700
                        i32.const 1049700
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
                            i32.const 1049692
                            i32.load
                            local.tee 2
                            if  ;; label = @13
                              i32.const 1049392
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
                            i32.const 1049708
                            i32.load
                            local.tee 0
                            i32.const 0
                            local.get 0
                            local.get 1
                            i32.le_u
                            select
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1049708
                              local.get 1
                              i32.store
                            end
                            i32.const 1049712
                            i32.const 4095
                            i32.store
                            i32.const 1049404
                            local.get 6
                            i32.store
                            i32.const 1049396
                            local.get 4
                            i32.store
                            i32.const 1049392
                            local.get 1
                            i32.store
                            i32.const 1049420
                            i32.const 1049408
                            i32.store
                            i32.const 1049428
                            i32.const 1049416
                            i32.store
                            i32.const 1049416
                            i32.const 1049408
                            i32.store
                            i32.const 1049436
                            i32.const 1049424
                            i32.store
                            i32.const 1049424
                            i32.const 1049416
                            i32.store
                            i32.const 1049444
                            i32.const 1049432
                            i32.store
                            i32.const 1049432
                            i32.const 1049424
                            i32.store
                            i32.const 1049452
                            i32.const 1049440
                            i32.store
                            i32.const 1049440
                            i32.const 1049432
                            i32.store
                            i32.const 1049460
                            i32.const 1049448
                            i32.store
                            i32.const 1049448
                            i32.const 1049440
                            i32.store
                            i32.const 1049468
                            i32.const 1049456
                            i32.store
                            i32.const 1049456
                            i32.const 1049448
                            i32.store
                            i32.const 1049476
                            i32.const 1049464
                            i32.store
                            i32.const 1049464
                            i32.const 1049456
                            i32.store
                            i32.const 1049484
                            i32.const 1049472
                            i32.store
                            i32.const 1049472
                            i32.const 1049464
                            i32.store
                            i32.const 1049480
                            i32.const 1049472
                            i32.store
                            i32.const 1049492
                            i32.const 1049480
                            i32.store
                            i32.const 1049488
                            i32.const 1049480
                            i32.store
                            i32.const 1049500
                            i32.const 1049488
                            i32.store
                            i32.const 1049496
                            i32.const 1049488
                            i32.store
                            i32.const 1049508
                            i32.const 1049496
                            i32.store
                            i32.const 1049504
                            i32.const 1049496
                            i32.store
                            i32.const 1049516
                            i32.const 1049504
                            i32.store
                            i32.const 1049512
                            i32.const 1049504
                            i32.store
                            i32.const 1049524
                            i32.const 1049512
                            i32.store
                            i32.const 1049520
                            i32.const 1049512
                            i32.store
                            i32.const 1049532
                            i32.const 1049520
                            i32.store
                            i32.const 1049528
                            i32.const 1049520
                            i32.store
                            i32.const 1049540
                            i32.const 1049528
                            i32.store
                            i32.const 1049536
                            i32.const 1049528
                            i32.store
                            i32.const 1049548
                            i32.const 1049536
                            i32.store
                            i32.const 1049556
                            i32.const 1049544
                            i32.store
                            i32.const 1049544
                            i32.const 1049536
                            i32.store
                            i32.const 1049564
                            i32.const 1049552
                            i32.store
                            i32.const 1049552
                            i32.const 1049544
                            i32.store
                            i32.const 1049572
                            i32.const 1049560
                            i32.store
                            i32.const 1049560
                            i32.const 1049552
                            i32.store
                            i32.const 1049580
                            i32.const 1049568
                            i32.store
                            i32.const 1049568
                            i32.const 1049560
                            i32.store
                            i32.const 1049588
                            i32.const 1049576
                            i32.store
                            i32.const 1049576
                            i32.const 1049568
                            i32.store
                            i32.const 1049596
                            i32.const 1049584
                            i32.store
                            i32.const 1049584
                            i32.const 1049576
                            i32.store
                            i32.const 1049604
                            i32.const 1049592
                            i32.store
                            i32.const 1049592
                            i32.const 1049584
                            i32.store
                            i32.const 1049612
                            i32.const 1049600
                            i32.store
                            i32.const 1049600
                            i32.const 1049592
                            i32.store
                            i32.const 1049620
                            i32.const 1049608
                            i32.store
                            i32.const 1049608
                            i32.const 1049600
                            i32.store
                            i32.const 1049628
                            i32.const 1049616
                            i32.store
                            i32.const 1049616
                            i32.const 1049608
                            i32.store
                            i32.const 1049636
                            i32.const 1049624
                            i32.store
                            i32.const 1049624
                            i32.const 1049616
                            i32.store
                            i32.const 1049644
                            i32.const 1049632
                            i32.store
                            i32.const 1049632
                            i32.const 1049624
                            i32.store
                            i32.const 1049652
                            i32.const 1049640
                            i32.store
                            i32.const 1049640
                            i32.const 1049632
                            i32.store
                            i32.const 1049660
                            i32.const 1049648
                            i32.store
                            i32.const 1049648
                            i32.const 1049640
                            i32.store
                            i32.const 1049668
                            i32.const 1049656
                            i32.store
                            i32.const 1049656
                            i32.const 1049648
                            i32.store
                            i32.const 1049692
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
                            i32.const 1049664
                            i32.const 1049656
                            i32.store
                            i32.const 1049684
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
                            i32.const 1049704
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
                        i32.const 1049708
                        i32.const 1049708
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
                        i32.const 1049392
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
                          i32.const 1049392
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
                          i32.const 1049692
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
                          i32.const 1049684
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
                          i32.const 1049704
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
                          i32.const 1049392
                          i64.load align=4
                          local.set 10
                          local.get 3
                          i32.const 16
                          i32.add
                          i32.const 1049400
                          i64.load align=4
                          i64.store align=4
                          local.get 3
                          local.get 10
                          i64.store offset=8 align=4
                          i32.const 1049404
                          local.get 6
                          i32.store
                          i32.const 1049396
                          local.get 4
                          i32.store
                          i32.const 1049392
                          local.get 1
                          i32.store
                          i32.const 1049400
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
                            call 10
                            br 8 (;@4;)
                          end
                          local.get 0
                          i32.const 248
                          i32.and
                          i32.const 1049408
                          i32.add
                          local.set 1
                          block (result i32)  ;; label = @12
                            i32.const 1049672
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
                              i32.const 1049672
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
                        i32.const 1049692
                        i32.load
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 4
                        i32.const 1049688
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
                          call 7
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
                          call 10
                          br 6 (;@5;)
                        end
                        local.get 5
                        i32.const 248
                        i32.and
                        i32.const 1049408
                        i32.add
                        local.set 1
                        block (result i32)  ;; label = @11
                          i32.const 1049672
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
                            i32.const 1049672
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
                      i32.const 1049684
                      local.get 0
                      local.get 5
                      i32.sub
                      local.tee 1
                      i32.store
                      i32.const 1049692
                      i32.const 1049692
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
                    i32.const 1049688
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
                        i32.const 1049688
                        i32.const 0
                        i32.store
                        i32.const 1049680
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
                      i32.const 1049680
                      local.get 2
                      i32.store
                      i32.const 1049688
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
                  i32.const 1049692
                  i32.const 1049692
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
                  i32.const 1049684
                  i32.const 1049684
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
                  i32.const 1049704
                  i32.const 2097152
                  i32.store
                  br 3 (;@4;)
                end
                i32.const 1049692
                local.get 0
                i32.store
                i32.const 1049684
                i32.const 1049684
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
              i32.const 1049688
              local.get 0
              i32.store
              i32.const 1049680
              i32.const 1049680
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
          i32.const 1049684
          i32.load
          local.tee 0
          local.get 5
          i32.le_u
          br_if 2 (;@1;)
          drop
          i32.const 1049684
          local.get 0
          local.get 5
          i32.sub
          local.tee 1
          i32.store
          i32.const 1049692
          i32.const 1049692
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
            call 10
            br 2 (;@2;)
          end
          local.get 4
          i32.const 248
          i32.and
          i32.const 1049408
          i32.add
          local.set 1
          block (result i32)  ;; label = @4
            i32.const 1049672
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
              i32.const 1049672
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
  (func (;3;) (type 4) (param i32)
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
        i32.const 1049688
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
          i32.const 1049680
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
        call 7
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
                  i32.const 1049692
                  i32.load
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1049688
                  i32.load
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 2
                  local.get 3
                  i32.const -8
                  i32.and
                  local.tee 2
                  call 7
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
                  i32.const 1049688
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1049680
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
              call 10
              i32.const 0
              local.set 1
              i32.const 1049712
              i32.const 1049712
              i32.load
              i32.const 1
              i32.sub
              local.tee 0
              i32.store
              local.get 0
              br_if 4 (;@1;)
              i32.const 1049400
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
              i32.const 1049712
              i32.const 4095
              local.get 1
              local.get 1
              i32.const 4095
              i32.le_u
              select
              i32.store
              return
            end
            i32.const 1049692
            local.get 1
            i32.store
            i32.const 1049684
            i32.const 1049684
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
            i32.const 1049688
            i32.load
            local.get 1
            i32.eq
            if  ;; label = @5
              i32.const 1049680
              i32.const 0
              i32.store
              i32.const 1049688
              i32.const 0
              i32.store
            end
            local.get 0
            i32.const 1049704
            i32.load
            local.tee 3
            i32.le_u
            br_if 3 (;@1;)
            i32.const 1049692
            i32.load
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            local.set 0
            i32.const 1049684
            i32.load
            local.tee 4
            i32.const 41
            i32.lt_u
            br_if 2 (;@2;)
            i32.const 1049392
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
          i32.const 1049688
          local.get 1
          i32.store
          i32.const 1049680
          i32.const 1049680
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
        i32.const 1049408
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 1049672
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
            i32.const 1049672
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
      i32.const 1049400
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
      i32.const 1049712
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
      i32.const 1049704
      i32.const -1
      i32.store
    end)
  (func (;4;) (type 2) (param i32 i32 i32) (result i32)
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
  (func (;5;) (type 0) (param i32 i32)
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
        i32.const 1049688
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
          i32.const 1049680
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
        call 7
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
              i32.const 1049692
              i32.load
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 1049688
              i32.load
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 2
              call 7
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
              i32.const 1049688
              i32.load
              i32.ne
              br_if 1 (;@4;)
              i32.const 1049680
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
            call 10
            return
          end
          local.get 1
          i32.const 248
          i32.and
          i32.const 1049408
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1049672
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
              i32.const 1049672
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
        i32.const 1049692
        local.get 0
        i32.store
        i32.const 1049684
        i32.const 1049684
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
        i32.const 1049688
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1049680
        i32.const 0
        i32.store
        i32.const 1049688
        i32.const 0
        i32.store
        return
      end
      i32.const 1049688
      local.get 0
      i32.store
      i32.const 1049680
      i32.const 1049680
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
  (func (;6;) (type 1) (param i32 i32) (result i32)
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
      call 2
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
          call 5
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
        call 5
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3)
  (func (;7;) (type 0) (param i32 i32)
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
          i32.const 1049264
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
          i32.const 1049676
          i32.const 1049676
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
        i32.const 1049672
        i32.const 1049672
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
  (func (;8;) (type 2) (param i32 i32 i32) (result i32)
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
  (func (;9;) (type 1) (param i32 i32) (result i32)
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
              call 27
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
            call 16
            local.get 2
            i32.load offset=8
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 2
              i32.load offset=12
              local.get 2
              i32.load offset=16
              call 27
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
        call 14
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
      call 8
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
  (func (;10;) (type 0) (param i32 i32)
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
    i32.const 1049264
    i32.add
    local.set 4
    i32.const 1
    local.get 2
    i32.shl
    local.tee 3
    i32.const 1049676
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
      i32.const 1049676
      i32.const 1049676
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
  (func (;11;) (type 0) (param i32 i32)
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
      i32.const 1048576
      local.get 2
      i32.const 40
      i32.add
      call 4
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
    i32.const 1049205
    i32.load8_u
    drop
    local.get 2
    local.get 5
    i64.store
    i32.const 12
    i32.const 4
    call 30
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
      i32.const 1048852
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
    call 40
    unreachable)
  (func (;12;) (type 7) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    i32.const 1049260
    i32.const 1049260
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
        i32.const 1049720
        i32.load8_u
        br_if 1 (;@1;)
        i32.const 1049720
        i32.const 1
        i32.store8
        i32.const 1049716
        i32.const 1049716
        i32.load
        i32.const 1
        i32.add
        i32.store
        i32.const 1049248
        i32.load
        local.tee 6
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1049248
        local.get 6
        i32.const 1
        i32.add
        i32.store
        i32.const 1049248
        i32.const 1049252
        i32.load
        if (result i32)  ;; label = @3
          local.get 5
          i32.const 8
          i32.add
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
          i64.load offset=8
          i64.store offset=16 align=4
          i32.const 1049252
          i32.load
          local.get 5
          i32.const 16
          i32.add
          i32.const 1049256
          i32.load
          i32.load offset=20
          call_indirect (type 0)
          i32.const 1049248
          i32.load
          i32.const 1
          i32.sub
        else
          local.get 6
        end
        i32.store
        i32.const 1049720
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
    call_indirect (type 0)
    unreachable)
  (func (;13;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    i32.const 1049205
    i32.load8_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        i32.const 8
        i32.const 1
        call 30
        local.tee 5
        if  ;; label = @3
          local.get 5
          i64.const 8680820633094091873
          i64.store align=1
          i32.const 1049205
          i32.load8_u
          drop
          i32.const 5
          i32.const 1
          call 30
          local.tee 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 7
          i32.store8 offset=4
          local.get 3
          i32.const 1527055873
          i32.store align=1
          local.get 5
          i32.const 8
          local.get 3
          i32.const 5
          call 0
          drop
          i32.const 1049205
          i32.load8_u
          drop
          i32.const 8
          i32.const 1
          call 30
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i64.const 8753160801620358241
          i64.store align=1
          local.get 4
          i32.const 8
          i32.add
          local.get 3
          i32.const 8
          call 1
          local.get 4
          i32.load offset=12
          local.tee 3
          if  ;; label = @4
            local.get 4
            i32.load offset=8
            local.get 3
            call 35
          end
          local.get 0
          local.get 2
          i32.store offset=4
          local.get 0
          local.get 1
          i32.store
          local.get 4
          i32.const 16
          i32.add
          global.set 0
          return
        end
        i32.const 1
        i32.const 8
        call 27
        unreachable
      end
      i32.const 1
      i32.const 8
      call 27
      unreachable
    end
    i32.const 1
    i32.const 5
    call 40
    unreachable)
  (func (;14;) (type 3) (param i32 i32 i32)
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
      call 27
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
    call 16
    local.get 3
    i32.load offset=8
    i32.const 1
    i32.eq
    if  ;; label = @1
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=16
      call 27
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
  (func (;15;) (type 0) (param i32 i32)
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
      i32.const 1048576
      local.get 2
      i32.const 24
      i32.add
      call 4
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
    i32.const 1048852
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;16;) (type 8) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
              local.get 3
              i32.load offset=8
              local.tee 6
              if  ;; label = @6
                block (result i32)  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            i32.load
                            local.tee 10
                            i32.const 4
                            i32.sub
                            local.tee 7
                            i32.load
                            local.tee 12
                            i32.const -8
                            i32.and
                            local.tee 8
                            i32.const 4
                            i32.const 8
                            local.get 12
                            i32.const 3
                            i32.and
                            local.tee 3
                            select
                            local.get 6
                            i32.add
                            i32.ge_u
                            if  ;; label = @13
                              local.get 3
                              i32.const 0
                              local.get 6
                              i32.const 39
                              i32.add
                              local.tee 11
                              local.get 8
                              i32.lt_u
                              select
                              br_if 1 (;@12;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 1
                                  i32.const 9
                                  i32.ge_u
                                  if  ;; label = @16
                                    local.get 1
                                    local.get 2
                                    call 6
                                    local.tee 13
                                    br_if 1 (;@15;)
                                    i32.const 0
                                    br 9 (;@7;)
                                  end
                                  local.get 2
                                  i32.const -65588
                                  i32.gt_u
                                  br_if 1 (;@14;)
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
                                  local.set 4
                                  block  ;; label = @16
                                    local.get 3
                                    i32.eqz
                                    if  ;; label = @17
                                      local.get 4
                                      i32.const 256
                                      i32.lt_u
                                      local.get 8
                                      local.get 4
                                      i32.const 4
                                      i32.or
                                      i32.lt_u
                                      i32.or
                                      local.get 8
                                      local.get 4
                                      i32.sub
                                      i32.const 131073
                                      i32.ge_u
                                      i32.or
                                      br_if 1 (;@16;)
                                      br 9 (;@8;)
                                    end
                                    local.get 10
                                    i32.const 8
                                    i32.sub
                                    local.tee 9
                                    local.get 8
                                    i32.add
                                    local.set 5
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 4
                                            local.get 8
                                            i32.gt_u
                                            if  ;; label = @21
                                              local.get 5
                                              i32.const 1049692
                                              i32.load
                                              i32.eq
                                              br_if 4 (;@17;)
                                              local.get 5
                                              i32.const 1049688
                                              i32.load
                                              i32.eq
                                              br_if 2 (;@19;)
                                              local.get 5
                                              i32.load offset=4
                                              local.tee 3
                                              i32.const 2
                                              i32.and
                                              br_if 5 (;@16;)
                                              local.get 3
                                              i32.const -8
                                              i32.and
                                              local.tee 3
                                              local.get 8
                                              i32.add
                                              local.tee 11
                                              local.get 4
                                              i32.lt_u
                                              br_if 5 (;@16;)
                                              local.get 5
                                              local.get 3
                                              call 7
                                              local.get 11
                                              local.get 4
                                              i32.sub
                                              local.tee 5
                                              i32.const 16
                                              i32.lt_u
                                              br_if 1 (;@20;)
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
                                              local.get 9
                                              i32.add
                                              local.tee 6
                                              local.get 5
                                              i32.const 3
                                              i32.or
                                              i32.store offset=4
                                              local.get 9
                                              local.get 11
                                              i32.add
                                              local.tee 3
                                              local.get 3
                                              i32.load offset=4
                                              i32.const 1
                                              i32.or
                                              i32.store offset=4
                                              local.get 6
                                              local.get 5
                                              call 5
                                              br 13 (;@8;)
                                            end
                                            local.get 8
                                            local.get 4
                                            i32.sub
                                            local.tee 6
                                            i32.const 15
                                            i32.gt_u
                                            br_if 2 (;@18;)
                                            br 12 (;@8;)
                                          end
                                          local.get 7
                                          local.get 11
                                          local.get 7
                                          i32.load
                                          i32.const 1
                                          i32.and
                                          i32.or
                                          i32.const 2
                                          i32.or
                                          i32.store
                                          local.get 9
                                          local.get 11
                                          i32.add
                                          local.tee 3
                                          local.get 3
                                          i32.load offset=4
                                          i32.const 1
                                          i32.or
                                          i32.store offset=4
                                          br 11 (;@8;)
                                        end
                                        i32.const 1049680
                                        i32.load
                                        local.get 8
                                        i32.add
                                        local.tee 3
                                        local.get 4
                                        i32.lt_u
                                        br_if 2 (;@16;)
                                        block  ;; label = @19
                                          local.get 3
                                          local.get 4
                                          i32.sub
                                          local.tee 5
                                          i32.const 15
                                          i32.le_u
                                          if  ;; label = @20
                                            local.get 7
                                            local.get 12
                                            i32.const 1
                                            i32.and
                                            local.get 3
                                            i32.or
                                            i32.const 2
                                            i32.or
                                            i32.store
                                            local.get 3
                                            local.get 9
                                            i32.add
                                            local.tee 3
                                            local.get 3
                                            i32.load offset=4
                                            i32.const 1
                                            i32.or
                                            i32.store offset=4
                                            i32.const 0
                                            local.set 5
                                            i32.const 0
                                            local.set 6
                                            br 1 (;@19;)
                                          end
                                          local.get 7
                                          local.get 4
                                          local.get 12
                                          i32.const 1
                                          i32.and
                                          i32.or
                                          i32.const 2
                                          i32.or
                                          i32.store
                                          local.get 4
                                          local.get 9
                                          i32.add
                                          local.tee 6
                                          local.get 5
                                          i32.const 1
                                          i32.or
                                          i32.store offset=4
                                          local.get 3
                                          local.get 9
                                          i32.add
                                          local.tee 3
                                          local.get 5
                                          i32.store
                                          local.get 3
                                          local.get 3
                                          i32.load offset=4
                                          i32.const -2
                                          i32.and
                                          i32.store offset=4
                                        end
                                        i32.const 1049688
                                        local.get 6
                                        i32.store
                                        i32.const 1049680
                                        local.get 5
                                        i32.store
                                        br 10 (;@8;)
                                      end
                                      local.get 7
                                      local.get 4
                                      local.get 12
                                      i32.const 1
                                      i32.and
                                      i32.or
                                      i32.const 2
                                      i32.or
                                      i32.store
                                      local.get 4
                                      local.get 9
                                      i32.add
                                      local.tee 3
                                      local.get 6
                                      i32.const 3
                                      i32.or
                                      i32.store offset=4
                                      local.get 5
                                      local.get 5
                                      i32.load offset=4
                                      i32.const 1
                                      i32.or
                                      i32.store offset=4
                                      local.get 3
                                      local.get 6
                                      call 5
                                      br 9 (;@8;)
                                    end
                                    i32.const 1049684
                                    i32.load
                                    local.get 8
                                    i32.add
                                    local.tee 3
                                    local.get 4
                                    i32.gt_u
                                    br_if 7 (;@9;)
                                  end
                                  local.get 2
                                  call 2
                                  local.tee 3
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  local.get 3
                                  local.get 10
                                  i32.const -4
                                  i32.const -8
                                  local.get 7
                                  i32.load
                                  local.tee 3
                                  i32.const 3
                                  i32.and
                                  select
                                  local.get 3
                                  i32.const -8
                                  i32.and
                                  i32.add
                                  local.tee 3
                                  local.get 2
                                  local.get 2
                                  local.get 3
                                  i32.gt_u
                                  select
                                  call 8
                                  local.get 10
                                  call 3
                                  br 8 (;@7;)
                                end
                                local.get 13
                                local.get 10
                                local.get 6
                                local.get 2
                                local.get 2
                                local.get 6
                                i32.gt_u
                                select
                                call 8
                                drop
                                local.get 7
                                i32.load
                                local.tee 3
                                i32.const -8
                                i32.and
                                local.tee 5
                                local.get 6
                                i32.const 4
                                i32.const 8
                                local.get 3
                                i32.const 3
                                i32.and
                                local.tee 3
                                select
                                i32.add
                                i32.lt_u
                                br_if 3 (;@11;)
                                local.get 3
                                i32.const 0
                                local.get 5
                                local.get 11
                                i32.gt_u
                                select
                                br_if 4 (;@10;)
                                local.get 10
                                call 3
                              end
                              local.get 13
                              br 6 (;@7;)
                            end
                            i32.const 1048641
                            i32.const 1048688
                            call 23
                            unreachable
                          end
                          i32.const 1048704
                          i32.const 1048752
                          call 23
                          unreachable
                        end
                        i32.const 1048641
                        i32.const 1048688
                        call 23
                        unreachable
                      end
                      i32.const 1048704
                      i32.const 1048752
                      call 23
                      unreachable
                    end
                    local.get 7
                    local.get 4
                    local.get 12
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    local.get 4
                    local.get 9
                    i32.add
                    local.tee 6
                    local.get 3
                    local.get 4
                    i32.sub
                    local.tee 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 1049684
                    local.get 3
                    i32.store
                    i32.const 1049692
                    local.get 6
                    i32.store
                    local.get 10
                    br 1 (;@7;)
                  end
                  local.get 10
                end
                br 2 (;@4;)
              end
            end
            local.get 1
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            drop
            i32.const 1049205
            i32.load8_u
            drop
            local.get 2
            local.get 1
            call 30
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
  (func (;17;) (type 1) (param i32 i32) (result i32)
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
        call 29
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
      call 4
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;18;) (type 0) (param i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1049204
    i32.load8_u
    if  ;; label = @1
      local.get 0
      i32.const 2
      i32.store offset=12
      local.get 0
      i32.const 1048804
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
      i32.const 1048836
      call 19
      unreachable
    end
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;19;) (type 0) (param i32 i32)
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
      i32.const 1048912
      local.get 0
      i32.load offset=24
      local.get 0
      i32.load offset=28
      local.tee 0
      i32.load8_u offset=28
      local.get 0
      i32.load8_u offset=29
      call 12
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 1
    i32.const 1048884
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.tee 0
    i32.load8_u offset=28
    local.get 0
    i32.load8_u offset=29
    call 12
    unreachable)
  (func (;20;) (type 0) (param i32 i32)
    (local i32 i32)
    i32.const 1049205
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
    call 30
    local.tee 1
    if  ;; label = @1
      local.get 1
      local.get 2
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 0
      i32.const 1048868
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      return
    end
    i32.const 4
    i32.const 8
    call 40
    unreachable)
  (func (;21;) (type 2) (param i32 i32 i32) (result i32)
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
      call 14
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
    call 8
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;22;) (type 1) (param i32 i32) (result i32)
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
        i32.const 1049205
        i32.load8_u
        drop
        local.get 0
        local.get 1
        call 30
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      return
    end
    unreachable)
  (func (;23;) (type 0) (param i32 i32)
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
    call 19
    unreachable)
  (func (;24;) (type 5) (param i32 i32 i32 i32) (result i32)
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
  (func (;25;) (type 4) (param i32)
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
      call 35
    end)
  (func (;26;) (type 4) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 1
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      call 35
    end)
  (func (;27;) (type 0) (param i32 i32)
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
      i32.const 1048960
      i32.store offset=8
      local.get 0
      i64.const 4
      i64.store offset=16 align=4
      local.get 0
      i32.const 8
      i32.add
      i32.const 1048988
      call 19
      unreachable
    end
    local.get 0
    local.get 1
    call 40
    unreachable)
  (func (;28;) (type 3) (param i32 i32 i32)
    local.get 1
    if  ;; label = @1
      local.get 0
      local.get 1
      call 35
    end)
  (func (;29;) (type 2) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load offset=20
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 2))
  (func (;30;) (type 1) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 9
      i32.ge_u
      if  ;; label = @2
        local.get 1
        local.get 0
        call 6
        br 1 (;@1;)
      end
      local.get 0
      call 2
    end)
  (func (;31;) (type 0) (param i32 i32)
    local.get 0
    i64.const -3919642737356208210
    i64.store offset=8
    local.get 0
    i64.const -7298455189511714633
    i64.store)
  (func (;32;) (type 0) (param i32 i32)
    local.get 0
    i64.const 7199936582794304877
    i64.store offset=8
    local.get 0
    i64.const -5076933981314334344
    i64.store)
  (func (;33;) (type 0) (param i32 i32)
    local.get 0
    i32.const 1048868
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;34;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 29)
  (func (;35;) (type 0) (param i32 i32)
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
          call 3
          br 2 (;@1;)
        end
        i32.const 1048641
        i32.const 1048688
        call 23
        unreachable
      end
      i32.const 1048704
      i32.const 1048752
      call 23
      unreachable
    end)
  (func (;36;) (type 1) (param i32 i32) (result i32)
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
        i32.const 1049004
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
        i32.const 1049004
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
      i32.const 1049004
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
        i32.const 1049004
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
        call 24
        br_if 1 (;@1;)
        drop
        local.get 2
        local.get 7
        local.get 6
        local.get 0
        i32.load offset=12
        call_indirect (type 2)
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
              call 24
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
            call 24
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
            call_indirect (type 2)
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
          call_indirect (type 2)
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
        call 24
        br_if 0 (;@2;)
        local.get 1
        local.get 7
        local.get 6
        local.get 3
        i32.load offset=12
        call_indirect (type 2)
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
  (func (;37;) (type 6) (param i32) (result i32)
    local.get 0
    global.get 0
    i32.add
    global.set 0
    global.get 0)
  (func (;38;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1048576
    local.get 1
    call 4)
  (func (;39;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;40;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1049244
    i32.load
    local.tee 0
    i32.const 2
    local.get 0
    select
    call_indirect (type 0)
    unreachable)
  (func (;41;) (type 0) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (table (;0;) 18 18 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "smart_nft_main" (func 13))
  (export "__wbindgen_free" (func 28))
  (export "__wbindgen_malloc" (func 22))
  (export "__wbindgen_add_to_stack_pointer" (func 37))
  (elem (;0;) (i32.const 1) func 36 18 26 21 9 38 31 32 34 20 33 39 25 17 11 15 41)
  (data (;0;) (i32.const 1048576) "\03\00\00\00\0c\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00\18\00\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\18\00\10\00)\00\00\00\ae\04\00\00\0d\00\00\00memory allocation of  bytes failed\00\00\c0\00\10\00\15\00\00\00\d5\00\10\00\0d\00\00\00std/src/alloc.rs\f4\00\10\00\10\00\00\00c\01\00\00\09\00\00\00\03\00\00\00\0c\00\00\00\04\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\09\00\00\00\0a\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00\10\00\00\00\04\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00capacity overflow\00\00\00l\01\10\00\11\00\00\00alloc/src/raw_vec.rs\88\01\10\00\14\00\00\00\18\00\00\00\05\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"))
