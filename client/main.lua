ESX                   = nil
local PlayerData      = {}
local base64MoneyIcon = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALQAAAC0CAYAAAA9zQYyAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAG72lUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDUgNzkuMTYzNDk5LCAyMDE4LzA4LzEzLTE2OjQwOjIyICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAoV2luZG93cykiIHhtcDpDcmVhdGVEYXRlPSIyMDE1LTEwLTA5VDIwOjEzOjE2KzAyOjAwIiB4bXA6TW9kaWZ5RGF0ZT0iMjAxOS0wNy0xOVQxNDowMTo1NSswMjowMCIgeG1wOk1ldGFkYXRhRGF0ZT0iMjAxOS0wNy0xOVQxNDowMTo1NSswMjowMCIgZGM6Zm9ybWF0PSJpbWFnZS9wbmciIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiIHBob3Rvc2hvcDpJQ0NQcm9maWxlPSJzUkdCIElFQzYxOTY2LTIuMSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDowN2Y5NzhhNy1kY2U1LWE2NDUtOWZhZS1hMmUwZmU2YWExZTUiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NmZkNGVlNjgtOWU3Mi1jYTQxLTg5NjMtMWRjMmI2M2EzYWExIiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6NmZkNGVlNjgtOWU3Mi1jYTQxLTg5NjMtMWRjMmI2M2EzYWExIiB0aWZmOk9yaWVudGF0aW9uPSIxIiB0aWZmOlhSZXNvbHV0aW9uPSI5NjAwMDAvMTAwMDAiIHRpZmY6WVJlc29sdXRpb249Ijk2MDAwMC8xMDAwMCIgdGlmZjpSZXNvbHV0aW9uVW5pdD0iMiIgZXhpZjpDb2xvclNwYWNlPSIxIiBleGlmOlBpeGVsWERpbWVuc2lvbj0iMTgwIiBleGlmOlBpeGVsWURpbWVuc2lvbj0iMTgwIj4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDo2ZmQ0ZWU2OC05ZTcyLWNhNDEtODk2My0xZGMyYjYzYTNhYTEiIHN0RXZ0OndoZW49IjIwMTUtMTAtMDlUMjA6MTM6MTYrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAoV2luZG93cykiLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249InNhdmVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOjA3Zjk3OGE3LWRjZTUtYTY0NS05ZmFlLWEyZTBmZTZhYTFlNSIgc3RFdnQ6d2hlbj0iMjAxOS0wNy0xOVQxNDowMTo1NSswMjowMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIiBzdEV2dDpjaGFuZ2VkPSIvIi8+IDwvcmRmOlNlcT4gPC94bXBNTTpIaXN0b3J5PiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6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' 

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

function EnableOrganisationMoneyHUDElement()

  local organisationMoneyHUDElementTpl = '<div><img src="' .. base64MoneyIcon .. '" style="width:20px; height:20px; vertical-align:middle;">&nbsp;{{money}}</div>'

  ESX.UI.HUD.RegisterElement('organisation_money', 3, 0, organisationMoneyHUDElementTpl, {
    money = 0
  })

end

function DisableOrganisationMoneyHUDElement()
  ESX.UI.HUD.RemoveElement('organisation_money')
end

function UpdateOrganisationMoneyHUDElement(money)

  ESX.UI.HUD.UpdateElement('organisation_money', {
    money = money
  })

end

