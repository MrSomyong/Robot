*** Settings ***
Resource  ./pages/welcome.robot
Resource  ./pages/catalog.robot

*** Test Cases ***
Sorting by price
  [Tags]  done  spring1
  เข้าเว็บหน้าแรก
  เลือก Dress
  เลือก Summer Dress
  เลือก Sorting ตาม Dropdown
  แสดงผลตามที่เราเลือก Dropdown

*** Keywords ***
เข้าเว็บหน้าแรก
   welcome.Open
เลือก Dress
   welcome.Choose menu Dresses
เลือก Summer Dress
   catalog.Choose Summer Dresses
เลือก Sorting ตาม Dropdown
   catalog.Sort by high price
แสดงผลตามที่เราเลือก Dropdown
   catalog.Check sorted by high price