class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: '--'},
    {id: 2, name: '胸'},
    {id: 3, name: '背中'},
    {id: 4, name: '肩'},
    {id: 5, name: '腕'},
    {id: 6, name: '脚'},
    {id: 7, name: '腹筋'},
    {id: 8, name: '食事メニュー'}
  ]
end