function OpenBossMenu(organisation, close, options)

  local options  = options or {}
  local elements = {}

  local defaultOptions = {
    withdraw  = true,
    deposit   = true,
    wash      = true,
    employees = true,
    grade     = false
  }

  for k,v in pairs(defaultOptions) do
    if options[k] == nil then
      options[k] = v
    end
  end

  if options.withdraw then
    table.insert(elements, {label = _U('withdraw_organisation_money'), value = 'withdraw_organisation_money'})
  end

  if options.deposit then
    table.insert(elements, {label = _U('deposit_organisation_money'), value = 'deposit_money'})
  end

  -- if options.wash then
    -- table.insert(elements, {label = _U('wash_money'), value = 'wash_money'})
  -- end

  if options.employees then
    table.insert(elements, {label = _U('employee_management'), value = 'manage_employees'})
  end

  if options.grade then
    table.insert(elements, {label = _U('salary_management'), value = 'manage_grade'})
  end

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'boss_actions_' .. organisation,
    {
      title    = 'Patron',
      elements = elements
    },
    function(data, menu)

      if data.current.value == 'withdraw_organisation_money' then

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'withdraw_organisation_money_amount_' .. organisation,
          {
            title = _U('withdraw_amount')
          },
          function(data, menu)

            local amount = tonumber(data.value)

            if amount == nil then
              ESX.ShowNotification(_U('invalid_amount'))
            else
              menu.close()
              TriggerServerEvent('esx_organisation:withdrawMoney', organisation, amount)
            end

          end,
          function(data, menu)
            menu.close()
          end
        )

      end

      if data.current.value == 'deposit_money' then

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'deposit_money_amount_' .. organisation,
          {
            title = _U('deposit_amount')
          },
          function(data, menu)

            local amount = tonumber(data.value)

            if amount == nil then
              ESX.ShowNotification(_U('invalid_amount'))
            else
              menu.close()
              TriggerServerEvent('esx_organisation:depositMoney', organisation, amount)
            end

          end,
          function(data, menu)
            menu.close()
          end
        )

      end

      if data.current.value == 'wash_money' then

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'wash_money_amount_' .. organisation,
          {
            title = _U('wash_money_amount')
          },
          function(data, menu)

            local amount = tonumber(data.value)

            if amount == nil then
              ESX.ShowNotification(_U('invalid_amount'))
            else
              menu.close()
              TriggerServerEvent('esx_organisation:washMoney', organisation, amount)
            end

          end,
          function(data, menu)
            menu.close()
          end
        )

      end

      if data.current.value == 'manage_employees' then
        OpenManageEmployeesMenu(organisation)
      end

      if data.current.value == 'manage_grade' then
        OpenManageGradesMenu(organisation)
      end

    end,
    function(data, menu)

      if close then
        close(data, menu)
      end

    end
  )

end

function OpenManageEmployeesMenu(organisation)

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'manage_employees_' .. organisation,
    {
      title    = _U('employee_management'),
      elements = {
        {label = _U('employee_list'), value = 'employee_list'},
        {label = _U('recruit'),       value = 'recruit'},
      }
    },
    function(data, menu)

      if data.current.value == 'employee_list' then
        OpenEmployeeList(organisation)
      end

      if data.current.value == 'recruit' then
        OpenRecruitMenu(organisation)
      end

    end,
    function(data, menu)
      menu.close()
    end
  )

end

function OpenEmployeeList(organisation)

  ESX.TriggerServerCallback('esx_organisation:getEmployees', function(employees)

    local elements = {
      head = {_U('employee'), _U('gradeorg'), _U('actions')},
      rows = {}
    }

    for i=1, #employees, 1 do

      local gradeLabel = (employees[i].org.gradeorg_label == '' and employees[i].org.label or employees[i].org.gradeorg_label)

      table.insert(elements.rows, {
        data = employees[i],
        cols = {
          employees[i].name,
          gradeLabel,
          '{{' .. _U('promote') .. '|promote}} {{' .. _U('fire') .. '|fire}}'
        }
      })
    end

    ESX.UI.Menu.Open(
      'list', GetCurrentResourceName(), 'employee_list_' .. organisation,
      elements,
      function(data, menu)

        local employee = data.data

        if data.value == 'promote' then
          menu.close()
          OpenPromoteMenu(organisation, employee)
        end

        if data.value == 'fire' then

          TriggerEvent('esx:showNotification', _U('you_have_fired', employee.name))

          ESX.TriggerServerCallback('esx_organisation:setOrg', function()
            OpenEmployeeList(organisation)
          end, employee.identifier, 'unemployed', 0, 'fire')

        end

      end,
      function(data, menu)
        menu.close()
        OpenManageEmployeesMenu(organisation)
      end
    )

  end, organisation)

end

