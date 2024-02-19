SET GLOBAL local_infile=1;

create database ctr;

use ctr;

drop table if exists ctr.ad_label;
create table ctr.ad_label (
    rowid bigint,
    ad_id text,
    ad_loc bigint,
    ad_label text,
    begin_time datetime,
    end_time datetime,
    pic_url text,
    ad_url text,
    ad_des_url text,
    ad_Copy text,
    min_meney bigint,
    mid text,
    oder_num text,
    maid text,
    city_id text,
    idu_cate text,
    click_hide bigint,
    price text,
    sys text,
    network text,
    user_sex text,
    payment_kind text
);

load data local infile 'C:/Users/Tianshu/Desktop/WCD/ctr_ctr/aug-ad-info-with-tags.csv'
into table ctr.ad_label
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
;

drop table if exists ctr.click_1;
create table ctr.click_1 (
    click_time datetime,
    payment_time datetime,
    maid text,
    mid text,
    ad_id text
);

load data local infile 'C:/Users/Tianshu/Desktop/WCD/ctr_ctr/aug-click-01-09.csv'
into table ctr.click_1
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
;

drop table if exists ctr.click_2;
create table ctr.click_2 (
    click_time datetime,
    payment_time datetime,
    maid text,
    mid text,
    ad_id text
);

load data local infile 'C:/Users/Tianshu/Desktop/WCD/ctr_ctr/aug-click-10.csv'
into table ctr.click_2
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
;

drop table if exists ctr.click_3;
create table ctr.click_3 (
    click_time datetime,
    payment_time datetime,
    maid text,
    mid text,
    ad_id text
);

load data local infile 'C:/Users/Tianshu/Desktop/WCD/ctr_ctr/aug-click-11-31.csv'
into table ctr.click_3
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
;

drop table if exists ctr.view_1;
create table ctr.view_1 (
    view_time datetime,
    payment_time datetime,
    maid text,
    mid text,
    ad_id text
);

load data local infile 'C:/Users/Tianshu/Desktop/WCD/ctr_ctr/aug-view-01-09.csv'
into table ctr.view_1
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
;

drop table if exists ctr.view_2;
create table ctr.view_2 (
    view_time datetime,
    payment_time datetime,
    maid text,
    mid text,
    ad_id text
);

load data local infile 'C:/Users/Tianshu/Desktop/WCD/ctr_ctr/aug-view-10.csv'
into table ctr.view_2
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
;

drop table if exists ctr.view_3;
create table ctr.view_3 (
    view_time datetime,
    payment_time datetime,
    maid text,
    mid text,
    ad_id text
);

load data local infile 'C:/Users/Tianshu/Desktop/WCD/ctr_ctr/aug-view-11-31.csv'
into table ctr.view_3
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
;

drop table if exists ctr.transaction_1;
create table ctr.transaction_1 (
    maid text,
    payment_time datetime,
    money text,
    kind_pay text,
    kind_card text,
    mid text,
    network text,
    industry text,
    sex text,
    adr text
)

load data local infile 'C:/Users/Tianshu/Desktop/WCD/ctr_ctr/re/4.new.csv'
into table ctr.transaction_1
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
;

drop table if exists ctr.transaction_2;
create table ctr.transaction_2 (
    maid text,
    payment_time datetime,
    money text,
    kind_pay text,
    kind_card text,
    mid text,
    network text,
    industry text,
    sex text,
    adr text
)

load data local infile 'C:/Users/Tianshu/Desktop/WCD/ctr_ctr/re/5.new.csv'
into table ctr.transaction_2
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
;

drop table if exists ctr.transaction_3;
create table ctr.transaction_3 (
    maid text,
    payment_time datetime,
    money text,
    kind_pay text,
    kind_card text,
    mid text,
    network text,
    industry text,
    sex text,
    adr text
)

load data local infile 'C:/Users/Tianshu/Desktop/WCD/ctr_ctr/re/6.new.csv'
into table ctr.transaction_3
fields terminated by ',' ENCLOSED BY '"'
lines terminated by '\n'
;
