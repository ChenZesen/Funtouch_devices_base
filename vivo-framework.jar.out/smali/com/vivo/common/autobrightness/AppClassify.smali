.class public Lcom/vivo/common/autobrightness/AppClassify;
.super Ljava/lang/Object;
.source "AppClassify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/AppClassify$Pare;,
        Lcom/vivo/common/autobrightness/AppClassify$AppType;
    }
.end annotation


# static fields
.field private static mNews:[Ljava/lang/String;

.field private static mPareList:[Lcom/vivo/common/autobrightness/AppClassify$Pare;

.field private static mReading:[Ljava/lang/String;

.field private static mShopping:[Ljava/lang/String;

.field private static mSns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v4

    const-string v1, "com.tencent.mobileqq"

    aput-object v1, v0, v5

    const-string v1, "com.sina.weibo"

    aput-object v1, v0, v6

    const-string v1, "com.qzone"

    aput-object v1, v0, v7

    const-string v1, "com.immomo.momo"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "com.baidu.tieba"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cn.j.hers"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.yx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.alibaba.android.rimet"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.taobao.qianniu"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/AppClassify;->mSns:[Ljava/lang/String;

    .line 29
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sankuai.meituan"

    aput-object v1, v0, v4

    const-string v1, "com.taobao.taobao"

    aput-object v1, v0, v5

    const-string v1, "com.achievo.vipshop"

    aput-object v1, v0, v6

    const-string v1, "com.dianping.v1"

    aput-object v1, v0, v7

    const-string v1, "com.jingdong.app.mall"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "com.nuomi"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.mogujie"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.tmall.wireless"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.husor.beibei"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "me.ele"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.baidu.lbs.waimai"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sankuai.meituan.takeoutnew"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/AppClassify;->mShopping:[Ljava/lang/String;

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.news"

    aput-object v1, v0, v4

    const-string v1, "com.ss.android.article.news"

    aput-object v1, v0, v5

    const-string v1, "com.tencent.reading"

    aput-object v1, v0, v6

    const-string v1, "com.tencent.qt.qtl"

    aput-object v1, v0, v7

    const-string v1, "com.sina.news"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "com.sohu.newsclient"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.cubic.autohome"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.netease.newsreader.activity"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.zhihu.android"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.ifeng.news2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/AppClassify;->mNews:[Ljava/lang/String;

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.chaozh.iReader"

    aput-object v1, v0, v4

    const-string v1, "com.qq.reader"

    aput-object v1, v0, v5

    const-string v1, "com.shuqi.controller"

    aput-object v1, v0, v6

    const-string v1, "com.esbook.reader"

    aput-object v1, v0, v7

    const-string v1, "com.ophone.reader.ui"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "com.chaozh.iReaderFree"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.ushaqi.zhuishushenqi"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sogou.novel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cn.htjyb.reader"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.lianzainovel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/AppClassify;->mReading:[Ljava/lang/String;

    .line 80
    new-array v0, v3, [Lcom/vivo/common/autobrightness/AppClassify$Pare;

    new-instance v1, Lcom/vivo/common/autobrightness/AppClassify$Pare;

    sget-object v2, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_SNS:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    sget-object v3, Lcom/vivo/common/autobrightness/AppClassify;->mSns:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vivo/common/autobrightness/AppClassify$Pare;-><init>(Lcom/vivo/common/autobrightness/AppClassify$AppType;[Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/vivo/common/autobrightness/AppClassify$Pare;

    sget-object v2, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_SHOPING:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    sget-object v3, Lcom/vivo/common/autobrightness/AppClassify;->mShopping:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vivo/common/autobrightness/AppClassify$Pare;-><init>(Lcom/vivo/common/autobrightness/AppClassify$AppType;[Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/vivo/common/autobrightness/AppClassify$Pare;

    sget-object v2, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_NEWS:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    sget-object v3, Lcom/vivo/common/autobrightness/AppClassify;->mNews:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vivo/common/autobrightness/AppClassify$Pare;-><init>(Lcom/vivo/common/autobrightness/AppClassify$AppType;[Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/vivo/common/autobrightness/AppClassify$Pare;

    sget-object v2, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_READING:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    sget-object v3, Lcom/vivo/common/autobrightness/AppClassify;->mReading:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vivo/common/autobrightness/AppClassify$Pare;-><init>(Lcom/vivo/common/autobrightness/AppClassify$AppType;[Ljava/lang/String;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/common/autobrightness/AppClassify;->mPareList:[Lcom/vivo/common/autobrightness/AppClassify$Pare;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static getAppType(Ljava/lang/String;)Lcom/vivo/common/autobrightness/AppClassify$AppType;
    .locals 11
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 86
    if-eqz p0, :cond_0

    const-string v10, ""

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 87
    :cond_0
    sget-object v7, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_UNKOWN:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    .line 103
    :cond_1
    return-object v7

    .line 89
    :cond_2
    sget-object v7, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_UNKOWN:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    .line 90
    .local v7, "ret":Lcom/vivo/common/autobrightness/AppClassify$AppType;
    sget-object v0, Lcom/vivo/common/autobrightness/AppClassify;->mPareList:[Lcom/vivo/common/autobrightness/AppClassify$Pare;

    .local v0, "arr$":[Lcom/vivo/common/autobrightness/AppClassify$Pare;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lcom/vivo/common/autobrightness/AppClassify$Pare;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v9, v0, v3

    .line 91
    .local v9, "x":Lcom/vivo/common/autobrightness/AppClassify$Pare;
    iget-object v8, v9, Lcom/vivo/common/autobrightness/AppClassify$Pare;->type:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    .line 92
    .local v8, "type":Lcom/vivo/common/autobrightness/AppClassify$AppType;
    iget-object v1, v9, Lcom/vivo/common/autobrightness/AppClassify$Pare;->list:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v1, v2

    .line 93
    .local v6, "p":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 94
    move-object v7, v8

    .line 99
    .end local v6    # "p":Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_UNKOWN:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    if-ne v7, v10, :cond_1

    .line 90
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 92
    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    .restart local v6    # "p":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