function OpenRecruitMenu(organisation)

  ESX.TriggerServerCallback('esx_organisation:getOnlinePlayers', function(players)

    local elements = {}

    for i=1, #players, 1 do
      if players[i].org.name ~= organisation then
        table.insert(elements, {label = players[i].name, value = players[i].source, name = players[i].name, identifier = players[i].identifier})
      end
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'recruit_' .. organisation,
      {
        title    = _U('recruiting'),
        elements = elements
      },
      function(data, menu)

        ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'recruit_confirm_' .. organisation,
          {
            title    = _U('do_you_want_to_recruit', data.current.name),
            elements = {
              {label = _U('yes'), value = 'yes'},
              {label = _U('no'),  value = 'no'},
            }
          },
          function(data2, menu2)

            menu2.close()

            if data2.current.value == 'yes' then

              TriggerEvent('esx:showNotification', _U('you_have_hired', data.current.name))

              ESX.TriggerServerCallback('esx_organisation:setOrg', function()
                OpenRecruitMenu(organisation)
              end, data.current.identifier, organisation, 0, 'hire')

            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

function OpenPromoteMenu(organisation, employee)

  ESX.TriggerServerCallback('esx_organisation:getOrg', function(org)

    local elements = {}

    for i=1, #org.grade, 1 do
      local gradeLabel = (org.grade[i].label == '' and org.label or org.grade[i].label)
      table.insert(elements, {label = gradeorgLabel, value = org.grade[i].gradeorg, selected = (employee.org.gradeorg == org.grade[i].gradeorg)})
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'promote_employee_' .. organisation,
      {
        title    = _U('promote_employee', employee.name),
        elements = elements
      },
      function(data, menu)
        menu.close()

        TriggerEvent('esx:showNotification', _U('you_have_promoted', employee.name, data.current.label))

        ESX.TriggerServerCallback('esx_organisation:setOrg', function()
          OpenEmployeeList(organisation)
        end, employee.identifier, organisation, data.current.value, 'promote')

      end,
      function(data, menu)
        menu.close()
        OpenEmployeeList(organisation)
      end
    )

  end, organisation)

end

function OpenManageGradesMenu(organisation)

  ESX.TriggerServerCallback('esx_organisation:getOrg', function(org)

    local elements = {}

    for i=1, #org.grade, 1 do
      local gradeLabel = (org.grade[i].label == '' and org.label or org.grade[i].label)
      table.insert(elements, {label = gradeorgLabel .. ' $' .. org.grade[i].salary, value = org.grade[i].gradeorg})
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'manage_grade_' .. organisation,
      {
        title    = _U('salary_management'),
        elements = elements
      },
      function(data, menu)

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'manage_grade_amount_' .. organisation,
          {
            title = _U('salary_amount')
          },
          function(data2, menu2)

            local amount = tonumber(data2.value)

            if amount == nil then
              ESX.ShowNotification(_U('invalid_amount'))
            else
              menu2.close()

              ESX.TriggerServerCallback('esx_organisation:setOrgSalary', function()
                OpenManageGradesMenu(organisation)
              end, organisation, data.current.value, amount)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end, organisation)

end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  
  PlayerData = xPlayer

  DisableOrganisationMoneyHUDElement()

  if PlayerData.org.gradeorg_name == 'boss' then
    
    EnableOrganisationMoneyHUDElement()
  
    ESX.TriggerServerCallback('esx_organisation:getOrganisationMoney', function(money)
      UpdateOrganisationMoneyHUDElement(money)
    end, PlayerData.org.name)

  end

  if PlayerData.org.gradeorg_name == 'boss' then
    
    EnableOrganisationMoneyHUDElement()
  
    ESX.TriggerServerCallback('esx_organisation:getOrganisationMoney', function(money)
      UpdateOrganisationMoneyHUDElement(money)
    end, PlayerData.org.name)

  end

end)

RegisterNetEvent('esx:setOrg')
AddEventHandler('esx:setOrg', function(org)

  PlayerData.org = org

  DisableOrganisationMoneyHUDElement()

  if PlayerData.org.gradeorg_name == 'boss' then
    
    EnableOrganisationMoneyHUDElement()
  
    ESX.TriggerServerCallback('esx_organisation:getOrganisationMoney', function(money)
      UpdateOrganisationMoneyHUDElement(money)
    end, PlayerData.org.name)

  end

end)


RegisterNetEvent('esx_addonaccount:setMoney')
AddEventHandler('esx_addonaccount:setMoney', function(organisation, money)

  if PlayerData.org ~= nil and PlayerData.org.gradeorg_name == 'boss' and 'organisation_' .. PlayerData.org.name == organisation then
    UpdateOrganisationMoneyHUDElement(money)
  end

end)

AddEventHandler('esx_organisation:openBossMenu', function(organisation, close, options)
  OpenBossMenu(organisation, close, options)
end)
