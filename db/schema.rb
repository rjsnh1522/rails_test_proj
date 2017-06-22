# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170621185240) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "category_name"
    t.string   "category_type"
    t.string   "cid"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["id"], name: "index_categories_on_id", unique: true, using: :btree
  end

  create_table "ilance_buynow_orders", primary_key: "orderid", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer  "parentid",                                   default: 0,      null: false
    t.integer  "project_id",                                 default: 0,      null: false
    t.integer  "buyer_id",                                   default: 0,      null: false
    t.integer  "owner_id",                                   default: 0,      null: false
    t.integer  "invoiceid",                                  default: 0,      null: false
    t.integer  "attachid",                                   default: 0,      null: false
    t.integer  "qty",                                        default: 1,      null: false
    t.float    "amount",                    limit: 53,       default: 0.0,    null: false
    t.float    "salestax",                  limit: 53,       default: 0.0,    null: false
    t.string   "salestaxstate",             limit: 250,      default: "",     null: false
    t.string   "salestaxrate",              limit: 10,       default: "0",    null: false
    t.integer  "salestaxshipping",                           default: 0,      null: false
    t.float    "escrowfee",                 limit: 53,       default: 0.0,    null: false
    t.float    "escrowfeebuyer",            limit: 53,       default: 0.0,    null: false
    t.float    "fvf",                       limit: 53,       default: 0.0,    null: false
    t.float    "fvfbuyer",                  limit: 53,       default: 0.0,    null: false
    t.integer  "isescrowfeepaid",                            default: 0,      null: false
    t.integer  "isescrowfeebuyerpaid",                       default: 0,      null: false
    t.integer  "isfvfpaid",                                  default: 0,      null: false
    t.integer  "isfvfbuyerpaid",                             default: 0,      null: false
    t.integer  "escrowfeeinvoiceid",                         default: 0,      null: false
    t.integer  "escrowfeebuyerinvoiceid",                    default: 0,      null: false
    t.integer  "fvfinvoiceid",                               default: 0,      null: false
    t.integer  "fvfbuyerinvoiceid",                          default: 0,      null: false
    t.integer  "ship_required",                              default: 1,      null: false
    t.text     "ship_location",             limit: 16777215
    t.datetime "orderdate",                                                   null: false
    t.datetime "canceldate",                                                  null: false
    t.datetime "arrivedate",                                                  null: false
    t.datetime "paiddate",                                                    null: false
    t.datetime "releasedate",                                                 null: false
    t.integer  "winnermarkedaspaid",                         default: 0,      null: false
    t.datetime "winnermarkedaspaiddate",                                      null: false
    t.text     "winnermarkedaspaidmethod",  limit: 16777215
    t.string   "buyerpaymethod",            limit: 250,      default: "",     null: false
    t.float    "buyershipcost",             limit: 53,       default: 0.0,    null: false
    t.integer  "buyershipperid",                             default: 0,      null: false
    t.integer  "sellermarkedasshipped",                      default: 0,      null: false
    t.datetime "sellermarkedasshippeddate",                                   null: false
    t.string   "shiptracknumber",           limit: 250,      default: "",     null: false
    t.integer  "buyerfeedback",                              default: 0,      null: false
    t.integer  "sellerfeedback",                             default: 0,      null: false
    t.string   "status",                    limit: 17,       default: "paid", null: false
    t.index ["attachid"], name: "attachid", using: :btree
    t.index ["buyer_id"], name: "buyer_id", using: :btree
    t.index ["invoiceid"], name: "invoiceid", using: :btree
    t.index ["owner_id"], name: "owner_id", using: :btree
    t.index ["parentid"], name: "parentid", using: :btree
    t.index ["project_id"], name: "project_id", using: :btree
    t.index ["status"], name: "status", using: :btree
  end

  create_table "ilance_projects", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer  "project_id",                               default: 0,         null: false
    t.integer  "escrow_id",                                default: 0,         null: false
    t.integer  "cid",                                      default: 0,         null: false
    t.text     "description",             limit: 16777215
    t.string   "ishtml",                  limit: 1,        default: "0",       null: false
    t.text     "description_videourl",    limit: 16777215
    t.datetime "date_added",                                                   null: false
    t.datetime "date_starts",                                                  null: false
    t.datetime "date_end",                                                     null: false
    t.integer  "gtc",                                      default: 0,         null: false
    t.datetime "gtc_cancelled",                                                null: false
    t.integer  "user_id",                                  default: 0,         null: false
    t.integer  "visible",                                  default: 0,         null: false
    t.integer  "views",                                    default: 0,         null: false
    t.string   "project_title",           limit: 250,      default: "",        null: false
    t.integer  "bids",                                     default: 0,         null: false
    t.integer  "bidsdeclined",                             default: 0,         null: false
    t.integer  "bidsretracted",                            default: 0,         null: false
    t.integer  "bidsshortlisted",                          default: 0,         null: false
    t.string   "budgetgroup",             limit: 30,       default: "",        null: false
    t.text     "additional_info",         limit: 16777215
    t.string   "status",                  limit: 17,       default: "draft",   null: false
    t.datetime "close_date",                                                   null: false
    t.string   "transfertype",            limit: 6,        default: "userid",  null: false
    t.integer  "transfer_to_userid",                       default: 0,         null: false
    t.integer  "transfer_from_userid",                     default: 0,         null: false
    t.string   "transfer_to_email",       limit: 50,       default: "",        null: false
    t.string   "transfer_status",         limit: 8,        default: "",        null: false
    t.string   "transfer_code",           limit: 32,       default: "",        null: false
    t.string   "project_details",         limit: 11,       default: "public",  null: false
    t.string   "project_type",            limit: 7,        default: "reverse", null: false
    t.string   "project_state",           limit: 7,        default: "service", null: false
    t.string   "bid_details",             limit: 6,        default: "open",    null: false
    t.string   "filter_rating",           limit: 1,        default: "0",       null: false
    t.string   "filter_country",          limit: 1,        default: "0",       null: false
    t.string   "filter_state",            limit: 1,        default: "0",       null: false
    t.string   "filter_city",             limit: 1,        default: "0",       null: false
    t.string   "filter_zip",              limit: 1,        default: "0",       null: false
    t.string   "filter_underage",         limit: 1,        default: "0",       null: false
    t.string   "filter_businessnumber",   limit: 1,        default: "0",       null: false
    t.string   "filter_bidtype",          limit: 1,        default: "0",       null: false
    t.string   "filter_budget",           limit: 1,        default: "0",       null: false
    t.integer  "filter_escrow",                            default: 0,         null: false
    t.integer  "filter_gateway",                           default: 0,         null: false
    t.integer  "filter_ccgateway",                         default: 0,         null: false
    t.integer  "filter_offline",                           default: 0,         null: false
    t.string   "filter_publicboard",      limit: 1,        default: "0",       null: false
    t.string   "filtered_rating",         limit: 1,        default: "1",       null: false
    t.string   "filtered_country",        limit: 50,       default: "",        null: false
    t.string   "filtered_state",          limit: 50,       default: "",        null: false
    t.string   "filtered_city",           limit: 20,       default: "",        null: false
    t.string   "filtered_zip",            limit: 10,       default: "",        null: false
    t.integer  "filter_bidlimit",                          default: 0,         null: false
    t.integer  "filtered_bidlimit",                        default: 10,        null: false
    t.string   "filtered_bidtype",        limit: 7,        default: "entire",  null: false
    t.string   "filtered_bidtypecustom",  limit: 250,      default: "",        null: false
    t.integer  "filtered_budgetid",                        default: 0,         null: false
    t.string   "filtered_auctiontype",    limit: 10,       default: "regular", null: false
    t.string   "classified_phone",        limit: 32,       default: "",        null: false
    t.float    "classified_price",        limit: 53,       default: 0.0,       null: false
    t.integer  "urgent",                                   default: 0,         null: false
    t.integer  "buynow",                                   default: 0,         null: false
    t.float    "buynow_price",            limit: 53,       default: 0.0,       null: false
    t.integer  "buynow_qty",                               default: 0,         null: false
    t.integer  "buynow_qty_lot",                           default: 0,         null: false
    t.integer  "items_in_lot",            limit: 3,        default: 0,         null: false, unsigned: true
    t.integer  "buynow_purchases",                         default: 0,         null: false
    t.integer  "reserve",                                  default: 0,         null: false
    t.float    "reserve_price",           limit: 53,       default: 0.0,       null: false
    t.integer  "featured",                                 default: 0,         null: false
    t.datetime "featured_date",                                                null: false
    t.integer  "featured_searchresults",                   default: 0,         null: false
    t.integer  "highlite",                                 default: 0,         null: false
    t.integer  "bold",                                     default: 0,         null: false
    t.integer  "autorelist",                               default: 0,         null: false
    t.datetime "autorelist_date",                                              null: false
    t.float    "startprice",              limit: 53,       default: 0.0,       null: false
    t.float    "retailprice",             limit: 53,       default: 0.0,       null: false
    t.integer  "uniquebidcount",                           default: 0,         null: false
    t.text     "paymethod",               limit: 16777215
    t.text     "paymethodcc",             limit: 16777215
    t.text     "paymethodoptions",        limit: 16777215
    t.text     "paymethodoptionsemail",   limit: 16777215
    t.string   "keywords",                limit: 250,      default: "",        null: false
    t.float    "currentprice",            limit: 53,       default: 0.0,       null: false
    t.float    "insertionfee",            limit: 53,       default: 0.0,       null: false
    t.float    "enhancementfee",          limit: 53,       default: 0.0,       null: false
    t.float    "fvf",                     limit: 53,       default: 0.0,       null: false
    t.integer  "isfvfpaid",                                default: 0,         null: false
    t.integer  "isifpaid",                                 default: 0,         null: false
    t.integer  "isenhancementfeepaid",                     default: 0,         null: false
    t.integer  "ifinvoiceid",                              default: 0,         null: false
    t.integer  "enhancementfeeinvoiceid",                  default: 0,         null: false
    t.integer  "fvfinvoiceid",                             default: 0,         null: false
    t.integer  "returnaccepted",                           default: 0,         null: false
    t.string   "returnwithin",            limit: 2,        default: "0",       null: false
    t.string   "returngivenas",           limit: 9,        default: "none",    null: false
    t.string   "returnshippaidby",        limit: 6,        default: "none",    null: false
    t.text     "returnpolicy",            limit: 16777215
    t.integer  "buyerfeedback",                            default: 0,         null: false
    t.integer  "sellerfeedback",                           default: 0,         null: false
    t.integer  "hasimage",                                 default: 0,         null: false
    t.integer  "hasimageslideshow",                        default: 0,         null: false
    t.integer  "hasdigitalfile",                           default: 0,         null: false
    t.integer  "haswinner",                                default: 0,         null: false
    t.integer  "hasbuynowwinner",                          default: 0,         null: false
    t.integer  "winner_user_id",                           default: 0,         null: false
    t.integer  "donation",                                 default: 0,         null: false
    t.integer  "charityid",                                default: 0,         null: false
    t.integer  "donationpercentage",                       default: 0,         null: false
    t.integer  "donermarkedaspaid",                        default: 0,         null: false
    t.datetime "donermarkedaspaiddate",                                        null: false
    t.integer  "donationinvoiceid",                        default: 0,         null: false
    t.integer  "currencyid",                               default: 0,         null: false
    t.integer  "countryid",                                default: 0,         null: false
    t.string   "country",                 limit: 250,      default: "",        null: false
    t.string   "state",                   limit: 250,      default: "",        null: false
    t.string   "city",                    limit: 250,      default: "",        null: false
    t.string   "zipcode",                 limit: 50,       default: "",        null: false
    t.string   "sku",                     limit: 250,      default: "",        null: false
    t.string   "upc",                     limit: 250,      default: "",        null: false
    t.string   "ean",                     limit: 250,      default: "",        null: false
    t.string   "isbn10",                  limit: 250,      default: "",        null: false
    t.string   "isbn13",                  limit: 250,      default: "",        null: false
    t.string   "partnumber",              limit: 250,      default: "",        null: false
    t.string   "modelnumber",             limit: 250,      default: "",        null: false
    t.string   "salestaxstate",           limit: 250,      default: "",        null: false
    t.string   "salestaxrate",            limit: 10,       default: "0",       null: false
    t.integer  "salestaxentirecountry",                    default: 0,         null: false
    t.integer  "salestaxshipping",                         default: 0,         null: false
    t.integer  "countdownresets",                          default: 0,         null: false
    t.integer  "bulkid",                                   default: 0,         null: false
    t.integer  "updateid",                                 default: 1,         null: false
    t.integer  "storeid",                                  default: 0,         null: false
    t.text     "itemcondition",           limit: 16777215
    t.text     "imageurl",                limit: 16777215
    t.integer  "imageurl_attachid",                        default: 0,         null: false
    t.integer  "download_attachid",                        default: 0,         null: false
    t.integer  "itemstatus",                               default: 1,         null: false
    t.integer  "storecid",                                 default: 0,         null: false
    t.string   "tags",                    limit: 100,                          null: false
    t.string   "genre",                   limit: 100,                          null: false
    t.index ["charityid"], name: "charityid", using: :btree
    t.index ["cid"], name: "cid", using: :btree
    t.index ["countryid"], name: "countryid", using: :btree
    t.index ["hasdigitalfile"], name: "hasdigitalfile", using: :btree
    t.index ["hasimage"], name: "hasimage", using: :btree
    t.index ["hasimageslideshow"], name: "hasimageslideshow", using: :btree
    t.index ["isbn10"], name: "isbn10", using: :btree
    t.index ["isbn13"], name: "isbn13", using: :btree
    t.index ["modelnumber"], name: "modelnumber", using: :btree
    t.index ["partnumber"], name: "partnumber", using: :btree
    t.index ["project_details"], name: "project_details", using: :btree
    t.index ["project_id"], name: "project_id", using: :btree
    t.index ["project_state"], name: "project_state", using: :btree
    t.index ["project_title"], name: "project_title", using: :btree
    t.index ["project_type"], name: "project_type", using: :btree
    t.index ["sku"], name: "sku", using: :btree
    t.index ["status"], name: "status", using: :btree
    t.index ["zipcode"], name: "zipcode", using: :btree
  end

  create_table "ilance_subscription_user", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer  "subscriptionid",            default: 1,         null: false
    t.integer  "user_id",                   default: -1,        null: false
    t.string   "paymethod",      limit: 12, default: "account", null: false
    t.datetime "startdate",                                     null: false
    t.datetime "renewdate",                                     null: false
    t.integer  "autopayment",               default: 1,         null: false
    t.string   "autorenewal",    limit: 1,  default: "1",       null: false
    t.string   "active",         limit: 9,  default: "no",      null: false
    t.integer  "cancelled",                 default: 0,         null: false
    t.integer  "migrateto",                 default: 0,         null: false
    t.string   "migratelogic",   limit: 6,  default: "none",    null: false
    t.integer  "recurring",                 default: 0,         null: false
    t.integer  "invoiceid",                 default: 0,         null: false
    t.integer  "roleid",                    default: -1,        null: false
    t.index ["active"], name: "active", using: :btree
    t.index ["invoiceid"], name: "invoiceid", using: :btree
    t.index ["migratelogic"], name: "migratelogic", using: :btree
    t.index ["paymethod"], name: "paymethod", using: :btree
    t.index ["subscriptionid"], name: "subscriptionid", using: :btree
    t.index ["user_id"], name: "user_id", using: :btree
  end

  create_table "ilance_users", primary_key: "user_id", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string   "ipaddress",            limit: 25,       default: "",       null: false
    t.integer  "iprestrict",                            default: 0,        null: false
    t.string   "username",             limit: 50,       default: "",       null: false
    t.string   "password",             limit: 32,       default: "",       null: false
    t.string   "salt",                 limit: 5,        default: "",       null: false
    t.string   "secretquestion",       limit: 200,      default: "",       null: false
    t.string   "secretanswer",         limit: 32,       default: "",       null: false
    t.string   "email",                limit: 60,       default: "",       null: false
    t.string   "first_name",           limit: 100,      default: "",       null: false
    t.string   "last_name",            limit: 100,      default: "",       null: false
    t.string   "address",              limit: 200,      default: "",       null: false
    t.string   "address2",             limit: 200
    t.string   "city",                 limit: 100,      default: "",       null: false
    t.string   "state",                limit: 100,      default: "",       null: false
    t.string   "zip_code",             limit: 10,       default: "",       null: false
    t.string   "phone",                limit: 20,       default: "",       null: false
    t.integer  "country",                               default: 500,      null: false
    t.datetime "date_added",                                               null: false
    t.text     "subcategories",        limit: 16777215
    t.string   "status",               limit: 10,       default: "active", null: false
    t.integer  "serviceawards",                         default: 0,        null: false
    t.integer  "productawards",                         default: 0,        null: false
    t.integer  "servicesold",                           default: 0,        null: false
    t.integer  "productsold",                           default: 0,        null: false
    t.float    "rating",               limit: 53,       default: 0.0,      null: false
    t.integer  "score",                                 default: 0,        null: false
    t.float    "feedback",             limit: 53,       default: 0.0,      null: false
    t.integer  "bidstoday",                             default: 0,        null: false
    t.integer  "bidsthismonth",                         default: 0,        null: false
    t.integer  "auctiondelists",                        default: 0,        null: false
    t.integer  "bidretracts",                           default: 0,        null: false
    t.datetime "lastseen",                                                 null: false
    t.date     "dob",                                                      null: false
    t.string   "rid",                  limit: 10,       default: "",       null: false
    t.string   "account_number",       limit: 25,       default: "",       null: false
    t.float    "available_balance",    limit: 53,       default: 0.0,      null: false
    t.float    "total_balance",        limit: 53,       default: 0.0,      null: false
    t.float    "income_reported",      limit: 53,       default: 0.0,      null: false
    t.float    "income_spent",         limit: 53,       default: 0.0,      null: false
    t.string   "startpage",            limit: 250,      default: "main",   null: false
    t.integer  "styleid",                                                  null: false
    t.integer  "project_distance",                      default: 1,        null: false
    t.integer  "currency_calculation",                  default: 1,        null: false
    t.integer  "languageid",                                               null: false
    t.integer  "currencyid",                                               null: false
    t.string   "timezone",             limit: 250,                         null: false
    t.integer  "notifyservices",                                           null: false
    t.integer  "notifyproducts",                                           null: false
    t.text     "notifyservicescats",   limit: 16777215
    t.text     "notifyproductscats",   limit: 16777215
    t.date     "lastemailservicecats",                                     null: false
    t.date     "lastemailproductcats",                                     null: false
    t.integer  "displayprofile",                                           null: false
    t.integer  "emailnotify",                                              null: false
    t.integer  "displayfinancials",                                        null: false
    t.string   "vatnumber",            limit: 250,                         null: false
    t.string   "regnumber",            limit: 250,                         null: false
    t.string   "dnbnumber",            limit: 250,                         null: false
    t.string   "companyname",          limit: 100,                         null: false
    t.integer  "usecompanyname",                                           null: false
    t.integer  "timeonsite",                                               null: false
    t.integer  "daysonsite",                                               null: false
    t.integer  "isadmin",                               default: 0,        null: false
    t.text     "permissions",          limit: 16777215
    t.text     "searchoptions",        limit: 16777215
    t.float    "rateperhour",          limit: 53,       default: 0.0,      null: false
    t.text     "profilevideourl",      limit: 16777215
    t.text     "profileintro",         limit: 16777215
    t.string   "gender",               limit: 6,        default: "",       null: false
    t.string   "freelancing",          limit: 10,       default: "",       null: false
    t.integer  "autopayment",                           default: 1,        null: false
    t.integer  "posthtml",                              default: 0,        null: false
    t.text     "username_history",     limit: 16777215
    t.datetime "password_lastchanged",                                     null: false
    t.integer  "role",                                  default: 0,        null: false
    t.integer  "store",                                 default: 0,        null: false
    t.integer  "store_pay",                             default: 0,        null: false
    t.index ["city"], name: "city", using: :btree
    t.index ["country"], name: "country", using: :btree
    t.index ["email"], name: "email", using: :btree
    t.index ["first_name"], name: "first_name", using: :btree
    t.index ["freelancing"], name: "freelancing", using: :btree
    t.index ["gender"], name: "gender", using: :btree
    t.index ["last_name"], name: "last_name", using: :btree
    t.index ["rating"], name: "rating", using: :btree
    t.index ["score"], name: "score", using: :btree
    t.index ["serviceawards"], name: "serviceawards", using: :btree
    t.index ["state"], name: "state", using: :btree
    t.index ["status"], name: "status", using: :btree
    t.index ["username"], name: "username", using: :btree
    t.index ["zip_code"], name: "zip_code", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "email"
    t.string   "salt"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.string   "city"
    t.string   "country"
    t.string   "zipcode"
  end

end
