(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32 i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (result i32)))
  (type (;9;) (func (param i32) (result i32)))
  (type (;10;) (func (param i64 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32 i64 i64 i64)))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (import "smart_nft" "smart_nft_view_command_ret" (func (;0;) (type 3)))
  (func (;1;) (type 3) (param i32)
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
          call 2
        end
        local.get 0
        i32.load offset=12
        local.tee 1
        if  ;; label = @3
          local.get 0
          i32.load offset=16
          local.get 1
          call 2
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
      call 2
    end)
  (func (;2;) (type 2) (param i32 i32)
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
        call 24
        return
      end
      i32.const 1056537
      i32.const 46
      i32.const 1056584
      call 25
      unreachable
    end
    i32.const 1056600
    i32.const 46
    i32.const 1056648
    call 25
    unreachable)
  (func (;3;) (type 3) (param i32)
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
        call 5
        local.get 0
        i32.load offset=4
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.const 28
        i32.mul
        call 2
        return
      end
      local.get 0
      i32.const 4
      i32.add
      call 4
    end)
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
                call 2
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
          call 2
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
        call 2
        return
      end
      local.get 0
      i32.load
      local.tee 2
      if  ;; label = @2
        local.get 0
        i32.load offset=4
        local.get 2
        call 2
      end
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.get 1
      call 2
    end)
  (func (;5;) (type 2) (param i32 i32)
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
          call 2
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
          call 2
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
  (func (;6;) (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call 7)
  (func (;7;) (type 1) (param i32 i32 i32) (result i32)
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
            call_indirect (type 0)
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
      call_indirect (type 1)
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
        call_indirect (type 0)
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
    call_indirect (type 1))
  (func (;8;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 i64 i64)
    global.get 0
    i32.const 224
    i32.sub
    local.tee 2
    global.set 0
    f64.const 0x1p+10 (;=1024;)
    f64.const 0x1.f4p+9 (;=1000;)
    local.get 0
    i32.load
    local.tee 5
    i32.load8_u offset=18
    select
    local.set 11
    local.get 0
    i32.load offset=4
    f64.convert_i32_u
    local.set 10
    block  ;; label = @1
      local.get 5
      i32.load8_u offset=16
      local.tee 0
      i32.const 9
      i32.eq
      if  ;; label = @2
        i32.const 0
        local.set 0
        loop  ;; label = @3
          local.get 10
          f64.abs
          local.get 11
          f64.ge
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 10
          local.get 11
          f64.div
          local.set 10
          br 0 (;@3;)
        end
        unreachable
      end
      local.get 0
      i32.eqz
      if  ;; label = @2
        i32.const 0
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 10
        local.get 11
        f64.div
        local.set 10
        local.get 3
        i32.const 1
        i32.sub
        local.tee 3
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 10
    f64.store offset=8
    local.get 5
    i32.load8_u offset=17
    local.set 6
    local.get 5
    i32.load8_u offset=20
    local.set 7
    local.get 2
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.load8_u offset=19
                i32.eqz
                if  ;; label = @7
                  local.get 7
                  i32.const 1
                  i32.and
                  i32.eqz
                  if  ;; label = @8
                    local.get 6
                    i32.const 1
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 0
                      i32.const 9
                      i32.ge_u
                      br_if 3 (;@6;)
                      local.get 2
                      local.get 0
                      i32.const 3
                      i32.shl
                      i32.const 1056032
                      i32.add
                      i32.load
                      local.tee 4
                      i32.store offset=16
                      i32.const 4
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 9
                    i32.lt_u
                    br_if 6 (;@2;)
                    local.get 0
                    i32.const 9
                    i32.const 1048692
                    call 9
                    unreachable
                  end
                  local.get 6
                  i32.const 1
                  i32.and
                  i32.eqz
                  if  ;; label = @8
                    local.get 0
                    i32.const 9
                    i32.lt_u
                    if  ;; label = @9
                      local.get 2
                      local.get 0
                      i32.const 3
                      i32.shl
                      local.tee 3
                      i32.const 1056176
                      i32.add
                      i32.load
                      local.tee 4
                      i32.store offset=16
                      local.get 3
                      i32.const 1056180
                      i32.add
                      i32.load
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 9
                    i32.const 1048708
                    call 9
                    unreachable
                  end
                  local.get 0
                  i32.const 9
                  i32.lt_u
                  br_if 4 (;@3;)
                  local.get 0
                  i32.const 9
                  i32.const 1048724
                  call 9
                  unreachable
                end
                local.get 7
                i32.const 1
                i32.and
                i32.eqz
                if  ;; label = @7
                  local.get 6
                  i32.const 1
                  i32.and
                  i32.eqz
                  if  ;; label = @8
                    local.get 0
                    i32.const 9
                    i32.lt_u
                    if  ;; label = @9
                      local.get 2
                      local.get 0
                      i32.const 3
                      i32.shl
                      local.tee 3
                      i32.const 1056288
                      i32.add
                      i32.load
                      local.tee 4
                      i32.store offset=16
                      local.get 3
                      i32.const 1056292
                      i32.add
                      i32.load
                      br 8 (;@1;)
                    end
                    local.get 0
                    i32.const 9
                    i32.const 1048740
                    call 9
                    unreachable
                  end
                  local.get 0
                  i32.const 9
                  i32.lt_u
                  br_if 3 (;@4;)
                  local.get 0
                  i32.const 9
                  i32.const 1048756
                  call 9
                  unreachable
                end
                local.get 6
                i32.const 1
                i32.and
                i32.eqz
                if  ;; label = @7
                  local.get 0
                  i32.const 9
                  i32.lt_u
                  if  ;; label = @8
                    local.get 2
                    local.get 0
                    i32.const 3
                    i32.shl
                    local.tee 3
                    i32.const 1056424
                    i32.add
                    i32.load
                    local.tee 4
                    i32.store offset=16
                    local.get 3
                    i32.const 1056428
                    i32.add
                    i32.load
                    br 7 (;@1;)
                  end
                  local.get 0
                  i32.const 9
                  i32.const 1048772
                  call 9
                  unreachable
                end
                local.get 0
                i32.const 9
                i32.lt_u
                br_if 1 (;@5;)
                local.get 0
                i32.const 9
                i32.const 1048788
                call 9
                unreachable
              end
              local.get 0
              i32.const 9
              i32.const 1048676
              call 9
              unreachable
            end
            local.get 2
            local.get 0
            i32.const 3
            i32.shl
            local.tee 3
            i32.const 1055924
            i32.add
            i32.load
            local.tee 4
            i32.store offset=16
            local.get 3
            i32.const 1055928
            i32.add
            i32.load
            br 3 (;@1;)
          end
          local.get 2
          local.get 0
          i32.const 3
          i32.shl
          local.tee 3
          i32.const 1055780
          i32.add
          i32.load
          local.tee 4
          i32.store offset=16
          local.get 3
          i32.const 1055784
          i32.add
          i32.load
          br 2 (;@1;)
        end
        local.get 2
        local.get 0
        i32.const 3
        i32.shl
        local.tee 3
        i32.const 1055684
        i32.add
        i32.load
        local.tee 4
        i32.store offset=16
        local.get 3
        i32.const 1055688
        i32.add
        i32.load
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.const 3
      i32.shl
      local.tee 3
      i32.const 1055532
      i32.add
      i32.load
      local.tee 4
      i32.store offset=16
      local.get 3
      i32.const 1055536
      i32.add
      i32.load
    end
    local.tee 3
    i32.store offset=20
    local.get 10
    i64.reinterpret_f64
    local.tee 13
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.tee 8
    i32.const 1023
    i32.sub
    local.set 9
    block  ;; label = @1
      block (result f64)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              i32.const 1074
              i32.le_u
              if  ;; label = @6
                local.get 8
                i32.const 1023
                i32.lt_u
                br_if 1 (;@5;)
                local.get 13
                local.get 9
                i64.extend_i32_u
                local.tee 14
                i64.shl
                i64.const 4503599627370495
                i64.and
                i64.eqz
                i32.eqz
                br_if 2 (;@4;)
                local.get 13
                i64.const -9223372036854775808
                i64.and
                f64.reinterpret_i64
                br 4 (;@2;)
              end
              local.get 13
              i64.const 4503599627370495
              i64.and
              i64.eqz
              local.get 9
              i32.const 1024
              i32.ne
              i32.or
              br_if 2 (;@3;)
              local.get 10
              local.set 12
              local.get 10
              local.set 11
              br 4 (;@1;)
            end
            local.get 13
            i64.const -9223372036854775808
            i64.and
            f64.reinterpret_i64
            local.set 12
            local.get 10
            local.set 11
            br 3 (;@1;)
          end
          local.get 10
          i64.const -4503599627370496
          local.get 14
          i64.shr_s
          local.get 13
          i64.and
          f64.reinterpret_i64
          local.tee 12
          f64.sub
          local.set 11
          br 2 (;@1;)
        end
        local.get 13
        i64.const -9223372036854775808
        i64.and
        f64.reinterpret_i64
      end
      local.set 11
      local.get 10
      local.set 12
    end
    block  ;; label = @1
      local.get 7
      i32.const 1
      i32.and
      i32.const 1
      local.get 0
      local.get 6
      i32.or
      select
      i32.eqz
      local.get 12
      f64.const -0x1p+0 (;=-1;)
      f64.add
      f64.abs
      f64.const 0x1p-52 (;=2.22045e-16;)
      f64.le
      i32.eqz
      local.get 12
      f64.const 0x1p+0 (;=1;)
      f64.ne
      i32.and
      i32.or
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.sub
          local.tee 0
          if  ;; label = @4
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            local.get 4
            i32.add
            i32.load8_s
            i32.const -65
            i32.le_s
            br_if 2 (;@2;)
          end
          local.get 2
          local.get 0
          i32.store offset=20
          br 2 (;@1;)
        end
        local.get 4
        i32.const 0
        i32.const 0
        local.get 0
        call 10
        unreachable
      end
      local.get 4
      local.get 3
      i32.const 0
      local.get 0
      call 10
      unreachable
    end
    local.get 5
    i32.const 12
    i32.const 12
    i32.const 8
    local.get 11
    f64.abs
    f64.const 0x1p-52 (;=2.22045e-16;)
    f64.le
    select
    local.get 11
    f64.const 0x0p+0 (;=0;)
    f64.eq
    select
    i32.add
    i32.load
    local.set 0
    local.get 2
    local.get 5
    i32.load8_u offset=21
    local.tee 3
    i32.store offset=28
    local.get 2
    i32.const 1048820
    i32.const 1
    local.get 3
    select
    i32.store offset=24
    local.get 2
    i32.const 0
    i32.store offset=92
    local.get 2
    local.get 0
    i32.store offset=88
    local.get 2
    i32.const 1
    i32.store offset=84
    local.get 2
    local.get 5
    i32.store offset=80
    local.get 2
    i32.const 1
    i32.store offset=76
    local.get 2
    i32.const 1
    i32.store offset=68
    local.get 2
    i32.const 2
    i32.store offset=60
    local.get 2
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=72
    local.get 2
    local.get 2
    i32.const 24
    i32.add
    i32.store offset=64
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=56
    local.get 2
    i32.const 3
    i32.store8 offset=220
    local.get 2
    i32.const 0
    i32.store offset=216
    local.get 2
    i64.const 12884901920
    i64.store offset=208 align=4
    local.get 2
    i32.const 2
    i32.store offset=200
    local.get 2
    i64.const 17179869186
    i64.store offset=192 align=4
    local.get 2
    i32.const 3
    i32.store8 offset=188
    local.get 2
    i32.const 0
    i32.store offset=184
    local.get 2
    i64.const 8589934624
    i64.store offset=176 align=4
    local.get 2
    i32.const 2
    i32.store offset=168
    local.get 2
    i64.const 17179869186
    i64.store offset=160 align=4
    local.get 2
    i32.const 3
    i32.store8 offset=156
    local.get 2
    i32.const 0
    i32.store offset=152
    local.get 2
    i64.const 4294967328
    i64.store offset=144 align=4
    local.get 2
    i32.const 2
    i32.store offset=136
    local.get 2
    i64.const 17179869186
    i64.store offset=128 align=4
    local.get 2
    i32.const 3
    i32.store8 offset=124
    local.get 2
    i32.const 0
    i32.store offset=120
    local.get 2
    i64.const 32
    i64.store offset=112 align=4
    local.get 2
    i32.const 2
    i32.store offset=104
    local.get 2
    i64.const 17179869185
    i64.store offset=96 align=4
    local.get 2
    i32.const 4
    i32.store offset=52
    local.get 2
    i32.const 4
    i32.store offset=36
    local.get 2
    i32.const 1048824
    i32.store offset=32
    local.get 2
    i32.const 5
    i32.store offset=44
    local.get 2
    local.get 2
    i32.const 96
    i32.add
    i32.store offset=48
    local.get 2
    local.get 2
    i32.const 56
    i32.add
    i32.store offset=40
    local.get 1
    i32.load offset=20
    local.get 1
    i32.load offset=24
    local.get 2
    i32.const 32
    i32.add
    call 13
    local.get 2
    i32.const 224
    i32.add
    global.set 0)
  (func (;9;) (type 4) (param i32 i32 i32)
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
    i32.const 1051732
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 12884901888
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
    call 29
    unreachable)
  (func (;10;) (type 5) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    local.get 2
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block (result i32)  ;; label = @7
                  local.get 0
                  block (result i32)  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 257
                      i32.ge_u
                      if  ;; label = @10
                        i32.const 3
                        local.get 0
                        i32.load8_s offset=256
                        i32.const -65
                        i32.gt_s
                        br_if 2 (;@8;)
                        drop
                        local.get 0
                        i32.load8_s offset=255
                        i32.const -65
                        i32.le_s
                        br_if 1 (;@9;)
                        i32.const 2
                        br 2 (;@8;)
                      end
                      local.get 4
                      local.get 1
                      i32.store offset=20
                      local.get 4
                      local.get 0
                      i32.store offset=16
                      i32.const 1
                      br 2 (;@7;)
                    end
                    local.get 0
                    i32.load8_s offset=254
                    i32.const -65
                    i32.gt_s
                  end
                  i32.const 253
                  i32.add
                  local.tee 5
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 1 (;@6;)
                  local.get 4
                  local.get 5
                  i32.store offset=20
                  local.get 4
                  local.get 0
                  i32.store offset=16
                  i32.const 5
                  local.set 6
                  i32.const 1052632
                end
                local.set 5
                local.get 4
                local.get 6
                i32.store offset=28
                local.get 4
                local.get 5
                i32.store offset=24
                local.get 1
                local.get 2
                i32.lt_u
                local.tee 6
                local.get 1
                local.get 3
                i32.lt_u
                i32.or
                i32.eqz
                if  ;; label = @7
                  local.get 2
                  local.get 3
                  i32.gt_u
                  br_if 2 (;@5;)
                  local.get 2
                  i32.eqz
                  local.get 1
                  local.get 2
                  i32.le_u
                  i32.or
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    local.get 2
                    local.get 0
                    local.get 2
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    select
                    local.set 3
                  end
                  local.get 4
                  local.get 3
                  i32.store offset=32
                  local.get 3
                  local.get 1
                  local.tee 2
                  i32.lt_u
                  if  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.tee 7
                    local.get 3
                    i32.const 3
                    i32.sub
                    local.tee 2
                    i32.const 0
                    local.get 2
                    local.get 3
                    i32.le_u
                    select
                    local.tee 2
                    i32.lt_u
                    br_if 4 (;@4;)
                    block  ;; label = @9
                      local.get 2
                      local.get 7
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 7
                      local.get 2
                      i32.sub
                      local.set 6
                      local.get 0
                      local.get 3
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      if  ;; label = @10
                        local.get 6
                        i32.const 1
                        i32.sub
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 2
                      local.get 3
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 7
                      i32.add
                      local.tee 3
                      i32.const 2
                      i32.sub
                      local.tee 8
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      if  ;; label = @10
                        local.get 6
                        i32.const 2
                        i32.sub
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 8
                      local.get 0
                      local.get 2
                      i32.add
                      local.tee 7
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 3
                      i32.sub
                      local.tee 8
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      if  ;; label = @10
                        local.get 6
                        i32.const 3
                        i32.sub
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 7
                      local.get 8
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 4
                      i32.sub
                      local.tee 3
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      if  ;; label = @10
                        local.get 6
                        i32.const 4
                        i32.sub
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 3
                      local.get 7
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 5
                      i32.sub
                      local.set 5
                    end
                    local.get 2
                    local.get 5
                    i32.add
                    local.set 2
                  end
                  block  ;; label = @8
                    local.get 2
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    local.get 2
                    i32.gt_u
                    if  ;; label = @9
                      local.get 0
                      local.get 2
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      br_if 1 (;@8;)
                      br 7 (;@2;)
                    end
                    local.get 1
                    local.get 2
                    i32.ne
                    br_if 6 (;@2;)
                  end
                  local.get 1
                  local.get 2
                  i32.eq
                  br_if 4 (;@3;)
                  block (result i32)  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        local.get 2
                        i32.add
                        local.tee 1
                        i32.load8_s
                        local.tee 0
                        i32.const 0
                        i32.lt_s
                        if  ;; label = @11
                          local.get 1
                          i32.load8_u offset=1
                          i32.const 63
                          i32.and
                          local.set 5
                          local.get 0
                          i32.const 31
                          i32.and
                          local.set 3
                          local.get 0
                          i32.const -33
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 3
                          i32.const 6
                          i32.shl
                          local.get 5
                          i32.or
                          local.set 0
                          br 2 (;@9;)
                        end
                        local.get 4
                        local.get 0
                        i32.const 255
                        i32.and
                        i32.store offset=36
                        i32.const 1
                        br 2 (;@8;)
                      end
                      local.get 1
                      i32.load8_u offset=2
                      i32.const 63
                      i32.and
                      local.get 5
                      i32.const 6
                      i32.shl
                      i32.or
                      local.set 5
                      local.get 0
                      i32.const -16
                      i32.lt_u
                      if  ;; label = @10
                        local.get 5
                        local.get 3
                        i32.const 12
                        i32.shl
                        i32.or
                        local.set 0
                        br 1 (;@9;)
                      end
                      local.get 3
                      i32.const 18
                      i32.shl
                      i32.const 1835008
                      i32.and
                      local.get 1
                      i32.load8_u offset=3
                      i32.const 63
                      i32.and
                      local.get 5
                      i32.const 6
                      i32.shl
                      i32.or
                      i32.or
                      local.tee 0
                      i32.const 1114112
                      i32.eq
                      br_if 6 (;@3;)
                    end
                    local.get 4
                    local.get 0
                    i32.store offset=36
                    i32.const 1
                    local.get 0
                    i32.const 128
                    i32.lt_u
                    br_if 0 (;@8;)
                    drop
                    i32.const 2
                    local.get 0
                    i32.const 2048
                    i32.lt_u
                    br_if 0 (;@8;)
                    drop
                    i32.const 3
                    i32.const 4
                    local.get 0
                    i32.const 65536
                    i32.lt_u
                    select
                  end
                  local.set 0
                  local.get 4
                  local.get 2
                  i32.store offset=40
                  local.get 4
                  local.get 0
                  local.get 2
                  i32.add
                  i32.store offset=44
                  local.get 4
                  i32.const 5
                  i32.store offset=52
                  local.get 4
                  i32.const 1052768
                  i32.store offset=48
                  local.get 4
                  i64.const 5
                  i64.store offset=60 align=4
                  local.get 4
                  local.get 4
                  i32.const 24
                  i32.add
                  i64.extend_i32_u
                  i64.const 30064771072
                  i64.or
                  i64.store offset=104
                  local.get 4
                  local.get 4
                  i32.const 16
                  i32.add
                  i64.extend_i32_u
                  i64.const 30064771072
                  i64.or
                  i64.store offset=96
                  local.get 4
                  local.get 4
                  i32.const 40
                  i32.add
                  i64.extend_i32_u
                  i64.const 38654705664
                  i64.or
                  i64.store offset=88
                  local.get 4
                  local.get 4
                  i32.const 36
                  i32.add
                  i64.extend_i32_u
                  i64.const 42949672960
                  i64.or
                  i64.store offset=80
                  local.get 4
                  local.get 4
                  i32.const 32
                  i32.add
                  i64.extend_i32_u
                  i64.const 12884901888
                  i64.or
                  i64.store offset=72
                  br 6 (;@1;)
                end
                local.get 4
                local.get 2
                local.get 3
                local.get 6
                select
                i32.store offset=40
                local.get 4
                i32.const 3
                i32.store offset=52
                local.get 4
                i32.const 1052832
                i32.store offset=48
                local.get 4
                i64.const 3
                i64.store offset=60 align=4
                local.get 4
                local.get 4
                i32.const 24
                i32.add
                i64.extend_i32_u
                i64.const 30064771072
                i64.or
                i64.store offset=88
                local.get 4
                local.get 4
                i32.const 16
                i32.add
                i64.extend_i32_u
                i64.const 30064771072
                i64.or
                i64.store offset=80
                local.get 4
                local.get 4
                i32.const 40
                i32.add
                i64.extend_i32_u
                i64.const 12884901888
                i64.or
                i64.store offset=72
                br 5 (;@1;)
              end
              local.get 0
              local.get 1
              i32.const 0
              local.get 5
              call 10
              unreachable
            end
            local.get 4
            i32.const 4
            i32.store offset=52
            local.get 4
            i32.const 1052672
            i32.store offset=48
            local.get 4
            i64.const 4
            i64.store offset=60 align=4
            local.get 4
            local.get 4
            i32.const 24
            i32.add
            i64.extend_i32_u
            i64.const 30064771072
            i64.or
            i64.store offset=96
            local.get 4
            local.get 4
            i32.const 16
            i32.add
            i64.extend_i32_u
            i64.const 30064771072
            i64.or
            i64.store offset=88
            local.get 4
            local.get 4
            i32.const 12
            i32.add
            i64.extend_i32_u
            i64.const 12884901888
            i64.or
            i64.store offset=80
            local.get 4
            local.get 4
            i32.const 8
            i32.add
            i64.extend_i32_u
            i64.const 12884901888
            i64.or
            i64.store offset=72
            br 3 (;@1;)
          end
          local.get 2
          local.get 7
          i32.const 1052876
          call 52
          unreachable
        end
        i32.const 1048804
        call 53
        unreachable
      end
      local.get 0
      local.get 1
      local.get 2
      local.get 1
      call 10
      unreachable
    end
    local.get 4
    local.get 4
    i32.const 72
    i32.add
    i32.store offset=56
    local.get 4
    i32.const 48
    i32.add
    i32.const 1048804
    call 29
    unreachable)
  (func (;11;) (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 7)
  (func (;12;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 f64)
    local.get 1
    i32.load offset=28
    i32.const 1
    i32.and
    local.set 2
    local.get 0
    f64.load
    local.set 57
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            i32.const 1
            i32.eq
            if  ;; label = @5
              block (result i32)  ;; label = @6
                local.get 1
                local.set 9
                local.get 1
                i32.load offset=12
                local.set 17
                global.get 0
                i32.const 1872
                i32.sub
                local.tee 4
                global.set 0
                block  ;; label = @7
                  block  ;; label = @8
                    block (result i32)  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 57
                                local.get 57
                                f64.ne
                                br_if 0 (;@14;)
                                local.get 57
                                i64.reinterpret_f64
                                local.tee 31
                                i64.const 4503599627370495
                                i64.and
                                local.tee 33
                                i64.const 4503599627370496
                                i64.or
                                local.get 31
                                i64.const 1
                                i64.shl
                                i64.const 9007199254740990
                                i64.and
                                local.get 31
                                i64.const 52
                                i64.shr_u
                                i32.wrap_i64
                                i32.const 2047
                                i32.and
                                local.tee 0
                                select
                                local.tee 32
                                i64.const 1
                                i64.and
                                local.set 36
                                local.get 31
                                i64.const 9218868437227405312
                                i64.and
                                local.set 34
                                block  ;; label = @15
                                  block (result i32)  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 33
                                        i64.eqz
                                        if  ;; label = @19
                                          local.get 34
                                          i64.eqz
                                          local.get 34
                                          i64.const 9218868437227405312
                                          i64.eq
                                          i32.or
                                          br_if 1 (;@18;)
                                          br 2 (;@17;)
                                        end
                                        local.get 34
                                        i64.const 0
                                        i64.ne
                                        br_if 1 (;@17;)
                                        local.get 36
                                        i64.eqz
                                        local.set 10
                                        i64.const 1
                                        local.set 33
                                        local.get 0
                                        i32.const 1075
                                        i32.sub
                                        br 2 (;@16;)
                                      end
                                      i32.const 1
                                      i32.const 2
                                      local.get 34
                                      i64.const 9218868437227405312
                                      i64.eq
                                      select
                                      local.set 5
                                      br 2 (;@15;)
                                    end
                                    i64.const 18014398509481984
                                    local.get 32
                                    i64.const 1
                                    i64.shl
                                    local.get 32
                                    i64.const 4503599627370496
                                    i64.eq
                                    local.tee 1
                                    select
                                    local.set 32
                                    i64.const 2
                                    i64.const 1
                                    local.get 1
                                    select
                                    local.set 33
                                    local.get 36
                                    i64.eqz
                                    local.set 10
                                    i32.const -1077
                                    i32.const -1076
                                    local.get 1
                                    select
                                    local.get 0
                                    i32.add
                                  end
                                  local.set 7
                                  local.get 10
                                  i32.const -2
                                  i32.or
                                  local.tee 5
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                i32.const 1
                                local.set 0
                                i32.const 1051555
                                i32.const 1051556
                                local.get 31
                                i64.const 0
                                i64.lt_s
                                local.tee 1
                                select
                                i32.const 1051555
                                i32.const 1
                                local.get 1
                                select
                                local.get 2
                                select
                                local.set 24
                                local.get 31
                                i64.const 63
                                i64.shr_u
                                i32.wrap_i64
                                local.get 2
                                i32.or
                                local.set 29
                                i32.const 3
                                local.get 5
                                local.get 5
                                i32.const 3
                                i32.ge_u
                                select
                                i32.const 2
                                i32.sub
                                br_table 2 (;@12;) 3 (;@11;) 1 (;@13;)
                              end
                              local.get 4
                              i32.const 3
                              i32.store offset=1716
                              local.get 4
                              i32.const 1051557
                              i32.store offset=1712
                              local.get 4
                              i32.const 2
                              i32.store16 offset=1708
                              i32.const 1
                              local.set 24
                              i32.const 1
                              local.set 0
                              local.get 4
                              i32.const 1708
                              i32.add
                              br 4 (;@9;)
                            end
                            local.get 4
                            i32.const 3
                            i32.store offset=1716
                            local.get 4
                            i32.const 1051560
                            i32.store offset=1712
                            local.get 4
                            i32.const 2
                            i32.store16 offset=1708
                            local.get 4
                            i32.const 1708
                            i32.add
                            br 3 (;@9;)
                          end
                          i32.const 2
                          local.set 0
                          local.get 4
                          i32.const 2
                          i32.store16 offset=1708
                          local.get 17
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 4
                          local.get 17
                          i32.store offset=1724
                          local.get 4
                          i32.const 0
                          i32.store16 offset=1720
                          local.get 4
                          i32.const 2
                          i32.store offset=1716
                          local.get 4
                          i32.const 1051553
                          i32.store offset=1712
                          local.get 4
                          i32.const 1708
                          i32.add
                          br 2 (;@9;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block (result i32)  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              i32.const -12
                                              i32.const 5
                                              local.get 7
                                              i32.extend16_s
                                              local.tee 6
                                              i32.const 0
                                              i32.lt_s
                                              select
                                              local.get 6
                                              i32.mul
                                              local.tee 1
                                              i32.const 16064
                                              i32.lt_u
                                              if  ;; label = @22
                                                local.get 32
                                                i64.eqz
                                                br_if 1 (;@21;)
                                                i32.const -96
                                                local.get 7
                                                i32.const 32
                                                i32.sub
                                                local.get 7
                                                local.get 32
                                                i64.const 4294967296
                                                i64.lt_u
                                                local.tee 0
                                                select
                                                local.tee 2
                                                i32.const 16
                                                i32.sub
                                                local.get 2
                                                local.get 32
                                                i64.const 32
                                                i64.shl
                                                local.get 32
                                                local.get 0
                                                select
                                                local.tee 31
                                                i64.const 281474976710656
                                                i64.lt_u
                                                local.tee 0
                                                select
                                                local.tee 2
                                                i32.const 8
                                                i32.sub
                                                local.get 2
                                                local.get 31
                                                i64.const 16
                                                i64.shl
                                                local.get 31
                                                local.get 0
                                                select
                                                local.tee 31
                                                i64.const 72057594037927936
                                                i64.lt_u
                                                local.tee 0
                                                select
                                                local.tee 2
                                                i32.const 4
                                                i32.sub
                                                local.get 2
                                                local.get 31
                                                i64.const 8
                                                i64.shl
                                                local.get 31
                                                local.get 0
                                                select
                                                local.tee 31
                                                i64.const 1152921504606846976
                                                i64.lt_u
                                                local.tee 0
                                                select
                                                local.tee 2
                                                i32.const 2
                                                i32.sub
                                                local.get 2
                                                local.get 31
                                                i64.const 4
                                                i64.shl
                                                local.get 31
                                                local.get 0
                                                select
                                                local.tee 31
                                                i64.const 4611686018427387904
                                                i64.lt_u
                                                local.tee 0
                                                select
                                                local.get 31
                                                i64.const 2
                                                i64.shl
                                                local.get 31
                                                local.get 0
                                                select
                                                local.tee 31
                                                i64.const 0
                                                i64.ge_s
                                                i32.sub
                                                local.tee 2
                                                i32.sub
                                                i32.extend16_s
                                                i32.const 80
                                                i32.mul
                                                i32.const 86960
                                                i32.add
                                                i32.const 2126
                                                i32.div_s
                                                local.tee 0
                                                i32.const 81
                                                i32.ge_u
                                                br_if 2 (;@20;)
                                                local.get 1
                                                i32.const 4
                                                i32.shr_u
                                                local.tee 10
                                                i32.const 21
                                                i32.add
                                                local.set 11
                                                i32.const -32768
                                                i32.const 0
                                                local.get 17
                                                i32.sub
                                                local.get 17
                                                i32.const 32768
                                                i32.ge_u
                                                select
                                                i32.extend16_s
                                                local.set 15
                                                local.get 0
                                                i32.const 4
                                                i32.shl
                                                local.tee 0
                                                i32.const 1049808
                                                i32.add
                                                i64.load
                                                local.tee 34
                                                i64.const 4294967295
                                                i64.and
                                                local.tee 36
                                                local.get 31
                                                local.get 31
                                                i64.const -1
                                                i64.xor
                                                i64.const 63
                                                i64.shr_u
                                                i64.shl
                                                local.tee 31
                                                i64.const 32
                                                i64.shr_u
                                                local.tee 35
                                                i64.mul
                                                local.tee 37
                                                i64.const 32
                                                i64.shr_u
                                                local.get 35
                                                local.get 34
                                                i64.const 32
                                                i64.shr_u
                                                local.tee 34
                                                i64.mul
                                                i64.add
                                                local.get 34
                                                local.get 31
                                                i64.const 4294967295
                                                i64.and
                                                local.tee 31
                                                i64.mul
                                                local.tee 34
                                                i64.const 32
                                                i64.shr_u
                                                i64.add
                                                local.get 37
                                                i64.const 4294967295
                                                i64.and
                                                local.get 31
                                                local.get 36
                                                i64.mul
                                                i64.const 32
                                                i64.shr_u
                                                i64.add
                                                local.get 34
                                                i64.const 4294967295
                                                i64.and
                                                i64.add
                                                i64.const 2147483648
                                                i64.add
                                                i64.const 32
                                                i64.shr_u
                                                i64.add
                                                local.tee 31
                                                i64.const 1
                                                i32.const -64
                                                local.get 2
                                                local.get 0
                                                i32.const 1049816
                                                i32.add
                                                i32.load16_u
                                                i32.add
                                                i32.sub
                                                local.tee 2
                                                i32.const 63
                                                i32.and
                                                i64.extend_i32_u
                                                local.tee 34
                                                i64.shl
                                                local.tee 35
                                                i64.const 1
                                                i64.sub
                                                local.tee 37
                                                i64.and
                                                local.tee 36
                                                i64.eqz
                                                if  ;; label = @23
                                                  local.get 4
                                                  i32.const 0
                                                  i32.store offset=1040
                                                  br 6 (;@17;)
                                                end
                                                local.get 0
                                                i32.const 1049818
                                                i32.add
                                                i32.load16_u
                                                local.set 1
                                                local.get 31
                                                local.get 34
                                                i64.shr_u
                                                i32.wrap_i64
                                                local.tee 5
                                                i32.const 10000
                                                i32.ge_u
                                                if  ;; label = @23
                                                  local.get 5
                                                  i32.const 1000000
                                                  i32.lt_u
                                                  br_if 4 (;@19;)
                                                  local.get 5
                                                  i32.const 100000000
                                                  i32.ge_u
                                                  if  ;; label = @24
                                                    i32.const 8
                                                    i32.const 9
                                                    local.get 5
                                                    i32.const 1000000000
                                                    i32.lt_u
                                                    local.tee 0
                                                    select
                                                    local.set 12
                                                    i32.const 100000000
                                                    i32.const 1000000000
                                                    local.get 0
                                                    select
                                                    br 6 (;@18;)
                                                  end
                                                  i32.const 6
                                                  i32.const 7
                                                  local.get 5
                                                  i32.const 10000000
                                                  i32.lt_u
                                                  local.tee 0
                                                  select
                                                  local.set 12
                                                  i32.const 1000000
                                                  i32.const 10000000
                                                  local.get 0
                                                  select
                                                  br 5 (;@18;)
                                                end
                                                local.get 5
                                                i32.const 100
                                                i32.ge_u
                                                if  ;; label = @23
                                                  i32.const 2
                                                  i32.const 3
                                                  local.get 5
                                                  i32.const 1000
                                                  i32.lt_u
                                                  local.tee 0
                                                  select
                                                  local.set 12
                                                  i32.const 100
                                                  i32.const 1000
                                                  local.get 0
                                                  select
                                                  br 5 (;@18;)
                                                end
                                                i32.const 10
                                                i32.const 1
                                                local.get 5
                                                i32.const 9
                                                i32.gt_u
                                                local.tee 12
                                                select
                                                br 4 (;@18;)
                                              end
                                              i32.const 1051564
                                              i32.const 37
                                              i32.const 1051604
                                              call 25
                                              unreachable
                                            end
                                            i32.const 1049575
                                            i32.const 28
                                            i32.const 1051324
                                            call 25
                                            unreachable
                                          end
                                          local.get 0
                                          i32.const 81
                                          i32.const 1051144
                                          call 9
                                          unreachable
                                        end
                                        i32.const 4
                                        i32.const 5
                                        local.get 5
                                        i32.const 100000
                                        i32.lt_u
                                        local.tee 0
                                        select
                                        local.set 12
                                        i32.const 10000
                                        i32.const 100000
                                        local.get 0
                                        select
                                      end
                                      local.set 0
                                      block  ;; label = @18
                                        local.get 15
                                        local.get 12
                                        local.get 1
                                        i32.sub
                                        i32.const 1
                                        i32.add
                                        i32.extend16_s
                                        local.tee 1
                                        i32.lt_s
                                        if  ;; label = @19
                                          local.get 2
                                          i32.const 65535
                                          i32.and
                                          local.set 13
                                          local.get 1
                                          local.get 15
                                          i32.sub
                                          local.tee 2
                                          i32.extend16_s
                                          local.get 11
                                          local.get 2
                                          local.get 11
                                          i32.lt_u
                                          select
                                          local.tee 2
                                          i32.const 1
                                          i32.sub
                                          local.set 3
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                loop  ;; label = @23
                                                  local.get 4
                                                  i32.const 16
                                                  i32.add
                                                  local.get 8
                                                  i32.add
                                                  local.get 5
                                                  local.get 0
                                                  i32.div_u
                                                  local.tee 14
                                                  i32.const 48
                                                  i32.add
                                                  i32.store8
                                                  local.get 5
                                                  local.get 0
                                                  local.get 14
                                                  i32.mul
                                                  i32.sub
                                                  local.set 5
                                                  local.get 3
                                                  local.get 8
                                                  i32.eq
                                                  br_if 2 (;@21;)
                                                  local.get 8
                                                  local.get 12
                                                  i32.eq
                                                  br_if 1 (;@22;)
                                                  local.get 8
                                                  i32.const 1
                                                  i32.add
                                                  local.set 8
                                                  local.get 0
                                                  i32.const 10
                                                  i32.lt_u
                                                  local.get 0
                                                  i32.const 10
                                                  i32.div_u
                                                  local.set 0
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                end
                                                i32.const 1051380
                                                call 48
                                                unreachable
                                              end
                                              local.get 8
                                              i32.const 1
                                              i32.add
                                              local.set 0
                                              i32.const -20
                                              local.get 10
                                              i32.sub
                                              local.set 5
                                              local.get 13
                                              i32.const 1
                                              i32.sub
                                              i32.const 63
                                              i32.and
                                              i64.extend_i32_u
                                              local.set 42
                                              i64.const 1
                                              local.set 31
                                              loop  ;; label = @22
                                                local.get 31
                                                local.get 42
                                                i64.shr_u
                                                i64.eqz
                                                i32.eqz
                                                if  ;; label = @23
                                                  local.get 4
                                                  i32.const 0
                                                  i32.store offset=1040
                                                  br 6 (;@17;)
                                                end
                                                local.get 0
                                                local.get 5
                                                i32.add
                                                i32.const 1
                                                i32.eq
                                                br_if 2 (;@20;)
                                                local.get 4
                                                i32.const 16
                                                i32.add
                                                local.tee 10
                                                local.get 0
                                                i32.add
                                                local.get 36
                                                i64.const 10
                                                i64.mul
                                                local.tee 36
                                                local.get 34
                                                i64.shr_u
                                                i32.wrap_i64
                                                i32.const 48
                                                i32.add
                                                i32.store8
                                                local.get 31
                                                i64.const 10
                                                i64.mul
                                                local.set 31
                                                local.get 36
                                                local.get 37
                                                i64.and
                                                local.set 36
                                                local.get 2
                                                local.get 0
                                                i32.const 1
                                                i32.add
                                                local.tee 0
                                                i32.ne
                                                br_if 0 (;@22;)
                                              end
                                              local.get 4
                                              i32.const 1040
                                              i32.add
                                              local.get 10
                                              local.get 11
                                              local.get 2
                                              local.get 1
                                              local.get 15
                                              local.get 36
                                              local.get 35
                                              local.get 31
                                              call 49
                                              br 3 (;@18;)
                                            end
                                            local.get 4
                                            i32.const 1040
                                            i32.add
                                            local.get 4
                                            i32.const 16
                                            i32.add
                                            local.get 11
                                            local.get 2
                                            local.get 1
                                            local.get 15
                                            local.get 5
                                            i64.extend_i32_u
                                            local.get 34
                                            i64.shl
                                            local.get 36
                                            i64.add
                                            local.get 0
                                            i64.extend_i32_u
                                            local.get 34
                                            i64.shl
                                            local.get 35
                                            call 49
                                            br 2 (;@18;)
                                          end
                                          local.get 0
                                          local.get 11
                                          i32.const 1051396
                                          call 9
                                          unreachable
                                        end
                                        local.get 4
                                        i32.const 1040
                                        i32.add
                                        local.get 4
                                        i32.const 16
                                        i32.add
                                        local.get 11
                                        i32.const 0
                                        local.get 1
                                        local.get 15
                                        local.get 31
                                        i64.const 10
                                        i64.div_u
                                        local.get 0
                                        i64.extend_i32_u
                                        local.get 34
                                        i64.shl
                                        local.get 35
                                        call 49
                                      end
                                      local.get 4
                                      i32.load offset=1040
                                      local.tee 0
                                      br_if 1 (;@16;)
                                    end
                                    local.get 32
                                    local.get 33
                                    i64.add
                                    local.get 32
                                    i64.lt_u
                                    br_if 1 (;@15;)
                                    local.get 4
                                    local.get 32
                                    i64.store32 offset=1052
                                    local.get 4
                                    i32.const 1
                                    i32.const 2
                                    local.get 32
                                    i64.const 4294967296
                                    i64.lt_u
                                    local.tee 0
                                    select
                                    i32.store offset=1212
                                    local.get 4
                                    i32.const 0
                                    local.get 32
                                    i64.const 32
                                    i64.shr_u
                                    i32.wrap_i64
                                    local.get 0
                                    select
                                    i32.store offset=1056
                                    local.get 4
                                    i32.const 1060
                                    i32.add
                                    i32.const 0
                                    i32.const 152
                                    call 67
                                    drop
                                    local.get 4
                                    i32.const 1220
                                    i32.add
                                    i32.const 0
                                    i32.const 156
                                    call 67
                                    drop
                                    local.get 4
                                    i32.const 1
                                    i32.store offset=1216
                                    local.get 4
                                    i32.const 1
                                    i32.store offset=1376
                                    local.get 7
                                    i64.extend_i32_u
                                    i64.extend16_s
                                    local.get 32
                                    i64.const 1
                                    i64.sub
                                    i64.clz
                                    i64.sub
                                    i64.const 1292913986
                                    i64.mul
                                    i64.const 82746495104
                                    i64.add
                                    i64.const 32
                                    i64.shr_u
                                    i32.wrap_i64
                                    local.tee 0
                                    i32.extend16_s
                                    local.set 14
                                    block  ;; label = @17
                                      local.get 6
                                      i32.const 0
                                      i32.ge_s
                                      if  ;; label = @18
                                        local.get 4
                                        i32.const 1052
                                        i32.add
                                        local.get 7
                                        i32.const 65535
                                        i32.and
                                        call 47
                                        drop
                                        br 1 (;@17;)
                                      end
                                      local.get 4
                                      i32.const 1216
                                      i32.add
                                      i32.const 0
                                      local.get 7
                                      i32.sub
                                      i32.extend16_s
                                      call 47
                                      drop
                                    end
                                    block  ;; label = @17
                                      local.get 14
                                      i32.const 0
                                      i32.lt_s
                                      if  ;; label = @18
                                        local.get 4
                                        i32.const 1052
                                        i32.add
                                        i32.const 0
                                        local.get 14
                                        i32.sub
                                        i32.const 65535
                                        i32.and
                                        call 45
                                        br 1 (;@17;)
                                      end
                                      local.get 4
                                      i32.const 1216
                                      i32.add
                                      local.get 0
                                      i32.const 32767
                                      i32.and
                                      call 45
                                    end
                                    local.get 4
                                    i32.load offset=1376
                                    local.set 13
                                    local.get 4
                                    i32.const 1708
                                    i32.add
                                    local.get 4
                                    i32.const 1216
                                    i32.add
                                    i32.const 160
                                    call 66
                                    drop
                                    local.get 4
                                    local.get 13
                                    i32.store offset=1868
                                    local.get 4
                                    i32.const 1700
                                    i32.add
                                    local.set 2
                                    local.get 13
                                    local.set 0
                                    local.get 11
                                    local.set 10
                                    loop  ;; label = @17
                                      local.get 0
                                      i32.const 41
                                      i32.ge_u
                                      br_if 13 (;@4;)
                                      block  ;; label = @18
                                        local.get 0
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 0
                                        i32.const 2
                                        i32.shl
                                        local.set 1
                                        block (result i32)  ;; label = @19
                                          local.get 0
                                          i32.const 1073741823
                                          i32.add
                                          local.tee 5
                                          i32.const 1073741823
                                          i32.and
                                          local.tee 7
                                          i32.eqz
                                          if  ;; label = @20
                                            i64.const 0
                                            local.set 31
                                            local.get 4
                                            i32.const 1708
                                            i32.add
                                            local.get 1
                                            i32.add
                                            br 1 (;@19;)
                                          end
                                          local.get 1
                                          local.get 2
                                          i32.add
                                          local.set 0
                                          local.get 7
                                          i32.const 1
                                          i32.add
                                          i32.const 2147483646
                                          i32.and
                                          local.set 8
                                          i64.const 0
                                          local.set 31
                                          loop  ;; label = @20
                                            local.get 0
                                            i32.const 4
                                            i32.add
                                            local.tee 1
                                            local.get 1
                                            i64.load32_u
                                            local.tee 32
                                            local.get 31
                                            i64.const 32
                                            i64.shl
                                            i64.or
                                            i64.const 1000000000
                                            i64.div_u
                                            local.tee 31
                                            i64.store32
                                            local.get 0
                                            local.get 0
                                            i64.load32_u
                                            local.get 32
                                            local.get 31
                                            i64.const 3294967296
                                            i64.mul
                                            i64.add
                                            i64.const 32
                                            i64.shl
                                            i64.or
                                            local.tee 31
                                            i64.const 1000000000
                                            i64.div_u
                                            local.tee 32
                                            i64.store32
                                            local.get 32
                                            i64.const -1000000000
                                            i64.mul
                                            local.get 31
                                            i64.add
                                            local.set 31
                                            local.get 0
                                            i32.const 8
                                            i32.sub
                                            local.set 0
                                            local.get 8
                                            i32.const 2
                                            i32.sub
                                            local.tee 8
                                            br_if 0 (;@20;)
                                          end
                                          local.get 0
                                          i32.const 8
                                          i32.add
                                        end
                                        local.get 5
                                        i32.const 1
                                        i32.and
                                        br_if 0 (;@18;)
                                        i32.const 4
                                        i32.sub
                                        local.tee 0
                                        local.get 0
                                        i64.load32_u
                                        local.get 31
                                        i64.const 32
                                        i64.shl
                                        i64.or
                                        i64.const 1000000000
                                        i64.div_u
                                        i64.store32
                                      end
                                      local.get 10
                                      i32.const 9
                                      i32.sub
                                      local.tee 10
                                      i32.const 9
                                      i32.gt_u
                                      if  ;; label = @18
                                        local.get 4
                                        i32.load offset=1868
                                        local.set 0
                                        br 1 (;@17;)
                                      end
                                    end
                                    local.get 10
                                    i32.const 2
                                    i32.shl
                                    i32.const 1051340
                                    i32.add
                                    i32.load
                                    i32.const 1
                                    i32.shl
                                    local.tee 2
                                    i32.eqz
                                    br_if 2 (;@14;)
                                    local.get 4
                                    i32.load offset=1868
                                    local.tee 0
                                    i32.const 41
                                    i32.ge_u
                                    br_if 12 (;@4;)
                                    local.get 0
                                    if (result i32)  ;; label = @17
                                      local.get 0
                                      i32.const 2
                                      i32.shl
                                      local.set 1
                                      local.get 2
                                      i64.extend_i32_u
                                      local.set 31
                                      block (result i32)  ;; label = @18
                                        local.get 0
                                        i32.const 1073741823
                                        i32.add
                                        local.tee 2
                                        i32.const 1073741823
                                        i32.and
                                        local.tee 0
                                        i32.eqz
                                        if  ;; label = @19
                                          i64.const 0
                                          local.set 32
                                          local.get 4
                                          i32.const 1708
                                          i32.add
                                          local.get 1
                                          i32.add
                                          br 1 (;@18;)
                                        end
                                        local.get 0
                                        i32.const 1
                                        i32.add
                                        i32.const 2147483646
                                        i32.and
                                        local.set 8
                                        local.get 1
                                        local.get 4
                                        i32.add
                                        i32.const 1700
                                        i32.add
                                        local.set 0
                                        i64.const 0
                                        local.set 32
                                        loop  ;; label = @19
                                          local.get 0
                                          i32.const 4
                                          i32.add
                                          local.tee 1
                                          local.get 1
                                          i64.load32_u
                                          local.get 32
                                          i64.const 32
                                          i64.shl
                                          i64.or
                                          local.tee 32
                                          local.get 31
                                          i64.div_u
                                          local.tee 34
                                          i64.store32
                                          local.get 0
                                          local.get 0
                                          i64.load32_u
                                          local.get 32
                                          local.get 31
                                          local.get 34
                                          i64.mul
                                          i64.sub
                                          i64.const 32
                                          i64.shl
                                          i64.or
                                          local.tee 32
                                          local.get 31
                                          i64.div_u
                                          local.tee 34
                                          i64.store32
                                          local.get 32
                                          local.get 31
                                          local.get 34
                                          i64.mul
                                          i64.sub
                                          local.set 32
                                          local.get 0
                                          i32.const 8
                                          i32.sub
                                          local.set 0
                                          local.get 8
                                          i32.const 2
                                          i32.sub
                                          local.tee 8
                                          br_if 0 (;@19;)
                                        end
                                        local.get 0
                                        i32.const 8
                                        i32.add
                                      end
                                      local.set 0
                                      local.get 2
                                      i32.const 1
                                      i32.and
                                      i32.eqz
                                      if  ;; label = @18
                                        local.get 0
                                        i32.const 4
                                        i32.sub
                                        local.tee 0
                                        local.get 0
                                        i64.load32_u
                                        local.get 32
                                        i64.const 32
                                        i64.shl
                                        i64.or
                                        local.get 31
                                        i64.div_u
                                        i64.store32
                                      end
                                      local.get 4
                                      i32.load offset=1868
                                    else
                                      i32.const 0
                                    end
                                    local.tee 0
                                    local.get 4
                                    i32.load offset=1212
                                    local.tee 1
                                    local.get 0
                                    local.get 1
                                    i32.gt_u
                                    select
                                    local.tee 2
                                    i32.const 40
                                    i32.gt_u
                                    br_if 13 (;@3;)
                                    block  ;; label = @17
                                      local.get 2
                                      i32.eqz
                                      if  ;; label = @18
                                        i32.const 0
                                        local.set 2
                                        br 1 (;@17;)
                                      end
                                      i32.const 0
                                      local.set 7
                                      i32.const 0
                                      local.set 10
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 2
                                          i32.const 1
                                          i32.ne
                                          if  ;; label = @20
                                            local.get 2
                                            i32.const 1
                                            i32.and
                                            local.get 2
                                            i32.const 62
                                            i32.and
                                            local.set 12
                                            local.get 4
                                            i32.const 1052
                                            i32.add
                                            local.set 8
                                            local.get 4
                                            i32.const 1708
                                            i32.add
                                            local.set 0
                                            loop  ;; label = @21
                                              local.get 0
                                              local.get 0
                                              i32.load
                                              local.tee 18
                                              local.get 8
                                              i32.load
                                              i32.add
                                              local.tee 5
                                              local.get 10
                                              i32.const 1
                                              i32.and
                                              i32.add
                                              local.tee 10
                                              i32.store
                                              local.get 0
                                              i32.const 4
                                              i32.add
                                              local.tee 6
                                              local.get 6
                                              i32.load
                                              local.tee 23
                                              local.get 8
                                              i32.const 4
                                              i32.add
                                              i32.load
                                              i32.add
                                              local.tee 6
                                              local.get 5
                                              local.get 18
                                              i32.lt_u
                                              local.get 5
                                              local.get 10
                                              i32.gt_u
                                              i32.or
                                              i32.add
                                              local.tee 5
                                              i32.store
                                              local.get 6
                                              local.get 23
                                              i32.lt_u
                                              local.get 5
                                              local.get 6
                                              i32.lt_u
                                              i32.or
                                              local.set 10
                                              local.get 0
                                              i32.const 8
                                              i32.add
                                              local.set 0
                                              local.get 8
                                              i32.const 8
                                              i32.add
                                              local.set 8
                                              local.get 12
                                              local.get 7
                                              i32.const 2
                                              i32.add
                                              local.tee 7
                                              i32.ne
                                              br_if 0 (;@21;)
                                            end
                                            i32.eqz
                                            br_if 1 (;@19;)
                                          end
                                          local.get 7
                                          i32.const 2
                                          i32.shl
                                          local.tee 0
                                          local.get 4
                                          i32.const 1708
                                          i32.add
                                          i32.add
                                          local.tee 5
                                          local.get 5
                                          i32.load
                                          local.tee 5
                                          local.get 4
                                          i32.const 1052
                                          i32.add
                                          local.get 0
                                          i32.add
                                          i32.load
                                          i32.add
                                          local.tee 0
                                          local.get 10
                                          i32.add
                                          local.tee 7
                                          i32.store
                                          local.get 0
                                          local.get 5
                                          i32.lt_u
                                          local.get 0
                                          local.get 7
                                          i32.gt_u
                                          i32.or
                                          br_if 1 (;@18;)
                                          br 2 (;@17;)
                                        end
                                        local.get 10
                                        i32.eqz
                                        br_if 1 (;@17;)
                                      end
                                      local.get 2
                                      i32.const 40
                                      i32.eq
                                      br_if 9 (;@8;)
                                      local.get 4
                                      i32.const 1708
                                      i32.add
                                      local.get 2
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      i32.const 1
                                      i32.store
                                      local.get 2
                                      i32.const 1
                                      i32.add
                                      local.set 2
                                    end
                                    local.get 4
                                    local.get 2
                                    i32.store offset=1868
                                    local.get 2
                                    local.get 13
                                    local.get 2
                                    local.get 13
                                    i32.gt_u
                                    select
                                    local.tee 0
                                    i32.const 41
                                    i32.ge_u
                                    br_if 12 (;@4;)
                                    local.get 0
                                    i32.const 2
                                    i32.shl
                                    local.set 0
                                    block  ;; label = @17
                                      loop  ;; label = @18
                                        local.get 0
                                        if  ;; label = @19
                                          i32.const -1
                                          local.get 0
                                          i32.const 4
                                          i32.sub
                                          local.tee 0
                                          local.get 4
                                          i32.const 1216
                                          i32.add
                                          i32.add
                                          i32.load
                                          local.tee 2
                                          local.get 0
                                          local.get 4
                                          i32.const 1708
                                          i32.add
                                          i32.add
                                          i32.load
                                          local.tee 5
                                          i32.ne
                                          local.get 2
                                          local.get 5
                                          i32.gt_u
                                          select
                                          local.tee 8
                                          i32.eqz
                                          br_if 1 (;@18;)
                                          br 2 (;@17;)
                                        end
                                      end
                                      i32.const -1
                                      i32.const 0
                                      local.get 0
                                      local.get 4
                                      i32.const 1216
                                      i32.add
                                      local.tee 2
                                      i32.add
                                      local.get 2
                                      i32.ne
                                      select
                                      local.set 8
                                    end
                                    local.get 8
                                    i32.const 2
                                    i32.ge_u
                                    if  ;; label = @17
                                      local.get 1
                                      i32.eqz
                                      if  ;; label = @18
                                        i32.const 0
                                        local.set 1
                                        local.get 4
                                        i32.const 0
                                        i32.store offset=1212
                                        br 6 (;@12;)
                                      end
                                      local.get 1
                                      i32.const 1
                                      i32.sub
                                      i32.const 1073741823
                                      i32.and
                                      local.tee 0
                                      i32.const 1
                                      i32.add
                                      local.tee 2
                                      i32.const 3
                                      i32.and
                                      local.set 8
                                      local.get 0
                                      i32.const 3
                                      i32.lt_u
                                      if  ;; label = @18
                                        local.get 4
                                        i32.const 1052
                                        i32.add
                                        local.set 0
                                        i64.const 0
                                        local.set 31
                                        br 5 (;@13;)
                                      end
                                      local.get 2
                                      i32.const 2147483644
                                      i32.and
                                      local.set 5
                                      local.get 4
                                      i32.const 1052
                                      i32.add
                                      local.set 0
                                      i64.const 0
                                      local.set 31
                                      loop  ;; label = @18
                                        local.get 0
                                        local.get 0
                                        i64.load32_u
                                        i64.const 10
                                        i64.mul
                                        local.get 31
                                        i64.add
                                        local.tee 32
                                        i64.store32
                                        local.get 0
                                        i32.const 4
                                        i32.add
                                        local.tee 2
                                        local.get 2
                                        i64.load32_u
                                        i64.const 10
                                        i64.mul
                                        local.get 32
                                        i64.const 32
                                        i64.shr_u
                                        i64.add
                                        local.tee 32
                                        i64.store32
                                        local.get 0
                                        i32.const 8
                                        i32.add
                                        local.tee 2
                                        local.get 2
                                        i64.load32_u
                                        i64.const 10
                                        i64.mul
                                        local.get 32
                                        i64.const 32
                                        i64.shr_u
                                        i64.add
                                        local.tee 32
                                        i64.store32
                                        local.get 0
                                        i32.const 12
                                        i32.add
                                        local.tee 2
                                        local.get 2
                                        i64.load32_u
                                        i64.const 10
                                        i64.mul
                                        local.get 32
                                        i64.const 32
                                        i64.shr_u
                                        i64.add
                                        local.tee 32
                                        i64.store32
                                        local.get 32
                                        i64.const 32
                                        i64.shr_u
                                        local.set 31
                                        local.get 0
                                        i32.const 16
                                        i32.add
                                        local.set 0
                                        local.get 5
                                        i32.const 4
                                        i32.sub
                                        local.tee 5
                                        br_if 0 (;@18;)
                                      end
                                      br 4 (;@13;)
                                    end
                                    local.get 14
                                    i32.const 1
                                    i32.add
                                    local.set 14
                                    br 4 (;@12;)
                                  end
                                  local.get 4
                                  i32.load16_u offset=1048
                                  local.set 14
                                  local.get 4
                                  i32.load offset=1044
                                  local.set 7
                                  br 4 (;@11;)
                                end
                                i32.const 1049652
                                i32.const 54
                                i32.const 1049788
                                call 25
                                unreachable
                              end
                              i32.const 1054567
                              i32.const 27
                              i32.const 1054496
                              call 25
                              unreachable
                            end
                            local.get 8
                            if  ;; label = @13
                              loop  ;; label = @14
                                local.get 0
                                local.get 0
                                i64.load32_u
                                i64.const 10
                                i64.mul
                                local.get 31
                                i64.add
                                local.tee 32
                                i64.store32
                                local.get 0
                                i32.const 4
                                i32.add
                                local.set 0
                                local.get 32
                                i64.const 32
                                i64.shr_u
                                local.set 31
                                local.get 8
                                i32.const 1
                                i32.sub
                                local.tee 8
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 32
                            i64.const 4294967296
                            i64.ge_u
                            if  ;; label = @13
                              local.get 1
                              i32.const 40
                              i32.eq
                              br_if 5 (;@8;)
                              local.get 4
                              i32.const 1052
                              i32.add
                              local.get 1
                              i32.const 2
                              i32.shl
                              i32.add
                              local.get 31
                              i64.store32
                              local.get 1
                              i32.const 1
                              i32.add
                              local.set 1
                            end
                            local.get 4
                            local.get 1
                            i32.store offset=1212
                          end
                          i32.const 1
                          local.set 12
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 14
                              i32.extend16_s
                              local.tee 0
                              local.get 15
                              i32.lt_s
                              local.tee 30
                              i32.eqz
                              if  ;; label = @14
                                local.get 14
                                local.get 15
                                i32.sub
                                i32.extend16_s
                                local.get 11
                                local.get 0
                                local.get 15
                                i32.sub
                                local.get 11
                                i32.lt_u
                                select
                                local.tee 7
                                br_if 1 (;@13;)
                              end
                              i32.const 0
                              local.set 7
                              br 1 (;@12;)
                            end
                            local.get 4
                            i32.const 1380
                            i32.add
                            local.tee 1
                            local.get 4
                            i32.const 1216
                            i32.add
                            local.tee 0
                            i32.const 160
                            call 66
                            drop
                            local.get 4
                            local.get 13
                            i32.store offset=1540
                            local.get 1
                            i32.const 1
                            call 47
                            local.set 23
                            local.get 4
                            i32.load offset=1376
                            local.set 1
                            local.get 4
                            i32.const 1544
                            i32.add
                            local.tee 2
                            local.get 0
                            i32.const 160
                            call 66
                            drop
                            local.get 4
                            local.get 1
                            i32.store offset=1704
                            local.get 2
                            i32.const 2
                            call 47
                            local.set 25
                            local.get 4
                            i32.load offset=1376
                            local.set 1
                            local.get 4
                            i32.const 1708
                            i32.add
                            local.tee 2
                            local.get 0
                            i32.const 160
                            call 66
                            drop
                            local.get 4
                            local.get 1
                            i32.store offset=1868
                            local.get 2
                            i32.const 3
                            call 47
                            local.set 26
                            local.get 4
                            i32.load offset=1212
                            local.set 1
                            local.get 4
                            i32.load offset=1376
                            local.set 13
                            local.get 4
                            i32.load offset=1540
                            local.set 27
                            local.get 4
                            i32.load offset=1704
                            local.set 16
                            local.get 4
                            i32.load offset=1868
                            local.set 19
                            i32.const 0
                            local.set 6
                            block  ;; label = @13
                              loop  ;; label = @14
                                local.get 6
                                local.set 3
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 1
                                      i32.const 41
                                      i32.lt_u
                                      if  ;; label = @18
                                        local.get 3
                                        i32.const 1
                                        i32.add
                                        local.set 6
                                        local.get 1
                                        i32.const 2
                                        i32.shl
                                        local.set 2
                                        i32.const 0
                                        local.set 0
                                        block (result i32)  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                loop  ;; label = @23
                                                  local.get 0
                                                  local.get 2
                                                  i32.eq
                                                  br_if 1 (;@22;)
                                                  local.get 4
                                                  i32.const 1052
                                                  i32.add
                                                  local.get 0
                                                  i32.add
                                                  local.get 0
                                                  i32.const 4
                                                  i32.add
                                                  local.set 0
                                                  i32.load
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                end
                                                local.get 1
                                                local.get 19
                                                local.get 1
                                                local.get 19
                                                i32.gt_u
                                                select
                                                local.tee 2
                                                i32.const 41
                                                i32.ge_u
                                                br_if 19 (;@3;)
                                                local.get 2
                                                i32.const 2
                                                i32.shl
                                                local.set 0
                                                block  ;; label = @23
                                                  loop  ;; label = @24
                                                    local.get 0
                                                    if  ;; label = @25
                                                      i32.const -1
                                                      local.get 0
                                                      i32.const 4
                                                      i32.sub
                                                      local.tee 0
                                                      local.get 4
                                                      i32.const 1708
                                                      i32.add
                                                      i32.add
                                                      i32.load
                                                      local.tee 5
                                                      local.get 0
                                                      local.get 4
                                                      i32.const 1052
                                                      i32.add
                                                      i32.add
                                                      i32.load
                                                      local.tee 10
                                                      i32.ne
                                                      local.get 5
                                                      local.get 10
                                                      i32.gt_u
                                                      select
                                                      local.tee 8
                                                      i32.eqz
                                                      br_if 1 (;@24;)
                                                      br 2 (;@23;)
                                                    end
                                                  end
                                                  i32.const -1
                                                  i32.const 0
                                                  local.get 4
                                                  i32.const 1708
                                                  i32.add
                                                  local.get 0
                                                  i32.add
                                                  local.get 26
                                                  i32.ne
                                                  select
                                                  local.set 8
                                                end
                                                i32.const 0
                                                local.get 8
                                                i32.const 2
                                                i32.ge_u
                                                br_if 3 (;@19;)
                                                drop
                                                i32.const 1
                                                local.set 10
                                                i32.const 0
                                                local.set 12
                                                local.get 2
                                                i32.const 1
                                                i32.ne
                                                if  ;; label = @23
                                                  local.get 2
                                                  i32.const 1
                                                  i32.and
                                                  local.get 2
                                                  i32.const 62
                                                  i32.and
                                                  local.set 20
                                                  local.get 4
                                                  i32.const 1708
                                                  i32.add
                                                  local.set 8
                                                  local.get 4
                                                  i32.const 1052
                                                  i32.add
                                                  local.set 0
                                                  loop  ;; label = @24
                                                    local.get 0
                                                    local.get 0
                                                    i32.load
                                                    local.tee 21
                                                    local.get 8
                                                    i32.load
                                                    i32.const -1
                                                    i32.xor
                                                    i32.add
                                                    local.tee 1
                                                    local.get 10
                                                    i32.const 1
                                                    i32.and
                                                    i32.add
                                                    local.tee 10
                                                    i32.store
                                                    local.get 0
                                                    i32.const 4
                                                    i32.add
                                                    local.tee 5
                                                    local.get 5
                                                    i32.load
                                                    local.tee 22
                                                    local.get 8
                                                    i32.const 4
                                                    i32.add
                                                    i32.load
                                                    i32.const -1
                                                    i32.xor
                                                    i32.add
                                                    local.tee 5
                                                    local.get 1
                                                    local.get 21
                                                    i32.lt_u
                                                    local.get 1
                                                    local.get 10
                                                    i32.gt_u
                                                    i32.or
                                                    i32.add
                                                    local.tee 1
                                                    i32.store
                                                    local.get 1
                                                    local.get 5
                                                    i32.lt_u
                                                    local.get 5
                                                    local.get 22
                                                    i32.lt_u
                                                    i32.or
                                                    local.set 10
                                                    local.get 0
                                                    i32.const 8
                                                    i32.add
                                                    local.set 0
                                                    local.get 8
                                                    i32.const 8
                                                    i32.add
                                                    local.set 8
                                                    local.get 20
                                                    local.get 12
                                                    i32.const 2
                                                    i32.add
                                                    local.tee 12
                                                    i32.ne
                                                    br_if 0 (;@24;)
                                                  end
                                                  i32.eqz
                                                  br_if 2 (;@21;)
                                                end
                                                local.get 12
                                                i32.const 2
                                                i32.shl
                                                local.tee 0
                                                local.get 4
                                                i32.const 1052
                                                i32.add
                                                i32.add
                                                local.tee 1
                                                local.get 1
                                                i32.load
                                                local.tee 1
                                                local.get 0
                                                local.get 26
                                                i32.add
                                                i32.load
                                                i32.const -1
                                                i32.xor
                                                i32.add
                                                local.tee 0
                                                local.get 10
                                                i32.add
                                                local.tee 5
                                                i32.store
                                                local.get 0
                                                local.get 1
                                                i32.lt_u
                                                local.get 0
                                                local.get 5
                                                i32.gt_u
                                                i32.or
                                                br_if 2 (;@20;)
                                                br 15 (;@7;)
                                              end
                                              local.get 7
                                              local.get 11
                                              i32.gt_u
                                              br_if 4 (;@17;)
                                              local.get 3
                                              local.get 7
                                              i32.ne
                                              if  ;; label = @22
                                                local.get 4
                                                i32.const 16
                                                i32.add
                                                local.get 3
                                                i32.add
                                                i32.const 48
                                                local.get 7
                                                local.get 3
                                                i32.sub
                                                call 67
                                                drop
                                              end
                                              local.get 4
                                              i32.const 16
                                              i32.add
                                              local.set 0
                                              br 10 (;@11;)
                                            end
                                            local.get 10
                                            i32.eqz
                                            br_if 13 (;@7;)
                                          end
                                          local.get 4
                                          local.get 2
                                          i32.store offset=1212
                                          local.get 2
                                          local.set 1
                                          i32.const 8
                                        end
                                        local.set 18
                                        local.get 1
                                        local.get 16
                                        local.get 1
                                        local.get 16
                                        i32.gt_u
                                        select
                                        local.tee 2
                                        i32.const 41
                                        i32.ge_u
                                        br_if 15 (;@3;)
                                        local.get 2
                                        i32.const 2
                                        i32.shl
                                        local.set 0
                                        block  ;; label = @19
                                          loop  ;; label = @20
                                            local.get 0
                                            if  ;; label = @21
                                              i32.const -1
                                              local.get 0
                                              i32.const 4
                                              i32.sub
                                              local.tee 0
                                              local.get 4
                                              i32.const 1544
                                              i32.add
                                              i32.add
                                              i32.load
                                              local.tee 5
                                              local.get 0
                                              local.get 4
                                              i32.const 1052
                                              i32.add
                                              i32.add
                                              i32.load
                                              local.tee 10
                                              i32.ne
                                              local.get 5
                                              local.get 10
                                              i32.gt_u
                                              select
                                              local.tee 8
                                              i32.eqz
                                              br_if 1 (;@20;)
                                              br 2 (;@19;)
                                            end
                                          end
                                          i32.const -1
                                          i32.const 0
                                          local.get 4
                                          i32.const 1544
                                          i32.add
                                          local.get 0
                                          i32.add
                                          local.get 25
                                          i32.ne
                                          select
                                          local.set 8
                                        end
                                        block  ;; label = @19
                                          local.get 8
                                          i32.const 1
                                          i32.gt_u
                                          if  ;; label = @20
                                            local.get 1
                                            local.set 2
                                            br 1 (;@19;)
                                          end
                                          block  ;; label = @20
                                            local.get 2
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            i32.const 1
                                            local.set 10
                                            i32.const 0
                                            local.set 12
                                            block  ;; label = @21
                                              local.get 2
                                              i32.const 1
                                              i32.ne
                                              if  ;; label = @22
                                                local.get 2
                                                i32.const 1
                                                i32.and
                                                local.get 2
                                                i32.const 62
                                                i32.and
                                                local.set 21
                                                local.get 4
                                                i32.const 1544
                                                i32.add
                                                local.set 8
                                                local.get 4
                                                i32.const 1052
                                                i32.add
                                                local.set 0
                                                loop  ;; label = @23
                                                  local.get 0
                                                  local.get 0
                                                  i32.load
                                                  local.tee 22
                                                  local.get 8
                                                  i32.load
                                                  i32.const -1
                                                  i32.xor
                                                  i32.add
                                                  local.tee 1
                                                  local.get 10
                                                  i32.const 1
                                                  i32.and
                                                  i32.add
                                                  local.tee 10
                                                  i32.store
                                                  local.get 0
                                                  i32.const 4
                                                  i32.add
                                                  local.tee 5
                                                  local.get 5
                                                  i32.load
                                                  local.tee 28
                                                  local.get 8
                                                  i32.const 4
                                                  i32.add
                                                  i32.load
                                                  i32.const -1
                                                  i32.xor
                                                  i32.add
                                                  local.tee 5
                                                  local.get 1
                                                  local.get 22
                                                  i32.lt_u
                                                  local.get 1
                                                  local.get 10
                                                  i32.gt_u
                                                  i32.or
                                                  i32.add
                                                  local.tee 1
                                                  i32.store
                                                  local.get 1
                                                  local.get 5
                                                  i32.lt_u
                                                  local.get 5
                                                  local.get 28
                                                  i32.lt_u
                                                  i32.or
                                                  local.set 10
                                                  local.get 0
                                                  i32.const 8
                                                  i32.add
                                                  local.set 0
                                                  local.get 8
                                                  i32.const 8
                                                  i32.add
                                                  local.set 8
                                                  local.get 21
                                                  local.get 12
                                                  i32.const 2
                                                  i32.add
                                                  local.tee 12
                                                  i32.ne
                                                  br_if 0 (;@23;)
                                                end
                                                i32.eqz
                                                br_if 1 (;@21;)
                                              end
                                              local.get 12
                                              i32.const 2
                                              i32.shl
                                              local.tee 0
                                              local.get 4
                                              i32.const 1052
                                              i32.add
                                              i32.add
                                              local.tee 1
                                              local.get 1
                                              i32.load
                                              local.tee 1
                                              local.get 0
                                              local.get 25
                                              i32.add
                                              i32.load
                                              i32.const -1
                                              i32.xor
                                              i32.add
                                              local.tee 0
                                              local.get 10
                                              i32.add
                                              local.tee 5
                                              i32.store
                                              local.get 0
                                              local.get 1
                                              i32.lt_u
                                              local.get 0
                                              local.get 5
                                              i32.gt_u
                                              i32.or
                                              br_if 1 (;@20;)
                                              br 14 (;@7;)
                                            end
                                            local.get 10
                                            i32.eqz
                                            br_if 13 (;@7;)
                                          end
                                          local.get 4
                                          local.get 2
                                          i32.store offset=1212
                                          local.get 18
                                          i32.const 4
                                          i32.or
                                          local.set 18
                                        end
                                        local.get 2
                                        local.get 27
                                        local.get 2
                                        local.get 27
                                        i32.gt_u
                                        select
                                        local.tee 5
                                        i32.const 41
                                        i32.ge_u
                                        br_if 17 (;@1;)
                                        local.get 5
                                        i32.const 2
                                        i32.shl
                                        local.set 0
                                        block  ;; label = @19
                                          loop  ;; label = @20
                                            local.get 0
                                            if  ;; label = @21
                                              i32.const -1
                                              local.get 0
                                              i32.const 4
                                              i32.sub
                                              local.tee 0
                                              local.get 4
                                              i32.const 1380
                                              i32.add
                                              i32.add
                                              i32.load
                                              local.tee 1
                                              local.get 0
                                              local.get 4
                                              i32.const 1052
                                              i32.add
                                              i32.add
                                              i32.load
                                              local.tee 10
                                              i32.ne
                                              local.get 1
                                              local.get 10
                                              i32.gt_u
                                              select
                                              local.tee 8
                                              i32.eqz
                                              br_if 1 (;@20;)
                                              br 2 (;@19;)
                                            end
                                          end
                                          i32.const -1
                                          i32.const 0
                                          local.get 4
                                          i32.const 1380
                                          i32.add
                                          local.get 0
                                          i32.add
                                          local.get 23
                                          i32.ne
                                          select
                                          local.set 8
                                        end
                                        block  ;; label = @19
                                          local.get 8
                                          i32.const 1
                                          i32.gt_u
                                          if  ;; label = @20
                                            local.get 2
                                            local.set 5
                                            br 1 (;@19;)
                                          end
                                          block  ;; label = @20
                                            local.get 5
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            i32.const 1
                                            local.set 10
                                            i32.const 0
                                            local.set 12
                                            block  ;; label = @21
                                              local.get 5
                                              i32.const 1
                                              i32.ne
                                              if  ;; label = @22
                                                local.get 5
                                                i32.const 1
                                                i32.and
                                                local.get 5
                                                i32.const 62
                                                i32.and
                                                local.set 21
                                                local.get 4
                                                i32.const 1380
                                                i32.add
                                                local.set 8
                                                local.get 4
                                                i32.const 1052
                                                i32.add
                                                local.set 0
                                                loop  ;; label = @23
                                                  local.get 0
                                                  local.get 0
                                                  i32.load
                                                  local.tee 22
                                                  local.get 8
                                                  i32.load
                                                  i32.const -1
                                                  i32.xor
                                                  i32.add
                                                  local.tee 1
                                                  local.get 10
                                                  i32.const 1
                                                  i32.and
                                                  i32.add
                                                  local.tee 10
                                                  i32.store
                                                  local.get 0
                                                  i32.const 4
                                                  i32.add
                                                  local.tee 2
                                                  local.get 2
                                                  i32.load
                                                  local.tee 28
                                                  local.get 8
                                                  i32.const 4
                                                  i32.add
                                                  i32.load
                                                  i32.const -1
                                                  i32.xor
                                                  i32.add
                                                  local.tee 2
                                                  local.get 1
                                                  local.get 22
                                                  i32.lt_u
                                                  local.get 1
                                                  local.get 10
                                                  i32.gt_u
                                                  i32.or
                                                  i32.add
                                                  local.tee 1
                                                  i32.store
                                                  local.get 1
                                                  local.get 2
                                                  i32.lt_u
                                                  local.get 2
                                                  local.get 28
                                                  i32.lt_u
                                                  i32.or
                                                  local.set 10
                                                  local.get 0
                                                  i32.const 8
                                                  i32.add
                                                  local.set 0
                                                  local.get 8
                                                  i32.const 8
                                                  i32.add
                                                  local.set 8
                                                  local.get 21
                                                  local.get 12
                                                  i32.const 2
                                                  i32.add
                                                  local.tee 12
                                                  i32.ne
                                                  br_if 0 (;@23;)
                                                end
                                                i32.eqz
                                                br_if 1 (;@21;)
                                              end
                                              local.get 12
                                              i32.const 2
                                              i32.shl
                                              local.tee 0
                                              local.get 4
                                              i32.const 1052
                                              i32.add
                                              i32.add
                                              local.tee 1
                                              local.get 1
                                              i32.load
                                              local.tee 1
                                              local.get 0
                                              local.get 23
                                              i32.add
                                              i32.load
                                              i32.const -1
                                              i32.xor
                                              i32.add
                                              local.tee 0
                                              local.get 10
                                              i32.add
                                              local.tee 2
                                              i32.store
                                              local.get 0
                                              local.get 1
                                              i32.lt_u
                                              local.get 0
                                              local.get 2
                                              i32.gt_u
                                              i32.or
                                              br_if 1 (;@20;)
                                              br 14 (;@7;)
                                            end
                                            local.get 10
                                            i32.eqz
                                            br_if 13 (;@7;)
                                          end
                                          local.get 4
                                          local.get 5
                                          i32.store offset=1212
                                          local.get 18
                                          i32.const 2
                                          i32.add
                                          local.set 18
                                        end
                                        local.get 5
                                        local.get 13
                                        local.get 5
                                        local.get 13
                                        i32.gt_u
                                        select
                                        local.tee 1
                                        i32.const 41
                                        i32.ge_u
                                        br_if 16 (;@2;)
                                        local.get 1
                                        i32.const 2
                                        i32.shl
                                        local.set 0
                                        block  ;; label = @19
                                          loop  ;; label = @20
                                            local.get 0
                                            if  ;; label = @21
                                              i32.const -1
                                              local.get 0
                                              i32.const 4
                                              i32.sub
                                              local.tee 0
                                              local.get 4
                                              i32.const 1216
                                              i32.add
                                              i32.add
                                              i32.load
                                              local.tee 2
                                              local.get 0
                                              local.get 4
                                              i32.const 1052
                                              i32.add
                                              i32.add
                                              i32.load
                                              local.tee 10
                                              i32.ne
                                              local.get 2
                                              local.get 10
                                              i32.gt_u
                                              select
                                              local.tee 8
                                              i32.eqz
                                              br_if 1 (;@20;)
                                              br 2 (;@19;)
                                            end
                                          end
                                          i32.const -1
                                          i32.const 0
                                          local.get 0
                                          local.get 4
                                          i32.const 1216
                                          i32.add
                                          local.tee 2
                                          i32.add
                                          local.get 2
                                          i32.ne
                                          select
                                          local.set 8
                                        end
                                        block  ;; label = @19
                                          local.get 8
                                          i32.const 1
                                          i32.gt_u
                                          if  ;; label = @20
                                            local.get 5
                                            local.set 1
                                            br 1 (;@19;)
                                          end
                                          block  ;; label = @20
                                            local.get 1
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            i32.const 1
                                            local.set 10
                                            i32.const 0
                                            local.set 12
                                            block  ;; label = @21
                                              local.get 1
                                              i32.const 1
                                              i32.ne
                                              if  ;; label = @22
                                                local.get 1
                                                i32.const 1
                                                i32.and
                                                local.get 1
                                                i32.const 62
                                                i32.and
                                                local.set 21
                                                local.get 4
                                                i32.const 1216
                                                i32.add
                                                local.set 8
                                                local.get 4
                                                i32.const 1052
                                                i32.add
                                                local.set 0
                                                loop  ;; label = @23
                                                  local.get 0
                                                  local.get 0
                                                  i32.load
                                                  local.tee 22
                                                  local.get 8
                                                  i32.load
                                                  i32.const -1
                                                  i32.xor
                                                  i32.add
                                                  local.tee 2
                                                  local.get 10
                                                  i32.const 1
                                                  i32.and
                                                  i32.add
                                                  local.tee 10
                                                  i32.store
                                                  local.get 0
                                                  i32.const 4
                                                  i32.add
                                                  local.tee 5
                                                  local.get 5
                                                  i32.load
                                                  local.tee 28
                                                  local.get 8
                                                  i32.const 4
                                                  i32.add
                                                  i32.load
                                                  i32.const -1
                                                  i32.xor
                                                  i32.add
                                                  local.tee 5
                                                  local.get 2
                                                  local.get 22
                                                  i32.lt_u
                                                  local.get 2
                                                  local.get 10
                                                  i32.gt_u
                                                  i32.or
                                                  i32.add
                                                  local.tee 2
                                                  i32.store
                                                  local.get 2
                                                  local.get 5
                                                  i32.lt_u
                                                  local.get 5
                                                  local.get 28
                                                  i32.lt_u
                                                  i32.or
                                                  local.set 10
                                                  local.get 0
                                                  i32.const 8
                                                  i32.add
                                                  local.set 0
                                                  local.get 8
                                                  i32.const 8
                                                  i32.add
                                                  local.set 8
                                                  local.get 21
                                                  local.get 12
                                                  i32.const 2
                                                  i32.add
                                                  local.tee 12
                                                  i32.ne
                                                  br_if 0 (;@23;)
                                                end
                                                i32.eqz
                                                br_if 1 (;@21;)
                                              end
                                              local.get 12
                                              i32.const 2
                                              i32.shl
                                              local.tee 0
                                              local.get 4
                                              i32.const 1052
                                              i32.add
                                              i32.add
                                              local.tee 2
                                              local.get 2
                                              i32.load
                                              local.tee 2
                                              local.get 4
                                              i32.const 1216
                                              i32.add
                                              local.get 0
                                              i32.add
                                              i32.load
                                              i32.const -1
                                              i32.xor
                                              i32.add
                                              local.tee 0
                                              local.get 10
                                              i32.add
                                              local.tee 5
                                              i32.store
                                              local.get 0
                                              local.get 2
                                              i32.lt_u
                                              local.get 0
                                              local.get 5
                                              i32.gt_u
                                              i32.or
                                              br_if 1 (;@20;)
                                              br 14 (;@7;)
                                            end
                                            local.get 10
                                            i32.eqz
                                            br_if 13 (;@7;)
                                          end
                                          local.get 4
                                          local.get 1
                                          i32.store offset=1212
                                          local.get 18
                                          i32.const 1
                                          i32.add
                                          local.set 18
                                        end
                                        local.get 3
                                        local.get 11
                                        i32.ne
                                        if  ;; label = @19
                                          local.get 4
                                          i32.const 16
                                          i32.add
                                          local.get 3
                                          i32.add
                                          local.get 18
                                          i32.const 48
                                          i32.add
                                          i32.store8
                                          local.get 1
                                          i32.eqz
                                          if  ;; label = @20
                                            i32.const 0
                                            local.set 1
                                            br 5 (;@15;)
                                          end
                                          local.get 1
                                          i32.const 1
                                          i32.sub
                                          i32.const 1073741823
                                          i32.and
                                          local.tee 0
                                          i32.const 1
                                          i32.add
                                          local.tee 2
                                          i32.const 3
                                          i32.and
                                          local.set 8
                                          local.get 0
                                          i32.const 3
                                          i32.lt_u
                                          if  ;; label = @20
                                            local.get 4
                                            i32.const 1052
                                            i32.add
                                            local.set 0
                                            i64.const 0
                                            local.set 32
                                            br 4 (;@16;)
                                          end
                                          local.get 2
                                          i32.const 2147483644
                                          i32.and
                                          local.set 5
                                          local.get 4
                                          i32.const 1052
                                          i32.add
                                          local.set 0
                                          i64.const 0
                                          local.set 32
                                          loop  ;; label = @20
                                            local.get 0
                                            local.get 0
                                            i64.load32_u
                                            i64.const 10
                                            i64.mul
                                            local.get 32
                                            i64.add
                                            local.tee 32
                                            i64.store32
                                            local.get 0
                                            i32.const 4
                                            i32.add
                                            local.tee 2
                                            local.get 2
                                            i64.load32_u
                                            i64.const 10
                                            i64.mul
                                            local.get 32
                                            i64.const 32
                                            i64.shr_u
                                            i64.add
                                            local.tee 32
                                            i64.store32
                                            local.get 0
                                            i32.const 8
                                            i32.add
                                            local.tee 2
                                            local.get 2
                                            i64.load32_u
                                            i64.const 10
                                            i64.mul
                                            local.get 32
                                            i64.const 32
                                            i64.shr_u
                                            i64.add
                                            local.tee 32
                                            i64.store32
                                            local.get 0
                                            i32.const 12
                                            i32.add
                                            local.tee 2
                                            local.get 2
                                            i64.load32_u
                                            i64.const 10
                                            i64.mul
                                            local.get 32
                                            i64.const 32
                                            i64.shr_u
                                            i64.add
                                            local.tee 31
                                            i64.store32
                                            local.get 31
                                            i64.const 32
                                            i64.shr_u
                                            local.set 32
                                            local.get 0
                                            i32.const 16
                                            i32.add
                                            local.set 0
                                            local.get 5
                                            i32.const 4
                                            i32.sub
                                            local.tee 5
                                            br_if 0 (;@20;)
                                          end
                                          br 3 (;@16;)
                                        end
                                        local.get 11
                                        local.get 11
                                        i32.const 1049756
                                        call 9
                                        unreachable
                                      end
                                      br 15 (;@2;)
                                    end
                                    local.get 7
                                    local.get 11
                                    i32.const 1049772
                                    call 21
                                    unreachable
                                  end
                                  local.get 8
                                  if  ;; label = @16
                                    loop  ;; label = @17
                                      local.get 0
                                      local.get 0
                                      i64.load32_u
                                      i64.const 10
                                      i64.mul
                                      local.get 32
                                      i64.add
                                      local.tee 31
                                      i64.store32
                                      local.get 0
                                      i32.const 4
                                      i32.add
                                      local.set 0
                                      local.get 31
                                      i64.const 32
                                      i64.shr_u
                                      local.set 32
                                      local.get 8
                                      i32.const 1
                                      i32.sub
                                      local.tee 8
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  local.get 31
                                  i64.const 4294967296
                                  i64.lt_u
                                  br_if 0 (;@15;)
                                  local.get 1
                                  i32.const 40
                                  i32.eq
                                  br_if 2 (;@13;)
                                  local.get 4
                                  i32.const 1052
                                  i32.add
                                  local.get 1
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get 32
                                  i64.store32
                                  local.get 1
                                  i32.const 1
                                  i32.add
                                  local.set 1
                                end
                                local.get 4
                                local.get 1
                                i32.store offset=1212
                                local.get 6
                                local.get 7
                                i32.ne
                                br_if 0 (;@14;)
                              end
                              i32.const 0
                              local.set 12
                              br 1 (;@12;)
                            end
                            br 4 (;@8;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 13
                              i32.const 41
                              i32.lt_u
                              if  ;; label = @14
                                local.get 13
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 13
                                  br 3 (;@12;)
                                end
                                local.get 13
                                i32.const 1
                                i32.sub
                                i32.const 1073741823
                                i32.and
                                local.tee 0
                                i32.const 1
                                i32.add
                                local.tee 2
                                i32.const 3
                                i32.and
                                local.set 8
                                local.get 0
                                i32.const 3
                                i32.lt_u
                                if  ;; label = @15
                                  local.get 4
                                  i32.const 1216
                                  i32.add
                                  local.set 0
                                  i64.const 0
                                  local.set 31
                                  br 2 (;@13;)
                                end
                                local.get 2
                                i32.const 2147483644
                                i32.and
                                local.set 5
                                local.get 4
                                i32.const 1216
                                i32.add
                                local.set 0
                                i64.const 0
                                local.set 31
                                loop  ;; label = @15
                                  local.get 0
                                  local.get 0
                                  i64.load32_u
                                  i64.const 5
                                  i64.mul
                                  local.get 31
                                  i64.add
                                  local.tee 32
                                  i64.store32
                                  local.get 0
                                  i32.const 4
                                  i32.add
                                  local.tee 2
                                  local.get 2
                                  i64.load32_u
                                  i64.const 5
                                  i64.mul
                                  local.get 32
                                  i64.const 32
                                  i64.shr_u
                                  i64.add
                                  local.tee 32
                                  i64.store32
                                  local.get 0
                                  i32.const 8
                                  i32.add
                                  local.tee 2
                                  local.get 2
                                  i64.load32_u
                                  i64.const 5
                                  i64.mul
                                  local.get 32
                                  i64.const 32
                                  i64.shr_u
                                  i64.add
                                  local.tee 32
                                  i64.store32
                                  local.get 0
                                  i32.const 12
                                  i32.add
                                  local.tee 2
                                  local.get 2
                                  i64.load32_u
                                  i64.const 5
                                  i64.mul
                                  local.get 32
                                  i64.const 32
                                  i64.shr_u
                                  i64.add
                                  local.tee 32
                                  i64.store32
                                  local.get 32
                                  i64.const 32
                                  i64.shr_u
                                  local.set 31
                                  local.get 0
                                  i32.const 16
                                  i32.add
                                  local.set 0
                                  local.get 5
                                  i32.const 4
                                  i32.sub
                                  local.tee 5
                                  br_if 0 (;@15;)
                                end
                                br 1 (;@13;)
                              end
                              local.get 13
                              i32.const 40
                              i32.const 1054496
                              call 21
                              unreachable
                            end
                            local.get 8
                            if  ;; label = @13
                              loop  ;; label = @14
                                local.get 0
                                local.get 0
                                i64.load32_u
                                i64.const 5
                                i64.mul
                                local.get 31
                                i64.add
                                local.tee 32
                                i64.store32
                                local.get 0
                                i32.const 4
                                i32.add
                                local.set 0
                                local.get 32
                                i64.const 32
                                i64.shr_u
                                local.set 31
                                local.get 8
                                i32.const 1
                                i32.sub
                                local.tee 8
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 32
                            i64.const 4294967296
                            i64.lt_u
                            br_if 0 (;@12;)
                            local.get 13
                            i32.const 40
                            i32.eq
                            br_if 4 (;@8;)
                            local.get 4
                            i32.const 1216
                            i32.add
                            local.get 13
                            i32.const 2
                            i32.shl
                            i32.add
                            local.get 31
                            i64.store32
                            local.get 13
                            i32.const 1
                            i32.add
                            local.set 13
                          end
                          local.get 4
                          local.get 13
                          i32.store offset=1376
                          local.get 1
                          local.get 13
                          local.get 1
                          local.get 13
                          i32.gt_u
                          select
                          local.tee 0
                          i32.const 41
                          i32.ge_u
                          br_if 7 (;@4;)
                          local.get 0
                          i32.const 2
                          i32.shl
                          local.set 0
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 0
                              if  ;; label = @14
                                i32.const -1
                                local.get 0
                                i32.const 4
                                i32.sub
                                local.tee 0
                                local.get 4
                                i32.const 1216
                                i32.add
                                i32.add
                                i32.load
                                local.tee 1
                                local.get 0
                                local.get 4
                                i32.const 1052
                                i32.add
                                i32.add
                                i32.load
                                local.tee 2
                                i32.ne
                                local.get 1
                                local.get 2
                                i32.gt_u
                                select
                                local.tee 8
                                i32.eqz
                                br_if 1 (;@13;)
                                br 2 (;@12;)
                              end
                            end
                            i32.const -1
                            i32.const 0
                            local.get 0
                            local.get 4
                            i32.const 1216
                            i32.add
                            local.tee 1
                            i32.add
                            local.get 1
                            i32.ne
                            select
                            local.set 8
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 8
                                  i32.const 255
                                  i32.and
                                  br_table 0 (;@15;) 1 (;@14;) 2 (;@13;)
                                end
                                local.get 12
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 7
                                  br 3 (;@12;)
                                end
                                local.get 11
                                local.get 7
                                i32.const 1
                                i32.sub
                                local.tee 0
                                i32.le_u
                                if  ;; label = @15
                                  local.get 0
                                  local.get 11
                                  i32.const 1049708
                                  call 9
                                  unreachable
                                end
                                local.get 4
                                i32.const 16
                                i32.add
                                local.get 0
                                i32.add
                                i32.load8_u
                                i32.const 1
                                i32.and
                                i32.eqz
                                br_if 1 (;@13;)
                              end
                              local.get 7
                              local.get 11
                              i32.le_u
                              if  ;; label = @14
                                local.get 4
                                i32.const 16
                                i32.add
                                local.get 7
                                i32.add
                                i32.const -1
                                local.set 8
                                local.get 7
                                local.set 0
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 0
                                    local.tee 1
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    local.get 8
                                    i32.const 1
                                    i32.add
                                    local.set 8
                                    local.get 0
                                    i32.const 1
                                    i32.sub
                                    local.tee 0
                                    local.get 4
                                    i32.const 16
                                    i32.add
                                    local.tee 2
                                    i32.add
                                    i32.load8_u
                                    i32.const 57
                                    i32.eq
                                    br_if 0 (;@16;)
                                  end
                                  local.get 0
                                  local.get 2
                                  i32.add
                                  local.tee 0
                                  local.get 0
                                  i32.load8_u
                                  i32.const 1
                                  i32.add
                                  i32.store8
                                  local.get 1
                                  local.get 7
                                  i32.ge_u
                                  br_if 2 (;@13;)
                                  local.get 1
                                  local.get 2
                                  i32.add
                                  i32.const 48
                                  local.get 8
                                  call 67
                                  drop
                                  br 2 (;@13;)
                                end
                                block (result i32)  ;; label = @15
                                  i32.const 49
                                  local.get 12
                                  br_if 0 (;@15;)
                                  drop
                                  local.get 4
                                  i32.const 49
                                  i32.store8 offset=16
                                  i32.const 48
                                  local.get 7
                                  i32.const 1
                                  i32.eq
                                  br_if 0 (;@15;)
                                  drop
                                  local.get 4
                                  i32.const 17
                                  i32.add
                                  i32.const 48
                                  local.get 7
                                  i32.const 1
                                  i32.sub
                                  call 67
                                  drop
                                  i32.const 48
                                end
                                local.get 14
                                i32.const 1
                                i32.add
                                local.set 14
                                local.get 30
                                local.get 7
                                local.get 11
                                i32.ge_u
                                i32.or
                                br_if 1 (;@13;)
                                i32.store8
                                local.get 7
                                i32.const 1
                                i32.add
                                local.set 7
                                br 1 (;@13;)
                              end
                              local.get 7
                              local.get 11
                              i32.const 1049724
                              call 21
                              unreachable
                            end
                            local.get 7
                            local.get 11
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 7
                            local.get 11
                            i32.const 1049740
                            call 21
                            unreachable
                          end
                          local.get 4
                          i32.const 16
                          i32.add
                          local.set 0
                        end
                        local.get 15
                        local.get 14
                        i32.extend16_s
                        i32.lt_s
                        if  ;; label = @11
                          local.get 4
                          i32.const 8
                          i32.add
                          local.get 0
                          local.get 7
                          local.get 14
                          local.get 17
                          local.get 4
                          i32.const 1708
                          i32.add
                          call 50
                          local.get 4
                          i32.load offset=12
                          local.set 0
                          local.get 4
                          i32.load offset=8
                          br 2 (;@9;)
                        end
                        i32.const 2
                        local.set 0
                        local.get 4
                        i32.const 2
                        i32.store16 offset=1708
                        local.get 17
                        i32.eqz
                        if  ;; label = @11
                          i32.const 1
                          local.set 0
                          local.get 4
                          i32.const 1
                          i32.store offset=1716
                          local.get 4
                          i32.const 1051563
                          i32.store offset=1712
                          local.get 4
                          i32.const 1708
                          i32.add
                          br 2 (;@9;)
                        end
                        local.get 4
                        local.get 17
                        i32.store offset=1724
                        local.get 4
                        i32.const 0
                        i32.store16 offset=1720
                        local.get 4
                        i32.const 2
                        i32.store offset=1716
                        local.get 4
                        i32.const 1051553
                        i32.store offset=1712
                        local.get 4
                        i32.const 1708
                        i32.add
                        br 1 (;@9;)
                      end
                      i32.const 1
                      local.set 0
                      local.get 4
                      i32.const 1
                      i32.store offset=1716
                      local.get 4
                      i32.const 1051563
                      i32.store offset=1712
                      local.get 4
                      i32.const 1708
                      i32.add
                    end
                    local.set 1
                    local.get 4
                    local.get 0
                    i32.store offset=1556
                    local.get 4
                    local.get 1
                    i32.store offset=1552
                    local.get 4
                    local.get 29
                    i32.store offset=1548
                    local.get 4
                    local.get 24
                    i32.store offset=1544
                    local.get 9
                    local.get 4
                    i32.const 1544
                    i32.add
                    call 57
                    local.get 4
                    i32.const 1872
                    i32.add
                    global.set 0
                    br 2 (;@6;)
                  end
                  i32.const 40
                  i32.const 40
                  i32.const 1054496
                  call 9
                  unreachable
                end
                i32.const 1054512
                i32.const 26
                i32.const 1054496
                call 25
                unreachable
              end
              return
            end
            block (result i32)  ;; label = @5
              local.get 1
              local.set 13
              global.get 0
              i32.const 1344
              i32.sub
              local.tee 3
              global.set 0
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block (result i32)  ;; label = @9
                      block (result i32)  ;; label = @10
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
                                            local.get 57
                                            local.get 57
                                            f64.ne
                                            br_if 0 (;@20;)
                                            local.get 57
                                            i64.reinterpret_f64
                                            local.tee 32
                                            i64.const 4503599627370495
                                            i64.and
                                            local.tee 33
                                            i64.const 4503599627370496
                                            i64.or
                                            local.get 32
                                            i64.const 1
                                            i64.shl
                                            i64.const 9007199254740990
                                            i64.and
                                            local.get 32
                                            i64.const 52
                                            i64.shr_u
                                            i32.wrap_i64
                                            i32.const 2047
                                            i32.and
                                            local.tee 0
                                            select
                                            local.tee 36
                                            i64.const 1
                                            i64.and
                                            local.set 34
                                            local.get 32
                                            i64.const 9218868437227405312
                                            i64.and
                                            local.set 31
                                            block  ;; label = @21
                                              block (result i32)  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 33
                                                    i64.eqz
                                                    if  ;; label = @25
                                                      local.get 31
                                                      i64.eqz
                                                      local.get 31
                                                      i64.const 9218868437227405312
                                                      i64.eq
                                                      i32.or
                                                      br_if 1 (;@24;)
                                                      br 2 (;@23;)
                                                    end
                                                    local.get 31
                                                    i64.const 0
                                                    i64.ne
                                                    br_if 1 (;@23;)
                                                    local.get 34
                                                    i64.eqz
                                                    local.set 14
                                                    i64.const 1
                                                    local.set 47
                                                    local.get 0
                                                    i32.const 1075
                                                    i32.sub
                                                    br 2 (;@22;)
                                                  end
                                                  i32.const 3
                                                  i32.const 4
                                                  local.get 31
                                                  i64.const 9218868437227405312
                                                  i64.eq
                                                  select
                                                  local.tee 14
                                                  i32.const 2
                                                  i32.sub
                                                  local.set 6
                                                  br 2 (;@21;)
                                                end
                                                i64.const 18014398509481984
                                                local.get 36
                                                i64.const 1
                                                i64.shl
                                                local.get 36
                                                i64.const 4503599627370496
                                                i64.eq
                                                local.tee 1
                                                select
                                                local.set 36
                                                i64.const 2
                                                i64.const 1
                                                local.get 1
                                                select
                                                local.set 47
                                                local.get 34
                                                i64.eqz
                                                local.set 14
                                                i32.const -1077
                                                i32.const -1076
                                                local.get 1
                                                select
                                                local.get 0
                                                i32.add
                                              end
                                              local.set 5
                                              local.get 14
                                              i32.const -2
                                              i32.or
                                              local.tee 6
                                              i32.eqz
                                              br_if 1 (;@20;)
                                            end
                                            i32.const 1
                                            local.set 9
                                            i32.const 1051555
                                            i32.const 1051556
                                            local.get 32
                                            i64.const 0
                                            i64.lt_s
                                            local.tee 0
                                            select
                                            i32.const 1051555
                                            i32.const 1
                                            local.get 0
                                            select
                                            local.get 2
                                            select
                                            local.set 29
                                            local.get 32
                                            i64.const 63
                                            i64.shr_u
                                            i32.wrap_i64
                                            local.get 2
                                            i32.or
                                            local.set 18
                                            i32.const 3
                                            local.get 6
                                            local.get 6
                                            i32.const 3
                                            i32.ge_u
                                            select
                                            i32.const 2
                                            i32.sub
                                            br_table 3 (;@17;) 2 (;@18;) 1 (;@19;)
                                          end
                                          local.get 3
                                          i32.const 3
                                          i32.store offset=1188
                                          local.get 3
                                          i32.const 1051557
                                          i32.store offset=1184
                                          local.get 3
                                          i32.const 2
                                          i32.store16 offset=1180
                                          i32.const 1
                                          local.set 29
                                          i32.const 1
                                          local.set 9
                                          local.get 3
                                          i32.const 1180
                                          i32.add
                                          br 10 (;@9;)
                                        end
                                        local.get 3
                                        i32.const 3
                                        i32.store offset=1188
                                        local.get 3
                                        i32.const 1051560
                                        i32.store offset=1184
                                        local.get 3
                                        i32.const 2
                                        i32.store16 offset=1180
                                        local.get 3
                                        i32.const 1180
                                        i32.add
                                        br 9 (;@9;)
                                      end
                                      local.get 36
                                      i64.eqz
                                      br_if 1 (;@16;)
                                      local.get 36
                                      local.get 47
                                      i64.add
                                      local.tee 42
                                      local.get 36
                                      i64.lt_u
                                      br_if 2 (;@15;)
                                      local.get 42
                                      i64.const 2305843009213693952
                                      i64.ge_u
                                      br_if 3 (;@14;)
                                      local.get 3
                                      local.get 36
                                      i64.const 1
                                      i64.sub
                                      local.tee 32
                                      i64.store offset=1016
                                      local.get 3
                                      local.get 5
                                      i32.store16 offset=1024
                                      local.get 5
                                      local.get 5
                                      i32.const 32
                                      i32.sub
                                      local.get 5
                                      local.get 42
                                      i64.const 4294967296
                                      i64.lt_u
                                      local.tee 0
                                      select
                                      local.tee 1
                                      i32.const 16
                                      i32.sub
                                      local.get 1
                                      local.get 42
                                      i64.const 32
                                      i64.shl
                                      local.get 42
                                      local.get 0
                                      select
                                      local.tee 31
                                      i64.const 281474976710656
                                      i64.lt_u
                                      local.tee 0
                                      select
                                      local.tee 1
                                      i32.const 8
                                      i32.sub
                                      local.get 1
                                      local.get 31
                                      i64.const 16
                                      i64.shl
                                      local.get 31
                                      local.get 0
                                      select
                                      local.tee 31
                                      i64.const 72057594037927936
                                      i64.lt_u
                                      local.tee 0
                                      select
                                      local.tee 1
                                      i32.const 4
                                      i32.sub
                                      local.get 1
                                      local.get 31
                                      i64.const 8
                                      i64.shl
                                      local.get 31
                                      local.get 0
                                      select
                                      local.tee 31
                                      i64.const 1152921504606846976
                                      i64.lt_u
                                      local.tee 0
                                      select
                                      local.tee 1
                                      i32.const 2
                                      i32.sub
                                      local.get 1
                                      local.get 31
                                      i64.const 4
                                      i64.shl
                                      local.get 31
                                      local.get 0
                                      select
                                      local.tee 31
                                      i64.const 4611686018427387904
                                      i64.lt_u
                                      local.tee 0
                                      select
                                      local.get 31
                                      i64.const 2
                                      i64.shl
                                      local.get 31
                                      local.get 0
                                      select
                                      local.tee 39
                                      i64.const 0
                                      i64.ge_s
                                      local.tee 2
                                      i32.sub
                                      local.tee 0
                                      i32.sub
                                      i32.extend16_s
                                      local.tee 1
                                      i32.const 0
                                      i32.lt_s
                                      br_if 4 (;@13;)
                                      local.get 3
                                      local.get 32
                                      local.get 1
                                      i64.extend_i32_u
                                      local.tee 31
                                      i64.shl
                                      local.tee 35
                                      local.get 31
                                      i64.shr_u
                                      local.tee 34
                                      i64.store offset=848
                                      local.get 32
                                      local.get 34
                                      i64.ne
                                      br_if 9 (;@8;)
                                      local.get 3
                                      local.get 5
                                      i32.store16 offset=1024
                                      local.get 3
                                      local.get 36
                                      i64.store offset=1016
                                      local.get 3
                                      local.get 36
                                      local.get 31
                                      i64.const 63
                                      i64.and
                                      local.tee 32
                                      i64.shl
                                      local.tee 31
                                      local.get 32
                                      i64.shr_u
                                      local.tee 32
                                      i64.store offset=848
                                      local.get 32
                                      local.get 36
                                      i64.ne
                                      br_if 9 (;@8;)
                                      i32.const -96
                                      local.get 0
                                      i32.sub
                                      i32.extend16_s
                                      i32.const 80
                                      i32.mul
                                      i32.const 86960
                                      i32.add
                                      i32.const 2126
                                      i32.div_s
                                      local.tee 1
                                      i32.const 81
                                      i32.ge_u
                                      br_if 5 (;@12;)
                                      local.get 1
                                      i32.const 4
                                      i32.shl
                                      local.tee 1
                                      i32.const 1049808
                                      i32.add
                                      i64.load
                                      local.tee 34
                                      i64.const 4294967295
                                      i64.and
                                      local.tee 32
                                      local.get 31
                                      i64.const 32
                                      i64.shr_u
                                      local.tee 50
                                      i64.mul
                                      local.tee 33
                                      i64.const 32
                                      i64.shr_u
                                      local.tee 54
                                      local.get 34
                                      i64.const 32
                                      i64.shr_u
                                      local.tee 34
                                      local.get 50
                                      i64.mul
                                      local.tee 55
                                      i64.add
                                      local.get 34
                                      local.get 31
                                      i64.const 4294967295
                                      i64.and
                                      local.tee 31
                                      i64.mul
                                      local.tee 37
                                      i64.const 32
                                      i64.shr_u
                                      local.tee 56
                                      i64.add
                                      local.set 40
                                      local.get 33
                                      i64.const 4294967295
                                      i64.and
                                      local.get 31
                                      local.get 32
                                      i64.mul
                                      i64.const 32
                                      i64.shr_u
                                      i64.add
                                      local.get 37
                                      i64.const 4294967295
                                      i64.and
                                      i64.add
                                      i64.const 2147483648
                                      i64.add
                                      i64.const 32
                                      i64.shr_u
                                      local.set 45
                                      i64.const 1
                                      i32.const 0
                                      local.get 0
                                      local.get 1
                                      i32.const 1049816
                                      i32.add
                                      i32.load16_u
                                      i32.add
                                      i32.sub
                                      i32.const 63
                                      i32.and
                                      i64.extend_i32_u
                                      local.tee 33
                                      i64.shl
                                      local.tee 37
                                      i64.const 1
                                      i64.sub
                                      local.set 41
                                      local.get 32
                                      local.get 35
                                      i64.const 32
                                      i64.shr_u
                                      local.tee 31
                                      i64.mul
                                      local.tee 38
                                      i64.const 4294967295
                                      i64.and
                                      local.get 32
                                      local.get 35
                                      i64.const 4294967295
                                      i64.and
                                      local.tee 35
                                      i64.mul
                                      i64.const 32
                                      i64.shr_u
                                      i64.add
                                      local.get 34
                                      local.get 35
                                      i64.mul
                                      local.tee 35
                                      i64.const 4294967295
                                      i64.and
                                      i64.add
                                      i64.const 2147483648
                                      i64.add
                                      i64.const 32
                                      i64.shr_u
                                      local.set 46
                                      local.get 31
                                      local.get 34
                                      i64.mul
                                      local.set 48
                                      local.get 35
                                      i64.const 32
                                      i64.shr_u
                                      local.set 35
                                      local.get 38
                                      i64.const 32
                                      i64.shr_u
                                      local.set 49
                                      local.get 1
                                      i32.const 1049818
                                      i32.add
                                      i32.load16_u
                                      local.set 1
                                      local.get 34
                                      local.get 39
                                      local.get 2
                                      i64.extend_i32_u
                                      i64.shl
                                      local.tee 31
                                      i64.const 32
                                      i64.shr_u
                                      local.tee 51
                                      i64.mul
                                      local.tee 52
                                      local.get 32
                                      local.get 51
                                      i64.mul
                                      local.tee 39
                                      i64.const 32
                                      i64.shr_u
                                      local.tee 43
                                      i64.add
                                      local.get 34
                                      local.get 31
                                      i64.const 4294967295
                                      i64.and
                                      local.tee 31
                                      i64.mul
                                      local.tee 38
                                      i64.const 32
                                      i64.shr_u
                                      local.tee 44
                                      i64.add
                                      local.get 39
                                      i64.const 4294967295
                                      i64.and
                                      local.get 31
                                      local.get 32
                                      i64.mul
                                      i64.const 32
                                      i64.shr_u
                                      i64.add
                                      local.get 38
                                      i64.const 4294967295
                                      i64.and
                                      i64.add
                                      local.tee 53
                                      i64.const 2147483648
                                      i64.add
                                      i64.const 32
                                      i64.shr_u
                                      i64.add
                                      i64.const 1
                                      i64.add
                                      local.tee 38
                                      local.get 33
                                      i64.shr_u
                                      i32.wrap_i64
                                      local.tee 9
                                      i32.const 10000
                                      i32.ge_u
                                      if  ;; label = @18
                                        local.get 9
                                        i32.const 1000000
                                        i32.lt_u
                                        br_if 7 (;@11;)
                                        local.get 9
                                        i32.const 100000000
                                        i32.ge_u
                                        if  ;; label = @19
                                          i32.const 8
                                          i32.const 9
                                          local.get 9
                                          i32.const 1000000000
                                          i32.lt_u
                                          local.tee 2
                                          select
                                          local.set 0
                                          i32.const 100000000
                                          i32.const 1000000000
                                          local.get 2
                                          select
                                          br 9 (;@10;)
                                        end
                                        i32.const 6
                                        i32.const 7
                                        local.get 9
                                        i32.const 10000000
                                        i32.lt_u
                                        local.tee 2
                                        select
                                        local.set 0
                                        i32.const 1000000
                                        i32.const 10000000
                                        local.get 2
                                        select
                                        br 8 (;@10;)
                                      end
                                      local.get 9
                                      i32.const 100
                                      i32.ge_u
                                      if  ;; label = @18
                                        i32.const 2
                                        i32.const 3
                                        local.get 9
                                        i32.const 1000
                                        i32.lt_u
                                        local.tee 2
                                        select
                                        local.set 0
                                        i32.const 100
                                        i32.const 1000
                                        local.get 2
                                        select
                                        br 8 (;@10;)
                                      end
                                      i32.const 10
                                      i32.const 1
                                      local.get 9
                                      i32.const 9
                                      i32.gt_u
                                      local.tee 0
                                      select
                                      br 7 (;@10;)
                                    end
                                    local.get 3
                                    i32.const 1
                                    i32.store offset=1188
                                    local.get 3
                                    i32.const 1051563
                                    i32.store offset=1184
                                    local.get 3
                                    i32.const 2
                                    i32.store16 offset=1180
                                    local.get 3
                                    i32.const 1180
                                    i32.add
                                    br 7 (;@9;)
                                  end
                                  i32.const 1049575
                                  i32.const 28
                                  i32.const 1051160
                                  call 25
                                  unreachable
                                end
                                i32.const 1049652
                                i32.const 54
                                i32.const 1051272
                                call 25
                                unreachable
                              end
                              i32.const 1051176
                              i32.const 45
                              i32.const 1051224
                              call 25
                              unreachable
                            end
                            i32.const 1049292
                            i32.const 29
                            i32.const 1049348
                            call 25
                            unreachable
                          end
                          local.get 1
                          i32.const 81
                          i32.const 1051144
                          call 9
                          unreachable
                        end
                        i32.const 4
                        i32.const 5
                        local.get 9
                        i32.const 100000
                        i32.lt_u
                        local.tee 2
                        select
                        local.set 0
                        i32.const 10000
                        i32.const 100000
                        local.get 2
                        select
                      end
                      local.set 2
                      local.get 40
                      local.get 45
                      i64.add
                      local.set 40
                      local.get 38
                      local.get 41
                      i64.and
                      local.set 31
                      local.get 0
                      local.get 1
                      i32.sub
                      i32.const 1
                      i32.add
                      local.set 12
                      local.get 38
                      local.get 48
                      local.get 49
                      i64.add
                      local.get 35
                      i64.add
                      local.get 46
                      i64.add
                      local.tee 48
                      i64.sub
                      local.tee 49
                      i64.const 1
                      i64.add
                      local.tee 46
                      local.get 41
                      i64.and
                      local.set 35
                      i32.const 0
                      local.set 6
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    loop  ;; label = @17
                                      local.get 3
                                      i32.const 11
                                      i32.add
                                      local.get 6
                                      i32.add
                                      local.tee 1
                                      local.get 9
                                      local.get 2
                                      i32.div_u
                                      local.tee 10
                                      i32.const 48
                                      i32.add
                                      local.tee 7
                                      i32.store8
                                      block  ;; label = @18
                                        local.get 9
                                        local.get 2
                                        local.get 10
                                        i32.mul
                                        i32.sub
                                        local.tee 9
                                        i64.extend_i32_u
                                        local.get 33
                                        i64.shl
                                        local.tee 39
                                        local.get 31
                                        i64.add
                                        local.tee 32
                                        local.get 46
                                        i64.ge_u
                                        if  ;; label = @19
                                          local.get 0
                                          local.get 6
                                          i32.ne
                                          br_if 1 (;@18;)
                                          local.get 6
                                          i32.const 1
                                          i32.add
                                          local.set 0
                                          i64.const 1
                                          local.set 32
                                          loop  ;; label = @20
                                            local.get 32
                                            local.set 34
                                            local.get 0
                                            i32.const 17
                                            i32.eq
                                            br_if 5 (;@15;)
                                            local.get 3
                                            i32.const 11
                                            i32.add
                                            local.get 0
                                            i32.add
                                            local.get 31
                                            i64.const 10
                                            i64.mul
                                            local.tee 31
                                            local.get 33
                                            i64.shr_u
                                            i32.wrap_i64
                                            i32.const 48
                                            i32.add
                                            local.tee 2
                                            i32.store8
                                            local.get 32
                                            i64.const 10
                                            i64.mul
                                            local.set 32
                                            local.get 0
                                            i32.const 1
                                            i32.add
                                            local.set 0
                                            local.get 35
                                            i64.const 10
                                            i64.mul
                                            local.tee 35
                                            local.get 31
                                            local.get 41
                                            i64.and
                                            local.tee 31
                                            i64.le_u
                                            br_if 0 (;@20;)
                                          end
                                          local.get 32
                                          local.get 38
                                          local.get 40
                                          i64.sub
                                          i64.mul
                                          local.tee 33
                                          local.get 32
                                          i64.add
                                          local.set 39
                                          local.get 35
                                          local.get 31
                                          i64.sub
                                          local.get 37
                                          i64.lt_u
                                          local.tee 6
                                          br_if 6 (;@13;)
                                          local.get 33
                                          local.get 32
                                          i64.sub
                                          local.tee 38
                                          local.get 31
                                          i64.gt_u
                                          br_if 3 (;@16;)
                                          br 6 (;@13;)
                                        end
                                        local.get 46
                                        local.get 32
                                        i64.sub
                                        local.tee 35
                                        local.get 2
                                        i64.extend_i32_u
                                        local.get 33
                                        i64.shl
                                        local.tee 33
                                        i64.lt_u
                                        local.set 2
                                        local.get 38
                                        local.get 40
                                        i64.sub
                                        local.tee 38
                                        i64.const 1
                                        i64.add
                                        local.set 37
                                        local.get 38
                                        i64.const 1
                                        i64.sub
                                        local.tee 41
                                        local.get 32
                                        i64.le_u
                                        local.get 33
                                        local.get 35
                                        i64.gt_u
                                        i32.or
                                        br_if 4 (;@14;)
                                        local.get 53
                                        i64.const 2147483648
                                        i64.add
                                        i64.const 32
                                        i64.shr_u
                                        local.tee 40
                                        local.get 43
                                        local.get 44
                                        i64.add
                                        i64.add
                                        local.get 52
                                        i64.add
                                        local.set 35
                                        local.get 54
                                        local.get 56
                                        i64.add
                                        local.get 45
                                        i64.add
                                        local.tee 45
                                        local.get 31
                                        local.get 33
                                        i64.add
                                        local.tee 38
                                        i64.add
                                        local.get 34
                                        local.get 50
                                        local.get 51
                                        i64.sub
                                        i64.mul
                                        i64.add
                                        local.get 43
                                        i64.sub
                                        local.get 44
                                        i64.sub
                                        local.get 40
                                        i64.sub
                                        local.set 34
                                        i64.const 2
                                        local.get 48
                                        local.get 38
                                        local.get 39
                                        i64.add
                                        i64.add
                                        i64.sub
                                        local.set 43
                                        i64.const 0
                                        local.get 45
                                        local.get 55
                                        i64.add
                                        local.get 32
                                        i64.add
                                        i64.sub
                                        local.set 44
                                        loop  ;; label = @19
                                          local.get 38
                                          local.get 39
                                          i64.add
                                          local.tee 40
                                          local.get 41
                                          i64.lt_u
                                          local.get 35
                                          local.get 44
                                          i64.add
                                          local.get 34
                                          local.get 39
                                          i64.add
                                          i64.ge_u
                                          i32.or
                                          i32.eqz
                                          if  ;; label = @20
                                            local.get 31
                                            local.get 39
                                            i64.add
                                            local.set 32
                                            i32.const 0
                                            local.set 2
                                            br 6 (;@14;)
                                          end
                                          local.get 1
                                          local.get 7
                                          i32.const 1
                                          i32.sub
                                          local.tee 7
                                          i32.store8
                                          local.get 31
                                          local.get 33
                                          i64.add
                                          local.set 31
                                          local.get 35
                                          local.get 43
                                          i64.add
                                          local.set 32
                                          local.get 40
                                          local.get 41
                                          i64.lt_u
                                          if  ;; label = @20
                                            local.get 33
                                            local.get 34
                                            i64.add
                                            local.set 34
                                            local.get 33
                                            local.get 38
                                            i64.add
                                            local.set 38
                                            local.get 35
                                            local.get 33
                                            i64.sub
                                            local.set 35
                                            local.get 32
                                            local.get 33
                                            i64.ge_u
                                            br_if 1 (;@19;)
                                          end
                                        end
                                        local.get 32
                                        local.get 33
                                        i64.lt_u
                                        local.set 2
                                        local.get 31
                                        local.get 39
                                        i64.add
                                        local.set 32
                                        br 4 (;@14;)
                                      end
                                      local.get 6
                                      i32.const 1
                                      i32.add
                                      local.set 6
                                      local.get 2
                                      i32.const 10
                                      i32.lt_u
                                      local.get 2
                                      i32.const 10
                                      i32.div_u
                                      local.set 2
                                      i32.eqz
                                      br_if 0 (;@17;)
                                    end
                                    i32.const 1051240
                                    call 48
                                    unreachable
                                  end
                                  local.get 0
                                  local.get 3
                                  i32.add
                                  i32.const 10
                                  i32.add
                                  local.set 1
                                  local.get 37
                                  local.get 40
                                  i64.const 10
                                  i64.mul
                                  local.get 43
                                  local.get 44
                                  i64.add
                                  local.get 53
                                  i64.const 2147483648
                                  i64.add
                                  i64.const 32
                                  i64.shr_u
                                  i64.add
                                  local.get 52
                                  i64.add
                                  i64.const 10
                                  i64.mul
                                  i64.sub
                                  local.get 34
                                  i64.mul
                                  i64.add
                                  local.set 41
                                  local.get 38
                                  local.get 31
                                  i64.sub
                                  local.set 43
                                  local.get 35
                                  local.get 31
                                  local.get 37
                                  i64.add
                                  i64.sub
                                  local.set 44
                                  i64.const 0
                                  local.set 33
                                  loop  ;; label = @16
                                    local.get 31
                                    local.get 37
                                    i64.add
                                    local.tee 32
                                    local.get 38
                                    i64.lt_u
                                    local.get 33
                                    local.get 43
                                    i64.add
                                    local.get 31
                                    local.get 41
                                    i64.add
                                    i64.ge_u
                                    i32.or
                                    i32.eqz
                                    if  ;; label = @17
                                      i32.const 0
                                      local.set 6
                                      br 4 (;@13;)
                                    end
                                    local.get 1
                                    local.get 2
                                    i32.const 1
                                    i32.sub
                                    local.tee 2
                                    i32.store8
                                    local.get 33
                                    local.get 44
                                    i64.add
                                    local.tee 40
                                    local.get 37
                                    i64.lt_u
                                    local.set 6
                                    local.get 32
                                    local.get 38
                                    i64.ge_u
                                    br_if 4 (;@12;)
                                    local.get 33
                                    local.get 37
                                    i64.sub
                                    local.set 33
                                    local.get 32
                                    local.set 31
                                    local.get 37
                                    local.get 40
                                    i64.le_u
                                    br_if 0 (;@16;)
                                  end
                                  br 3 (;@12;)
                                end
                                i32.const 17
                                i32.const 17
                                i32.const 1051256
                                call 9
                                unreachable
                              end
                              local.get 32
                              local.get 37
                              i64.ge_u
                              local.get 2
                              i32.or
                              i32.eqz
                              if  ;; label = @14
                                local.get 32
                                local.get 33
                                i64.add
                                local.tee 31
                                local.get 37
                                i64.lt_u
                                local.get 37
                                local.get 32
                                i64.sub
                                local.get 31
                                local.get 37
                                i64.sub
                                i64.ge_u
                                i32.or
                                br_if 3 (;@11;)
                              end
                              local.get 32
                              i64.const 2
                              i64.lt_u
                              local.get 32
                              local.get 49
                              i64.const 3
                              i64.sub
                              i64.gt_u
                              i32.or
                              br_if 2 (;@11;)
                              local.get 6
                              i32.const 1
                              i32.add
                              local.set 0
                              br 3 (;@10;)
                            end
                            local.get 31
                            local.set 32
                          end
                          block  ;; label = @12
                            local.get 6
                            i32.eqz
                            local.get 32
                            local.get 39
                            i64.lt_u
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              local.get 34
                              i64.const 20
                              i64.mul
                              local.get 32
                              i64.le_u
                              br_if 1 (;@12;)
                              br 2 (;@11;)
                            end
                            local.get 32
                            local.get 37
                            i64.add
                            local.tee 31
                            local.get 39
                            i64.lt_u
                            local.get 39
                            local.get 32
                            i64.sub
                            local.get 31
                            local.get 39
                            i64.sub
                            i64.ge_u
                            i32.or
                            local.get 34
                            i64.const 20
                            i64.mul
                            local.get 32
                            i64.gt_u
                            i32.or
                            br_if 1 (;@11;)
                          end
                          local.get 32
                          local.get 34
                          i64.const -40
                          i64.mul
                          local.get 35
                          i64.add
                          i64.le_u
                          br_if 1 (;@10;)
                        end
                        local.get 3
                        local.get 36
                        i64.store32 offset=28
                        local.get 3
                        i32.const 1
                        i32.const 2
                        local.get 36
                        i64.const 4294967296
                        i64.lt_u
                        local.tee 0
                        select
                        i32.store offset=188
                        local.get 3
                        i32.const 0
                        local.get 36
                        i64.const 32
                        i64.shr_u
                        i32.wrap_i64
                        local.get 0
                        select
                        i32.store offset=32
                        local.get 3
                        i32.const 36
                        i32.add
                        i32.const 0
                        i32.const 152
                        call 67
                        drop
                        local.get 3
                        i32.const 1
                        i32.store offset=192
                        local.get 3
                        i32.const 1
                        i32.store offset=352
                        local.get 3
                        i32.const 196
                        i32.add
                        i32.const 0
                        i32.const 156
                        call 67
                        drop
                        local.get 3
                        i32.const 1
                        i32.store offset=516
                        local.get 3
                        local.get 47
                        i64.store32 offset=356
                        local.get 3
                        i32.const 360
                        i32.add
                        i32.const 0
                        i32.const 156
                        call 67
                        drop
                        local.get 3
                        i32.const 524
                        i32.add
                        i32.const 0
                        i32.const 156
                        call 67
                        drop
                        local.get 3
                        i32.const 1
                        i32.store offset=520
                        local.get 3
                        i32.const 1
                        i32.store offset=680
                        local.get 5
                        i64.extend_i32_u
                        i64.extend16_s
                        local.get 42
                        i64.const 1
                        i64.sub
                        i64.clz
                        i64.sub
                        i64.const 1292913986
                        i64.mul
                        i64.const 82746495104
                        i64.add
                        i64.const 32
                        i64.shr_u
                        i32.wrap_i64
                        local.tee 1
                        i32.extend16_s
                        local.set 12
                        block  ;; label = @11
                          local.get 5
                          i32.extend16_s
                          i32.const 0
                          i32.ge_s
                          if  ;; label = @12
                            local.get 3
                            i32.const 28
                            i32.add
                            local.get 5
                            i32.const 65535
                            i32.and
                            local.tee 0
                            call 47
                            drop
                            local.get 3
                            i32.const 192
                            i32.add
                            local.get 0
                            call 47
                            drop
                            local.get 3
                            i32.const 356
                            i32.add
                            local.get 0
                            call 47
                            drop
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.const 520
                          i32.add
                          i32.const 0
                          local.get 5
                          i32.sub
                          i32.extend16_s
                          call 47
                          drop
                        end
                        block  ;; label = @11
                          local.get 12
                          i32.const 0
                          i32.lt_s
                          if  ;; label = @12
                            local.get 3
                            i32.const 28
                            i32.add
                            i32.const 0
                            local.get 12
                            i32.sub
                            i32.const 65535
                            i32.and
                            local.tee 0
                            call 45
                            local.get 3
                            i32.const 192
                            i32.add
                            local.get 0
                            call 45
                            local.get 3
                            i32.const 356
                            i32.add
                            local.get 0
                            call 45
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.const 520
                          i32.add
                          local.get 1
                          i32.const 32767
                          i32.and
                          call 45
                        end
                        local.get 3
                        i32.load offset=188
                        local.set 0
                        local.get 3
                        i32.const 1180
                        i32.add
                        local.get 3
                        i32.const 28
                        i32.add
                        i32.const 160
                        call 66
                        drop
                        local.get 3
                        local.get 0
                        i32.store offset=1340
                        block  ;; label = @11
                          local.get 3
                          block (result i32)  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                local.get 3
                                i32.load offset=516
                                local.tee 1
                                local.get 0
                                local.get 1
                                i32.gt_u
                                select
                                local.tee 5
                                i32.const 40
                                i32.le_u
                                if  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.eqz
                                    if  ;; label = @17
                                      i32.const 0
                                      local.set 5
                                      br 1 (;@16;)
                                    end
                                    i32.const 0
                                    local.set 7
                                    i32.const 0
                                    local.set 9
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 5
                                        i32.const 1
                                        i32.ne
                                        if  ;; label = @19
                                          local.get 5
                                          i32.const 1
                                          i32.and
                                          local.get 5
                                          i32.const 62
                                          i32.and
                                          local.set 8
                                          local.get 3
                                          i32.const 356
                                          i32.add
                                          local.set 6
                                          local.get 3
                                          i32.const 1180
                                          i32.add
                                          local.set 2
                                          loop  ;; label = @20
                                            local.get 2
                                            local.get 9
                                            local.get 2
                                            i32.load
                                            local.tee 15
                                            local.get 6
                                            i32.load
                                            i32.add
                                            local.tee 10
                                            i32.add
                                            local.tee 9
                                            i32.store
                                            local.get 2
                                            i32.const 4
                                            i32.add
                                            local.tee 11
                                            local.get 11
                                            i32.load
                                            local.tee 17
                                            local.get 6
                                            i32.const 4
                                            i32.add
                                            i32.load
                                            i32.add
                                            local.tee 11
                                            local.get 10
                                            local.get 15
                                            i32.lt_u
                                            local.get 9
                                            local.get 10
                                            i32.lt_u
                                            i32.or
                                            i32.add
                                            local.tee 10
                                            i32.store
                                            local.get 11
                                            local.get 17
                                            i32.lt_u
                                            local.get 10
                                            local.get 11
                                            i32.lt_u
                                            i32.or
                                            local.set 9
                                            local.get 2
                                            i32.const 8
                                            i32.add
                                            local.set 2
                                            local.get 6
                                            i32.const 8
                                            i32.add
                                            local.set 6
                                            local.get 8
                                            local.get 7
                                            i32.const 2
                                            i32.add
                                            local.tee 7
                                            i32.ne
                                            br_if 0 (;@20;)
                                          end
                                          i32.eqz
                                          br_if 1 (;@18;)
                                        end
                                        local.get 7
                                        i32.const 2
                                        i32.shl
                                        local.tee 2
                                        local.get 3
                                        i32.const 1180
                                        i32.add
                                        i32.add
                                        local.tee 7
                                        local.get 7
                                        i32.load
                                        local.tee 7
                                        local.get 3
                                        i32.const 356
                                        i32.add
                                        local.get 2
                                        i32.add
                                        i32.load
                                        i32.add
                                        local.tee 2
                                        local.get 9
                                        i32.add
                                        local.tee 6
                                        i32.store
                                        local.get 2
                                        local.get 7
                                        i32.lt_u
                                        local.get 2
                                        local.get 6
                                        i32.gt_u
                                        i32.or
                                        br_if 1 (;@17;)
                                        br 2 (;@16;)
                                      end
                                      local.get 9
                                      i32.eqz
                                      br_if 1 (;@16;)
                                    end
                                    local.get 5
                                    i32.const 40
                                    i32.eq
                                    br_if 9 (;@7;)
                                    local.get 3
                                    i32.const 1180
                                    i32.add
                                    local.get 5
                                    i32.const 2
                                    i32.shl
                                    i32.add
                                    i32.const 1
                                    i32.store
                                    local.get 5
                                    i32.const 1
                                    i32.add
                                    local.set 5
                                  end
                                  local.get 3
                                  local.get 5
                                  i32.store offset=1340
                                  local.get 3
                                  i32.load offset=680
                                  local.tee 7
                                  local.get 5
                                  local.get 5
                                  local.get 7
                                  i32.lt_u
                                  select
                                  local.tee 2
                                  i32.const 41
                                  i32.ge_u
                                  br_if 12 (;@3;)
                                  local.get 2
                                  i32.const 2
                                  i32.shl
                                  local.set 2
                                  block  ;; label = @16
                                    loop  ;; label = @17
                                      local.get 2
                                      if  ;; label = @18
                                        i32.const -1
                                        local.get 2
                                        i32.const 4
                                        i32.sub
                                        local.tee 2
                                        local.get 3
                                        i32.const 1180
                                        i32.add
                                        i32.add
                                        i32.load
                                        local.tee 5
                                        local.get 2
                                        local.get 3
                                        i32.const 520
                                        i32.add
                                        i32.add
                                        i32.load
                                        local.tee 6
                                        i32.ne
                                        local.get 5
                                        local.get 6
                                        i32.gt_u
                                        select
                                        local.tee 6
                                        i32.eqz
                                        br_if 1 (;@17;)
                                        br 2 (;@16;)
                                      end
                                    end
                                    i32.const -1
                                    i32.const 0
                                    local.get 2
                                    local.get 3
                                    i32.const 1180
                                    i32.add
                                    local.tee 5
                                    i32.add
                                    local.get 5
                                    i32.ne
                                    select
                                    local.set 6
                                  end
                                  local.get 6
                                  local.get 14
                                  i32.ge_s
                                  if  ;; label = @16
                                    local.get 0
                                    i32.eqz
                                    if  ;; label = @17
                                      i32.const 0
                                      local.set 0
                                      br 4 (;@13;)
                                    end
                                    local.get 0
                                    i32.const 1
                                    i32.sub
                                    i32.const 1073741823
                                    i32.and
                                    local.tee 2
                                    i32.const 1
                                    i32.add
                                    local.tee 5
                                    i32.const 3
                                    i32.and
                                    local.set 6
                                    local.get 2
                                    i32.const 3
                                    i32.lt_u
                                    if  ;; label = @17
                                      local.get 3
                                      i32.const 28
                                      i32.add
                                      local.set 2
                                      i64.const 0
                                      local.set 31
                                      br 3 (;@14;)
                                    end
                                    local.get 5
                                    i32.const 2147483644
                                    i32.and
                                    local.set 9
                                    local.get 3
                                    i32.const 28
                                    i32.add
                                    local.set 2
                                    i64.const 0
                                    local.set 31
                                    loop  ;; label = @17
                                      local.get 2
                                      local.get 2
                                      i64.load32_u
                                      i64.const 10
                                      i64.mul
                                      local.get 31
                                      i64.add
                                      local.tee 32
                                      i64.store32
                                      local.get 2
                                      i32.const 4
                                      i32.add
                                      local.tee 5
                                      local.get 5
                                      i64.load32_u
                                      i64.const 10
                                      i64.mul
                                      local.get 32
                                      i64.const 32
                                      i64.shr_u
                                      i64.add
                                      local.tee 32
                                      i64.store32
                                      local.get 2
                                      i32.const 8
                                      i32.add
                                      local.tee 5
                                      local.get 5
                                      i64.load32_u
                                      i64.const 10
                                      i64.mul
                                      local.get 32
                                      i64.const 32
                                      i64.shr_u
                                      i64.add
                                      local.tee 32
                                      i64.store32
                                      local.get 2
                                      i32.const 12
                                      i32.add
                                      local.tee 5
                                      local.get 5
                                      i64.load32_u
                                      i64.const 10
                                      i64.mul
                                      local.get 32
                                      i64.const 32
                                      i64.shr_u
                                      i64.add
                                      local.tee 33
                                      i64.store32
                                      local.get 33
                                      i64.const 32
                                      i64.shr_u
                                      local.set 31
                                      local.get 2
                                      i32.const 16
                                      i32.add
                                      local.set 2
                                      local.get 9
                                      i32.const 4
                                      i32.sub
                                      local.tee 9
                                      br_if 0 (;@17;)
                                    end
                                    br 2 (;@14;)
                                  end
                                  local.get 12
                                  i32.const 1
                                  i32.add
                                  local.set 12
                                  br 4 (;@11;)
                                end
                                br 13 (;@1;)
                              end
                              local.get 6
                              if  ;; label = @14
                                loop  ;; label = @15
                                  local.get 2
                                  local.get 2
                                  i64.load32_u
                                  i64.const 10
                                  i64.mul
                                  local.get 31
                                  i64.add
                                  local.tee 33
                                  i64.store32
                                  local.get 2
                                  i32.const 4
                                  i32.add
                                  local.set 2
                                  local.get 33
                                  i64.const 32
                                  i64.shr_u
                                  local.set 31
                                  local.get 6
                                  i32.const 1
                                  i32.sub
                                  local.tee 6
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 33
                              i64.const 4294967296
                              i64.lt_u
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 40
                              i32.eq
                              br_if 6 (;@7;)
                              local.get 3
                              i32.const 28
                              i32.add
                              local.get 0
                              i32.const 2
                              i32.shl
                              i32.add
                              local.get 31
                              i64.store32
                              local.get 0
                              i32.const 1
                              i32.add
                              local.set 0
                            end
                            local.get 3
                            local.get 0
                            i32.store offset=188
                            local.get 3
                            i32.load offset=352
                            local.tee 5
                            i32.const 41
                            i32.ge_u
                            br_if 11 (;@1;)
                            i32.const 0
                            local.set 0
                            i32.const 0
                            local.get 5
                            i32.eqz
                            br_if 0 (;@12;)
                            drop
                            local.get 5
                            i32.const 1
                            i32.sub
                            i32.const 1073741823
                            i32.and
                            local.tee 2
                            i32.const 1
                            i32.add
                            local.tee 10
                            i32.const 3
                            i32.and
                            local.set 6
                            block  ;; label = @13
                              local.get 2
                              i32.const 3
                              i32.lt_u
                              if  ;; label = @14
                                local.get 3
                                i32.const 192
                                i32.add
                                local.set 2
                                i64.const 0
                                local.set 33
                                br 1 (;@13;)
                              end
                              local.get 10
                              i32.const 2147483644
                              i32.and
                              local.set 9
                              local.get 3
                              i32.const 192
                              i32.add
                              local.set 2
                              i64.const 0
                              local.set 33
                              loop  ;; label = @14
                                local.get 2
                                local.get 2
                                i64.load32_u
                                i64.const 10
                                i64.mul
                                local.get 33
                                i64.add
                                local.tee 32
                                i64.store32
                                local.get 2
                                i32.const 4
                                i32.add
                                local.tee 10
                                local.get 10
                                i64.load32_u
                                i64.const 10
                                i64.mul
                                local.get 32
                                i64.const 32
                                i64.shr_u
                                i64.add
                                local.tee 32
                                i64.store32
                                local.get 2
                                i32.const 8
                                i32.add
                                local.tee 10
                                local.get 10
                                i64.load32_u
                                i64.const 10
                                i64.mul
                                local.get 32
                                i64.const 32
                                i64.shr_u
                                i64.add
                                local.tee 32
                                i64.store32
                                local.get 2
                                i32.const 12
                                i32.add
                                local.tee 10
                                local.get 10
                                i64.load32_u
                                i64.const 10
                                i64.mul
                                local.get 32
                                i64.const 32
                                i64.shr_u
                                i64.add
                                local.tee 31
                                i64.store32
                                local.get 31
                                i64.const 32
                                i64.shr_u
                                local.set 33
                                local.get 2
                                i32.const 16
                                i32.add
                                local.set 2
                                local.get 9
                                i32.const 4
                                i32.sub
                                local.tee 9
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 6
                            if  ;; label = @13
                              loop  ;; label = @14
                                local.get 2
                                local.get 2
                                i64.load32_u
                                i64.const 10
                                i64.mul
                                local.get 33
                                i64.add
                                local.tee 31
                                i64.store32
                                local.get 2
                                i32.const 4
                                i32.add
                                local.set 2
                                local.get 31
                                i64.const 32
                                i64.shr_u
                                local.set 33
                                local.get 6
                                i32.const 1
                                i32.sub
                                local.tee 6
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 5
                            local.get 31
                            i64.const 4294967296
                            i64.lt_u
                            br_if 0 (;@12;)
                            drop
                            local.get 5
                            i32.const 40
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 3
                            i32.const 192
                            i32.add
                            local.get 5
                            i32.const 2
                            i32.shl
                            i32.add
                            local.get 33
                            i64.store32
                            local.get 5
                            i32.const 1
                            i32.add
                          end
                          i32.store offset=352
                          local.get 3
                          local.get 1
                          if (result i32)  ;; label = @12
                            local.get 1
                            i32.const 1
                            i32.sub
                            i32.const 1073741823
                            i32.and
                            local.tee 0
                            i32.const 1
                            i32.add
                            local.tee 2
                            i32.const 3
                            i32.and
                            local.set 6
                            block  ;; label = @13
                              local.get 0
                              i32.const 3
                              i32.lt_u
                              if  ;; label = @14
                                local.get 3
                                i32.const 356
                                i32.add
                                local.set 2
                                i64.const 0
                                local.set 31
                                br 1 (;@13;)
                              end
                              local.get 2
                              i32.const 2147483644
                              i32.and
                              local.set 9
                              local.get 3
                              i32.const 356
                              i32.add
                              local.set 2
                              i64.const 0
                              local.set 31
                              loop  ;; label = @14
                                local.get 2
                                local.get 2
                                i64.load32_u
                                i64.const 10
                                i64.mul
                                local.get 31
                                i64.add
                                local.tee 32
                                i64.store32
                                local.get 2
                                i32.const 4
                                i32.add
                                local.tee 0
                                local.get 0
                                i64.load32_u
                                i64.const 10
                                i64.mul
                                local.get 32
                                i64.const 32
                                i64.shr_u
                                i64.add
                                local.tee 32
                                i64.store32
                                local.get 2
                                i32.const 8
                                i32.add
                                local.tee 0
                                local.get 0
                                i64.load32_u
                                i64.const 10
                                i64.mul
                                local.get 32
                                i64.const 32
                                i64.shr_u
                                i64.add
                                local.tee 32
                                i64.store32
                                local.get 2
                                i32.const 12
                                i32.add
                                local.tee 0
                                local.get 0
                                i64.load32_u
                                i64.const 10
                                i64.mul
                                local.get 32
                                i64.const 32
                                i64.shr_u
                                i64.add
                                local.tee 33
                                i64.store32
                                local.get 33
                                i64.const 32
                                i64.shr_u
                                local.set 31
                                local.get 2
                                i32.const 16
                                i32.add
                                local.set 2
                                local.get 9
                                i32.const 4
                                i32.sub
                                local.tee 9
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 6
                            if  ;; label = @13
                              loop  ;; label = @14
                                local.get 2
                                local.get 2
                                i64.load32_u
                                i64.const 10
                                i64.mul
                                local.get 31
                                i64.add
                                local.tee 33
                                i64.store32
                                local.get 2
                                i32.const 4
                                i32.add
                                local.set 2
                                local.get 33
                                i64.const 32
                                i64.shr_u
                                local.set 31
                                local.get 6
                                i32.const 1
                                i32.sub
                                local.tee 6
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 33
                            i64.const 4294967296
                            i64.lt_u
                            if  ;; label = @13
                              local.get 3
                              local.get 1
                              i32.store offset=516
                              br 2 (;@11;)
                            end
                            local.get 1
                            i32.const 40
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 3
                            i32.const 356
                            i32.add
                            local.get 1
                            i32.const 2
                            i32.shl
                            i32.add
                            local.get 31
                            i64.store32
                            local.get 1
                            i32.const 1
                            i32.add
                          else
                            local.get 0
                          end
                          i32.store offset=516
                        end
                        local.get 3
                        i32.const 684
                        i32.add
                        local.tee 1
                        local.get 3
                        i32.const 520
                        i32.add
                        local.tee 0
                        i32.const 160
                        call 66
                        drop
                        local.get 3
                        local.get 7
                        i32.store offset=844
                        local.get 1
                        i32.const 1
                        call 47
                        local.set 24
                        local.get 3
                        i32.load offset=680
                        local.set 1
                        local.get 3
                        i32.const 848
                        i32.add
                        local.tee 2
                        local.get 0
                        i32.const 160
                        call 66
                        drop
                        local.get 3
                        local.get 1
                        i32.store offset=1008
                        local.get 2
                        i32.const 2
                        call 47
                        local.set 23
                        local.get 3
                        i32.load offset=680
                        local.set 1
                        local.get 3
                        i32.const 1016
                        i32.add
                        local.tee 2
                        local.get 0
                        i32.const 160
                        call 66
                        drop
                        local.get 3
                        local.get 1
                        i32.store offset=1176
                        local.get 2
                        i32.const 3
                        call 47
                        local.set 25
                        block  ;; label = @11
                          local.get 3
                          i32.load offset=188
                          local.tee 7
                          local.get 3
                          i32.load offset=1176
                          local.tee 17
                          local.get 7
                          local.get 17
                          i32.gt_u
                          select
                          local.tee 5
                          i32.const 40
                          i32.le_u
                          if  ;; label = @12
                            local.get 3
                            i32.load offset=680
                            local.set 15
                            local.get 3
                            i32.load offset=844
                            local.set 26
                            local.get 3
                            i32.load offset=1008
                            local.set 27
                            i32.const 0
                            local.set 0
                            loop  ;; label = @13
                              local.get 0
                              local.set 10
                              local.get 5
                              i32.const 2
                              i32.shl
                              local.set 2
                              block  ;; label = @14
                                loop  ;; label = @15
                                  local.get 2
                                  if  ;; label = @16
                                    i32.const -1
                                    local.get 2
                                    i32.const 4
                                    i32.sub
                                    local.tee 2
                                    local.get 3
                                    i32.const 1016
                                    i32.add
                                    i32.add
                                    i32.load
                                    local.tee 0
                                    local.get 2
                                    local.get 3
                                    i32.const 28
                                    i32.add
                                    i32.add
                                    i32.load
                                    local.tee 1
                                    i32.ne
                                    local.get 0
                                    local.get 1
                                    i32.gt_u
                                    select
                                    local.tee 6
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    br 2 (;@14;)
                                  end
                                end
                                i32.const -1
                                i32.const 0
                                local.get 3
                                i32.const 1016
                                i32.add
                                local.get 2
                                i32.add
                                local.get 25
                                i32.ne
                                select
                                local.set 6
                              end
                              i32.const 0
                              local.set 4
                              local.get 3
                              block (result i32)  ;; label = @14
                                local.get 6
                                i32.const 1
                                i32.le_u
                                if  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    i32.const 1
                                    local.set 9
                                    i32.const 0
                                    local.set 7
                                    block  ;; label = @17
                                      local.get 5
                                      i32.const 1
                                      i32.ne
                                      if  ;; label = @18
                                        local.get 5
                                        i32.const 1
                                        i32.and
                                        local.get 5
                                        i32.const 62
                                        i32.and
                                        local.set 4
                                        local.get 3
                                        i32.const 1016
                                        i32.add
                                        local.set 6
                                        local.get 3
                                        i32.const 28
                                        i32.add
                                        local.set 2
                                        loop  ;; label = @19
                                          local.get 2
                                          local.get 9
                                          local.get 2
                                          i32.load
                                          local.tee 8
                                          local.get 6
                                          i32.load
                                          i32.const -1
                                          i32.xor
                                          i32.add
                                          local.tee 0
                                          i32.add
                                          local.tee 9
                                          i32.store
                                          local.get 2
                                          i32.const 4
                                          i32.add
                                          local.tee 1
                                          local.get 1
                                          i32.load
                                          local.tee 16
                                          local.get 6
                                          i32.const 4
                                          i32.add
                                          i32.load
                                          i32.const -1
                                          i32.xor
                                          i32.add
                                          local.tee 1
                                          local.get 0
                                          local.get 8
                                          i32.lt_u
                                          local.get 0
                                          local.get 9
                                          i32.gt_u
                                          i32.or
                                          i32.add
                                          local.tee 0
                                          i32.store
                                          local.get 1
                                          local.get 16
                                          i32.lt_u
                                          local.get 0
                                          local.get 1
                                          i32.lt_u
                                          i32.or
                                          local.set 9
                                          local.get 2
                                          i32.const 8
                                          i32.add
                                          local.set 2
                                          local.get 6
                                          i32.const 8
                                          i32.add
                                          local.set 6
                                          local.get 4
                                          local.get 7
                                          i32.const 2
                                          i32.add
                                          local.tee 7
                                          i32.ne
                                          br_if 0 (;@19;)
                                        end
                                        i32.eqz
                                        br_if 1 (;@17;)
                                      end
                                      local.get 7
                                      i32.const 2
                                      i32.shl
                                      local.tee 0
                                      local.get 3
                                      i32.const 28
                                      i32.add
                                      i32.add
                                      local.tee 1
                                      local.get 1
                                      i32.load
                                      local.tee 1
                                      local.get 0
                                      local.get 25
                                      i32.add
                                      i32.load
                                      i32.const -1
                                      i32.xor
                                      i32.add
                                      local.tee 0
                                      local.get 9
                                      i32.add
                                      local.tee 2
                                      i32.store
                                      local.get 0
                                      local.get 1
                                      i32.lt_u
                                      local.get 0
                                      local.get 2
                                      i32.gt_u
                                      i32.or
                                      br_if 1 (;@16;)
                                      br 11 (;@6;)
                                    end
                                    local.get 9
                                    i32.eqz
                                    br_if 10 (;@6;)
                                  end
                                  local.get 3
                                  local.get 5
                                  i32.store offset=188
                                  i32.const 8
                                  local.set 4
                                  local.get 5
                                  local.set 7
                                end
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 7
                                        local.get 27
                                        local.get 7
                                        local.get 27
                                        i32.gt_u
                                        select
                                        local.tee 1
                                        i32.const 41
                                        i32.lt_u
                                        if  ;; label = @19
                                          local.get 1
                                          i32.const 2
                                          i32.shl
                                          local.set 2
                                          block  ;; label = @20
                                            loop  ;; label = @21
                                              local.get 2
                                              if  ;; label = @22
                                                i32.const -1
                                                local.get 2
                                                i32.const 4
                                                i32.sub
                                                local.tee 2
                                                local.get 3
                                                i32.const 848
                                                i32.add
                                                i32.add
                                                i32.load
                                                local.tee 0
                                                local.get 2
                                                local.get 3
                                                i32.const 28
                                                i32.add
                                                i32.add
                                                i32.load
                                                local.tee 5
                                                i32.ne
                                                local.get 0
                                                local.get 5
                                                i32.gt_u
                                                select
                                                local.tee 6
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                br 2 (;@20;)
                                              end
                                            end
                                            i32.const -1
                                            i32.const 0
                                            local.get 3
                                            i32.const 848
                                            i32.add
                                            local.get 2
                                            i32.add
                                            local.get 23
                                            i32.ne
                                            select
                                            local.set 6
                                          end
                                          block  ;; label = @20
                                            local.get 6
                                            i32.const 1
                                            i32.gt_u
                                            if  ;; label = @21
                                              local.get 7
                                              local.set 1
                                              br 1 (;@20;)
                                            end
                                            block  ;; label = @21
                                              local.get 1
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              i32.const 1
                                              local.set 9
                                              i32.const 0
                                              local.set 7
                                              block  ;; label = @22
                                                local.get 1
                                                i32.const 1
                                                i32.ne
                                                if  ;; label = @23
                                                  local.get 1
                                                  i32.const 1
                                                  i32.and
                                                  local.get 1
                                                  i32.const 62
                                                  i32.and
                                                  local.set 8
                                                  local.get 3
                                                  i32.const 848
                                                  i32.add
                                                  local.set 6
                                                  local.get 3
                                                  i32.const 28
                                                  i32.add
                                                  local.set 2
                                                  loop  ;; label = @24
                                                    local.get 2
                                                    local.get 9
                                                    local.get 2
                                                    i32.load
                                                    local.tee 16
                                                    local.get 6
                                                    i32.load
                                                    i32.const -1
                                                    i32.xor
                                                    i32.add
                                                    local.tee 0
                                                    i32.add
                                                    local.tee 9
                                                    i32.store
                                                    local.get 2
                                                    i32.const 4
                                                    i32.add
                                                    local.tee 5
                                                    local.get 5
                                                    i32.load
                                                    local.tee 19
                                                    local.get 6
                                                    i32.const 4
                                                    i32.add
                                                    i32.load
                                                    i32.const -1
                                                    i32.xor
                                                    i32.add
                                                    local.tee 5
                                                    local.get 0
                                                    local.get 16
                                                    i32.lt_u
                                                    local.get 0
                                                    local.get 9
                                                    i32.gt_u
                                                    i32.or
                                                    i32.add
                                                    local.tee 0
                                                    i32.store
                                                    local.get 5
                                                    local.get 19
                                                    i32.lt_u
                                                    local.get 0
                                                    local.get 5
                                                    i32.lt_u
                                                    i32.or
                                                    local.set 9
                                                    local.get 2
                                                    i32.const 8
                                                    i32.add
                                                    local.set 2
                                                    local.get 6
                                                    i32.const 8
                                                    i32.add
                                                    local.set 6
                                                    local.get 8
                                                    local.get 7
                                                    i32.const 2
                                                    i32.add
                                                    local.tee 7
                                                    i32.ne
                                                    br_if 0 (;@24;)
                                                  end
                                                  i32.eqz
                                                  br_if 1 (;@22;)
                                                end
                                                local.get 7
                                                i32.const 2
                                                i32.shl
                                                local.tee 0
                                                local.get 3
                                                i32.const 28
                                                i32.add
                                                i32.add
                                                local.tee 2
                                                local.get 2
                                                i32.load
                                                local.tee 2
                                                local.get 0
                                                local.get 23
                                                i32.add
                                                i32.load
                                                i32.const -1
                                                i32.xor
                                                i32.add
                                                local.tee 0
                                                local.get 9
                                                i32.add
                                                local.tee 5
                                                i32.store
                                                local.get 0
                                                local.get 2
                                                i32.lt_u
                                                local.get 0
                                                local.get 5
                                                i32.gt_u
                                                i32.or
                                                br_if 1 (;@21;)
                                                br 16 (;@6;)
                                              end
                                              local.get 9
                                              i32.eqz
                                              br_if 15 (;@6;)
                                            end
                                            local.get 3
                                            local.get 1
                                            i32.store offset=188
                                            local.get 4
                                            i32.const 4
                                            i32.or
                                            local.set 4
                                          end
                                          local.get 1
                                          local.get 26
                                          local.get 1
                                          local.get 26
                                          i32.gt_u
                                          select
                                          local.tee 0
                                          i32.const 41
                                          i32.ge_u
                                          br_if 15 (;@4;)
                                          local.get 0
                                          i32.const 2
                                          i32.shl
                                          local.set 2
                                          block  ;; label = @20
                                            loop  ;; label = @21
                                              local.get 2
                                              if  ;; label = @22
                                                i32.const -1
                                                local.get 2
                                                i32.const 4
                                                i32.sub
                                                local.tee 2
                                                local.get 3
                                                i32.const 684
                                                i32.add
                                                i32.add
                                                i32.load
                                                local.tee 5
                                                local.get 2
                                                local.get 3
                                                i32.const 28
                                                i32.add
                                                i32.add
                                                i32.load
                                                local.tee 7
                                                i32.ne
                                                local.get 5
                                                local.get 7
                                                i32.gt_u
                                                select
                                                local.tee 6
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                br 2 (;@20;)
                                              end
                                            end
                                            i32.const -1
                                            i32.const 0
                                            local.get 3
                                            i32.const 684
                                            i32.add
                                            local.get 2
                                            i32.add
                                            local.get 24
                                            i32.ne
                                            select
                                            local.set 6
                                          end
                                          block  ;; label = @20
                                            local.get 6
                                            i32.const 1
                                            i32.gt_u
                                            if  ;; label = @21
                                              local.get 1
                                              local.set 0
                                              br 1 (;@20;)
                                            end
                                            block  ;; label = @21
                                              local.get 0
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              i32.const 1
                                              local.set 9
                                              i32.const 0
                                              local.set 7
                                              block  ;; label = @22
                                                local.get 0
                                                i32.const 1
                                                i32.ne
                                                if  ;; label = @23
                                                  local.get 0
                                                  i32.const 1
                                                  i32.and
                                                  local.get 0
                                                  i32.const 62
                                                  i32.and
                                                  local.set 8
                                                  local.get 3
                                                  i32.const 684
                                                  i32.add
                                                  local.set 6
                                                  local.get 3
                                                  i32.const 28
                                                  i32.add
                                                  local.set 2
                                                  loop  ;; label = @24
                                                    local.get 2
                                                    local.get 9
                                                    local.get 2
                                                    i32.load
                                                    local.tee 16
                                                    local.get 6
                                                    i32.load
                                                    i32.const -1
                                                    i32.xor
                                                    i32.add
                                                    local.tee 1
                                                    i32.add
                                                    local.tee 9
                                                    i32.store
                                                    local.get 2
                                                    i32.const 4
                                                    i32.add
                                                    local.tee 5
                                                    local.get 5
                                                    i32.load
                                                    local.tee 19
                                                    local.get 6
                                                    i32.const 4
                                                    i32.add
                                                    i32.load
                                                    i32.const -1
                                                    i32.xor
                                                    i32.add
                                                    local.tee 5
                                                    local.get 1
                                                    local.get 16
                                                    i32.lt_u
                                                    local.get 1
                                                    local.get 9
                                                    i32.gt_u
                                                    i32.or
                                                    i32.add
                                                    local.tee 1
                                                    i32.store
                                                    local.get 5
                                                    local.get 19
                                                    i32.lt_u
                                                    local.get 1
                                                    local.get 5
                                                    i32.lt_u
                                                    i32.or
                                                    local.set 9
                                                    local.get 2
                                                    i32.const 8
                                                    i32.add
                                                    local.set 2
                                                    local.get 6
                                                    i32.const 8
                                                    i32.add
                                                    local.set 6
                                                    local.get 8
                                                    local.get 7
                                                    i32.const 2
                                                    i32.add
                                                    local.tee 7
                                                    i32.ne
                                                    br_if 0 (;@24;)
                                                  end
                                                  i32.eqz
                                                  br_if 1 (;@22;)
                                                end
                                                local.get 7
                                                i32.const 2
                                                i32.shl
                                                local.tee 1
                                                local.get 3
                                                i32.const 28
                                                i32.add
                                                i32.add
                                                local.tee 2
                                                local.get 2
                                                i32.load
                                                local.tee 2
                                                local.get 1
                                                local.get 24
                                                i32.add
                                                i32.load
                                                i32.const -1
                                                i32.xor
                                                i32.add
                                                local.tee 1
                                                local.get 9
                                                i32.add
                                                local.tee 5
                                                i32.store
                                                local.get 1
                                                local.get 2
                                                i32.lt_u
                                                local.get 1
                                                local.get 5
                                                i32.gt_u
                                                i32.or
                                                br_if 1 (;@21;)
                                                br 16 (;@6;)
                                              end
                                              local.get 9
                                              i32.eqz
                                              br_if 15 (;@6;)
                                            end
                                            local.get 3
                                            local.get 0
                                            i32.store offset=188
                                            local.get 4
                                            i32.const 2
                                            i32.add
                                            local.set 4
                                          end
                                          local.get 0
                                          local.get 15
                                          local.get 0
                                          local.get 15
                                          i32.gt_u
                                          select
                                          local.tee 5
                                          i32.const 41
                                          i32.ge_u
                                          br_if 18 (;@1;)
                                          local.get 5
                                          i32.const 2
                                          i32.shl
                                          local.set 2
                                          block  ;; label = @20
                                            loop  ;; label = @21
                                              local.get 2
                                              if  ;; label = @22
                                                i32.const -1
                                                local.get 2
                                                i32.const 4
                                                i32.sub
                                                local.tee 2
                                                local.get 3
                                                i32.const 520
                                                i32.add
                                                i32.add
                                                i32.load
                                                local.tee 1
                                                local.get 2
                                                local.get 3
                                                i32.const 28
                                                i32.add
                                                i32.add
                                                i32.load
                                                local.tee 7
                                                i32.ne
                                                local.get 1
                                                local.get 7
                                                i32.gt_u
                                                select
                                                local.tee 6
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                br 2 (;@20;)
                                              end
                                            end
                                            i32.const -1
                                            i32.const 0
                                            local.get 2
                                            local.get 3
                                            i32.const 520
                                            i32.add
                                            local.tee 1
                                            i32.add
                                            local.get 1
                                            i32.ne
                                            select
                                            local.set 6
                                          end
                                          block  ;; label = @20
                                            local.get 6
                                            i32.const 1
                                            i32.gt_u
                                            if  ;; label = @21
                                              local.get 0
                                              local.set 5
                                              br 1 (;@20;)
                                            end
                                            block  ;; label = @21
                                              local.get 5
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              i32.const 1
                                              local.set 9
                                              i32.const 0
                                              local.set 7
                                              block  ;; label = @22
                                                local.get 5
                                                i32.const 1
                                                i32.ne
                                                if  ;; label = @23
                                                  local.get 5
                                                  i32.const 1
                                                  i32.and
                                                  local.get 5
                                                  i32.const 62
                                                  i32.and
                                                  local.set 8
                                                  local.get 3
                                                  i32.const 520
                                                  i32.add
                                                  local.set 6
                                                  local.get 3
                                                  i32.const 28
                                                  i32.add
                                                  local.set 2
                                                  loop  ;; label = @24
                                                    local.get 2
                                                    local.get 9
                                                    local.get 2
                                                    i32.load
                                                    local.tee 16
                                                    local.get 6
                                                    i32.load
                                                    i32.const -1
                                                    i32.xor
                                                    i32.add
                                                    local.tee 0
                                                    i32.add
                                                    local.tee 9
                                                    i32.store
                                                    local.get 2
                                                    i32.const 4
                                                    i32.add
                                                    local.tee 1
                                                    local.get 1
                                                    i32.load
                                                    local.tee 19
                                                    local.get 6
                                                    i32.const 4
                                                    i32.add
                                                    i32.load
                                                    i32.const -1
                                                    i32.xor
                                                    i32.add
                                                    local.tee 1
                                                    local.get 0
                                                    local.get 16
                                                    i32.lt_u
                                                    local.get 0
                                                    local.get 9
                                                    i32.gt_u
                                                    i32.or
                                                    i32.add
                                                    local.tee 0
                                                    i32.store
                                                    local.get 1
                                                    local.get 19
                                                    i32.lt_u
                                                    local.get 0
                                                    local.get 1
                                                    i32.lt_u
                                                    i32.or
                                                    local.set 9
                                                    local.get 2
                                                    i32.const 8
                                                    i32.add
                                                    local.set 2
                                                    local.get 6
                                                    i32.const 8
                                                    i32.add
                                                    local.set 6
                                                    local.get 8
                                                    local.get 7
                                                    i32.const 2
                                                    i32.add
                                                    local.tee 7
                                                    i32.ne
                                                    br_if 0 (;@24;)
                                                  end
                                                  i32.eqz
                                                  br_if 1 (;@22;)
                                                end
                                                local.get 7
                                                i32.const 2
                                                i32.shl
                                                local.tee 0
                                                local.get 3
                                                i32.const 28
                                                i32.add
                                                i32.add
                                                local.tee 1
                                                local.get 1
                                                i32.load
                                                local.tee 1
                                                local.get 3
                                                i32.const 520
                                                i32.add
                                                local.get 0
                                                i32.add
                                                i32.load
                                                i32.const -1
                                                i32.xor
                                                i32.add
                                                local.tee 0
                                                local.get 9
                                                i32.add
                                                local.tee 2
                                                i32.store
                                                local.get 0
                                                local.get 1
                                                i32.lt_u
                                                local.get 0
                                                local.get 2
                                                i32.gt_u
                                                i32.or
                                                br_if 1 (;@21;)
                                                br 16 (;@6;)
                                              end
                                              local.get 9
                                              i32.eqz
                                              br_if 15 (;@6;)
                                            end
                                            local.get 3
                                            local.get 5
                                            i32.store offset=188
                                            local.get 4
                                            i32.const 1
                                            i32.add
                                            local.set 4
                                          end
                                          local.get 10
                                          i32.const 17
                                          i32.eq
                                          br_if 1 (;@18;)
                                          local.get 3
                                          i32.const 11
                                          i32.add
                                          local.get 10
                                          i32.add
                                          local.get 4
                                          i32.const 48
                                          i32.add
                                          i32.store8
                                          local.get 5
                                          local.get 3
                                          i32.load offset=352
                                          local.tee 11
                                          local.get 5
                                          local.get 11
                                          i32.gt_u
                                          select
                                          local.tee 2
                                          i32.const 41
                                          i32.ge_u
                                          br_if 16 (;@3;)
                                          local.get 10
                                          i32.const 1
                                          i32.add
                                          local.set 0
                                          local.get 2
                                          i32.const 2
                                          i32.shl
                                          local.set 2
                                          block  ;; label = @20
                                            loop  ;; label = @21
                                              local.get 2
                                              if  ;; label = @22
                                                i32.const -1
                                                local.get 2
                                                i32.const 4
                                                i32.sub
                                                local.tee 2
                                                local.get 3
                                                i32.const 192
                                                i32.add
                                                i32.add
                                                i32.load
                                                local.tee 1
                                                local.get 2
                                                local.get 3
                                                i32.const 28
                                                i32.add
                                                i32.add
                                                i32.load
                                                local.tee 7
                                                i32.ne
                                                local.get 1
                                                local.get 7
                                                i32.gt_u
                                                select
                                                local.tee 1
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                br 2 (;@20;)
                                              end
                                            end
                                            i32.const -1
                                            i32.const 0
                                            local.get 2
                                            local.get 3
                                            i32.const 192
                                            i32.add
                                            local.tee 1
                                            i32.add
                                            local.get 1
                                            i32.ne
                                            select
                                            local.set 1
                                          end
                                          local.get 3
                                          i32.const 1180
                                          i32.add
                                          local.get 3
                                          i32.const 28
                                          i32.add
                                          i32.const 160
                                          call 66
                                          drop
                                          local.get 3
                                          local.get 5
                                          i32.store offset=1340
                                          local.get 5
                                          local.get 3
                                          i32.load offset=516
                                          local.tee 8
                                          local.get 5
                                          local.get 8
                                          i32.gt_u
                                          select
                                          local.tee 4
                                          i32.const 40
                                          i32.gt_u
                                          br_if 2 (;@17;)
                                          block  ;; label = @20
                                            local.get 4
                                            i32.eqz
                                            if  ;; label = @21
                                              i32.const 0
                                              local.set 4
                                              br 1 (;@20;)
                                            end
                                            i32.const 0
                                            local.set 7
                                            i32.const 0
                                            local.set 9
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 4
                                                i32.const 1
                                                i32.ne
                                                if  ;; label = @23
                                                  local.get 4
                                                  i32.const 1
                                                  i32.and
                                                  local.get 4
                                                  i32.const 62
                                                  i32.and
                                                  local.set 30
                                                  local.get 3
                                                  i32.const 356
                                                  i32.add
                                                  local.set 6
                                                  local.get 3
                                                  i32.const 1180
                                                  i32.add
                                                  local.set 2
                                                  loop  ;; label = @24
                                                    local.get 2
                                                    local.get 9
                                                    local.get 2
                                                    i32.load
                                                    local.tee 20
                                                    local.get 6
                                                    i32.load
                                                    i32.add
                                                    local.tee 16
                                                    i32.add
                                                    local.tee 21
                                                    i32.store
                                                    local.get 2
                                                    i32.const 4
                                                    i32.add
                                                    local.tee 9
                                                    local.get 9
                                                    i32.load
                                                    local.tee 22
                                                    local.get 6
                                                    i32.const 4
                                                    i32.add
                                                    i32.load
                                                    i32.add
                                                    local.tee 9
                                                    local.get 16
                                                    local.get 20
                                                    i32.lt_u
                                                    local.get 16
                                                    local.get 21
                                                    i32.gt_u
                                                    i32.or
                                                    i32.add
                                                    local.tee 16
                                                    i32.store
                                                    local.get 9
                                                    local.get 22
                                                    i32.lt_u
                                                    local.get 9
                                                    local.get 16
                                                    i32.gt_u
                                                    i32.or
                                                    local.set 9
                                                    local.get 2
                                                    i32.const 8
                                                    i32.add
                                                    local.set 2
                                                    local.get 6
                                                    i32.const 8
                                                    i32.add
                                                    local.set 6
                                                    local.get 30
                                                    local.get 7
                                                    i32.const 2
                                                    i32.add
                                                    local.tee 7
                                                    i32.ne
                                                    br_if 0 (;@24;)
                                                  end
                                                  i32.eqz
                                                  br_if 1 (;@22;)
                                                end
                                                local.get 7
                                                i32.const 2
                                                i32.shl
                                                local.tee 2
                                                local.get 3
                                                i32.const 1180
                                                i32.add
                                                i32.add
                                                local.tee 7
                                                local.get 7
                                                i32.load
                                                local.tee 7
                                                local.get 3
                                                i32.const 356
                                                i32.add
                                                local.get 2
                                                i32.add
                                                i32.load
                                                i32.add
                                                local.tee 2
                                                local.get 9
                                                i32.add
                                                local.tee 6
                                                i32.store
                                                local.get 2
                                                local.get 7
                                                i32.lt_u
                                                local.get 2
                                                local.get 6
                                                i32.gt_u
                                                i32.or
                                                br_if 1 (;@21;)
                                                br 2 (;@20;)
                                              end
                                              local.get 9
                                              i32.eqz
                                              br_if 1 (;@20;)
                                            end
                                            local.get 4
                                            i32.const 40
                                            i32.eq
                                            br_if 13 (;@7;)
                                            local.get 3
                                            i32.const 1180
                                            i32.add
                                            local.get 4
                                            i32.const 2
                                            i32.shl
                                            i32.add
                                            i32.const 1
                                            i32.store
                                            local.get 4
                                            i32.const 1
                                            i32.add
                                            local.set 4
                                          end
                                          local.get 3
                                          local.get 4
                                          i32.store offset=1340
                                          local.get 15
                                          local.get 4
                                          local.get 4
                                          local.get 15
                                          i32.lt_u
                                          select
                                          local.tee 2
                                          i32.const 41
                                          i32.ge_u
                                          br_if 16 (;@3;)
                                          local.get 2
                                          i32.const 2
                                          i32.shl
                                          local.set 2
                                          block  ;; label = @20
                                            loop  ;; label = @21
                                              local.get 2
                                              if  ;; label = @22
                                                i32.const -1
                                                local.get 2
                                                i32.const 4
                                                i32.sub
                                                local.tee 2
                                                local.get 3
                                                i32.const 1180
                                                i32.add
                                                i32.add
                                                i32.load
                                                local.tee 7
                                                local.get 2
                                                local.get 3
                                                i32.const 520
                                                i32.add
                                                i32.add
                                                i32.load
                                                local.tee 6
                                                i32.ne
                                                local.get 6
                                                local.get 7
                                                i32.lt_u
                                                select
                                                local.tee 6
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                br 2 (;@20;)
                                              end
                                            end
                                            i32.const -1
                                            i32.const 0
                                            local.get 2
                                            local.get 3
                                            i32.const 1180
                                            i32.add
                                            local.tee 7
                                            i32.add
                                            local.get 7
                                            i32.ne
                                            select
                                            local.set 6
                                          end
                                          block  ;; label = @20
                                            local.get 1
                                            local.get 14
                                            i32.lt_s
                                            local.tee 1
                                            i32.eqz
                                            local.get 6
                                            local.get 14
                                            i32.ge_s
                                            i32.and
                                            i32.eqz
                                            if  ;; label = @21
                                              local.get 6
                                              local.get 14
                                              i32.lt_s
                                              br_if 1 (;@20;)
                                              br 10 (;@11;)
                                            end
                                            i32.const 0
                                            local.set 1
                                            i32.const 0
                                            local.get 5
                                            i32.eqz
                                            br_if 6 (;@14;)
                                            drop
                                            local.get 5
                                            i32.const 1
                                            i32.sub
                                            i32.const 1073741823
                                            i32.and
                                            local.tee 2
                                            i32.const 1
                                            i32.add
                                            local.tee 7
                                            i32.const 3
                                            i32.and
                                            local.set 6
                                            local.get 2
                                            i32.const 3
                                            i32.lt_u
                                            if  ;; label = @21
                                              local.get 3
                                              i32.const 28
                                              i32.add
                                              local.set 2
                                              i64.const 0
                                              local.set 31
                                              br 6 (;@15;)
                                            end
                                            local.get 7
                                            i32.const 2147483644
                                            i32.and
                                            local.set 9
                                            local.get 3
                                            i32.const 28
                                            i32.add
                                            local.set 2
                                            i64.const 0
                                            local.set 31
                                            loop  ;; label = @21
                                              local.get 2
                                              local.get 2
                                              i64.load32_u
                                              i64.const 10
                                              i64.mul
                                              local.get 31
                                              i64.add
                                              local.tee 32
                                              i64.store32
                                              local.get 2
                                              i32.const 4
                                              i32.add
                                              local.tee 7
                                              local.get 7
                                              i64.load32_u
                                              i64.const 10
                                              i64.mul
                                              local.get 32
                                              i64.const 32
                                              i64.shr_u
                                              i64.add
                                              local.tee 32
                                              i64.store32
                                              local.get 2
                                              i32.const 8
                                              i32.add
                                              local.tee 7
                                              local.get 7
                                              i64.load32_u
                                              i64.const 10
                                              i64.mul
                                              local.get 32
                                              i64.const 32
                                              i64.shr_u
                                              i64.add
                                              local.tee 32
                                              i64.store32
                                              local.get 2
                                              i32.const 12
                                              i32.add
                                              local.tee 7
                                              local.get 7
                                              i64.load32_u
                                              i64.const 10
                                              i64.mul
                                              local.get 32
                                              i64.const 32
                                              i64.shr_u
                                              i64.add
                                              local.tee 33
                                              i64.store32
                                              local.get 33
                                              i64.const 32
                                              i64.shr_u
                                              local.set 31
                                              local.get 2
                                              i32.const 16
                                              i32.add
                                              local.set 2
                                              local.get 9
                                              i32.const 4
                                              i32.sub
                                              local.tee 9
                                              br_if 0 (;@21;)
                                            end
                                            br 5 (;@15;)
                                          end
                                          local.get 1
                                          i32.eqz
                                          br_if 3 (;@16;)
                                          local.get 3
                                          i32.const 28
                                          i32.add
                                          i32.const 1
                                          call 47
                                          drop
                                          local.get 3
                                          i32.load offset=188
                                          local.tee 1
                                          local.get 3
                                          i32.load offset=680
                                          local.tee 2
                                          local.get 1
                                          local.get 2
                                          i32.gt_u
                                          select
                                          local.tee 2
                                          i32.const 41
                                          i32.ge_u
                                          br_if 16 (;@3;)
                                          local.get 2
                                          i32.const 2
                                          i32.shl
                                          local.set 2
                                          local.get 3
                                          i32.const 24
                                          i32.add
                                          local.set 1
                                          block  ;; label = @20
                                            loop  ;; label = @21
                                              local.get 2
                                              if  ;; label = @22
                                                local.get 1
                                                local.get 2
                                                i32.add
                                                local.set 5
                                                i32.const -1
                                                local.get 2
                                                i32.const 4
                                                i32.sub
                                                local.tee 2
                                                local.get 3
                                                i32.const 520
                                                i32.add
                                                i32.add
                                                i32.load
                                                local.tee 7
                                                local.get 5
                                                i32.load
                                                local.tee 5
                                                i32.ne
                                                local.get 5
                                                local.get 7
                                                i32.lt_u
                                                select
                                                local.tee 6
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                br 2 (;@20;)
                                              end
                                            end
                                            i32.const -1
                                            i32.const 0
                                            local.get 2
                                            local.get 3
                                            i32.const 520
                                            i32.add
                                            local.tee 1
                                            i32.add
                                            local.get 1
                                            i32.ne
                                            select
                                            local.set 6
                                          end
                                          local.get 6
                                          i32.const 2
                                          i32.ge_u
                                          br_if 8 (;@11;)
                                          br 3 (;@16;)
                                        end
                                        br 16 (;@2;)
                                      end
                                      i32.const 17
                                      i32.const 17
                                      i32.const 1049604
                                      call 9
                                      unreachable
                                    end
                                    local.get 4
                                    i32.const 40
                                    i32.const 1054496
                                    call 21
                                    unreachable
                                  end
                                  local.get 3
                                  i32.const 11
                                  i32.add
                                  local.get 0
                                  i32.add
                                  local.set 7
                                  i32.const -1
                                  local.set 9
                                  local.get 0
                                  local.set 2
                                  block  ;; label = @16
                                    loop  ;; label = @17
                                      local.get 2
                                      local.tee 1
                                      i32.eqz
                                      br_if 1 (;@16;)
                                      local.get 9
                                      i32.const 1
                                      i32.add
                                      local.set 9
                                      local.get 2
                                      i32.const 1
                                      i32.sub
                                      local.tee 2
                                      local.get 3
                                      i32.const 11
                                      i32.add
                                      local.tee 5
                                      i32.add
                                      i32.load8_u
                                      i32.const 57
                                      i32.eq
                                      br_if 0 (;@17;)
                                    end
                                    local.get 2
                                    local.get 5
                                    i32.add
                                    local.tee 2
                                    local.get 2
                                    i32.load8_u
                                    i32.const 1
                                    i32.add
                                    i32.store8
                                    local.get 1
                                    local.get 10
                                    i32.gt_u
                                    br_if 5 (;@11;)
                                    local.get 1
                                    local.get 5
                                    i32.add
                                    i32.const 48
                                    local.get 9
                                    call 67
                                    drop
                                    br 5 (;@11;)
                                  end
                                  local.get 3
                                  i32.const 49
                                  i32.store8 offset=11
                                  block  ;; label = @16
                                    local.get 10
                                    if  ;; label = @17
                                      local.get 3
                                      i32.const 12
                                      i32.add
                                      i32.const 48
                                      local.get 10
                                      call 67
                                      drop
                                      local.get 10
                                      i32.const 15
                                      i32.gt_u
                                      br_if 1 (;@16;)
                                    end
                                    local.get 7
                                    i32.const 48
                                    i32.store8
                                    local.get 12
                                    i32.const 1
                                    i32.add
                                    local.set 12
                                    local.get 10
                                    i32.const 2
                                    i32.add
                                    local.set 0
                                    br 6 (;@10;)
                                  end
                                  local.get 0
                                  i32.const 17
                                  i32.const 1049620
                                  call 9
                                  unreachable
                                end
                                local.get 6
                                if  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 2
                                    local.get 2
                                    i64.load32_u
                                    i64.const 10
                                    i64.mul
                                    local.get 31
                                    i64.add
                                    local.tee 33
                                    i64.store32
                                    local.get 2
                                    i32.const 4
                                    i32.add
                                    local.set 2
                                    local.get 33
                                    i64.const 32
                                    i64.shr_u
                                    local.set 31
                                    local.get 6
                                    i32.const 1
                                    i32.sub
                                    local.tee 6
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 5
                                local.get 33
                                i64.const 4294967296
                                i64.lt_u
                                br_if 0 (;@14;)
                                drop
                                local.get 5
                                i32.const 40
                                i32.eq
                                br_if 7 (;@7;)
                                local.get 3
                                i32.const 28
                                i32.add
                                local.get 5
                                i32.const 2
                                i32.shl
                                i32.add
                                local.get 31
                                i64.store32
                                local.get 5
                                i32.const 1
                                i32.add
                              end
                              local.tee 7
                              i32.store offset=188
                              block  ;; label = @14
                                local.get 11
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 11
                                i32.const 1
                                i32.sub
                                i32.const 1073741823
                                i32.and
                                local.tee 1
                                i32.const 1
                                i32.add
                                local.tee 2
                                i32.const 3
                                i32.and
                                local.set 6
                                block  ;; label = @15
                                  local.get 1
                                  i32.const 3
                                  i32.lt_u
                                  if  ;; label = @16
                                    local.get 3
                                    i32.const 192
                                    i32.add
                                    local.set 2
                                    i64.const 0
                                    local.set 31
                                    br 1 (;@15;)
                                  end
                                  local.get 2
                                  i32.const 2147483644
                                  i32.and
                                  local.set 9
                                  local.get 3
                                  i32.const 192
                                  i32.add
                                  local.set 2
                                  i64.const 0
                                  local.set 31
                                  loop  ;; label = @16
                                    local.get 2
                                    local.get 2
                                    i64.load32_u
                                    i64.const 10
                                    i64.mul
                                    local.get 31
                                    i64.add
                                    local.tee 32
                                    i64.store32
                                    local.get 2
                                    i32.const 4
                                    i32.add
                                    local.tee 1
                                    local.get 1
                                    i64.load32_u
                                    i64.const 10
                                    i64.mul
                                    local.get 32
                                    i64.const 32
                                    i64.shr_u
                                    i64.add
                                    local.tee 32
                                    i64.store32
                                    local.get 2
                                    i32.const 8
                                    i32.add
                                    local.tee 1
                                    local.get 1
                                    i64.load32_u
                                    i64.const 10
                                    i64.mul
                                    local.get 32
                                    i64.const 32
                                    i64.shr_u
                                    i64.add
                                    local.tee 32
                                    i64.store32
                                    local.get 2
                                    i32.const 12
                                    i32.add
                                    local.tee 1
                                    local.get 1
                                    i64.load32_u
                                    i64.const 10
                                    i64.mul
                                    local.get 32
                                    i64.const 32
                                    i64.shr_u
                                    i64.add
                                    local.tee 33
                                    i64.store32
                                    local.get 33
                                    i64.const 32
                                    i64.shr_u
                                    local.set 31
                                    local.get 2
                                    i32.const 16
                                    i32.add
                                    local.set 2
                                    local.get 9
                                    i32.const 4
                                    i32.sub
                                    local.tee 9
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 6
                                if  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 2
                                    local.get 2
                                    i64.load32_u
                                    i64.const 10
                                    i64.mul
                                    local.get 31
                                    i64.add
                                    local.tee 33
                                    i64.store32
                                    local.get 2
                                    i32.const 4
                                    i32.add
                                    local.set 2
                                    local.get 33
                                    i64.const 32
                                    i64.shr_u
                                    local.set 31
                                    local.get 6
                                    i32.const 1
                                    i32.sub
                                    local.tee 6
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 33
                                i64.const 4294967296
                                i64.lt_u
                                if  ;; label = @15
                                  local.get 11
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                local.get 11
                                i32.const 40
                                i32.eq
                                br_if 7 (;@7;)
                                local.get 3
                                i32.const 192
                                i32.add
                                local.get 11
                                i32.const 2
                                i32.shl
                                i32.add
                                local.get 31
                                i64.store32
                                local.get 11
                                i32.const 1
                                i32.add
                                local.set 1
                              end
                              local.get 3
                              local.get 1
                              i32.store offset=352
                              block  ;; label = @14
                                local.get 8
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                local.get 8
                                i32.const 1
                                i32.sub
                                i32.const 1073741823
                                i32.and
                                local.tee 1
                                i32.const 1
                                i32.add
                                local.tee 2
                                i32.const 3
                                i32.and
                                local.set 6
                                block  ;; label = @15
                                  local.get 1
                                  i32.const 3
                                  i32.lt_u
                                  if  ;; label = @16
                                    local.get 3
                                    i32.const 356
                                    i32.add
                                    local.set 2
                                    i64.const 0
                                    local.set 31
                                    br 1 (;@15;)
                                  end
                                  local.get 2
                                  i32.const 2147483644
                                  i32.and
                                  local.set 9
                                  local.get 3
                                  i32.const 356
                                  i32.add
                                  local.set 2
                                  i64.const 0
                                  local.set 31
                                  loop  ;; label = @16
                                    local.get 2
                                    local.get 2
                                    i64.load32_u
                                    i64.const 10
                                    i64.mul
                                    local.get 31
                                    i64.add
                                    local.tee 32
                                    i64.store32
                                    local.get 2
                                    i32.const 4
                                    i32.add
                                    local.tee 1
                                    local.get 1
                                    i64.load32_u
                                    i64.const 10
                                    i64.mul
                                    local.get 32
                                    i64.const 32
                                    i64.shr_u
                                    i64.add
                                    local.tee 32
                                    i64.store32
                                    local.get 2
                                    i32.const 8
                                    i32.add
                                    local.tee 1
                                    local.get 1
                                    i64.load32_u
                                    i64.const 10
                                    i64.mul
                                    local.get 32
                                    i64.const 32
                                    i64.shr_u
                                    i64.add
                                    local.tee 32
                                    i64.store32
                                    local.get 2
                                    i32.const 12
                                    i32.add
                                    local.tee 1
                                    local.get 1
                                    i64.load32_u
                                    i64.const 10
                                    i64.mul
                                    local.get 32
                                    i64.const 32
                                    i64.shr_u
                                    i64.add
                                    local.tee 33
                                    i64.store32
                                    local.get 33
                                    i64.const 32
                                    i64.shr_u
                                    local.set 31
                                    local.get 2
                                    i32.const 16
                                    i32.add
                                    local.set 2
                                    local.get 9
                                    i32.const 4
                                    i32.sub
                                    local.tee 9
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 6
                                if  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 2
                                    local.get 2
                                    i64.load32_u
                                    i64.const 10
                                    i64.mul
                                    local.get 31
                                    i64.add
                                    local.tee 33
                                    i64.store32
                                    local.get 2
                                    i32.const 4
                                    i32.add
                                    local.set 2
                                    local.get 33
                                    i64.const 32
                                    i64.shr_u
                                    local.set 31
                                    local.get 6
                                    i32.const 1
                                    i32.sub
                                    local.tee 6
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 33
                                i64.const 4294967296
                                i64.lt_u
                                br_if 0 (;@14;)
                                local.get 8
                                i32.const 40
                                i32.eq
                                br_if 7 (;@7;)
                                local.get 3
                                i32.const 356
                                i32.add
                                local.get 8
                                i32.const 2
                                i32.shl
                                i32.add
                                local.get 31
                                i64.store32
                                local.get 8
                                i32.const 1
                                i32.add
                                local.set 8
                              end
                              local.get 3
                              local.get 8
                              i32.store offset=516
                              local.get 7
                              local.get 17
                              local.get 7
                              local.get 17
                              i32.gt_u
                              select
                              local.tee 5
                              i32.const 40
                              i32.le_u
                              br_if 0 (;@13;)
                            end
                          end
                          br 10 (;@1;)
                        end
                        local.get 10
                        i32.const 17
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 17
                        i32.const 1049636
                        call 21
                        unreachable
                      end
                      local.get 3
                      local.get 3
                      i32.const 11
                      i32.add
                      local.get 0
                      local.get 12
                      i32.const 0
                      local.get 3
                      i32.const 1180
                      i32.add
                      call 50
                      local.get 3
                      i32.load offset=4
                      local.set 9
                      local.get 3
                      i32.load
                    end
                    local.set 0
                    local.get 3
                    local.get 9
                    i32.store offset=1028
                    local.get 3
                    local.get 0
                    i32.store offset=1024
                    local.get 3
                    local.get 18
                    i32.store offset=1020
                    local.get 3
                    local.get 29
                    i32.store offset=1016
                    local.get 13
                    local.get 3
                    i32.const 1016
                    i32.add
                    call 57
                    local.get 3
                    i32.const 1344
                    i32.add
                    global.set 0
                    br 3 (;@5;)
                  end
                  local.get 3
                  i32.const 0
                  i32.store offset=1180
                  global.get 0
                  i32.const 16
                  i32.sub
                  local.tee 1
                  global.set 0
                  local.get 1
                  local.get 3
                  i32.const 1016
                  i32.add
                  i32.store offset=12
                  local.get 1
                  local.get 3
                  i32.const 848
                  i32.add
                  i32.store offset=8
                  global.get 0
                  i32.const 112
                  i32.sub
                  local.tee 0
                  global.set 0
                  local.get 0
                  i32.const 1051748
                  i32.store offset=12
                  local.get 0
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.store offset=8
                  local.get 0
                  i32.const 1051748
                  i32.store offset=20
                  local.get 0
                  local.get 1
                  i32.const 12
                  i32.add
                  i32.store offset=16
                  local.get 0
                  i32.const 2
                  i32.store offset=28
                  local.get 0
                  i32.const 1051764
                  i32.store offset=24
                  block  ;; label = @8
                    local.get 3
                    i32.const 1180
                    i32.add
                    local.tee 1
                    i32.load
                    i32.eqz
                    if  ;; label = @9
                      local.get 0
                      i32.const 3
                      i32.store offset=92
                      local.get 0
                      i32.const 1051816
                      i32.store offset=88
                      local.get 0
                      i64.const 3
                      i64.store offset=100 align=4
                      local.get 0
                      local.get 0
                      i32.const 16
                      i32.add
                      i64.extend_i32_u
                      i64.const 25769803776
                      i64.or
                      i64.store offset=72
                      local.get 0
                      local.get 0
                      i32.const 8
                      i32.add
                      i64.extend_i32_u
                      i64.const 25769803776
                      i64.or
                      i64.store offset=64
                      br 1 (;@8;)
                    end
                    local.get 0
                    i32.const 48
                    i32.add
                    local.get 1
                    i32.const 16
                    i32.add
                    i64.load align=4
                    i64.store
                    local.get 0
                    i32.const 40
                    i32.add
                    local.get 1
                    i32.const 8
                    i32.add
                    i64.load align=4
                    i64.store
                    local.get 0
                    local.get 1
                    i64.load align=4
                    i64.store offset=32
                    local.get 0
                    i32.const 4
                    i32.store offset=92
                    local.get 0
                    i32.const 1051868
                    i32.store offset=88
                    local.get 0
                    i64.const 4
                    i64.store offset=100 align=4
                    local.get 0
                    local.get 0
                    i32.const 16
                    i32.add
                    i64.extend_i32_u
                    i64.const 25769803776
                    i64.or
                    i64.store offset=80
                    local.get 0
                    local.get 0
                    i32.const 8
                    i32.add
                    i64.extend_i32_u
                    i64.const 25769803776
                    i64.or
                    i64.store offset=72
                    local.get 0
                    local.get 0
                    i32.const 32
                    i32.add
                    i64.extend_i32_u
                    i64.const 34359738368
                    i64.or
                    i64.store offset=64
                  end
                  local.get 0
                  local.get 0
                  i32.const 24
                  i32.add
                  i64.extend_i32_u
                  i64.const 30064771072
                  i64.or
                  i64.store offset=56
                  local.get 0
                  local.get 0
                  i32.const 56
                  i32.add
                  i32.store offset=96
                  local.get 0
                  i32.const 88
                  i32.add
                  i32.const 1049364
                  call 29
                  unreachable
                end
                i32.const 40
                i32.const 40
                i32.const 1054496
                call 9
                unreachable
              end
              i32.const 1054512
              i32.const 26
              i32.const 1054496
              call 25
              unreachable
            end
            return
          end
          local.get 0
          i32.const 40
          i32.const 1054496
          call 21
          unreachable
        end
        local.get 2
        i32.const 40
        i32.const 1054496
        call 21
        unreachable
      end
      local.get 1
      i32.const 40
      i32.const 1054496
      call 21
      unreachable
    end
    local.get 5
    i32.const 40
    i32.const 1054496
    call 21
    unreachable)
  (func (;13;) (type 1) (param i32 i32 i32) (result i32)
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
                  call_indirect (type 1)
                  br_if 4 (;@3;)
                end
                local.get 1
                i32.load
                local.get 3
                i32.const 12
                i32.add
                local.get 1
                i32.load offset=4
                call_indirect (type 0)
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
                call_indirect (type 1)
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
              call_indirect (type 0)
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
          call_indirect (type 1)
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
  (func (;14;) (type 8) (result i32)
    i32.const 1056664)
  (func (;15;) (type 6))
  (func (;16;) (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 224
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1074798488
    i32.load8_u
    drop
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 56
                      call 17
                      local.tee 7
                      if  ;; label = @10
                        i32.const 1074798488
                        i32.load8_u
                        drop
                        i32.const 5
                        call 17
                        local.tee 2
                        i32.eqz
                        br_if 1 (;@9;)
                        i32.const 1074798488
                        i32.load8_u
                        drop
                        local.get 2
                        i32.const 4
                        i32.add
                        i32.const 1048868
                        i32.load8_u
                        i32.store8
                        local.get 2
                        i32.const 1048864
                        i32.load align=1
                        i32.store align=1
                        i32.const 9
                        call 17
                        local.tee 3
                        i32.eqz
                        br_if 2 (;@8;)
                        i32.const 1074798488
                        i32.load8_u
                        drop
                        local.get 3
                        i32.const 8
                        i32.add
                        i32.const 1048877
                        i32.load8_u
                        i32.store8
                        local.get 3
                        i32.const 1048869
                        i64.load align=1
                        i64.store align=1
                        i32.const 4
                        call 17
                        local.tee 6
                        i32.eqz
                        br_if 3 (;@7;)
                        local.get 6
                        i32.const 1701603686
                        i32.store align=1
                        i32.const 1074798488
                        i32.load8_u
                        drop
                        i32.const 16
                        call 17
                        local.tee 5
                        i32.eqz
                        br_if 4 (;@6;)
                        local.get 7
                        i64.const 4294967312
                        i64.store offset=48 align=4
                        local.get 7
                        local.get 5
                        i32.store offset=44
                        local.get 7
                        i64.const 68719476740
                        i64.store offset=36 align=4
                        local.get 7
                        local.get 6
                        i32.store offset=32
                        local.get 7
                        i32.const 4
                        i32.store offset=28
                        local.get 7
                        i64.const 9
                        i64.store offset=20 align=4
                        local.get 7
                        local.get 3
                        i32.store offset=16
                        local.get 7
                        i64.const 38654705669
                        i64.store offset=8 align=4
                        local.get 7
                        local.get 2
                        i32.store offset=4
                        local.get 7
                        i32.const 5
                        i32.store
                        local.get 5
                        i32.const 8
                        i32.add
                        i32.const 1048886
                        i64.load align=1
                        i64.store align=1
                        local.get 5
                        i32.const 1048878
                        i64.load align=1
                        i64.store align=1
                        local.get 0
                        i32.const 1073741825
                        i32.ge_u
                        br_if 5 (;@5;)
                        local.get 1
                        local.get 0
                        i32.const 1056664
                        i32.add
                        i32.store offset=148
                        i32.const 0
                        local.set 3
                        i32.const 0
                        local.set 5
                        block (result i32)  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        loop  ;; label = @19
                                          local.get 3
                                          local.tee 2
                                          i32.const 5
                                          i32.eq
                                          local.get 0
                                          local.get 2
                                          i32.eq
                                          i32.or
                                          br_if 1 (;@18;)
                                          local.get 2
                                          i32.const 1
                                          i32.add
                                          local.set 3
                                          local.get 2
                                          i32.const 1056664
                                          i32.add
                                          i32.load8_s
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
                                          local.get 6
                                          i32.const 0
                                          i32.lt_s
                                          br_if 0 (;@19;)
                                        end
                                        local.get 1
                                        local.get 2
                                        i32.const 1056665
                                        i32.add
                                        i32.store offset=144
                                        local.get 2
                                        i32.const 4
                                        i32.eq
                                        local.get 6
                                        i32.const 15
                                        i32.gt_u
                                        i32.and
                                        br_if 0 (;@18;)
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            local.get 5
                                            br_table 3 (;@17;) 0 (;@20;) 1 (;@19;) 2 (;@18;)
                                          end
                                          local.get 1
                                          i32.const 184
                                          i32.add
                                          local.get 1
                                          i32.const 144
                                          i32.add
                                          call 18
                                          local.get 1
                                          i32.load offset=208
                                          i32.const -2147483646
                                          i32.eq
                                          br_if 1 (;@18;)
                                          local.get 1
                                          i32.const 39
                                          i32.add
                                          local.tee 0
                                          local.get 1
                                          i32.const 204
                                          i32.add
                                          local.tee 2
                                          i64.load align=1
                                          i64.store align=1
                                          local.get 1
                                          i32.const 32
                                          i32.add
                                          local.tee 3
                                          local.get 1
                                          i32.const 197
                                          i32.add
                                          local.tee 5
                                          i64.load align=1
                                          i64.store
                                          local.get 1
                                          i32.const 8
                                          i32.add
                                          local.tee 6
                                          local.get 3
                                          i64.load
                                          i64.store
                                          local.get 1
                                          i32.const 15
                                          i32.add
                                          local.tee 3
                                          local.get 0
                                          i64.load align=1
                                          i64.store align=1
                                          local.get 1
                                          local.get 1
                                          i64.load offset=189 align=1
                                          i64.store
                                          local.get 1
                                          i64.load offset=212 align=4
                                          local.set 12
                                          local.get 1
                                          i32.load offset=184
                                          local.set 0
                                          local.get 1
                                          i32.load8_u offset=188
                                          local.set 4
                                          local.get 1
                                          i32.const 0
                                          i32.store offset=24
                                          local.get 1
                                          local.get 4
                                          i32.store8 offset=188
                                          local.get 1
                                          local.get 0
                                          i32.store offset=184
                                          local.get 2
                                          local.get 3
                                          i64.load align=1
                                          i64.store align=1
                                          local.get 5
                                          local.get 6
                                          i64.load
                                          i64.store align=1
                                          local.get 1
                                          local.get 12
                                          i64.store offset=212 align=4
                                          local.get 1
                                          local.get 1
                                          i64.load
                                          i64.store offset=189 align=1
                                          local.get 1
                                          i32.load offset=208
                                          i32.const -2147483647
                                          i32.ne
                                          br_if 4 (;@15;)
                                          local.get 1
                                          i32.const 24
                                          i32.add
                                          call 3
                                          local.get 1
                                          i32.const 36
                                          i32.add
                                          local.get 1
                                          i32.const 192
                                          i32.add
                                          i32.load
                                          i32.store
                                          local.get 1
                                          i32.const 2
                                          i32.store offset=24
                                          local.get 1
                                          i32.const -2147483647
                                          i32.store offset=40
                                          local.get 1
                                          local.get 1
                                          i64.load offset=184 align=4
                                          i64.store offset=28 align=4
                                          br 17 (;@2;)
                                        end
                                        local.get 3
                                        i32.const 1056664
                                        i32.add
                                        local.set 9
                                        local.get 0
                                        local.get 3
                                        i32.sub
                                        local.set 2
                                        i32.const 0
                                        local.set 4
                                        i32.const 0
                                        local.set 5
                                        i32.const 0
                                        local.set 0
                                        loop  ;; label = @19
                                          local.get 2
                                          i32.eqz
                                          local.get 5
                                          local.tee 6
                                          i32.const 5
                                          i32.eq
                                          i32.or
                                          br_if 1 (;@18;)
                                          local.get 2
                                          i32.const 1
                                          i32.sub
                                          local.set 2
                                          local.get 5
                                          i32.const 1
                                          i32.add
                                          local.set 5
                                          local.get 3
                                          local.get 6
                                          i32.add
                                          i32.const 1056664
                                          i32.add
                                          i32.load8_s
                                          local.tee 8
                                          i32.const 127
                                          i32.and
                                          local.get 4
                                          i32.shl
                                          local.get 0
                                          i32.or
                                          local.set 0
                                          local.get 4
                                          i32.const 7
                                          i32.add
                                          local.set 4
                                          local.get 8
                                          i32.const 0
                                          i32.lt_s
                                          br_if 0 (;@19;)
                                        end
                                        local.get 1
                                        local.get 5
                                        local.get 9
                                        i32.add
                                        i32.store offset=144
                                        local.get 6
                                        i32.const 4
                                        i32.eq
                                        local.get 8
                                        i32.const 15
                                        i32.gt_u
                                        i32.and
                                        br_if 0 (;@18;)
                                        local.get 1
                                        i32.const 184
                                        i32.add
                                        local.get 1
                                        i32.const 144
                                        i32.add
                                        call 18
                                        local.get 1
                                        i32.load offset=208
                                        local.tee 2
                                        i32.const -2147483646
                                        i32.ne
                                        br_if 2 (;@16;)
                                      end
                                      local.get 1
                                      i32.const 0
                                      i32.store offset=24
                                      br 15 (;@2;)
                                    end
                                    local.get 1
                                    i32.const 15
                                    i32.add
                                    local.get 1
                                    i32.const 39
                                    i32.add
                                    i64.load align=1
                                    i64.store align=1
                                    local.get 1
                                    i32.const 8
                                    i32.add
                                    local.get 1
                                    i32.const 32
                                    i32.add
                                    i64.load
                                    i64.store
                                    local.get 1
                                    local.get 1
                                    i64.load offset=24
                                    i64.store
                                    local.get 1
                                    i32.const 0
                                    i32.store offset=24
                                    local.get 1
                                    i32.const 24
                                    i32.add
                                    call 3
                                    local.get 1
                                    i32.const 2
                                    i32.store offset=36
                                    local.get 1
                                    local.get 7
                                    i32.store offset=32
                                    local.get 1
                                    i64.const 8589934593
                                    i64.store offset=24 align=4
                                    i32.const 0
                                    br 15 (;@1;)
                                  end
                                  local.get 1
                                  i32.const 39
                                  i32.add
                                  local.tee 3
                                  local.get 1
                                  i32.const 200
                                  i32.add
                                  local.tee 6
                                  i64.load align=1
                                  i64.store align=1
                                  local.get 1
                                  i32.const 32
                                  i32.add
                                  local.tee 5
                                  local.get 1
                                  i32.const 193
                                  i32.add
                                  local.tee 4
                                  i64.load align=1
                                  i64.store
                                  local.get 1
                                  i32.const 8
                                  i32.add
                                  local.tee 8
                                  local.get 5
                                  i64.load
                                  i64.store
                                  local.get 1
                                  i32.const 15
                                  i32.add
                                  local.tee 9
                                  local.get 3
                                  i64.load align=1
                                  i64.store align=1
                                  local.get 1
                                  local.get 1
                                  i64.load offset=185 align=1
                                  i64.store
                                  local.get 1
                                  i32.load offset=212
                                  local.set 5
                                  local.get 1
                                  i32.load offset=216
                                  local.set 3
                                  local.get 1
                                  i32.load8_u offset=184
                                  local.set 10
                                  local.get 1
                                  i32.const 0
                                  i32.store offset=24
                                  local.get 1
                                  local.get 10
                                  i32.store8 offset=184
                                  local.get 4
                                  local.get 8
                                  i64.load
                                  i64.store align=1
                                  local.get 6
                                  local.get 9
                                  i64.load align=1
                                  i64.store align=1
                                  local.get 1
                                  local.get 3
                                  i32.store offset=216
                                  local.get 1
                                  local.get 5
                                  i32.store offset=212
                                  local.get 1
                                  local.get 2
                                  i32.store offset=208
                                  local.get 1
                                  local.get 1
                                  i64.load
                                  i64.store offset=185 align=1
                                  local.get 0
                                  br_table 1 (;@14;) 3 (;@12;) 2 (;@13;)
                                end
                                local.get 1
                                i32.const 184
                                i32.add
                                call 1
                                br 12 (;@2;)
                              end
                              i32.const 1074798488
                              i32.load8_u
                              drop
                              i32.const 13
                              call 17
                              local.tee 0
                              i32.eqz
                              br_if 9 (;@4;)
                              local.get 0
                              i32.const 5
                              i32.add
                              i32.const 1048961
                              i64.load align=1
                              i64.store align=1
                              local.get 0
                              i32.const 1048956
                              i64.load align=1
                              i64.store align=1
                              local.get 1
                              i32.const 24
                              i32.add
                              call 3
                              local.get 1
                              i64.const -9223372032559808499
                              i64.store offset=40 align=4
                              local.get 1
                              local.get 0
                              i32.store offset=36
                              local.get 1
                              i32.const 13
                              i32.store offset=32
                              local.get 1
                              i64.const 3
                              i64.store offset=24 align=4
                            end
                            i32.const 1
                            local.get 2
                            i32.const -2147483647
                            i32.gt_s
                            br_if 1 (;@11;)
                            drop
                            br 9 (;@3;)
                          end
                          local.get 2
                          i32.const -2147483646
                          i32.lt_s
                          br_if 8 (;@3;)
                          local.get 1
                          i32.const -64
                          i32.sub
                          local.get 1
                          i32.const 19
                          i32.add
                          i32.load align=1
                          i32.store
                          local.get 1
                          local.get 1
                          i64.load offset=11 align=1
                          i64.store offset=56
                          local.get 1
                          i32.const 136
                          i32.add
                          i32.const 1048988
                          i64.load align=4
                          i64.store
                          local.get 1
                          i32.const 128
                          i32.add
                          i32.const 1048980
                          i64.load align=4
                          i64.store
                          local.get 1
                          i32.const 1048972
                          i64.load align=4
                          i64.store offset=120
                          local.get 1
                          i32.const 1
                          i32.store offset=148
                          local.get 1
                          i32.const 1048856
                          i32.store offset=144
                          local.get 1
                          i64.const 1
                          i64.store offset=156 align=4
                          local.get 1
                          i32.const 4
                          i32.store offset=172
                          local.get 1
                          local.get 3
                          i32.store offset=180
                          local.get 1
                          local.get 1
                          i32.const 168
                          i32.add
                          i32.store offset=152
                          local.get 1
                          local.get 1
                          i32.const 176
                          i32.add
                          i32.store offset=168
                          local.get 1
                          local.get 1
                          i32.const 120
                          i32.add
                          i32.store offset=176
                          local.get 1
                          i32.const 108
                          i32.add
                          local.tee 0
                          local.get 1
                          i32.const 144
                          i32.add
                          local.tee 3
                          call 19
                          local.get 1
                          i32.const 5
                          i32.store offset=104
                          local.get 1
                          i32.const 5
                          i32.store offset=96
                          local.get 1
                          i32.const 2
                          i32.store offset=72
                          local.get 1
                          i32.const 1049028
                          i32.store offset=68
                          local.get 1
                          i64.const 2
                          i64.store offset=80 align=4
                          local.get 1
                          local.get 0
                          i32.store offset=100
                          local.get 1
                          local.get 1
                          i32.const 56
                          i32.add
                          i32.store offset=92
                          local.get 1
                          local.get 1
                          i32.const 92
                          i32.add
                          i32.store offset=76
                          local.get 3
                          local.get 1
                          i32.const 68
                          i32.add
                          call 19
                          local.get 1
                          i32.load offset=108
                          local.tee 0
                          if  ;; label = @12
                            local.get 1
                            i32.load offset=112
                            local.get 0
                            call 2
                          end
                          local.get 1
                          i32.const 24
                          i32.add
                          call 3
                          local.get 1
                          i32.const 40
                          i32.add
                          local.get 1
                          i32.const 152
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
                          i64.load offset=144 align=4
                          i64.store offset=32 align=4
                          local.get 2
                          if  ;; label = @12
                            local.get 5
                            local.get 2
                            call 2
                          end
                          local.get 1
                          i32.load offset=56
                          local.tee 0
                          if  ;; label = @12
                            local.get 1
                            i32.load offset=60
                            local.get 0
                            call 2
                          end
                          i32.const 0
                        end
                        local.get 1
                        i32.load offset=184
                        local.tee 0
                        if  ;; label = @11
                          local.get 1
                          i32.load offset=188
                          local.get 0
                          call 2
                        end
                        i32.eqz
                        br_if 8 (;@2;)
                        local.get 1
                        i32.load offset=196
                        local.tee 0
                        if  ;; label = @11
                          local.get 1
                          i32.load offset=200
                          local.get 0
                          call 2
                        end
                        local.get 2
                        i32.eqz
                        br_if 8 (;@2;)
                        local.get 5
                        local.get 2
                        call 2
                        br 8 (;@2;)
                      end
                      unreachable
                    end
                    i32.const 1
                    call 20
                    unreachable
                  end
                  i32.const 1
                  call 20
                  unreachable
                end
                i32.const 1
                call 20
                unreachable
              end
              i32.const 1
              call 20
              unreachable
            end
            local.get 0
            i32.const 1073741824
            i32.const 1048940
            call 21
            unreachable
          end
          i32.const 1
          call 20
          unreachable
        end
        local.get 1
        i32.const 184
        i32.add
        call 1
      end
      i32.const 1
    end
    local.set 8
    local.get 1
    i32.const 208
    i32.add
    local.get 1
    i32.const 48
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    i32.const 200
    i32.add
    local.get 1
    i32.const 40
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    i32.const 192
    i32.add
    local.tee 0
    local.get 1
    i32.const 32
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    local.get 1
    i64.load offset=24 align=4
    local.tee 12
    i64.store offset=184
    i32.const 0
    local.set 4
    local.get 1
    i32.const 0
    i32.store offset=152
    local.get 1
    i64.const 4294967296
    i64.store offset=144 align=4
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
                          local.get 12
                          i32.wrap_i64
                          local.tee 9
                          i32.const 1
                          i32.sub
                          br_table 1 (;@10;) 4 (;@7;) 2 (;@9;) 0 (;@11;)
                        end
                        i32.const 0
                        local.set 2
                        local.get 1
                        i32.const 124
                        i32.add
                        i32.const 0
                        i32.store8
                        local.get 1
                        i32.const 0
                        i32.store offset=120
                        local.get 1
                        i32.const 144
                        i32.add
                        local.get 1
                        i32.const 120
                        i32.add
                        i32.const 1
                        call 22
                        i32.const 1
                        i32.const 2
                        local.get 1
                        i32.load offset=148
                        local.get 1
                        i32.load offset=144
                        local.tee 5
                        i32.const -2147483648
                        i32.eq
                        local.tee 0
                        select
                        local.get 0
                        select
                        local.set 3
                        i32.const 0
                        local.get 5
                        local.get 0
                        select
                        local.set 4
                        local.get 0
                        br_if 7 (;@3;)
                        local.get 1
                        i32.load offset=152
                        local.set 2
                        br 6 (;@4;)
                      end
                      local.get 1
                      i32.const 1
                      i32.store8 offset=120
                      local.get 1
                      i32.const 0
                      i32.store offset=121 align=1
                      local.get 1
                      i32.const 144
                      i32.add
                      local.get 1
                      i32.const 120
                      i32.add
                      i32.const 1
                      call 22
                      local.get 1
                      i32.load offset=192
                      local.set 5
                      local.get 1
                      i32.load offset=196
                      local.set 0
                      local.get 1
                      i32.const 124
                      i32.add
                      i32.const 0
                      i32.store8
                      local.get 1
                      i32.const 0
                      i32.store offset=120
                      local.get 0
                      local.set 2
                      block  ;; label = @10
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            i32.const 120
                            i32.add
                            local.get 4
                            i32.add
                            local.tee 3
                            local.get 2
                            i32.store8
                            local.get 2
                            i32.const 128
                            i32.lt_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.get 2
                            i32.const 128
                            i32.or
                            i32.store8
                            local.get 2
                            i32.const 7
                            i32.shr_u
                            local.set 2
                            i32.const 5
                            local.set 3
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
                        local.set 3
                      end
                      local.get 1
                      i32.const 144
                      i32.add
                      local.get 1
                      i32.const 120
                      i32.add
                      local.get 3
                      call 22
                      local.get 0
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 5
                      local.get 0
                      i32.const 28
                      i32.mul
                      i32.add
                      local.set 10
                      local.get 1
                      i32.const 124
                      i32.add
                      local.set 6
                      loop  ;; label = @10
                        local.get 5
                        i32.load offset=24
                        local.set 2
                        i32.const 0
                        local.set 4
                        local.get 6
                        i32.const 0
                        i32.store8
                        local.get 1
                        i32.const 0
                        i32.store offset=120
                        block  ;; label = @11
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              i32.const 120
                              i32.add
                              local.get 4
                              i32.add
                              local.tee 0
                              local.get 2
                              i32.store8
                              local.get 2
                              i32.const 128
                              i32.lt_u
                              br_if 0 (;@13;)
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
                              local.set 3
                              local.get 4
                              i32.const 1
                              i32.add
                              local.tee 4
                              i32.const 5
                              i32.ne
                              br_if 1 (;@12;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 4
                          i32.const 1
                          i32.add
                          local.set 3
                        end
                        local.get 1
                        i32.const 144
                        i32.add
                        local.get 1
                        i32.const 120
                        i32.add
                        local.get 3
                        call 22
                        local.get 5
                        i32.load offset=8
                        local.set 0
                        local.get 5
                        i32.load offset=4
                        local.set 11
                        i32.const 0
                        local.set 4
                        local.get 6
                        i32.const 0
                        i32.store8
                        local.get 1
                        i32.const 0
                        i32.store offset=120
                        local.get 0
                        local.set 2
                        block  ;; label = @11
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              i32.const 120
                              i32.add
                              local.get 4
                              i32.add
                              local.tee 3
                              local.get 2
                              i32.store8
                              local.get 2
                              i32.const 128
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 3
                              local.get 2
                              i32.const 128
                              i32.or
                              i32.store8
                              local.get 2
                              i32.const 7
                              i32.shr_u
                              local.set 2
                              i32.const 5
                              local.set 3
                              local.get 4
                              i32.const 1
                              i32.add
                              local.tee 4
                              i32.const 5
                              i32.ne
                              br_if 1 (;@12;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 4
                          i32.const 1
                          i32.add
                          local.set 3
                        end
                        local.get 1
                        i32.const 144
                        i32.add
                        local.tee 2
                        local.get 1
                        i32.const 120
                        i32.add
                        local.get 3
                        call 22
                        local.get 2
                        local.get 11
                        local.get 0
                        call 22
                        local.get 5
                        i32.load offset=20
                        local.set 0
                        local.get 5
                        i32.load offset=16
                        local.set 11
                        i32.const 0
                        local.set 4
                        local.get 6
                        i32.const 0
                        i32.store8
                        local.get 1
                        i32.const 0
                        i32.store offset=120
                        local.get 0
                        local.set 2
                        block  ;; label = @11
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              i32.const 120
                              i32.add
                              local.get 4
                              i32.add
                              local.tee 3
                              local.get 2
                              i32.store8
                              local.get 2
                              i32.const 128
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 3
                              local.get 2
                              i32.const 128
                              i32.or
                              i32.store8
                              local.get 2
                              i32.const 7
                              i32.shr_u
                              local.set 2
                              i32.const 5
                              local.set 3
                              local.get 4
                              i32.const 1
                              i32.add
                              local.tee 4
                              i32.const 5
                              i32.ne
                              br_if 1 (;@12;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 4
                          i32.const 1
                          i32.add
                          local.set 3
                        end
                        local.get 1
                        i32.const 144
                        i32.add
                        local.tee 2
                        local.get 1
                        i32.const 120
                        i32.add
                        local.get 3
                        call 22
                        local.get 2
                        local.get 11
                        local.get 0
                        call 22
                        local.get 5
                        i32.const 28
                        i32.add
                        local.tee 5
                        local.get 10
                        i32.ne
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    local.get 1
                    i32.const 3
                    i32.store8 offset=120
                    local.get 1
                    i32.const 0
                    i32.store offset=121 align=1
                    local.get 1
                    i32.const 144
                    i32.add
                    local.get 1
                    i32.const 120
                    i32.add
                    i32.const 1
                    call 22
                    local.get 1
                    i32.load offset=188
                    local.set 2
                    local.get 1
                    i32.const 124
                    i32.add
                    i32.const 0
                    i32.store8
                    local.get 1
                    i32.const 0
                    i32.store offset=120
                    block  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 120
                          i32.add
                          local.get 4
                          i32.add
                          local.tee 3
                          local.get 2
                          i32.store8
                          local.get 2
                          i32.const 128
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 3
                          local.get 2
                          i32.const 128
                          i32.or
                          i32.store8
                          local.get 2
                          i32.const 7
                          i32.shr_u
                          local.set 2
                          i32.const 5
                          local.set 3
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
                      local.set 3
                    end
                    local.get 1
                    i32.const 144
                    i32.add
                    local.tee 2
                    local.get 1
                    i32.const 120
                    i32.add
                    local.get 3
                    call 22
                    local.get 0
                    local.get 2
                    call 23
                  end
                  i32.const 1
                  i32.const 2
                  local.get 1
                  i32.load offset=148
                  local.get 1
                  i32.load offset=144
                  local.tee 2
                  i32.const -2147483648
                  i32.eq
                  local.tee 0
                  select
                  local.get 0
                  select
                  local.set 3
                  i32.const 0
                  local.get 2
                  local.get 0
                  select
                  local.set 4
                  i32.const 0
                  local.get 1
                  i32.load offset=152
                  local.get 0
                  select
                  local.set 2
                  block  ;; label = @8
                    local.get 9
                    i32.const 1
                    i32.sub
                    br_table 0 (;@8;) 2 (;@6;) 3 (;@5;) 4 (;@4;)
                  end
                  local.get 1
                  i32.load offset=192
                  local.tee 0
                  local.get 1
                  i32.load offset=196
                  call 5
                  local.get 1
                  i32.load offset=188
                  local.tee 5
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  local.get 5
                  i32.const 28
                  i32.mul
                  call 2
                  br 3 (;@4;)
                end
                local.get 1
                i32.const 0
                i32.store offset=121 align=1
                local.get 1
                i32.const 2
                i32.store8 offset=120
                local.get 1
                i32.const 144
                i32.add
                local.tee 0
                local.get 1
                i32.const 120
                i32.add
                i32.const 1
                call 22
                local.get 1
                i32.const 184
                i32.add
                i32.const 4
                i32.or
                local.get 0
                call 23
                i32.const 1
                i32.const 2
                local.get 1
                i32.load offset=148
                local.get 1
                i32.load offset=144
                local.tee 2
                i32.const -2147483648
                i32.eq
                local.tee 0
                select
                local.get 0
                select
                local.set 3
                i32.const 0
                local.get 2
                local.get 0
                select
                local.set 4
                i32.const 0
                local.get 1
                i32.load offset=152
                local.get 0
                select
                local.set 2
              end
              local.get 1
              i32.const 184
              i32.add
              i32.const 4
              i32.or
              call 4
              br 1 (;@4;)
            end
            local.get 1
            i32.const 192
            i32.add
            call 4
          end
          local.get 2
          i32.const 1073741825
          i32.ge_u
          br_if 1 (;@2;)
        end
        i32.const 1056664
        local.get 3
        local.get 2
        call 66
        drop
        local.get 2
        call 0
        local.get 4
        if  ;; label = @3
          local.get 3
          local.get 4
          call 2
        end
        local.get 8
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        i32.const 2
        call 5
        local.get 7
        i32.const 56
        call 2
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1073741824
      i32.const 1049044
      call 21
      unreachable
    end
    local.get 1
    i32.const 224
    i32.add
    global.set 0)
  (func (;17;) (type 9) (param i32) (result i32)
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
                      i32.const 1074798908
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
                      i32.const 1074798916
                      i32.load
                      i32.le_u
                      br_if 7 (;@2;)
                      local.get 1
                      br_if 2 (;@7;)
                      i32.const 1074798912
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
                    i32.const 1074798912
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
                    i32.const 1074798500
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
                    i32.const 1074798644
                    i32.add
                    local.tee 2
                    local.get 0
                    i32.const 1074798652
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
                    i32.const 1074798908
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
                  i32.const 1074798644
                  i32.add
                  local.tee 1
                  local.get 0
                  i32.const 1074798652
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
                  i32.const 1074798908
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
                i32.const 1074798916
                i32.load
                local.tee 1
                if  ;; label = @7
                  local.get 1
                  i32.const -8
                  i32.and
                  i32.const 1074798644
                  i32.add
                  local.set 0
                  i32.const 1074798924
                  i32.load
                  local.set 3
                  block (result i32)  ;; label = @8
                    i32.const 1074798908
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
                      i32.const 1074798908
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
                i32.const 1074798924
                local.get 6
                i32.store
                i32.const 1074798916
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
              i32.const 1074798500
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
                      i32.const 1074798500
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
                      i32.const 1074798912
                      i32.const 1074798912
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
                    i32.const 1074798916
                    i32.load
                    local.tee 4
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 4
                    i32.const -8
                    i32.and
                    i32.const 1074798644
                    i32.add
                    local.set 0
                    i32.const 1074798924
                    i32.load
                    local.set 2
                    block (result i32)  ;; label = @9
                      i32.const 1074798908
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
                        i32.const 1074798908
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
                i32.const 1074798924
                local.get 6
                i32.store
                i32.const 1074798916
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
              i32.const 1074798500
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
        i32.const 1074798916
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
            i32.const 1074798500
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
            i32.const 1074798912
            i32.const 1074798912
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
              call 63
              br 2 (;@3;)
            end
            local.get 3
            i32.const 248
            i32.and
            i32.const 1074798644
            i32.add
            local.set 0
            block (result i32)  ;; label = @5
              i32.const 1074798908
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
                i32.const 1074798908
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
                i32.const 1074798916
                i32.load
                local.tee 1
                i32.gt_u
                if  ;; label = @7
                  local.get 5
                  i32.const 1074798920
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
                    i32.const 1074798932
                    i32.const 0
                    local.get 2
                    i32.const -65536
                    i32.and
                    local.get 3
                    select
                    local.tee 4
                    i32.const 1074798932
                    i32.load
                    i32.add
                    local.tee 0
                    i32.store
                    i32.const 1074798936
                    i32.const 1074798936
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
                        i32.const 1074798928
                        i32.load
                        local.tee 2
                        if  ;; label = @11
                          i32.const 1074798628
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
                        i32.const 1074798944
                        i32.load
                        local.tee 0
                        i32.const 0
                        local.get 0
                        local.get 1
                        i32.le_u
                        select
                        i32.eqz
                        if  ;; label = @11
                          i32.const 1074798944
                          local.get 1
                          i32.store
                        end
                        i32.const 1074798948
                        i32.const 4095
                        i32.store
                        i32.const 1074798632
                        local.get 4
                        i32.store
                        i32.const 1074798628
                        local.get 1
                        i32.store
                        i32.const 1074798656
                        i32.const 1074798644
                        i32.store
                        i32.const 1074798664
                        i32.const 1074798652
                        i32.store
                        i32.const 1074798652
                        i32.const 1074798644
                        i32.store
                        i32.const 1074798672
                        i32.const 1074798660
                        i32.store
                        i32.const 1074798660
                        i32.const 1074798652
                        i32.store
                        i32.const 1074798680
                        i32.const 1074798668
                        i32.store
                        i32.const 1074798668
                        i32.const 1074798660
                        i32.store
                        i32.const 1074798688
                        i32.const 1074798676
                        i32.store
                        i32.const 1074798676
                        i32.const 1074798668
                        i32.store
                        i32.const 1074798696
                        i32.const 1074798684
                        i32.store
                        i32.const 1074798684
                        i32.const 1074798676
                        i32.store
                        i32.const 1074798704
                        i32.const 1074798692
                        i32.store
                        i32.const 1074798692
                        i32.const 1074798684
                        i32.store
                        i32.const 1074798712
                        i32.const 1074798700
                        i32.store
                        i32.const 1074798700
                        i32.const 1074798692
                        i32.store
                        i32.const 1074798640
                        i32.const 0
                        i32.store
                        i32.const 1074798720
                        i32.const 1074798708
                        i32.store
                        i32.const 1074798708
                        i32.const 1074798700
                        i32.store
                        i32.const 1074798716
                        i32.const 1074798708
                        i32.store
                        i32.const 1074798728
                        i32.const 1074798716
                        i32.store
                        i32.const 1074798724
                        i32.const 1074798716
                        i32.store
                        i32.const 1074798736
                        i32.const 1074798724
                        i32.store
                        i32.const 1074798732
                        i32.const 1074798724
                        i32.store
                        i32.const 1074798744
                        i32.const 1074798732
                        i32.store
                        i32.const 1074798740
                        i32.const 1074798732
                        i32.store
                        i32.const 1074798752
                        i32.const 1074798740
                        i32.store
                        i32.const 1074798748
                        i32.const 1074798740
                        i32.store
                        i32.const 1074798760
                        i32.const 1074798748
                        i32.store
                        i32.const 1074798756
                        i32.const 1074798748
                        i32.store
                        i32.const 1074798768
                        i32.const 1074798756
                        i32.store
                        i32.const 1074798764
                        i32.const 1074798756
                        i32.store
                        i32.const 1074798776
                        i32.const 1074798764
                        i32.store
                        i32.const 1074798772
                        i32.const 1074798764
                        i32.store
                        i32.const 1074798784
                        i32.const 1074798772
                        i32.store
                        i32.const 1074798792
                        i32.const 1074798780
                        i32.store
                        i32.const 1074798780
                        i32.const 1074798772
                        i32.store
                        i32.const 1074798800
                        i32.const 1074798788
                        i32.store
                        i32.const 1074798788
                        i32.const 1074798780
                        i32.store
                        i32.const 1074798808
                        i32.const 1074798796
                        i32.store
                        i32.const 1074798796
                        i32.const 1074798788
                        i32.store
                        i32.const 1074798816
                        i32.const 1074798804
                        i32.store
                        i32.const 1074798804
                        i32.const 1074798796
                        i32.store
                        i32.const 1074798824
                        i32.const 1074798812
                        i32.store
                        i32.const 1074798812
                        i32.const 1074798804
                        i32.store
                        i32.const 1074798832
                        i32.const 1074798820
                        i32.store
                        i32.const 1074798820
                        i32.const 1074798812
                        i32.store
                        i32.const 1074798840
                        i32.const 1074798828
                        i32.store
                        i32.const 1074798828
                        i32.const 1074798820
                        i32.store
                        i32.const 1074798848
                        i32.const 1074798836
                        i32.store
                        i32.const 1074798836
                        i32.const 1074798828
                        i32.store
                        i32.const 1074798856
                        i32.const 1074798844
                        i32.store
                        i32.const 1074798844
                        i32.const 1074798836
                        i32.store
                        i32.const 1074798864
                        i32.const 1074798852
                        i32.store
                        i32.const 1074798852
                        i32.const 1074798844
                        i32.store
                        i32.const 1074798872
                        i32.const 1074798860
                        i32.store
                        i32.const 1074798860
                        i32.const 1074798852
                        i32.store
                        i32.const 1074798880
                        i32.const 1074798868
                        i32.store
                        i32.const 1074798868
                        i32.const 1074798860
                        i32.store
                        i32.const 1074798888
                        i32.const 1074798876
                        i32.store
                        i32.const 1074798876
                        i32.const 1074798868
                        i32.store
                        i32.const 1074798896
                        i32.const 1074798884
                        i32.store
                        i32.const 1074798884
                        i32.const 1074798876
                        i32.store
                        i32.const 1074798904
                        i32.const 1074798892
                        i32.store
                        i32.const 1074798892
                        i32.const 1074798884
                        i32.store
                        i32.const 1074798928
                        local.get 1
                        i32.store
                        i32.const 1074798900
                        i32.const 1074798892
                        i32.store
                        i32.const 1074798920
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
                        i32.const 1074798940
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
                    i32.const 1074798944
                    i32.const 1074798944
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
                    i32.const 1074798628
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
                      i32.const 1074798628
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
                      i32.const 1074798928
                      local.get 1
                      i32.store
                      i32.const 1074798920
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
                      i32.const 1074798940
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
                      i32.const 1074798628
                      i64.load align=4
                      local.set 9
                      local.get 3
                      i32.const 16
                      i32.add
                      i32.const 1074798636
                      i64.load align=4
                      i64.store align=4
                      local.get 3
                      local.get 9
                      i64.store offset=8 align=4
                      i32.const 1074798632
                      local.get 4
                      i32.store
                      i32.const 1074798628
                      local.get 1
                      i32.store
                      i32.const 1074798636
                      local.get 3
                      i32.const 8
                      i32.add
                      i32.store
                      i32.const 1074798640
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
                        call 63
                        br 7 (;@3;)
                      end
                      local.get 0
                      i32.const 248
                      i32.and
                      i32.const 1074798644
                      i32.add
                      local.set 1
                      block (result i32)  ;; label = @10
                        i32.const 1074798908
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
                          i32.const 1074798908
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
                    i32.const 1074798928
                    i32.load
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 2
                    i32.const 1074798924
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
                      call 26
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
                      call 63
                      br 8 (;@1;)
                    end
                    local.get 3
                    i32.const 248
                    i32.and
                    i32.const 1074798644
                    i32.add
                    local.set 0
                    block (result i32)  ;; label = @9
                      i32.const 1074798908
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
                        i32.const 1074798908
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
                  i32.const 1074798920
                  local.get 0
                  local.get 5
                  i32.sub
                  local.tee 1
                  i32.store
                  i32.const 1074798928
                  i32.const 1074798928
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
                i32.const 1074798924
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
                    i32.const 1074798924
                    i32.const 0
                    i32.store
                    i32.const 1074798916
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
                  i32.const 1074798916
                  local.get 2
                  i32.store
                  i32.const 1074798924
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
              i32.const 1074798928
              i32.const 1074798928
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
              i32.const 1074798920
              i32.const 1074798920
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
              i32.const 1074798940
              i32.const 2097152
              i32.store
              br 2 (;@3;)
            end
            i32.const 1074798928
            local.get 4
            i32.store
            i32.const 1074798920
            i32.const 1074798920
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
          i32.const 1074798924
          local.get 4
          i32.store
          i32.const 1074798916
          i32.const 1074798916
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
        i32.const 1074798920
        i32.load
        local.tee 1
        local.get 5
        i32.le_u
        br_if 0 (;@2;)
        i32.const 1074798920
        local.get 1
        local.get 5
        i32.sub
        local.tee 1
        i32.store
        i32.const 1074798928
        i32.const 1074798928
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
  (func (;18;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
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
          local.tee 3
          i32.const 5
          i32.eq
          br_if 1 (;@2;)
          local.get 8
          local.get 4
          local.get 10
          i32.add
          local.tee 5
          i32.eq
          if  ;; label = @4
            i32.const 4
            local.set 9
            br 2 (;@2;)
          end
          local.get 1
          local.get 5
          i32.const 1
          i32.add
          i32.store
          local.get 3
          i32.const 1
          i32.add
          local.set 4
          local.get 5
          i32.load8_s
          local.tee 5
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
          local.get 5
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
        end
        local.get 3
        i32.const 4
        i32.eq
        local.get 5
        i32.const 15
        i32.gt_u
        i32.and
        br_if 0 (;@2;)
        i32.const 14
        local.set 9
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                br_table 2 (;@4;) 0 (;@6;) 1 (;@5;) 4 (;@2;)
              end
              local.get 2
              i32.const 4
              i32.add
              local.get 1
              call 61
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
            call 61
            local.get 2
            i32.load8_u offset=8
            local.set 3
            local.get 2
            i32.load offset=4
            local.tee 10
            i32.const -2147483648
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const -2147483646
              i32.store offset=24
              local.get 0
              local.get 3
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
            local.tee 9
            i64.load16_u align=1
            local.set 20
            local.get 2
            i64.load32_u offset=9 align=1
            local.set 17
            local.get 2
            i32.const 4
            i32.add
            local.get 1
            call 61
            local.get 2
            i32.load8_u offset=8
            local.set 15
            local.get 3
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
              local.tee 13
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
              local.get 9
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
              local.set 3
              i32.const 0
              local.set 8
              global.get 0
              i32.const 16
              i32.sub
              local.tee 5
              global.set 0
              local.get 1
              local.tee 9
              i32.load offset=4
              local.set 14
              local.get 1
              i32.load
              local.set 11
              i32.const -5
              local.set 1
              i32.const 5
              local.set 6
              block  ;; label = @6
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 1
                    local.tee 4
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 14
                    local.get 1
                    local.get 11
                    i32.add
                    local.tee 1
                    i32.const 5
                    i32.add
                    local.tee 12
                    i32.eq
                    if  ;; label = @9
                      i32.const 4
                      local.set 6
                      br 2 (;@7;)
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
                    local.get 3
                    i32.shl
                    local.get 8
                    i32.or
                    local.set 8
                    local.get 3
                    i32.const 7
                    i32.add
                    local.set 3
                    local.get 12
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                  end
                  local.get 4
                  i32.const -1
                  i32.eq
                  local.get 12
                  i32.const 15
                  i32.gt_u
                  i32.and
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 4
                  i32.const 1
                  local.set 6
                  i32.const 0
                  local.set 3
                  block  ;; label = @8
                    i32.const 1048576
                    local.get 8
                    local.get 8
                    i32.const 1048576
                    i32.ge_u
                    select
                    i32.const 0
                    local.get 14
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
                    if  ;; label = @9
                      i32.const 1074798488
                      i32.load8_u
                      drop
                      local.get 1
                      call 17
                      local.tee 6
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 1
                      local.set 3
                    end
                    local.get 5
                    local.get 6
                    i32.store offset=8
                    local.get 5
                    local.get 3
                    i32.store offset=4
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 5
                        local.get 4
                        i32.store offset=12
                        local.get 4
                        local.get 8
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 14
                        local.get 4
                        local.get 11
                        i32.add
                        local.tee 1
                        i32.const 5
                        i32.add
                        local.tee 3
                        i32.eq
                        if  ;; label = @11
                          local.get 7
                          i32.const -2147483648
                          i32.store
                          local.get 7
                          i32.const 4
                          i32.store8 offset=4
                          local.get 5
                          i32.load offset=4
                          local.tee 1
                          i32.eqz
                          br_if 5 (;@6;)
                          local.get 5
                          i32.load offset=8
                          local.get 1
                          call 2
                          br 5 (;@6;)
                        else
                          local.get 9
                          local.get 1
                          i32.const 6
                          i32.add
                          i32.store
                          local.get 3
                          i32.load8_u
                          local.set 1
                          local.get 5
                          i32.load offset=4
                          local.get 4
                          i32.eq
                          if  ;; label = @12
                            local.get 5
                            i32.const 4
                            i32.add
                            call 60
                            local.get 5
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
                          br 2 (;@9;)
                        end
                        unreachable
                      end
                    end
                    local.get 7
                    local.get 5
                    i64.load offset=4 align=4
                    i64.store align=4
                    local.get 7
                    i32.const 8
                    i32.add
                    local.get 5
                    i32.const 12
                    i32.add
                    i32.load
                    i32.store
                    br 2 (;@6;)
                  end
                  i32.const 1
                  call 20
                  unreachable
                end
                local.get 7
                i32.const -2147483648
                i32.store
                local.get 7
                local.get 6
                i32.store8 offset=4
              end
              local.get 5
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
              local.set 3
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
              local.get 13
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 13
              call 2
            end
            local.get 10
            i32.eqz
            br_if 3 (;@1;)
            local.get 16
            local.get 10
            call 2
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
        local.get 3
        i32.store offset=16
        local.get 0
        local.get 13
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
        local.get 10
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
      local.get 9
      i32.store8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;19;) (type 2) (param i32 i32)
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
            i32.const 1074798488
            i32.load8_u
            drop
            local.get 3
            call 17
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
          i32.const 1049068
          local.get 1
          call 13
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
          i32.const 1049172
          i32.store offset=8
          local.get 0
          i32.const 1049156
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
          i32.const 1051904
          i32.store offset=24
          local.get 0
          i64.const 2
          i64.store offset=36 align=4
          local.get 0
          local.get 0
          i32.const 16
          i32.add
          i64.extend_i32_u
          i64.const 25769803776
          i64.or
          i64.store offset=56
          local.get 0
          local.get 0
          i32.const 8
          i32.add
          i64.extend_i32_u
          i64.const 30064771072
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
          i32.const 1049276
          call 29
          unreachable
        end
        call 28
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
  (func (;20;) (type 3) (param i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      call 28
    end
    unreachable)
  (func (;21;) (type 4) (param i32 i32 i32)
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
    i32.const 1052308
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 12884901888
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
    call 29
    unreachable)
  (func (;22;) (type 4) (param i32 i32 i32)
    (local i32 i32)
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
      i32.const 16
      i32.sub
      local.tee 4
      global.set 0
      local.get 4
      i32.const 8
      i32.add
      local.get 0
      local.get 3
      local.get 2
      call 59
      local.get 4
      i32.load offset=8
      local.tee 3
      i32.const -2147483647
      i32.ne
      if  ;; label = @2
        local.get 4
        i32.load offset=12
        drop
        local.get 3
        call 20
        unreachable
      end
      local.get 4
      i32.const 16
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
    call 66
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8)
  (func (;23;) (type 2) (param i32 i32)
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
            call 22
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
          call 22
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
          call 22
          local.get 1
          local.get 0
          local.get 6
          call 22
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
        call 22
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
        call 22
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
                call 22
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
              call 22
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
              call 22
              local.get 1
              local.get 8
              local.get 0
              call 22
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
            call 22
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
            call 22
            local.get 1
            local.get 8
            local.get 0
            call 22
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
      call 22
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
      call 22
      local.get 1
      local.get 7
      local.get 6
      call 22
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
      call 22
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
          call 60
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
  (func (;24;) (type 3) (param i32)
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
        i32.const 1074798924
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
          i32.const 1074798916
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
        call 26
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
                  i32.const 1074798928
                  i32.load
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1074798924
                  i32.load
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 2
                  local.get 3
                  i32.const -8
                  i32.and
                  local.tee 2
                  call 26
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
                  i32.const 1074798924
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1074798916
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
              call 63
              i32.const 0
              local.set 1
              i32.const 1074798948
              i32.const 1074798948
              i32.load
              i32.const 1
              i32.sub
              local.tee 0
              i32.store
              local.get 0
              br_if 4 (;@1;)
              i32.const 1074798636
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
              i32.const 1074798948
              i32.const 4095
              local.get 1
              local.get 1
              i32.const 4095
              i32.le_u
              select
              i32.store
              return
            end
            i32.const 1074798928
            local.get 1
            i32.store
            i32.const 1074798920
            i32.const 1074798920
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
            i32.const 1074798924
            i32.load
            local.get 1
            i32.eq
            if  ;; label = @5
              i32.const 1074798916
              i32.const 0
              i32.store
              i32.const 1074798924
              i32.const 0
              i32.store
            end
            local.get 0
            i32.const 1074798940
            i32.load
            local.tee 3
            i32.le_u
            br_if 3 (;@1;)
            i32.const 1074798928
            i32.load
            local.tee 2
            i32.eqz
            br_if 3 (;@1;)
            i32.const 0
            local.set 0
            i32.const 1074798920
            i32.load
            local.tee 4
            i32.const 41
            i32.lt_u
            br_if 2 (;@2;)
            i32.const 1074798628
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
          i32.const 1074798924
          local.get 1
          i32.store
          i32.const 1074798916
          i32.const 1074798916
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
        i32.const 1074798644
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 1074798908
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
            i32.const 1074798908
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
      i32.const 1074798636
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
      i32.const 1074798948
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
      i32.const 1074798940
      i32.const -1
      i32.store
    end)
  (func (;25;) (type 4) (param i32 i32 i32)
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
    call 29
    unreachable)
  (func (;26;) (type 2) (param i32 i32)
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
          i32.const 1074798500
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
          i32.const 1074798912
          i32.const 1074798912
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
        i32.const 1074798908
        i32.const 1074798908
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
  (func (;27;) (type 2) (param i32 i32)
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
        i32.const 1074798924
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
          i32.const 1074798916
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
        call 26
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
              i32.const 1074798928
              i32.load
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 1074798924
              i32.load
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 2
              call 26
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
              i32.const 1074798924
              i32.load
              i32.ne
              br_if 1 (;@4;)
              i32.const 1074798916
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
            call 63
            return
          end
          local.get 1
          i32.const 248
          i32.and
          i32.const 1074798644
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1074798908
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
              i32.const 1074798908
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
        i32.const 1074798928
        local.get 0
        i32.store
        i32.const 1074798920
        i32.const 1074798920
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
        i32.const 1074798924
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1074798916
        i32.const 0
        i32.store
        i32.const 1074798924
        i32.const 0
        i32.store
        return
      end
      i32.const 1074798924
      local.get 0
      i32.store
      i32.const 1074798916
      i32.const 1074798916
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
  (func (;28;) (type 6)
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
    i32.const 1049112
    i32.store offset=8
    local.get 0
    i64.const 4
    i64.store offset=16 align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 1049140
    call 29
    unreachable)
  (func (;29;) (type 2) (param i32 i32)
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
      i32.const 11
      local.get 2
      call 64
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
    i32.const 12
    local.get 2
    call 64
    unreachable)
  (func (;30;) (type 4) (param i32 i32 i32)
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
      call 20
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
      call 20
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
    call 31
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
      call 20
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
  (func (;31;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      local.get 2
      i32.load offset=4
      if  ;; label = @2
        local.get 2
        i32.load offset=8
        local.tee 3
        if  ;; label = @3
          block (result i32)  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load
                local.tee 2
                i32.const 4
                i32.sub
                local.tee 5
                i32.load
                local.tee 8
                i32.const -8
                i32.and
                local.tee 4
                i32.const 4
                i32.const 8
                local.get 8
                i32.const 3
                i32.and
                local.tee 7
                select
                local.get 3
                i32.add
                i32.ge_u
                if  ;; label = @7
                  local.get 7
                  i32.const 0
                  local.get 4
                  local.get 3
                  i32.const 39
                  i32.add
                  i32.gt_u
                  select
                  br_if 1 (;@6;)
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
                  local.set 3
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 7
                      i32.eqz
                      if  ;; label = @10
                        local.get 3
                        i32.const 256
                        i32.lt_u
                        local.get 4
                        local.get 3
                        i32.const 4
                        i32.or
                        i32.lt_u
                        i32.or
                        local.get 4
                        local.get 3
                        i32.sub
                        i32.const 131073
                        i32.ge_u
                        i32.or
                        br_if 1 (;@9;)
                        br 2 (;@8;)
                      end
                      local.get 2
                      i32.const 8
                      i32.sub
                      local.tee 7
                      local.get 4
                      i32.add
                      local.set 6
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            local.get 4
                            i32.gt_u
                            if  ;; label = @13
                              local.get 6
                              i32.const 1074798928
                              i32.load
                              i32.eq
                              br_if 3 (;@10;)
                              local.get 6
                              i32.const 1074798924
                              i32.load
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 6
                              i32.load offset=4
                              local.tee 8
                              i32.const 2
                              i32.and
                              br_if 4 (;@9;)
                              local.get 8
                              i32.const -8
                              i32.and
                              local.tee 8
                              local.get 4
                              i32.add
                              local.tee 4
                              local.get 3
                              i32.lt_u
                              br_if 4 (;@9;)
                              local.get 6
                              local.get 8
                              call 26
                              local.get 4
                              local.get 3
                              i32.sub
                              local.tee 6
                              i32.const 16
                              i32.lt_u
                              br_if 1 (;@12;)
                              local.get 5
                              local.get 3
                              local.get 5
                              i32.load
                              i32.const 1
                              i32.and
                              i32.or
                              i32.const 2
                              i32.or
                              i32.store
                              local.get 3
                              local.get 7
                              i32.add
                              local.tee 3
                              local.get 6
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 7
                              i32.add
                              local.tee 5
                              local.get 5
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 3
                              local.get 6
                              call 27
                              local.get 2
                              br 9 (;@4;)
                            end
                            local.get 4
                            local.get 3
                            i32.sub
                            local.tee 4
                            i32.const 15
                            i32.le_u
                            br_if 4 (;@8;)
                            local.get 5
                            local.get 3
                            local.get 8
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 2
                            i32.or
                            i32.store
                            local.get 3
                            local.get 7
                            i32.add
                            local.tee 3
                            local.get 4
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 6
                            local.get 6
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 3
                            local.get 4
                            call 27
                            local.get 2
                            br 8 (;@4;)
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
                          local.get 7
                          i32.add
                          local.tee 3
                          local.get 3
                          i32.load offset=4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 2
                          br 7 (;@4;)
                        end
                        i32.const 1074798916
                        i32.load
                        local.get 4
                        i32.add
                        local.tee 4
                        local.get 3
                        i32.lt_u
                        br_if 1 (;@9;)
                        block  ;; label = @11
                          local.get 4
                          local.get 3
                          i32.sub
                          local.tee 6
                          i32.const 15
                          i32.le_u
                          if  ;; label = @12
                            local.get 5
                            local.get 8
                            i32.const 1
                            i32.and
                            local.get 4
                            i32.or
                            i32.const 2
                            i32.or
                            i32.store
                            local.get 4
                            local.get 7
                            i32.add
                            local.tee 3
                            local.get 3
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            local.set 6
                            i32.const 0
                            local.set 3
                            br 1 (;@11;)
                          end
                          local.get 5
                          local.get 3
                          local.get 8
                          i32.const 1
                          i32.and
                          i32.or
                          i32.const 2
                          i32.or
                          i32.store
                          local.get 3
                          local.get 7
                          i32.add
                          local.tee 3
                          local.get 6
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 4
                          local.get 7
                          i32.add
                          local.tee 5
                          local.get 6
                          i32.store
                          local.get 5
                          local.get 5
                          i32.load offset=4
                          i32.const -2
                          i32.and
                          i32.store offset=4
                        end
                        i32.const 1074798924
                        local.get 3
                        i32.store
                        i32.const 1074798916
                        local.get 6
                        i32.store
                        local.get 2
                        br 6 (;@4;)
                      end
                      i32.const 1074798920
                      i32.load
                      local.get 4
                      i32.add
                      local.tee 4
                      local.get 3
                      i32.gt_u
                      br_if 4 (;@5;)
                    end
                    i32.const 0
                    local.get 1
                    call 17
                    local.tee 3
                    i32.eqz
                    br_if 4 (;@4;)
                    drop
                    local.get 3
                    local.get 2
                    i32.const -4
                    i32.const -8
                    local.get 5
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
                    local.get 1
                    local.get 1
                    local.get 3
                    i32.gt_u
                    select
                    call 66
                    local.get 2
                    call 24
                    local.set 2
                  end
                  local.get 2
                  br 3 (;@4;)
                end
                i32.const 1056537
                i32.const 46
                i32.const 1056584
                call 25
                unreachable
              end
              i32.const 1056600
              i32.const 46
              i32.const 1056648
              call 25
              unreachable
            end
            local.get 5
            local.get 3
            local.get 8
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 3
            local.get 7
            i32.add
            local.tee 5
            local.get 4
            local.get 3
            i32.sub
            local.tee 3
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 1074798920
            local.get 3
            i32.store
            i32.const 1074798928
            local.get 5
            i32.store
            local.get 2
          end
          br 2 (;@1;)
        end
      end
      i32.const 1074798488
      i32.load8_u
      drop
      local.get 1
      call 17
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
  (func (;32;) (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1049060
    i32.const 5
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 1))
  (func (;33;) (type 3) (param i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 1
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      call 2
    end)
  (func (;34;) (type 1) (param i32 i32 i32) (result i32)
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
      call 30
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
    call 66
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;35;) (type 0) (param i32 i32) (result i32)
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
              call 20
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
              call 20
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
            call 31
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
              call 20
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
        call 30
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
      call 66
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
  (func (;36;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.const 1049068
    local.get 1
    call 13)
  (func (;37;) (type 3) (param i32)
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
    i32.const 1052276
    i32.store offset=8
    local.get 1
    i64.const 2
    i64.store offset=20 align=4
    local.get 1
    i64.const 12884901888
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
    i32.const 1051940
    call 29
    unreachable)
  (func (;38;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call 39)
  (func (;39;) (type 10) (param i64 i32) (result i32)
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
        i32.const 1051958
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
        i32.const 1051958
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
      i32.const 1051958
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
        i32.const 1051958
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
    call 40
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;40;) (type 7) (param i32 i32 i32 i32 i32) (result i32)
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
      call 41
      if  ;; label = @2
        i32.const 1
        return
      end
      local.get 5
      local.get 3
      local.get 4
      local.get 0
      i32.load offset=12
      call_indirect (type 1)
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
            call 41
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
          call 41
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
              call_indirect (type 0)
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
          call_indirect (type 1)
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
        call_indirect (type 1)
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
          call_indirect (type 0)
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
      call 41
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 4
      local.get 7
      i32.load offset=12
      call_indirect (type 1)
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
        call_indirect (type 0)
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
  (func (;41;) (type 7) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 0)
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
    call_indirect (type 1))
  (func (;42;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 0))
  (func (;43;) (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    local.get 1
    i32.load offset=24
    local.get 0
    call 13)
  (func (;44;) (type 0) (param i32 i32) (result i32)
    (local i64 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 5
    global.set 0
    local.get 0
    i32.load
    i64.load
    local.set 2
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=28
          local.tee 0
          i32.const 16
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.const 32
            i32.and
            br_if 1 (;@3;)
            local.get 2
            local.get 1
            call 39
            br 3 (;@1;)
          end
          i32.const 127
          local.set 0
          loop  ;; label = @4
            local.get 5
            local.get 0
            local.tee 4
            i32.add
            local.tee 6
            local.get 2
            i32.wrap_i64
            i32.const 15
            i32.and
            local.tee 3
            i32.const 48
            i32.or
            local.get 3
            i32.const 87
            i32.add
            local.get 3
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get 0
            i32.const 1
            i32.sub
            local.set 0
            local.get 2
            i64.const 16
            i64.lt_u
            local.get 2
            i64.const 4
            i64.shr_u
            local.set 2
            i32.eqz
            br_if 0 (;@4;)
          end
          br 1 (;@2;)
        end
        i32.const 127
        local.set 0
        loop  ;; label = @3
          local.get 5
          local.get 0
          local.tee 4
          i32.add
          local.tee 6
          local.get 2
          i32.wrap_i64
          i32.const 15
          i32.and
          local.tee 3
          i32.const 48
          i32.or
          local.get 3
          i32.const 55
          i32.add
          local.get 3
          i32.const 10
          i32.lt_u
          select
          i32.store8
          local.get 0
          i32.const 1
          i32.sub
          local.set 0
          local.get 2
          i64.const 16
          i64.lt_u
          local.get 2
          i64.const 4
          i64.shr_u
          local.set 2
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 4
        i32.const 129
        i32.ge_u
        if  ;; label = @3
          local.get 4
          call 37
          unreachable
        end
        local.get 1
        i32.const 1051956
        i32.const 2
        local.get 6
        i32.const 128
        local.get 4
        i32.sub
        call 40
        br 1 (;@1;)
      end
      local.get 4
      i32.const 129
      i32.ge_u
      if  ;; label = @2
        local.get 4
        call 37
        unreachable
      end
      local.get 1
      i32.const 1051956
      i32.const 2
      local.get 6
      i32.const 128
      local.get 4
      i32.sub
      call 40
    end
    local.get 5
    i32.const 128
    i32.add
    global.set 0)
  (func (;45;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 1
              i32.const 7
              i32.and
              local.tee 2
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=160
              local.tee 3
              i32.const 41
              i32.ge_u
              br_if 3 (;@2;)
              local.get 3
              i32.eqz
              if  ;; label = @6
                local.get 0
                i32.const 0
                i32.store offset=160
                br 3 (;@3;)
              end
              local.get 3
              i32.const 1
              i32.sub
              i32.const 1073741823
              i32.and
              local.tee 5
              i32.const 1
              i32.add
              local.tee 4
              i32.const 3
              i32.and
              local.set 6
              local.get 2
              i32.const 2
              i32.shl
              i32.const 1051340
              i32.add
              i32.load
              local.get 2
              i32.shr_u
              i64.extend_i32_u
              local.set 8
              local.get 5
              i32.const 3
              i32.lt_u
              if  ;; label = @6
                local.get 0
                local.set 2
                br 2 (;@4;)
              end
              local.get 4
              i32.const 2147483644
              i32.and
              local.set 5
              local.get 0
              local.set 2
              loop  ;; label = @6
                local.get 2
                local.get 2
                i64.load32_u
                local.get 8
                i64.mul
                local.get 7
                i64.add
                local.tee 7
                i64.store32
                local.get 2
                i32.const 4
                i32.add
                local.tee 4
                local.get 4
                i64.load32_u
                local.get 8
                i64.mul
                local.get 7
                i64.const 32
                i64.shr_u
                i64.add
                local.tee 7
                i64.store32
                local.get 2
                i32.const 8
                i32.add
                local.tee 4
                local.get 4
                i64.load32_u
                local.get 8
                i64.mul
                local.get 7
                i64.const 32
                i64.shr_u
                i64.add
                local.tee 7
                i64.store32
                local.get 2
                i32.const 12
                i32.add
                local.tee 4
                local.get 4
                i64.load32_u
                local.get 8
                i64.mul
                local.get 7
                i64.const 32
                i64.shr_u
                i64.add
                local.tee 9
                i64.store32
                local.get 9
                i64.const 32
                i64.shr_u
                local.set 7
                local.get 2
                i32.const 16
                i32.add
                local.set 2
                local.get 5
                i32.const 4
                i32.sub
                local.tee 5
                br_if 0 (;@6;)
              end
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=160
            local.tee 3
            i32.const 41
            i32.ge_u
            br_if 2 (;@2;)
            local.get 3
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.const 0
              i32.store offset=160
              return
            end
            local.get 1
            i32.const 2
            i32.shl
            i32.const 1051340
            i32.add
            i64.load32_u
            local.set 8
            local.get 3
            i32.const 1
            i32.sub
            i32.const 1073741823
            i32.and
            local.tee 1
            i32.const 1
            i32.add
            local.tee 2
            i32.const 3
            i32.and
            local.set 6
            block  ;; label = @5
              local.get 1
              i32.const 3
              i32.lt_u
              if  ;; label = @6
                local.get 0
                local.set 2
                br 1 (;@5;)
              end
              local.get 2
              i32.const 2147483644
              i32.and
              local.set 5
              local.get 0
              local.set 2
              loop  ;; label = @6
                local.get 2
                local.get 2
                i64.load32_u
                local.get 8
                i64.mul
                local.get 7
                i64.add
                local.tee 7
                i64.store32
                local.get 2
                i32.const 4
                i32.add
                local.tee 1
                local.get 1
                i64.load32_u
                local.get 8
                i64.mul
                local.get 7
                i64.const 32
                i64.shr_u
                i64.add
                local.tee 7
                i64.store32
                local.get 2
                i32.const 8
                i32.add
                local.tee 1
                local.get 1
                i64.load32_u
                local.get 8
                i64.mul
                local.get 7
                i64.const 32
                i64.shr_u
                i64.add
                local.tee 7
                i64.store32
                local.get 2
                i32.const 12
                i32.add
                local.tee 1
                local.get 1
                i64.load32_u
                local.get 8
                i64.mul
                local.get 7
                i64.const 32
                i64.shr_u
                i64.add
                local.tee 9
                i64.store32
                local.get 9
                i64.const 32
                i64.shr_u
                local.set 7
                local.get 2
                i32.const 16
                i32.add
                local.set 2
                local.get 5
                i32.const 4
                i32.sub
                local.tee 5
                br_if 0 (;@6;)
              end
            end
            local.get 6
            if  ;; label = @5
              loop  ;; label = @6
                local.get 2
                local.get 2
                i64.load32_u
                local.get 8
                i64.mul
                local.get 7
                i64.add
                local.tee 9
                i64.store32
                local.get 2
                i32.const 4
                i32.add
                local.set 2
                local.get 9
                i64.const 32
                i64.shr_u
                local.set 7
                local.get 6
                i32.const 1
                i32.sub
                local.tee 6
                br_if 0 (;@6;)
              end
            end
            block  ;; label = @5
              local.get 0
              local.get 9
              i64.const 4294967296
              i64.ge_u
              if (result i32)  ;; label = @6
                local.get 3
                i32.const 40
                i32.eq
                br_if 1 (;@5;)
                local.get 0
                local.get 3
                i32.const 2
                i32.shl
                i32.add
                local.get 7
                i64.store32
                local.get 3
                i32.const 1
                i32.add
              else
                local.get 3
              end
              i32.store offset=160
              return
            end
            br 3 (;@1;)
          end
          local.get 6
          if  ;; label = @4
            loop  ;; label = @5
              local.get 2
              local.get 2
              i64.load32_u
              local.get 8
              i64.mul
              local.get 7
              i64.add
              local.tee 9
              i64.store32
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 9
              i64.const 32
              i64.shr_u
              local.set 7
              local.get 6
              i32.const 1
              i32.sub
              local.tee 6
              br_if 0 (;@5;)
            end
          end
          block  ;; label = @4
            local.get 0
            local.get 9
            i64.const 4294967296
            i64.ge_u
            if (result i32)  ;; label = @5
              local.get 3
              i32.const 40
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              local.get 3
              i32.const 2
              i32.shl
              i32.add
              local.get 7
              i64.store32
              local.get 3
              i32.const 1
              i32.add
            else
              local.get 3
            end
            i32.store offset=160
            br 1 (;@3;)
          end
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 8
          i32.and
          if  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=160
                local.tee 3
                i32.const 41
                i32.lt_u
                if  ;; label = @7
                  local.get 3
                  i32.eqz
                  if  ;; label = @8
                    i32.const 0
                    local.set 3
                    br 3 (;@5;)
                  end
                  local.get 3
                  i32.const 1
                  i32.sub
                  i32.const 1073741823
                  i32.and
                  local.tee 2
                  i32.const 1
                  i32.add
                  local.tee 5
                  i32.const 3
                  i32.and
                  local.set 6
                  local.get 2
                  i32.const 3
                  i32.lt_u
                  if  ;; label = @8
                    i64.const 0
                    local.set 7
                    local.get 0
                    local.set 2
                    br 2 (;@6;)
                  end
                  local.get 5
                  i32.const 2147483644
                  i32.and
                  local.set 5
                  i64.const 0
                  local.set 7
                  local.get 0
                  local.set 2
                  loop  ;; label = @8
                    local.get 2
                    local.get 2
                    i64.load32_u
                    i64.const 390625
                    i64.mul
                    local.get 7
                    i64.add
                    local.tee 7
                    i64.store32
                    local.get 2
                    i32.const 4
                    i32.add
                    local.tee 4
                    local.get 4
                    i64.load32_u
                    i64.const 390625
                    i64.mul
                    local.get 7
                    i64.const 32
                    i64.shr_u
                    i64.add
                    local.tee 7
                    i64.store32
                    local.get 2
                    i32.const 8
                    i32.add
                    local.tee 4
                    local.get 4
                    i64.load32_u
                    i64.const 390625
                    i64.mul
                    local.get 7
                    i64.const 32
                    i64.shr_u
                    i64.add
                    local.tee 7
                    i64.store32
                    local.get 2
                    i32.const 12
                    i32.add
                    local.tee 4
                    local.get 4
                    i64.load32_u
                    i64.const 390625
                    i64.mul
                    local.get 7
                    i64.const 32
                    i64.shr_u
                    i64.add
                    local.tee 8
                    i64.store32
                    local.get 8
                    i64.const 32
                    i64.shr_u
                    local.set 7
                    local.get 2
                    i32.const 16
                    i32.add
                    local.set 2
                    local.get 5
                    i32.const 4
                    i32.sub
                    local.tee 5
                    br_if 0 (;@8;)
                  end
                  br 1 (;@6;)
                end
                br 4 (;@2;)
              end
              local.get 6
              if  ;; label = @6
                loop  ;; label = @7
                  local.get 2
                  local.get 2
                  i64.load32_u
                  i64.const 390625
                  i64.mul
                  local.get 7
                  i64.add
                  local.tee 8
                  i64.store32
                  local.get 2
                  i32.const 4
                  i32.add
                  local.set 2
                  local.get 8
                  i64.const 32
                  i64.shr_u
                  local.set 7
                  local.get 6
                  i32.const 1
                  i32.sub
                  local.tee 6
                  br_if 0 (;@7;)
                end
              end
              local.get 8
              i64.const 4294967296
              i64.lt_u
              br_if 0 (;@5;)
              local.get 3
              i32.const 40
              i32.eq
              br_if 2 (;@3;)
              local.get 0
              local.get 3
              i32.const 2
              i32.shl
              i32.add
              local.get 7
              i64.store32
              local.get 3
              i32.const 1
              i32.add
              local.set 3
            end
            local.get 0
            local.get 3
            i32.store offset=160
          end
          local.get 1
          i32.const 16
          i32.and
          if  ;; label = @4
            local.get 0
            i32.const 1049380
            i32.const 2
            call 46
          end
          local.get 1
          i32.const 32
          i32.and
          if  ;; label = @4
            local.get 0
            i32.const 1049388
            i32.const 3
            call 46
          end
          local.get 1
          i32.const 64
          i32.and
          if  ;; label = @4
            local.get 0
            i32.const 1049400
            i32.const 5
            call 46
          end
          local.get 1
          i32.const 128
          i32.and
          if  ;; label = @4
            local.get 0
            i32.const 1049420
            i32.const 10
            call 46
          end
          local.get 1
          i32.const 256
          i32.and
          if  ;; label = @4
            local.get 0
            i32.const 1049460
            i32.const 19
            call 46
          end
          local.get 0
          local.get 1
          call 47
          drop
          return
        end
        br 1 (;@1;)
      end
      local.get 3
      i32.const 40
      i32.const 1054496
      call 21
      unreachable
    end
    i32.const 40
    i32.const 40
    i32.const 1054496
    call 9
    unreachable)
  (func (;46;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
    global.get 0
    i32.const 160
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.const 160
    call 67
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 0
              i32.load offset=160
              local.tee 4
              i32.le_u
              if  ;; label = @6
                local.get 4
                i32.const 41
                i32.ge_u
                br_if 2 (;@4;)
                local.get 4
                i32.const 2
                i32.shl
                local.set 8
                local.get 4
                i32.const 1
                i32.add
                local.set 12
                local.get 1
                local.get 2
                i32.const 2
                i32.shl
                i32.add
                local.set 13
                loop  ;; label = @7
                  local.get 9
                  local.get 6
                  i32.const 2
                  i32.shl
                  i32.add
                  local.set 3
                  loop  ;; label = @8
                    local.get 6
                    local.set 2
                    local.get 3
                    local.set 5
                    local.get 1
                    local.get 13
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 3
                    i32.const 4
                    i32.add
                    local.set 3
                    local.get 2
                    i32.const 1
                    i32.add
                    local.set 6
                    local.get 1
                    i32.load
                    local.set 7
                    local.get 1
                    i32.const 4
                    i32.add
                    local.tee 11
                    local.set 1
                    local.get 7
                    i32.eqz
                    br_if 0 (;@8;)
                  end
                  local.get 7
                  i64.extend_i32_u
                  local.set 17
                  i64.const 0
                  local.set 15
                  local.get 8
                  local.set 7
                  local.get 2
                  local.set 1
                  local.get 0
                  local.set 3
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 1
                      i32.const 40
                      i32.ge_u
                      br_if 1 (;@8;)
                      local.get 5
                      local.get 15
                      local.get 5
                      i64.load32_u
                      i64.add
                      local.get 3
                      i64.load32_u
                      local.get 17
                      i64.mul
                      i64.add
                      local.tee 16
                      i64.store32
                      local.get 16
                      i64.const 32
                      i64.shr_u
                      local.set 15
                      local.get 5
                      i32.const 4
                      i32.add
                      local.set 5
                      local.get 1
                      i32.const 1
                      i32.add
                      local.set 1
                      local.get 3
                      i32.const 4
                      i32.add
                      local.set 3
                      local.get 7
                      i32.const 4
                      i32.sub
                      local.tee 7
                      br_if 0 (;@9;)
                    end
                    local.get 10
                    local.get 16
                    i64.const 4294967296
                    i64.ge_u
                    if (result i32)  ;; label = @9
                      local.get 2
                      local.get 4
                      i32.add
                      local.tee 1
                      i32.const 40
                      i32.ge_u
                      br_if 6 (;@3;)
                      local.get 9
                      local.get 1
                      i32.const 2
                      i32.shl
                      i32.add
                      local.get 15
                      i64.store32
                      local.get 12
                    else
                      local.get 4
                    end
                    local.get 2
                    i32.add
                    local.tee 1
                    local.get 1
                    local.get 10
                    i32.lt_u
                    select
                    local.set 10
                    local.get 11
                    local.set 1
                    br 1 (;@7;)
                  end
                end
                local.get 1
                i32.const 40
                i32.const 1054496
                call 9
                unreachable
              end
              local.get 4
              i32.const 41
              i32.ge_u
              br_if 3 (;@2;)
              local.get 2
              i32.const 2
              i32.shl
              local.set 12
              local.get 2
              i32.const 1
              i32.add
              local.set 13
              local.get 0
              local.get 4
              i32.const 2
              i32.shl
              i32.add
              local.set 14
              local.get 0
              local.set 3
              loop  ;; label = @6
                local.get 9
                local.get 7
                i32.const 2
                i32.shl
                i32.add
                local.set 6
                loop  ;; label = @7
                  local.get 7
                  local.set 11
                  local.get 6
                  local.set 5
                  local.get 3
                  local.get 14
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 5
                  i32.const 4
                  i32.add
                  local.set 6
                  local.get 7
                  i32.const 1
                  i32.add
                  local.set 7
                  local.get 3
                  i32.load
                  local.set 8
                  local.get 3
                  i32.const 4
                  i32.add
                  local.tee 4
                  local.set 3
                  local.get 8
                  i32.eqz
                  br_if 0 (;@7;)
                end
                local.get 8
                i64.extend_i32_u
                local.set 17
                i64.const 0
                local.set 15
                local.get 12
                local.set 8
                local.get 11
                local.set 3
                local.get 1
                local.set 6
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 3
                    i32.const 40
                    i32.ge_u
                    br_if 1 (;@7;)
                    local.get 5
                    local.get 15
                    local.get 5
                    i64.load32_u
                    i64.add
                    local.get 6
                    i64.load32_u
                    local.get 17
                    i64.mul
                    i64.add
                    local.tee 16
                    i64.store32
                    local.get 16
                    i64.const 32
                    i64.shr_u
                    local.set 15
                    local.get 5
                    i32.const 4
                    i32.add
                    local.set 5
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 3
                    local.get 6
                    i32.const 4
                    i32.add
                    local.set 6
                    local.get 8
                    i32.const 4
                    i32.sub
                    local.tee 8
                    br_if 0 (;@8;)
                  end
                  local.get 10
                  local.get 16
                  i64.const 4294967296
                  i64.ge_u
                  if (result i32)  ;; label = @8
                    local.get 2
                    local.get 11
                    i32.add
                    local.tee 3
                    i32.const 40
                    i32.ge_u
                    br_if 7 (;@1;)
                    local.get 9
                    local.get 3
                    i32.const 2
                    i32.shl
                    i32.add
                    local.get 15
                    i64.store32
                    local.get 13
                  else
                    local.get 2
                  end
                  local.get 11
                  i32.add
                  local.tee 3
                  local.get 3
                  local.get 10
                  i32.lt_u
                  select
                  local.set 10
                  local.get 4
                  local.set 3
                  br 1 (;@6;)
                end
              end
              local.get 3
              i32.const 40
              i32.const 1054496
              call 9
              unreachable
            end
            local.get 0
            local.get 9
            i32.const 160
            call 66
            local.get 10
            i32.store offset=160
            local.get 9
            i32.const 160
            i32.add
            global.set 0
            return
          end
          local.get 4
          i32.const 40
          i32.const 1054496
          call 21
          unreachable
        end
        local.get 1
        i32.const 40
        i32.const 1054496
        call 9
        unreachable
      end
      local.get 4
      i32.const 40
      i32.const 1054496
      call 21
      unreachable
    end
    local.get 3
    i32.const 40
    i32.const 1054496
    call 9
    unreachable)
  (func (;47;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1280
        i32.lt_u
        if  ;; label = @3
          local.get 1
          i32.const 5
          i32.shr_u
          local.set 5
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=160
              local.tee 4
              if  ;; label = @6
                local.get 4
                i32.const 1
                i32.sub
                local.set 3
                local.get 4
                i32.const 2
                i32.shl
                local.get 0
                i32.add
                i32.const 4
                i32.sub
                local.set 2
                local.get 4
                local.get 5
                i32.add
                i32.const 2
                i32.shl
                local.get 0
                i32.add
                i32.const 4
                i32.sub
                local.set 6
                local.get 4
                i32.const 41
                i32.lt_u
                local.set 7
                loop  ;; label = @7
                  local.get 7
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 3
                  local.get 5
                  i32.add
                  local.tee 4
                  i32.const 40
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 6
                  local.get 2
                  i32.load
                  i32.store
                  local.get 6
                  i32.const 4
                  i32.sub
                  local.set 6
                  local.get 2
                  i32.const 4
                  i32.sub
                  local.set 2
                  local.get 3
                  i32.const 1
                  i32.sub
                  local.tee 3
                  i32.const -1
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 1
              i32.const 31
              i32.and
              local.set 8
              local.get 1
              i32.const 32
              i32.ge_u
              if  ;; label = @6
                local.get 0
                i32.const 0
                local.get 5
                i32.const 2
                i32.shl
                call 67
                drop
              end
              local.get 0
              i32.load offset=160
              local.get 5
              i32.add
              local.set 2
              local.get 8
              i32.eqz
              if  ;; label = @6
                local.get 0
                local.get 2
                i32.store offset=160
                local.get 0
                return
              end
              local.get 2
              i32.const 1
              i32.sub
              local.tee 7
              i32.const 39
              i32.gt_u
              br_if 3 (;@2;)
              local.get 2
              local.set 4
              local.get 0
              local.get 7
              i32.const 2
              i32.shl
              i32.add
              i32.load
              local.tee 6
              i32.const 0
              local.get 1
              i32.sub
              local.tee 3
              i32.shr_u
              local.tee 1
              i32.eqz
              br_if 4 (;@1;)
              local.get 2
              i32.const 39
              i32.le_u
              if  ;; label = @6
                local.get 0
                local.get 2
                i32.const 2
                i32.shl
                i32.add
                local.get 1
                i32.store
                local.get 2
                i32.const 1
                i32.add
                local.set 4
                br 5 (;@1;)
              end
              local.get 2
              i32.const 40
              i32.const 1054496
              call 9
              unreachable
            end
            local.get 3
            i32.const 40
            i32.const 1054496
            call 9
            unreachable
          end
          local.get 4
          i32.const 40
          i32.const 1054496
          call 9
          unreachable
        end
        i32.const 1054538
        i32.const 29
        i32.const 1054496
        call 25
        unreachable
      end
      local.get 7
      i32.const 40
      i32.const 1054496
      call 9
      unreachable
    end
    block  ;; label = @1
      local.get 2
      local.get 5
      i32.const 1
      i32.add
      local.tee 7
      i32.gt_u
      if  ;; label = @2
        local.get 3
        i32.const 31
        i32.and
        local.set 1
        local.get 2
        i32.const 2
        i32.shl
        local.get 0
        i32.add
        i32.const 8
        i32.sub
        local.set 3
        loop  ;; label = @3
          local.get 2
          i32.const 2
          i32.sub
          i32.const 40
          i32.ge_u
          br_if 2 (;@1;)
          local.get 3
          i32.const 4
          i32.add
          local.get 6
          local.get 8
          i32.shl
          local.get 3
          i32.load
          local.tee 6
          local.get 1
          i32.shr_u
          i32.or
          i32.store
          local.get 3
          i32.const 4
          i32.sub
          local.set 3
          local.get 7
          local.get 2
          i32.const 1
          i32.sub
          local.tee 2
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      i32.const 2
      i32.shl
      i32.add
      local.tee 1
      local.get 1
      i32.load
      local.get 8
      i32.shl
      i32.store
      local.get 0
      local.get 4
      i32.store offset=160
      local.get 0
      return
    end
    i32.const -1
    i32.const 40
    i32.const 1054496
    call 9
    unreachable)
  (func (;48;) (type 3) (param i32)
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
    i32.const 1054620
    i32.store offset=8
    local.get 1
    i64.const 4
    i64.store offset=16 align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call 29
    unreachable)
  (func (;49;) (type 11) (param i32 i32 i32 i32 i32 i32 i64 i64 i64)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block (result i32)  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    local.get 8
                    i64.gt_u
                    if  ;; label = @9
                      local.get 7
                      local.get 8
                      i64.sub
                      local.get 8
                      i64.le_u
                      br_if 3 (;@6;)
                      block  ;; label = @10
                        local.get 6
                        local.get 7
                        local.get 6
                        i64.sub
                        i64.lt_u
                        local.get 7
                        local.get 6
                        i64.const 1
                        i64.shl
                        i64.sub
                        local.get 8
                        i64.const 1
                        i64.shl
                        i64.ge_u
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          local.get 6
                          local.get 8
                          i64.gt_u
                          br_if 1 (;@10;)
                          br 10 (;@1;)
                        end
                        local.get 2
                        local.get 3
                        i32.lt_u
                        br_if 5 (;@5;)
                        br 8 (;@2;)
                      end
                      local.get 7
                      local.get 6
                      local.get 8
                      i64.sub
                      local.tee 6
                      i64.sub
                      local.get 6
                      i64.gt_u
                      br_if 8 (;@1;)
                      local.get 2
                      local.get 3
                      i32.lt_u
                      br_if 5 (;@4;)
                      local.get 1
                      local.get 3
                      i32.add
                      local.set 13
                      i32.const -1
                      local.set 10
                      local.get 3
                      local.set 9
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 9
                          local.tee 11
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 10
                          i32.const 1
                          i32.add
                          local.set 10
                          local.get 11
                          i32.const 1
                          i32.sub
                          local.tee 9
                          local.get 1
                          i32.add
                          local.tee 12
                          i32.load8_u
                          i32.const 57
                          i32.eq
                          br_if 0 (;@11;)
                        end
                        local.get 12
                        local.get 12
                        i32.load8_u
                        i32.const 1
                        i32.add
                        i32.store8
                        local.get 3
                        local.get 11
                        i32.le_u
                        br_if 7 (;@3;)
                        local.get 1
                        local.get 11
                        i32.add
                        i32.const 48
                        local.get 10
                        call 67
                        drop
                        br 7 (;@3;)
                      end
                      i32.const 49
                      local.get 3
                      i32.eqz
                      br_if 2 (;@7;)
                      drop
                      local.get 1
                      i32.const 49
                      i32.store8
                      local.get 3
                      i32.const 1
                      i32.ne
                      br_if 1 (;@8;)
                      i32.const 48
                      br 2 (;@7;)
                    end
                    local.get 0
                    i32.const 0
                    i32.store
                    return
                  end
                  local.get 1
                  i32.const 1
                  i32.add
                  i32.const 48
                  local.get 3
                  i32.const 1
                  i32.sub
                  call 67
                  drop
                  i32.const 48
                end
                local.set 9
                local.get 4
                i32.const 1
                i32.add
                i32.extend16_s
                local.tee 4
                local.get 5
                i32.extend16_s
                i32.le_s
                local.get 2
                local.get 3
                i32.le_u
                i32.or
                br_if 3 (;@3;)
                local.get 13
                local.get 9
                i32.store8
                local.get 3
                i32.const 1
                i32.add
                local.set 3
                br 3 (;@3;)
              end
              local.get 0
              i32.const 0
              i32.store
              return
            end
            local.get 3
            local.get 2
            i32.const 1051444
            call 21
            unreachable
          end
          local.get 3
          local.get 2
          i32.const 1051412
          call 21
          unreachable
        end
        local.get 2
        local.get 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        local.get 2
        i32.const 1051428
        call 21
        unreachable
      end
      local.get 0
      local.get 4
      i32.store16 offset=8
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      return
    end
    local.get 0
    i32.const 0
    i32.store)
  (func (;50;) (type 12) (param i32 i32 i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      if  ;; label = @2
        local.get 1
        i32.load8_u
        i32.const 48
        i32.le_u
        br_if 1 (;@1;)
        local.get 5
        i32.const 2
        i32.store16
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.extend16_s
                  local.tee 6
                  i32.const 0
                  i32.gt_s
                  if  ;; label = @8
                    local.get 5
                    local.get 1
                    i32.store offset=4
                    local.get 3
                    i32.const 65535
                    i32.and
                    local.tee 3
                    local.get 2
                    i32.lt_u
                    br_if 1 (;@7;)
                    local.get 5
                    i32.const 0
                    i32.store16 offset=12
                    local.get 5
                    local.get 2
                    i32.store offset=8
                    local.get 5
                    local.get 3
                    local.get 2
                    i32.sub
                    i32.store offset=16
                    local.get 4
                    br_if 2 (;@6;)
                    i32.const 2
                    local.set 1
                    br 5 (;@3;)
                  end
                  local.get 5
                  local.get 2
                  i32.store offset=32
                  local.get 5
                  local.get 1
                  i32.store offset=28
                  local.get 5
                  i32.const 2
                  i32.store16 offset=24
                  local.get 5
                  i32.const 0
                  i32.store16 offset=12
                  local.get 5
                  i32.const 2
                  i32.store offset=8
                  local.get 5
                  i32.const 1051553
                  i32.store offset=4
                  local.get 5
                  i32.const 0
                  local.get 6
                  i32.sub
                  local.tee 3
                  i32.store offset=16
                  i32.const 3
                  local.set 1
                  local.get 2
                  local.get 4
                  i32.ge_u
                  br_if 4 (;@3;)
                  local.get 4
                  local.get 2
                  i32.sub
                  local.tee 2
                  local.get 3
                  i32.le_u
                  br_if 4 (;@3;)
                  local.get 2
                  local.get 6
                  i32.add
                  local.set 4
                  br 3 (;@4;)
                end
                local.get 5
                i32.const 2
                i32.store16 offset=24
                local.get 5
                i32.const 1
                i32.store offset=20
                local.get 5
                i32.const 1051552
                i32.store offset=16
                local.get 5
                i32.const 2
                i32.store16 offset=12
                local.get 5
                local.get 3
                i32.store offset=8
                local.get 5
                local.get 2
                local.get 3
                i32.sub
                local.tee 2
                i32.store offset=32
                local.get 5
                local.get 1
                local.get 3
                i32.add
                i32.store offset=28
                local.get 2
                local.get 4
                i32.lt_u
                br_if 1 (;@5;)
                i32.const 3
                local.set 1
                br 3 (;@3;)
              end
              local.get 5
              i32.const 1
              i32.store offset=32
              local.get 5
              i32.const 1051552
              i32.store offset=28
              local.get 5
              i32.const 2
              i32.store16 offset=24
              br 1 (;@4;)
            end
            local.get 4
            local.get 2
            i32.sub
            local.set 4
          end
          local.get 5
          local.get 4
          i32.store offset=40
          local.get 5
          i32.const 0
          i32.store16 offset=36
          i32.const 4
          local.set 1
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 5
        i32.store
        return
      end
      i32.const 1051288
      i32.const 33
      i32.const 1051488
      call 25
      unreachable
    end
    i32.const 1051504
    i32.const 31
    i32.const 1051536
    call 25
    unreachable)
  (func (;51;) (type 0) (param i32 i32) (result i32)
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
            i64.extend_i32_u
            local.get 1
            call 39
            br 3 (;@1;)
          end
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
            i32.const 16
            i32.lt_u
            local.get 0
            i32.const 4
            i32.shr_u
            local.set 0
            i32.eqz
            br_if 0 (;@4;)
          end
          br 1 (;@2;)
        end
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
          i32.const 16
          i32.lt_u
          local.get 0
          i32.const 4
          i32.shr_u
          local.set 0
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 3
        i32.const 129
        i32.ge_u
        if  ;; label = @3
          local.get 3
          call 37
          unreachable
        end
        local.get 1
        i32.const 1051956
        i32.const 2
        local.get 5
        i32.const 128
        local.get 3
        i32.sub
        call 40
        br 1 (;@1;)
      end
      local.get 3
      i32.const 129
      i32.ge_u
      if  ;; label = @2
        local.get 3
        call 37
        unreachable
      end
      local.get 1
      i32.const 1051956
      i32.const 2
      local.get 5
      i32.const 128
      local.get 3
      i32.sub
      call 40
    end
    local.get 4
    i32.const 128
    i32.add
    global.set 0)
  (func (;52;) (type 4) (param i32 i32 i32)
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
    i32.const 1052360
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 12884901888
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
    call 29
    unreachable)
  (func (;53;) (type 3) (param i32)
    i32.const 1051638
    i32.const 43
    local.get 0
    call 25
    unreachable)
  (func (;54;) (type 0) (param i32 i32) (result i32)
    (local i32)
    i32.const 1
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load
      local.get 1
      call 51
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=20
      i32.const 1051620
      i32.const 2
      local.get 1
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 1)
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      call 51
      local.set 2
    end
    local.get 2)
  (func (;55;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    i32.const 1
    local.set 7
    block  ;; label = @1
      local.get 1
      i32.load offset=20
      local.tee 5
      i32.const 39
      local.get 1
      i32.load offset=24
      local.tee 10
      i32.load offset=16
      local.tee 8
      call_indirect (type 0)
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
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
                                          local.get 0
                                          i32.load
                                          local.tee 1
                                          br_table 2 (;@17;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 3 (;@16;) 5 (;@14;) 1 (;@18;) 1 (;@18;) 4 (;@15;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 11 (;@8;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 7 (;@12;) 0 (;@19;)
                                        end
                                        local.get 1
                                        i32.const 92
                                        i32.eq
                                        br_if 5 (;@13;)
                                      end
                                      local.get 1
                                      i32.const 767
                                      i32.gt_u
                                      br_if 6 (;@11;)
                                      br 8 (;@9;)
                                    end
                                    local.get 2
                                    i64.const 0
                                    i64.store offset=10 align=2
                                    local.get 2
                                    i32.const 12380
                                    i32.store16 offset=8
                                    br 6 (;@10;)
                                  end
                                  local.get 2
                                  i64.const 0
                                  i64.store offset=10 align=2
                                  local.get 2
                                  i32.const 29788
                                  i32.store16 offset=8
                                  br 5 (;@10;)
                                end
                                local.get 2
                                i64.const 0
                                i64.store offset=10 align=2
                                local.get 2
                                i32.const 29276
                                i32.store16 offset=8
                                br 4 (;@10;)
                              end
                              local.get 2
                              i64.const 0
                              i64.store offset=10 align=2
                              local.get 2
                              i32.const 28252
                              i32.store16 offset=8
                              br 3 (;@10;)
                            end
                            local.get 2
                            i64.const 0
                            i64.store offset=10 align=2
                            local.get 2
                            i32.const 23644
                            i32.store16 offset=8
                            br 2 (;@10;)
                          end
                          local.get 2
                          i64.const 0
                          i64.store offset=10 align=2
                          local.get 2
                          i32.const 10076
                          i32.store16 offset=8
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          i32.const 17
                          i32.const 0
                          local.get 1
                          i32.const 71727
                          i32.ge_u
                          select
                          local.tee 0
                          local.get 0
                          i32.const 8
                          i32.or
                          local.tee 3
                          local.get 1
                          i32.const 11
                          i32.shl
                          local.tee 0
                          local.get 3
                          i32.const 2
                          i32.shl
                          i32.const 1054628
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          i32.lt_u
                          select
                          local.tee 3
                          local.get 3
                          i32.const 4
                          i32.or
                          local.tee 3
                          local.get 3
                          i32.const 2
                          i32.shl
                          i32.const 1054628
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          local.get 0
                          i32.gt_u
                          select
                          local.tee 3
                          local.get 3
                          i32.const 2
                          i32.or
                          local.tee 3
                          local.get 3
                          i32.const 2
                          i32.shl
                          i32.const 1054628
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          local.get 0
                          i32.gt_u
                          select
                          local.tee 3
                          local.get 3
                          i32.const 1
                          i32.add
                          local.tee 3
                          local.get 3
                          i32.const 2
                          i32.shl
                          i32.const 1054628
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          local.get 0
                          i32.gt_u
                          select
                          local.tee 3
                          local.get 3
                          i32.const 1
                          i32.add
                          local.tee 3
                          local.get 3
                          i32.const 2
                          i32.shl
                          i32.const 1054628
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          local.get 0
                          i32.gt_u
                          select
                          local.tee 3
                          i32.const 2
                          i32.shl
                          i32.const 1054628
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          local.tee 4
                          local.get 0
                          i32.eq
                          local.get 0
                          local.get 4
                          i32.gt_u
                          i32.add
                          local.get 3
                          i32.add
                          local.tee 3
                          i32.const 33
                          i32.le_u
                          if  ;; label = @12
                            local.get 3
                            i32.const 2
                            i32.shl
                            i32.const 1054628
                            i32.add
                            local.tee 4
                            i32.load
                            i32.const 21
                            i32.shr_u
                            local.set 0
                            i32.const 751
                            local.set 6
                            block (result i32)  ;; label = @13
                              block  ;; label = @14
                                local.get 3
                                i32.const 33
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 4
                                i32.load offset=4
                                i32.const 21
                                i32.shr_u
                                local.set 6
                                local.get 3
                                br_if 0 (;@14;)
                                i32.const 0
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 2
                              i32.shl
                              i32.const 1054624
                              i32.add
                              i32.load
                              i32.const 2097151
                              i32.and
                            end
                            local.set 4
                            block  ;; label = @13
                              local.get 6
                              local.get 0
                              i32.const -1
                              i32.xor
                              i32.add
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 1
                              local.get 4
                              i32.sub
                              local.set 11
                              i32.const 751
                              local.get 0
                              local.get 0
                              i32.const 751
                              i32.le_u
                              select
                              local.set 9
                              local.get 6
                              i32.const 1
                              i32.sub
                              local.set 3
                              i32.const 0
                              local.set 4
                              loop  ;; label = @14
                                local.get 0
                                local.get 9
                                i32.eq
                                br_if 3 (;@11;)
                                local.get 4
                                local.get 0
                                i32.const 1054764
                                i32.add
                                i32.load8_u
                                i32.add
                                local.tee 4
                                local.get 11
                                i32.gt_u
                                br_if 1 (;@13;)
                                local.get 3
                                local.get 0
                                i32.const 1
                                i32.add
                                local.tee 0
                                i32.ne
                                br_if 0 (;@14;)
                              end
                              local.get 3
                              local.set 0
                            end
                            local.get 0
                            i32.const 1
                            i32.and
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 2
                            i32.const 32
                            i32.add
                            local.tee 0
                            local.get 1
                            i32.const 15
                            i32.and
                            i32.const 1051622
                            i32.add
                            i32.load8_u
                            i32.store8
                            local.get 2
                            i32.const 0
                            i32.store8 offset=26
                            local.get 2
                            i32.const 0
                            i32.store16 offset=24
                            local.get 2
                            local.get 1
                            i32.const 20
                            i32.shr_u
                            i32.const 1051622
                            i32.add
                            i32.load8_u
                            i32.store8 offset=27
                            local.get 2
                            local.get 1
                            i32.const 4
                            i32.shr_u
                            i32.const 15
                            i32.and
                            i32.const 1051622
                            i32.add
                            i32.load8_u
                            i32.store8 offset=31
                            local.get 2
                            local.get 1
                            i32.const 8
                            i32.shr_u
                            i32.const 15
                            i32.and
                            i32.const 1051622
                            i32.add
                            i32.load8_u
                            i32.store8 offset=30
                            local.get 2
                            local.get 1
                            i32.const 12
                            i32.shr_u
                            i32.const 15
                            i32.and
                            i32.const 1051622
                            i32.add
                            i32.load8_u
                            i32.store8 offset=29
                            local.get 2
                            local.get 1
                            i32.const 16
                            i32.shr_u
                            i32.const 15
                            i32.and
                            i32.const 1051622
                            i32.add
                            i32.load8_u
                            i32.store8 offset=28
                            local.get 1
                            i32.const 1
                            i32.or
                            i32.clz
                            i32.const 2
                            i32.shr_u
                            local.tee 1
                            local.get 2
                            i32.const 24
                            i32.add
                            local.tee 4
                            i32.add
                            local.tee 3
                            i32.const 123
                            i32.store8
                            local.get 3
                            i32.const 1
                            i32.sub
                            i32.const 117
                            i32.store8
                            local.get 4
                            local.get 1
                            i32.const 2
                            i32.sub
                            local.tee 1
                            i32.add
                            i32.const 92
                            i32.store8
                            local.get 2
                            i32.const 125
                            i32.store8 offset=33
                            local.get 2
                            i32.const 16
                            i32.add
                            local.get 0
                            i32.load16_u
                            i32.store16
                            local.get 2
                            local.get 2
                            i64.load offset=24 align=4
                            i64.store offset=8
                            br 6 (;@6;)
                          end
                          local.get 3
                          i32.const 34
                          i32.const 1054440
                          call 9
                          unreachable
                        end
                        local.get 9
                        i32.const 751
                        i32.const 1054456
                        call 9
                        unreachable
                      end
                      i32.const 0
                      local.set 1
                      i32.const 2
                      br 4 (;@5;)
                    end
                    local.get 1
                    i32.const 32
                    i32.lt_u
                    br_if 1 (;@7;)
                    local.get 1
                    i32.const 127
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 65536
                    i32.ge_u
                    if  ;; label = @9
                      local.get 1
                      i32.const 131072
                      i32.lt_u
                      if  ;; label = @10
                        local.get 1
                        i32.const 1052956
                        i32.const 44
                        i32.const 1053044
                        i32.const 208
                        i32.const 1053252
                        i32.const 486
                        call 56
                        i32.eqz
                        br_if 3 (;@7;)
                        br 2 (;@8;)
                      end
                      local.get 1
                      i32.const 2097150
                      i32.and
                      i32.const 178206
                      i32.eq
                      local.get 1
                      i32.const 2097120
                      i32.and
                      i32.const 173792
                      i32.eq
                      i32.or
                      local.get 1
                      i32.const 177984
                      i32.sub
                      i32.const -7
                      i32.gt_u
                      local.get 1
                      i32.const 183984
                      i32.sub
                      i32.const -15
                      i32.gt_u
                      i32.or
                      i32.or
                      local.get 1
                      i32.const 191472
                      i32.sub
                      i32.const -16
                      i32.gt_u
                      local.get 1
                      i32.const 194560
                      i32.sub
                      i32.const -2467
                      i32.gt_u
                      i32.or
                      local.get 1
                      i32.const 196608
                      i32.sub
                      i32.const -1507
                      i32.gt_u
                      local.get 1
                      i32.const 201552
                      i32.sub
                      i32.const -6
                      i32.gt_u
                      i32.or
                      i32.or
                      i32.or
                      br_if 2 (;@7;)
                      local.get 1
                      i32.const 917760
                      i32.sub
                      i32.const -712017
                      i32.gt_u
                      br_if 2 (;@7;)
                      local.get 1
                      i32.const 918000
                      i32.lt_u
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    local.get 1
                    i32.const 1053738
                    i32.const 40
                    i32.const 1053818
                    i32.const 290
                    i32.const 1054108
                    i32.const 297
                    call 56
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  local.get 2
                  local.get 1
                  i32.store offset=12
                  local.get 2
                  i32.const 128
                  i32.store8 offset=8
                  br 3 (;@4;)
                end
                local.get 2
                i32.const 44
                i32.add
                local.tee 0
                local.get 1
                i32.const 15
                i32.and
                i32.const 1051622
                i32.add
                i32.load8_u
                i32.store8
                local.get 2
                i32.const 0
                i32.store8 offset=38
                local.get 2
                i32.const 0
                i32.store16 offset=36
                local.get 2
                local.get 1
                i32.const 20
                i32.shr_u
                i32.const 1051622
                i32.add
                i32.load8_u
                i32.store8 offset=39
                local.get 2
                local.get 1
                i32.const 4
                i32.shr_u
                i32.const 15
                i32.and
                i32.const 1051622
                i32.add
                i32.load8_u
                i32.store8 offset=43
                local.get 2
                local.get 1
                i32.const 8
                i32.shr_u
                i32.const 15
                i32.and
                i32.const 1051622
                i32.add
                i32.load8_u
                i32.store8 offset=42
                local.get 2
                local.get 1
                i32.const 12
                i32.shr_u
                i32.const 15
                i32.and
                i32.const 1051622
                i32.add
                i32.load8_u
                i32.store8 offset=41
                local.get 2
                local.get 1
                i32.const 16
                i32.shr_u
                i32.const 15
                i32.and
                i32.const 1051622
                i32.add
                i32.load8_u
                i32.store8 offset=40
                local.get 1
                i32.const 1
                i32.or
                i32.clz
                i32.const 2
                i32.shr_u
                local.tee 1
                local.get 2
                i32.const 36
                i32.add
                local.tee 4
                i32.add
                local.tee 3
                i32.const 123
                i32.store8
                local.get 3
                i32.const 1
                i32.sub
                i32.const 117
                i32.store8
                local.get 4
                local.get 1
                i32.const 2
                i32.sub
                local.tee 1
                i32.add
                i32.const 92
                i32.store8
                local.get 2
                i32.const 125
                i32.store8 offset=45
                local.get 2
                i32.const 16
                i32.add
                local.get 0
                i32.load16_u
                i32.store16
                local.get 2
                local.get 2
                i64.load offset=36 align=4
                i64.store offset=8
              end
              i32.const 10
            end
            local.tee 0
            i32.store8 offset=19
            local.get 2
            local.get 1
            i32.store8 offset=18
            local.get 2
            i32.load8_u offset=8
            i32.const 128
            i32.ne
            br_if 1 (;@3;)
            local.get 2
            i32.load offset=12
            local.set 1
          end
          local.get 5
          local.get 1
          local.get 8
          call_indirect (type 0)
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 5
        local.get 1
        i32.const 255
        i32.and
        local.tee 1
        local.get 2
        i32.const 8
        i32.add
        i32.add
        local.get 0
        local.get 1
        i32.sub
        local.get 10
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
      end
      local.get 5
      i32.const 39
      local.get 8
      call_indirect (type 0)
      local.set 7
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0
    local.get 7)
  (func (;56;) (type 13) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 2
    i32.const 1
    i32.shl
    i32.add
    local.set 9
    local.get 0
    i32.const 65280
    i32.and
    i32.const 8
    i32.shr_u
    local.set 10
    local.get 0
    i32.const 255
    i32.and
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 1
              i32.const 2
              i32.add
              local.set 11
              local.get 7
              local.get 1
              i32.load8_u offset=1
              local.tee 2
              i32.add
              local.set 8
              local.get 10
              local.get 1
              i32.load8_u
              local.tee 1
              i32.ne
              if  ;; label = @6
                local.get 1
                local.get 10
                i32.gt_u
                br_if 4 (;@2;)
                local.get 8
                local.set 7
                local.get 11
                local.tee 1
                local.get 9
                i32.ne
                br_if 1 (;@5;)
                br 4 (;@2;)
              end
              local.get 7
              local.get 8
              i32.gt_u
              br_if 1 (;@4;)
              local.get 4
              local.get 8
              i32.lt_u
              br_if 2 (;@3;)
              local.get 3
              local.get 7
              i32.add
              local.set 1
              loop  ;; label = @6
                local.get 2
                i32.eqz
                if  ;; label = @7
                  local.get 8
                  local.set 7
                  local.get 11
                  local.tee 1
                  local.get 9
                  i32.ne
                  br_if 2 (;@5;)
                  br 5 (;@2;)
                end
                local.get 2
                i32.const 1
                i32.sub
                local.set 2
                local.get 1
                i32.load8_u
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                local.get 12
                i32.ne
                br_if 0 (;@6;)
              end
            end
            i32.const 0
            local.set 2
            br 3 (;@1;)
          end
          local.get 7
          local.get 8
          i32.const 1052940
          call 52
          unreachable
        end
        local.get 8
        local.get 4
        i32.const 1052940
        call 21
        unreachable
      end
      local.get 0
      i32.const 65535
      i32.and
      local.set 7
      local.get 5
      local.get 6
      i32.add
      local.set 3
      i32.const 1
      local.set 2
      loop  ;; label = @2
        local.get 5
        i32.const 1
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 5
          i32.load8_s
          local.tee 1
          i32.const 0
          i32.ge_s
          if  ;; label = @4
            local.get 0
            local.set 5
            br 1 (;@3;)
          end
          local.get 0
          local.get 3
          i32.ne
          if  ;; label = @4
            local.get 5
            i32.load8_u offset=1
            local.get 1
            i32.const 127
            i32.and
            i32.const 8
            i32.shl
            i32.or
            local.set 1
            local.get 5
            i32.const 2
            i32.add
            local.set 5
            br 1 (;@3;)
          end
          i32.const 1052924
          call 53
          unreachable
        end
        local.get 7
        local.get 1
        i32.sub
        local.tee 7
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
        local.get 2
        i32.const 1
        i32.xor
        local.set 2
        local.get 3
        local.get 5
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 1
    i32.and)
  (func (;57;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block (result i32)  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.load offset=4
              local.set 6
              local.get 4
              local.get 1
              i32.load offset=12
              local.tee 3
              i32.store offset=12
              local.get 4
              local.get 1
              i32.load offset=8
              local.tee 2
              i32.store offset=8
              local.get 4
              local.get 1
              i32.load offset=4
              local.tee 5
              i32.store offset=4
              local.get 4
              local.get 1
              i32.load
              local.tee 1
              i32.store
              local.get 0
              i32.load8_u offset=32
              local.set 9
              local.get 0
              i32.load offset=16
              local.set 10
              local.get 0
              i32.load8_u offset=28
              i32.const 8
              i32.and
              br_if 1 (;@4;)
              local.get 10
              local.set 8
              local.get 9
              br 2 (;@3;)
            end
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=24
            local.get 1
            call 58
            local.set 2
            br 3 (;@1;)
          end
          local.get 0
          i32.load offset=20
          local.get 1
          local.get 5
          local.get 0
          i32.load offset=24
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          i32.store8 offset=32
          i32.const 48
          local.set 8
          local.get 0
          i32.const 48
          i32.store offset=16
          local.get 4
          i64.const 1
          i64.store align=4
          local.get 6
          local.get 5
          i32.sub
          local.set 1
          i32.const 0
          local.set 5
          local.get 1
          i32.const 0
          local.get 1
          local.get 6
          i32.le_u
          select
          local.set 6
          i32.const 1
        end
        local.set 7
        local.get 3
        if  ;; label = @3
          local.get 3
          i32.const 12
          i32.mul
          local.set 3
          loop  ;; label = @4
            block (result i32)  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load16_u
                    i32.const 1
                    i32.sub
                    br_table 2 (;@6;) 1 (;@7;) 0 (;@8;)
                  end
                  local.get 2
                  i32.load offset=4
                  br 2 (;@5;)
                end
                local.get 2
                i32.load offset=8
                br 1 (;@5;)
              end
              local.get 2
              i32.load16_u offset=2
              local.tee 1
              i32.const 1000
              i32.ge_u
              if  ;; label = @6
                i32.const 4
                i32.const 5
                local.get 1
                i32.const 10000
                i32.lt_u
                select
                br 1 (;@5;)
              end
              i32.const 1
              local.get 1
              i32.const 10
              i32.lt_u
              br_if 0 (;@5;)
              drop
              i32.const 2
              i32.const 3
              local.get 1
              i32.const 100
              i32.lt_u
              select
            end
            local.get 2
            i32.const 12
            i32.add
            local.set 2
            local.get 5
            i32.add
            local.set 5
            local.get 3
            i32.const 12
            i32.sub
            local.tee 3
            br_if 0 (;@4;)
          end
        end
        block (result i32)  ;; label = @3
          block  ;; label = @4
            local.get 5
            local.get 6
            i32.lt_u
            if  ;; label = @5
              local.get 6
              local.get 5
              i32.sub
              local.set 3
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    i32.const 255
                    i32.and
                    local.tee 2
                    i32.const 1
                    i32.sub
                    br_table 0 (;@8;) 1 (;@7;) 0 (;@8;) 2 (;@6;)
                  end
                  local.get 3
                  local.set 2
                  i32.const 0
                  local.set 3
                  br 1 (;@6;)
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
              local.get 0
              i32.load offset=24
              local.set 7
              local.get 0
              i32.load offset=20
              local.set 1
              loop  ;; label = @6
                local.get 2
                i32.const 1
                i32.sub
                local.tee 2
                i32.eqz
                br_if 2 (;@4;)
                local.get 1
                local.get 8
                local.get 7
                i32.load offset=16
                call_indirect (type 0)
                i32.eqz
                br_if 0 (;@6;)
              end
              br 3 (;@2;)
            end
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=24
            local.get 4
            call 58
            br 1 (;@3;)
          end
          local.get 1
          local.get 7
          local.get 4
          call 58
          br_if 1 (;@2;)
          i32.const 0
          local.set 2
          block (result i32)  ;; label = @4
            loop  ;; label = @5
              local.get 3
              local.get 2
              local.get 3
              i32.eq
              br_if 1 (;@4;)
              drop
              local.get 2
              i32.const 1
              i32.add
              local.set 2
              local.get 1
              local.get 8
              local.get 7
              i32.load offset=16
              call_indirect (type 0)
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 2
            i32.const 1
            i32.sub
          end
          local.get 3
          i32.lt_u
        end
        local.set 2
        local.get 0
        local.get 9
        i32.store8 offset=32
        local.get 0
        local.get 10
        i32.store offset=16
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
    end
    local.get 4
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func (;58;) (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.load
        local.get 3
        local.get 1
        i32.load offset=12
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=12
      local.tee 3
      if  ;; label = @2
        local.get 2
        i32.load offset=8
        local.tee 5
        local.get 3
        i32.const 12
        i32.mul
        i32.add
        local.set 8
        local.get 4
        i32.const 12
        i32.add
        local.set 9
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.load16_u
                  i32.const 1
                  i32.sub
                  br_table 2 (;@5;) 1 (;@6;) 0 (;@7;)
                end
                block  ;; label = @7
                  local.get 5
                  i32.load offset=4
                  local.tee 2
                  i32.const 65
                  i32.ge_u
                  if  ;; label = @8
                    local.get 1
                    i32.const 12
                    i32.add
                    i32.load
                    local.set 3
                    loop  ;; label = @9
                      i32.const 1
                      local.get 0
                      i32.const 1052158
                      i32.const 64
                      local.get 3
                      call_indirect (type 1)
                      br_if 8 (;@1;)
                      drop
                      local.get 2
                      i32.const -64
                      i32.add
                      local.tee 2
                      i32.const 64
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                    br 1 (;@7;)
                  end
                  local.get 2
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 1
                  i32.const 12
                  i32.add
                  i32.load
                  local.set 3
                end
                local.get 0
                i32.const 1052158
                local.get 2
                local.get 3
                call_indirect (type 1)
                i32.eqz
                br_if 2 (;@4;)
                i32.const 1
                br 5 (;@1;)
              end
              local.get 0
              local.get 5
              i32.load offset=4
              local.get 5
              i32.load offset=8
              local.get 1
              i32.const 12
              i32.add
              i32.load
              call_indirect (type 1)
              i32.eqz
              br_if 1 (;@4;)
              i32.const 1
              br 4 (;@1;)
            end
            local.get 5
            i32.load16_u offset=2
            local.set 2
            local.get 9
            i32.const 0
            i32.store8
            local.get 4
            i32.const 0
            i32.store offset=8
            block (result i32)  ;; label = @5
              i32.const 4
              i32.const 5
              local.get 2
              i32.const 10000
              i32.lt_u
              select
              local.get 2
              i32.const 1000
              i32.ge_u
              br_if 0 (;@5;)
              drop
              i32.const 1
              local.get 2
              i32.const 10
              i32.lt_u
              br_if 0 (;@5;)
              drop
              i32.const 2
              i32.const 3
              local.get 2
              i32.const 100
              i32.lt_u
              select
            end
            local.tee 3
            local.get 4
            i32.const 8
            i32.add
            local.tee 10
            i32.add
            local.tee 7
            i32.const 1
            i32.sub
            local.tee 6
            local.get 2
            i32.const 10
            i32.div_u
            local.tee 11
            i32.const 246
            i32.mul
            local.get 2
            i32.add
            i32.const 48
            i32.or
            i32.store8
            block  ;; label = @5
              local.get 6
              local.get 10
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              i32.const 2
              i32.sub
              local.tee 6
              local.get 11
              i32.const 10
              i32.rem_u
              i32.const 48
              i32.or
              i32.store8
              local.get 4
              i32.const 8
              i32.add
              local.get 6
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              i32.const 3
              i32.sub
              local.tee 6
              local.get 2
              i32.const 100
              i32.div_u
              i32.const 10
              i32.rem_u
              i32.const 48
              i32.or
              i32.store8
              local.get 4
              i32.const 8
              i32.add
              local.get 6
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              i32.const 4
              i32.sub
              local.tee 6
              local.get 2
              i32.const 1000
              i32.div_u
              i32.const 10
              i32.rem_u
              i32.const 48
              i32.or
              i32.store8
              local.get 4
              i32.const 8
              i32.add
              local.get 6
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              i32.const 5
              i32.sub
              local.get 2
              i32.const 10000
              i32.div_u
              i32.const 48
              i32.or
              i32.store8
            end
            local.get 0
            local.get 4
            i32.const 8
            i32.add
            local.get 3
            local.get 1
            i32.const 12
            i32.add
            i32.load
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            br 3 (;@1;)
          end
          local.get 5
          i32.const 12
          i32.add
          local.tee 5
          local.get 8
          i32.ne
          br_if 0 (;@3;)
        end
      end
      i32.const 0
    end
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;59;) (type 5) (param i32 i32 i32 i32)
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
      call 31
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
  (func (;60;) (type 3) (param i32)
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
    call 59
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
      call 20
      unreachable
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;61;) (type 2) (param i32 i32)
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
                                          i32.const 1052376
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
          i32.const 1074798488
          i32.load8_u
          drop
          local.get 2
          local.tee 1
          call 17
          local.tee 4
          br_if 1 (;@2;)
          i32.const 1
        end
        call 20
        unreachable
      end
      local.get 4
      local.get 3
      local.get 2
      call 66
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
  (func (;62;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func (;63;) (type 2) (param i32 i32)
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
    i32.const 1074798500
    i32.add
    local.set 4
    i32.const 1
    local.get 2
    i32.shl
    local.tee 3
    i32.const 1074798912
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
      i32.const 1074798912
      i32.const 1074798912
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
  (func (;64;) (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const 1074798496
    i32.const 1074798496
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
        i32.const 1074798956
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          i32.const 1074798952
          i32.const 1074798952
          i32.load
          i32.const 1
          i32.add
          i32.store
          i32.const 1074798492
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
      i32.const 1074798956
      i32.const 0
      i32.store8
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      unreachable
    end
    unreachable)
  (func (;65;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;66;) (type 1) (param i32 i32 i32) (result i32)
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
  (func (;67;) (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
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
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.store8
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
      local.tee 2
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.set 3
      local.get 4
      i32.const 0
      i32.gt_s
      if  ;; label = @2
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 4
        loop  ;; label = @3
          local.get 5
          local.get 4
          i32.store
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
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
      local.get 2
      local.get 3
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.store8
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
  (memory (;0;) 16401)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1074798957))
  (global (;2;) i32 (i32.const 1074798960))
  (export "memory" (memory 0))
  (export "smart_nft_view_command_buffer" (func 14))
  (export "smart_nft_view_command_buffer_free" (func 15))
  (export "smart_nft_view_command" (func 16))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func 11 12 38 8 6 42 11 43 54 55 62 65 33 34 35 36 32 44)
  (data (;0;) (i32.const 1048576) "/Users/san/.cargo/registry/src/index.crates.io-6f17d22bba15001f/humansize-2.1.3/src/formatters.rs\00\00\00\00\00\10\00a\00\00\00)\00\00\006\00\00\00\00\00\10\00a\00\00\00%\00\00\007\00\00\00\00\00\10\00a\00\00\00*\00\00\005\00\00\00\00\00\10\00a\00\00\00&\00\00\006\00\00\00\00\00\10\00a\00\00\00+\00\00\005\00\00\00\00\00\10\00a\00\00\00'\00\00\006\00\00\00\00\00\10\00a\00\00\00,\00\00\004\00\00\00\00\00\10\00a\00\00\00(\00\00\005\00\00\00\00\00\10\00a\00\00\004\00\00\00\1b\00\00\00 \00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00helloSay helloUpload test filesrc/nft1_program_basic/view/command/src/lib.rs>\01\10\00.\00\00\00&\00\00\00>\00\00\00Hi from view!\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\09\01\00\00\00\01\00\00Uploaded file mime:  and size: \00\a4\01\10\00\14\00\00\00\b8\01\10\00\0b\00\00\00>\01\10\00.\00\00\00N\00\00\00\15\00\00\00Error\00\00\00\0d\00\00\00\0c\00\00\00\04\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00capacity overflow\00\00\00\04\02\10\00\11\00\00\00alloc/src/raw_vec.rs \02\10\00\14\00\00\00\18\00\00\00\05")
  (data (;1;) (i32.const 1049164) "\01\00\00\00\11\00\00\00a formatting trait implementation returned an error when the underlying stream did notalloc/src/fmt.rs\00\00\aa\02\10\00\10\00\00\00~\02\00\00\0e\00\00\00assertion failed: edelta >= 0core/src/num/diy_float.rs\00\00\e9\02\10\00\19\00\00\00L\00\00\00\09\00\00\00\e9\02\10\00\19\00\00\00N\00\00\00\09\00\00\00\c1o\f2\86#\00\00\00\81\ef\ac\85[Am-\ee\04\00\00\01\1fj\bfd\ed8n\ed\97\a7\da\f4\f9?\e9\03O\18\00\01>\95.\09\99\df\03\fd8\15\0f/\e4t#\ec\f5\cf\d3\08\dc\04\c4\da\b0\cd\bc\19\7f3\a6\03&\1f\e9N\02\00\00\01|.\98[\87\d3\ber\9f\d9\d8\87/\15\12\c6P\dekpnJ\cf\0f\d8\95\d5nq\b2&\b0f\c6\ad$6\15\1dZ\d3B<\0eT\ffc\c0sU\cc\17\ef\f9e\f2(\bcU\f7\c7\dc\80\dc\edn\f4\ce\ef\dc_\f7S\05\00core/src/num/flt2dec/strategy/dragon.rsassertion failed: d.mant > 0\00\c0\03\10\00'\00\00\00\c2\00\00\00\09\00\00\00\c0\03\10\00'\00\00\00\fb\00\00\00\0d\00\00\00\c0\03\10\00'\00\00\00\02\01\00\006\00\00\00assertion failed: d.mant.checked_add(d.plus).is_some()\00\00\c0\03\10\00'\00\00\00r\01\00\00$\00\00\00\c0\03\10\00'\00\00\00w\01\00\00W\00\00\00\c0\03\10\00'\00\00\00\84\01\00\006\00\00\00\c0\03\10\00'\00\00\00f\01\00\00\0d\00\00\00\c0\03\10\00'\00\00\00L\01\00\00\22\00\00\00\c0\03\10\00'\00\00\00\0e\01\00\00\05\00\00\00\00\00\00\00\dfE\1a=\03\cf\1a\e6\c1\fb\cc\fe\00\00\00\00\ca\c6\9a\c7\17\fep\ab\dc\fb\d4\fe\00\00\00\00O\dc\bc\be\fc\b1w\ff\f6\fb\dc\fe\00\00\00\00\0c\d6kA\ef\91V\be\11\fc\e4\fe\00\00\00\00<\fc\7f\90\ad\1f\d0\8d,\fc\ec\fe\00\00\00\00\83\9aU1(\5cQ\d3F\fc\f4\fe\00\00\00\00\b5\c9\a6\ad\8f\acq\9da\fc\fc\fe\00\00\00\00\cb\8b\ee#w\22\9c\ea{\fc\04\ff\00\00\00\00mSx@\91I\cc\ae\96\fc\0c\ff\00\00\00\00W\ce\b6]y\12<\82\b1\fc\14\ff\00\00\00\007V\fbM6\94\10\c2\cb\fc\1c\ff\00\00\00\00O\98H8o\ea\96\90\e6\fc$\ff\00\00\00\00\c7:\82%\cb\85t\d7\00\fd,\ff\00\00\00\00\f4\97\bf\97\cd\cf\86\a0\1b\fd4\ff\00\00\00\00\e5\ac*\17\98\0a4\ef5\fd<\ff\00\00\00\00\8e\b25*\fbg8\b2P\fdD\ff\00\00\00\00;?\c6\d2\df\d4\c8\84k\fdL\ff\00\00\00\00\ba\cd\d3\1a'D\dd\c5\85\fdT\ff\00\00\00\00\96\c9%\bb\ce\9fk\93\a0\fd\5c\ff\00\00\00\00\84\a5b}$l\ac\db\ba\fdd\ff\00\00\00\00\f6\da_\0dXf\ab\a3\d5\fdl\ff\00\00\00\00&\f1\c3\de\93\f8\e2\f3\ef\fdt\ff\00\00\00\00\b8\80\ff\aa\a8\ad\b5\b5\0a\fe|\ff\00\00\00\00\8bJ|l\05_b\87%\fe\84\ff\00\00\00\00S0\c14`\ff\bc\c9?\fe\8c\ff\00\00\00\00U&\ba\91\8c\85N\96Z\fe\94\ff\00\00\00\00\bd~)p$w\f9\dft\fe\9c\ff\00\00\00\00\8f\b8\e5\b8\9f\bd\df\a6\8f\fe\a4\ff\00\00\00\00\94}t\88\cf_\a9\f8\a9\fe\ac\ff\00\00\00\00\cf\9b\a8\8f\93pD\b9\c4\fe\b4\ff\00\00\00\00k\15\0f\bf\f8\f0\08\8a\df\fe\bc\ff\00\00\00\00\b611eU%\b0\cd\f9\fe\c4\ff\00\00\00\00\ac\7f{\d0\c6\e2?\99\14\ff\cc\ff\00\00\00\00\06;+*\c4\10\5c\e4.\ff\d4\ff\00\00\00\00\d3\92si\99$$\aaI\ff\dc\ff\00\00\00\00\0e\ca\00\83\f2\b5\87\fdc\ff\e4\ff\00\00\00\00\eb\1a\11\92d\08\e5\bc~\ff\ec\ff\00\00\00\00\cc\88Po\09\cc\bc\8c\99\ff\f4\ff\00\00\00\00,e\19\e2X\17\b7\d1\b3\ff\fc\ff")
  (data (;2;) (i32.const 1050438) "@\9c\ce\ff\04")
  (data (;3;) (i32.const 1050452) "\10\a5\d4\e8\e8\ff\0c\00\00\00\00\00\00\00b\ac\c5\ebx\ad\03\00\14\00\00\00\00\00\84\09\94\f8x9?\81\1e\00\1c\00\00\00\00\00\b3\15\07\c9{\ce\97\c08\00$\00\00\00\00\00p\5c\ea{\ce2~\8fS\00,\00\00\00\00\00h\80\e9\ab\a48\d2\d5m\004\00\00\00\00\00E\22\9a\17&'O\9f\88\00<\00\00\00\00\00'\fb\c4\d41\a2c\ed\a2\00D\00\00\00\00\00\a8\ad\c8\8c8e\de\b0\bd\00L\00\00\00\00\00\dbe\ab\1a\8e\08\c7\83\d8\00T\00\00\00\00\00\9a\1dqB\f9\1d]\c4\f2\00\5c\00\00\00\00\00X\e7\1b\a6,iM\92\0d\01d\00\00\00\00\00\ea\8dp\1ad\ee\01\da'\01l\00\00\00\00\00Jw\ef\9a\99\a3m\a2B\01t\00\00\00\00\00\85k}\b4{x\09\f2\5c\01|\00\00\00\00\00w\18\ddy\a1\e4T\b4w\01\84\00\00\00\00\00\c2\c5\9b[\92\86[\86\92\01\8c\00\00\00\00\00=]\96\c8\c5S5\c8\ac\01\94\00\00\00\00\00\b3\a0\97\fa\5c\b4*\95\c7\01\9c\00\00\00\00\00\e3_\a0\99\bd\9fF\de\e1\01\a4\00\00\00\00\00%\8c9\db4\c2\9b\a5\fc\01\ac\00\00\00\00\00\5c\9f\98\a3r\9a\c6\f6\16\02\b4\00\00\00\00\00\ce\be\e9TS\bf\dc\b71\02\bc\00\00\00\00\00\e2A\22\f2\17\f3\fc\88L\02\c4\00\00\00\00\00\a5x\5c\d3\9b\ce \ccf\02\cc\00\00\00\00\00\dfS!{\f3Z\16\98\81\02\d4\00\00\00\00\00:0\1f\97\dc\b5\a0\e2\9b\02\dc\00\00\00\00\00\96\b3\e3\5cS\d1\d9\a8\b6\02\e4\00\00\00\00\00<D\a7\a4\d9|\9b\fb\d0\02\ec\00\00\00\00\00\10D\a4\a7LLv\bb\eb\02\f4\00\00\00\00\00\1a\9c@\b6\ef\8e\ab\8b\06\03\fc\00\00\00\00\00,\84W\a6\10\ef\1f\d0 \03\04\01\00\00\00\00)1\91\e9\e5\a4\10\9b;\03\0c\01\00\00\00\00\9d\0c\9c\a1\fb\9b\10\e7U\03\14\01\00\00\00\00)\f4;b\d9 (\acp\03\1c\01\00\00\00\00\85\cf\a7z^KD\80\8b\03$\01\00\00\00\00-\dd\ac\03@\e4!\bf\a5\03,\01\00\00\00\00\8f\ffD^/\9cg\8e\c0\034\01\00\00\00\00A\b8\8c\9c\9d\173\d4\da\03<\01\00\00\00\00\a9\1b\e3\b4\92\db\19\9e\f5\03D\01\00\00\00\00\d9w\df\ban\bf\96\eb\0f\04L\01\00\00\00\00core/src/num/flt2dec/strategy/grisu.rs\00\00\e0\09\10\00&\00\00\00}\00\00\00\15\00\00\00\e0\09\10\00&\00\00\00\a9\00\00\00\05\00\00\00assertion failed: d.mant + d.plus < (1 << 61)\00\00\00\e0\09\10\00&\00\00\00\af\00\00\00\05\00\00\00\e0\09\10\00&\00\00\00\0a\01\00\00\11\00\00\00\e0\09\10\00&\00\00\00@\01\00\00\09\00\00\00\e0\09\10\00&\00\00\00\ac\00\00\00\05\00\00\00assertion failed: !buf.is_empty()\00\00\00\e0\09\10\00&\00\00\00\dc\01\00\00\05\00\00\00\01\00\00\00\0a\00\00\00d\00\00\00\e8\03\00\00\10'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;\e0\09\10\00&\00\00\003\02\00\00\11\00\00\00\e0\09\10\00&\00\00\00l\02\00\00\09\00\00\00\e0\09\10\00&\00\00\00\e3\02\00\00N\00\00\00\e0\09\10\00&\00\00\00\ef\02\00\00J\00\00\00\e0\09\10\00&\00\00\00\cc\02\00\00J\00\00\00core/src/num/flt2dec/mod.rs\00D\0b\10\00\1b\00\00\00\bb\00\00\00\05\00\00\00assertion failed: buf[0] > b'0'\00D\0b\10\00\1b\00\00\00\bc\00\00\00\05\00\00\00.0.-+NaNinf0assertion failed: buf.len() >= maxlen\00\00\00D\0b\10\00\1b\00\00\00~\02\00\00\0d\00\00\00..0123456789abcdefcalled `Option::unwrap()` on a `None` valueindex out of bounds: the len is  but the index is \00!\0c\10\00 \00\00\00A\0c\10\00\12\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\12\00\00\00==assertion `left  right` failed\0a  left: \0a right: \00\00v\0c\10\00\10\00\00\00\86\0c\10\00\17\00\00\00\9d\0c\10\00\09\00\00\00 right` failed: \0a  left: \00\00\00v\0c\10\00\10\00\00\00\c0\0c\10\00\10\00\00\00\d0\0c\10\00\09\00\00\00\9d\0c\10\00\09\00\00\00: \00\00\01\00\00\00\00\00\00\00\fc\0c\10\00\02\00\00\00core/src/fmt/num.rs\00\10\0d\10\00\13\00\00\00f\00\00\00\17\00\00\000x000102030405060708091011121314151617181920212223242526272829303132333435363738394041424344454647484950515253545556575859606162636465666768697071727374757677787980818283848586878889909192939495969798990000000000000000000000000000000000000000000000000000000000000000range start index  out of range for slice of length \00\00>\0e\10\00\12\00\00\00P\0e\10\00\22\00\00\00range end index \84\0e\10\00\10\00\00\00P\0e\10\00\22\00\00\00slice index starts at  but ends at \00\a4\0e\10\00\16\00\00\00\ba\0e\10\00\0d\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01")
  (data (;4;) (i32.const 1052570) "\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04")
  (data (;5;) (i32.const 1052632) "[...]begin <= end ( <= ) when slicing ``\dd\0f\10\00\0e\00\00\00\eb\0f\10\00\04\00\00\00\ef\0f\10\00\10\00\00\00\ff\0f\10\00\01\00\00\00byte index  is not a char boundary; it is inside  (bytes ) of `\00 \10\10\00\0b\00\00\00+\10\10\00&\00\00\00Q\10\10\00\08\00\00\00Y\10\10\00\06\00\00\00\ff\0f\10\00\01\00\00\00 is out of bounds of `\00\00 \10\10\00\0b\00\00\00\88\10\10\00\16\00\00\00\ff\0f\10\00\01\00\00\00core/src/str/mod.rs\00\b8\10\10\00\13\00\00\00\f0\00\00\00,\00\00\00core/src/unicode/printable.rs\00\00\00\dc\10\10\00\1d\00\00\00\1a\00\00\006\00\00\00\dc\10\10\00\1d\00\00\00\0a\00\00\00+\00\00\00\00\06\01\01\03\01\04\02\05\07\07\02\08\08\09\02\0a\05\0b\02\0e\04\10\01\11\02\12\05\13\1c\14\01\15\02\17\02\19\0d\1c\05\1d\08\1f\01$\01j\04k\02\af\03\b1\02\bc\02\cf\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e7\04\e8\02\ee \f0\04\f8\02\fa\04\fb\01\0c';>NO\8f\9e\9e\9f{\8b\93\96\a2\b2\ba\86\b1\06\07\096=>V\f3\d0\d1\04\14\1867VW\7f\aa\ae\af\bd5\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOde\8a\8c\8d\8f\b6\c1\c3\c4\c6\cb\d6\5c\b6\b7\1b\1c\07\08\0a\0b\14\1769:\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92\11o_\bf\ee\efZb\f4\fc\ffST\9a\9b./'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\e7\ec\ef\ff\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\ae\afno\dd\de\93^\22{\05\03\04-\03f\03\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0bN\034\0c\817\09\16\0a\08\18;E9\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\06&\03\1d\08\02\80\d0R\10\037,\08*\16\1a&\1c\14\17\09N\04$\09D\0d\19\07\0a\06H\08'\09u\0bB>*\06;\05\0a\06Q\06\01\05\10\03\05\0bY\08\02\1db\1eH\08\0a\80\a6^\22E\0b\0a\06\0d\13:\06\0a\06\14\1c,\04\17\80\b9<dS\0cH\09\0aFE\1bH\08S\0dI\07\0a\80\b6\22\0e\0a\06F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\07;\03\1dU\01\0f2\0d\83\9bfu\0b\80\c4\8aLc\0d\840\10\16\0a\8f\9b\05\82G\9a\b9:\86\c6\829\07*\04\5c\06&\0aF\0a(\05\13\81\b0:\80\c6[eK\049\07\11@\05\0b\02\0e\97\f8\08\84\d6)\0a\a2\e7\813\0f\01\1d\06\0e\04\08\81\8c\89\04k\05\0d\03\09\07\10\8f`\80\fa\06\81\b4LG\09t<\80\f6\0as\08p\15Fz\14\0c\14\0cW\09\19\80\87\81G\03\85B\0f\15\84P\1f\06\06\80\d5+\05>!\01p-\03\1a\04\02\81@\1f\11:\05\01\81\d0*\80\d6+\04\01\81\e0\80\f7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\80\ae8\1d\0d,\04\09\07\02\0e\06\80\9a\83\d8\04\11\03\0d\03w\04_\06\0c\04\01\0f\0c\048\08\0a\06(\08,\04\02>\81T\0c\1d\03\0a\058\07\1c\06\09\07\80\fa\84\06\00\01\03\05\05\06\06\02\07\06\08\07\09\11\0a\1c\0b\19\0c\1a\0d\10\0e\0c\0f\04\10\03\12\12\13\09\16\01\17\04\18\01\19\03\1a\07\1b\01\1c\02\1f\16 \03+\03-\0b.\010\041\022\01\a7\04\a9\02\aa\04\ab\08\fa\02\fb\05\fd\02\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\dd\0e\0fKL\fb\fc./?\5c]_\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11):;EIW[\5c^_de\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\0d\11EIde\80\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80mq\de\df\0e\1fno\1c\1d_}~\ae\afM\bb\bc\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96&./\a7\af\b7\bf\c7\cf\d7\df\9a\00@\97\980\8f\1f\ce\cf\d2\d4\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91Sgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab\05\1f\08\81\1c\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\07\03\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05N\07\1b\07W\07\02\06\17\0cP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\16\09\18\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06/1\80\f4\08<\03\0f\03>\058\08+\05\82\ff\11\18\08/\11-\03!\0f!\0f\80\8c\04\82\9a\16\0b\15\88\94\05/\05;\07\02\0e\18\09\80\be\22t\0c\80\d6\1a\81\10\05\80\e1\09\f2\9e\037\09\81\5c\14\80\b8\08\80\dd\15;\03\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09L\04\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a6\10\81\f5\07\01 *\06L\04\80\8d\04\80\be\03\1b\03\0f\0dcore/src/unicode/unicode_data.rs\00\00\00\c5\16\10\00 \00\00\00N\00\00\00(\00\00\00\c5\16\10\00 \00\00\00Z\00\00\00\16\00\00\00core/src/num/bignum.rs\00\00\08\17\10\00\16\00\00\00\aa\01\00\00\01\00\00\00assertion failed: noborrowassertion failed: digits < 40assertion failed: other > 0attempt to divide by zero\00\82\17\10\00\19\00\00\00\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17 \1f\0c `\1f\ef, +*0\a0+o\a6`,\02\a8\e0,\1e\fb\e0-\00\fe 6\9e\ff`6\fd\01\e16\01\0a!7$\0d\e17\ab\0ea9/\18\e190\1c\e1J\f3\1e\e1N@4\a1R\1ea\e1S\f0jaTOo\e1T\9d\bcaU\00\cfaVe\d1\a1V\00\da!W\00\e0\a1X\ae\e2!Z\ec\e4\e1[\d0\e8a\5c \00\ee\5c\f0\01\7f]\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03;\09*\18\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\017\01\01\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\02\01\01\03\03\01\04\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\07I\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\04\1c\03\1d\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03\01\01u\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010\1f1\040\0a\04\03&\09\0c\02 \04\02\068\01\01\02\03\01\01\058\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6@\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b\01\01,\030\01\02\04\02\02\02\01$\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04A\05\00\02O\04F\0b1\04{\016\0f)\01\02\02\0a\031\04\02\02\07\01=\03$\05\01\08>\01\0c\024\09\01\01\08\04\02\01_\03\02\04\06\01\02\01\9d\01\03\08\15\029\02\01\01\01\01\0c\01\09\01\0e\07\03\05C\01\02\06\01\01\02\01\01\03\04\03\01\01\0e\02U\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\08e\01\01\01\02\04\01\05\00\09\01\02\f5\01\0a\04\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\00\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\0b\024\05\05\03\17\01\00\01\06\0f\00\0c\03\03\00\05;\07\00\01?\04Q\01\0b\02\00\02\00.\02\17\00\05\03\06\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05d\01\a0\07\00\01=\04\00\04\fe\02\00\07m\07\00`\80\f0\00BkBMBGBTBPBEBZBYB\1b\1b\10\00\01\00\00\00\1c\1b\10\00\02\00\00\00\1e\1b\10\00\02\00\00\00 \1b\10\00\02\00\00\00\22\1b\10\00\02\00\00\00$\1b\10\00\02\00\00\00&\1b\10\00\02\00\00\00(\1b\10\00\02\00\00\00*\1b\10\00\02\00\00\00BytesKilobytesMegabytesGigabytesTerabytesPetabytesExabytesZettabytesYottabytes\00\00t\1b\10\00\05\00\00\00y\1b\10\00\09\00\00\00\82\1b\10\00\09\00\00\00\8b\1b\10\00\09\00\00\00\94\1b\10\00\09\00\00\00\9d\1b\10\00\09\00\00\00\a6\1b\10\00\08\00\00\00\ae\1b\10\00\0a\00\00\00\b8\1b\10\00\0a\00\00\00KiBMiBGiBTiBPiBEiBZiBYiB\1b\1b\10\00\01\00\00\00\0c\1c\10\00\03\00\00\00\0f\1c\10\00\03\00\00\00\12\1c\10\00\03\00\00\00\15\1c\10\00\03\00\00\00\18\1c\10\00\03\00\00\00\1b\1c\10\00\03\00\00\00\1e\1c\10\00\03\00\00\00!\1c\10\00\03\00\00\00KibibytesMebibytesGibibytesTebibytesPebibytesExbibytesZebibytesYobibytest\1b\10\00\05\00\00\00l\1c\10\00\09\00\00\00u\1c\10\00\09\00\00\00~\1c\10\00\09\00\00\00\87\1c\10\00\09\00\00\00\90\1c\10\00\09\00\00\00\99\1c\10\00\09\00\00\00\a2\1c\10\00\09\00\00\00\ab\1c\10\00\09\00\00\00bitskbitMbitGbitTbitPbitEbitZbitYbit\fc\1c\10\00\04\00\00\00\00\1d\10\00\04\00\00\00\04\1d\10\00\04\00\00\00\08\1d\10\00\04\00\00\00\0c\1d\10\00\04\00\00\00\10\1d\10\00\04\00\00\00\14\1d\10\00\04\00\00\00\18\1d\10\00\04\00\00\00\1c\1d\10\00\04\00\00\00BitsKilobitsMegabitsGigabitsTerabitsPetabitsExabitsZettabitsYottabits\00\00\00h\1d\10\00\04\00\00\00l\1d\10\00\08\00\00\00t\1d\10\00\08\00\00\00|\1d\10\00\08\00\00\00\84\1d\10\00\08\00\00\00\8c\1d\10\00\08\00\00\00\94\1d\10\00\07\00\00\00\9b\1d\10\00\09\00\00\00\a4\1d\10\00\09\00\00\00KibitMibitGibitTibitPibitEibitZibitYibit\fc\1c\10\00\04\00\00\00\f8\1d\10\00\05\00\00\00\fd\1d\10\00\05\00\00\00\02\1e\10\00\05\00\00\00\07\1e\10\00\05\00\00\00\0c\1e\10\00\05\00\00\00\11\1e\10\00\05\00\00\00\16\1e\10\00\05\00\00\00\1b\1e\10\00\05\00\00\00KibibitsMebibitsGibibitsTebibitsPebibitsExbibitsZebibitsYobibits\fc\1c\10\00\04\00\00\00h\1e\10\00\08\00\00\00p\1e\10\00\08\00\00\00x\1e\10\00\08\00\00\00\80\1e\10\00\08\00\00\00\88\1e\10\00\08\00\00\00\90\1e\10\00\08\00\00\00\98\1e\10\00\08\00\00\00\a0\1e\10\00\08\00\00\00/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00\f0\1e\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\f0\1e\10\00)\00\00\00\ae\04\00\00\0d"))
