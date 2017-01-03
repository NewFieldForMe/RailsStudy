# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'factory_girl'

FactoryGirl.create(:roll, name: "PM")
FactoryGirl.create(:roll, name: "PL")
FactoryGirl.create(:roll, name: "PG")

FactoryGirl.create(:assignment_process, name: "管理業務")
FactoryGirl.create(:assignment_process, name: "要件定義")
FactoryGirl.create(:assignment_process, name: "基本設計")
FactoryGirl.create(:assignment_process, name: "詳細設計")
FactoryGirl.create(:assignment_process, name: "実装・単体")
FactoryGirl.create(:assignment_process, name: "結合テスト")
FactoryGirl.create(:assignment_process, name: "保守・運用")
FactoryGirl.create(:assignment_process, name: "調査・分析")

FactoryGirl.create(:user, accountid:"aaaa", password:"test")
