.class public final Lcom/vivo/common/provider/IQooSettings$BlackList;
.super Ljava/lang/Object;
.source "IQooSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/provider/IQooSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlackList"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.iqoo.secure.provider.blacklistprovider"

.field private static final CONTENT_BLACK_LIST_URI:Landroid/net/Uri;

.field private static final CONTENT_QUERY_INCALL_BLACK_LIST_URI:Landroid/net/Uri;

.field private static final CONTENT_QUERY_SMS_BLACK_LIST_URI:Landroid/net/Uri;

.field private static final CONTENT_WHITE_LIST_URI:Landroid/net/Uri;

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "number"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final INTENT_ACTION_ADD_BLACKLIST:Ljava/lang/String; = "bbk.intent.action.ADD_BLACKLIST"

.field public static final INTENT_ACTION_DEL_BLACKLIST:Ljava/lang/String; = "bbk.intent.action.DEL_BLACKLIST"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field private static final TAG:Ljava/lang/String; = "IQooSettings"

.field private static final URI_PREFIX:Ljava/lang/String; = "content://com.iqoo.secure.provider.blacklistprovider"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "content://com.iqoo.secure.provider.blacklistprovider/black_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/IQooSettings$BlackList;->CONTENT_BLACK_LIST_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.iqoo.secure.provider.blacklistprovider/white_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/IQooSettings$BlackList;->CONTENT_WHITE_LIST_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "content://com.iqoo.secure.provider.blacklistprovider/query_intercept_sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/IQooSettings$BlackList;->CONTENT_QUERY_SMS_BLACK_LIST_URI:Landroid/net/Uri;

    .line 52
    const-string v0, "content://com.iqoo.secure.provider.blacklistprovider/query_intercept_incall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/provider/IQooSettings$BlackList;->CONTENT_QUERY_INCALL_BLACK_LIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCurrentTimeInTimingIntercept(Landroid/content/ContentResolver;)Z
    .locals 20
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    const-wide/32 v18, 0xea60

    div-long v16, v16, v18

    const-wide/16 v18, 0x5a0

    rem-long v4, v16, v18

    .line 310
    .local v4, "currentTime":J
    const-wide/16 v2, 0x59f

    .line 311
    .local v2, "MAX_MINUTES_IN_DAY":J
    const/4 v14, 0x0

    .line 313
    .local v14, "value":Z
    const-string v15, "timing_intercept_start_time"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 314
    .local v10, "mStartTimeString":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 315
    const-string v10, "23:00"

    .line 316
    const-string v15, "timing_intercept_start_time"

    move-object/from16 v0, p0

    invoke-static {v0, v15, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 318
    :cond_0
    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 319
    .local v8, "hourOfDay":I
    const/4 v15, 0x3

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 320
    .local v11, "minute":I
    mul-int/lit8 v15, v8, 0x3c

    add-int/2addr v15, v11

    int-to-long v12, v15

    .line 322
    .local v12, "startTime":J
    const-string v15, "timing_intercept_end_time"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 323
    .local v9, "mEndTimeString":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 324
    const-string v9, "07:00"

    .line 325
    const-string v15, "timing_intercept_end_time"

    move-object/from16 v0, p0

    invoke-static {v0, v15, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 327
    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 328
    const/4 v15, 0x3

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 329
    mul-int/lit8 v15, v8, 0x3c

    add-int/2addr v15, v11

    int-to-long v6, v15

    .line 331
    .local v6, "endTime":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-gez v15, :cond_2

    .line 332
    const-wide/16 v12, 0x0

    .line 333
    :cond_2
    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-gez v15, :cond_3

    .line 334
    const-wide/16 v6, 0x0

    .line 335
    :cond_3
    const-wide/16 v16, 0x59f

    cmp-long v15, v12, v16

    if-lez v15, :cond_4

    .line 336
    const-wide/16 v12, 0x59f

    .line 337
    :cond_4
    const-wide/16 v16, 0x59f

    cmp-long v15, v6, v16

    if-lez v15, :cond_5

    .line 338
    const-wide/16 v6, 0x59f

    .line 340
    :cond_5
    cmp-long v15, v12, v6

    if-lez v15, :cond_9

    .line 341
    cmp-long v15, v12, v4

    if-gtz v15, :cond_7

    const-wide/16 v16, 0x59f

    cmp-long v15, v4, v16

    if-gtz v15, :cond_7

    .line 342
    const/4 v14, 0x1

    .line 354
    :cond_6
    :goto_0
    return v14

    .line 343
    :cond_7
    const-wide/16 v16, 0x0

    cmp-long v15, v16, v4

    if-gtz v15, :cond_8

    cmp-long v15, v4, v6

    if-gtz v15, :cond_8

    .line 344
    const/4 v14, 0x1

    goto :goto_0

    .line 346
    :cond_8
    const/4 v14, 0x0

    goto :goto_0

    .line 348
    :cond_9
    cmp-long v15, v12, v6

    if-gtz v15, :cond_6

    .line 349
    cmp-long v15, v12, v4

    if-gtz v15, :cond_6

    cmp-long v15, v4, v6

    if-gtz v15, :cond_6

    .line 350
    const/4 v14, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized isInBlacklist(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 550
    const-class v10, Lcom/vivo/common/provider/IQooSettings$BlackList;

    monitor-enter v10

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    monitor-exit v10

    return v6

    .line 554
    :cond_1
    const/4 v6, 0x0

    .line 557
    .local v6, "ans":Z
    :try_start_1
    invoke-static {p2}, Lcom/vivo/common/provider/Utils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 558
    .local v9, "num":Ljava/lang/String;
    invoke-static {v9}, Lcom/vivo/common/provider/Utils;->removePrefix12520(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 559
    const-string v0, "IQooSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is in blacklist or whitelist number is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v7, 0x0

    .line 564
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v3, "number = ?"

    .line 565
    .local v3, "selection":Ljava/lang/String;
    sget-object v0, Lcom/vivo/common/provider/IQooSettings$BlackList;->CONTENT_BLACK_LIST_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    const-string v3, "reject_type = 1 and number= ?"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    :cond_2
    const/4 v2, 0x0

    const/4 v0, 0x1

    :try_start_2
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    const-string v5, "_id desc"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 571
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-lez v0, :cond_3

    .line 572
    const/4 v6, 0x1

    .line 577
    :cond_3
    if-eqz v7, :cond_0

    .line 578
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 550
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "ans":Z
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "num":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .line 574
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "ans":Z
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "num":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 575
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 577
    if-eqz v7, :cond_0

    .line 578
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 577
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_4

    .line 578
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static isInBlacklist(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v1, Lcom/vivo/common/provider/IQooSettings$BlackList;->CONTENT_BLACK_LIST_URI:Landroid/net/Uri;

    invoke-static {p0, v1, p1}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isInBlacklist(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 135
    .local v0, "ans":Z
    const-string v1, "IQooSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInBlacklist is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v0
.end method

.method private static declared-synchronized isInContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 493
    const-class v9, Lcom/vivo/common/provider/IQooSettings$BlackList;

    monitor-enter v9

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    :goto_0
    monitor-exit v9

    return v6

    .line 496
    :cond_0
    :try_start_1
    const-string v0, "IQooSettings"

    const-string v2, "isInContacts() begin"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    const/4 v6, 0x0

    .line 504
    .local v6, "ans":Z
    const/4 v7, 0x0

    .line 505
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 508
    .local v1, "uri":Landroid/net/Uri;
    :try_start_2
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 509
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 511
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-lez v0, :cond_1

    .line 512
    const/4 v6, 0x1

    .line 517
    :cond_1
    if-eqz v7, :cond_2

    .line 518
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 521
    :cond_2
    :goto_1
    const-string v0, "IQooSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInContacts() end return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 493
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "ans":Z
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 514
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "ans":Z
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 515
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 517
    if-eqz v7, :cond_2

    .line 518
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 517
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_3

    .line 518
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private static isInPrivacyContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "Number"    # Ljava/lang/String;

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method private static isInTencentBlacklist(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public static isInWhitelist(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v1, Lcom/vivo/common/provider/IQooSettings$BlackList;->CONTENT_WHITE_LIST_URI:Landroid/net/Uri;

    invoke-static {p0, v1, p1}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isInBlacklist(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 142
    .local v0, "ans":Z
    const-string v1, "IQooSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInWhitelist is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v0
.end method

.method public static isIncallIntercept(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "ans":Z
    sget-object v1, Lcom/vivo/common/provider/IQooSettings$BlackList;->CONTENT_QUERY_INCALL_BLACK_LIST_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isIntercept(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 120
    const-string v1, "IQooSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIncallIntercept is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v0
.end method

.method private static isIntercept(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "ans":Z
    const-string v7, "settings_harass_intercept"

    invoke-static {p0, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_0

    move v1, v5

    .line 274
    .local v1, "interceptEnable":Z
    :goto_0
    const-string v7, "settings_timing_intercept"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v3, v5

    .line 275
    .local v3, "timingInterceptEnable":Z
    :goto_1
    const-string v7, "settings_timing_intercept_mode"

    const/4 v8, 0x2

    invoke-static {p0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 276
    .local v4, "timing_intercept_mode":I
    const-string v7, "settings_intercept_mode"

    invoke-static {p0, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 278
    .local v2, "intercept_mode":I
    if-eqz v1, :cond_3

    .line 279
    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isCurrentTimeInTimingIntercept(Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 280
    invoke-static {p0, p1, v5, p2, p3}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isInterceptWithMode(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 288
    :goto_2
    const-string v5, "IQooSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntercept() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v0

    .end local v1    # "interceptEnable":Z
    .end local v2    # "intercept_mode":I
    .end local v3    # "timingInterceptEnable":Z
    .end local v4    # "timing_intercept_mode":I
    :cond_0
    move v1, v6

    .line 273
    goto :goto_0

    .restart local v1    # "interceptEnable":Z
    :cond_1
    move v3, v6

    .line 274
    goto :goto_1

    .line 282
    .restart local v2    # "intercept_mode":I
    .restart local v3    # "timingInterceptEnable":Z
    .restart local v4    # "timing_intercept_mode":I
    :cond_2
    invoke-static {p0, p1, v6, p2, p3}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isInterceptWithMode(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 285
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static isInterceptInSmartMode(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, "ans":Z
    invoke-static {p0, p2}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isSecretContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 488
    :goto_0
    return v0

    .line 464
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isMatchBlacklist(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    const/4 v0, 0x1

    goto :goto_0

    .line 467
    :cond_1
    invoke-static {p0, p2}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isInWhitelist(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, p2}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isInContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 468
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 483
    :cond_3
    const/4 v0, 0x0

    .line 484
    const-string v1, "IQooSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInterceptInSmartMode() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", will use TMSSDK in SmsReceiver.java"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isInterceptMatchKeywords(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method private static isInterceptWithMode(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "InterceptMode"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 365
    const-string v3, "IQooSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInterceptWithMode() InterceptMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "ans":Z
    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v0

    .line 410
    .end local v0    # "ans":Z
    .local v1, "ans":I
    :goto_1
    return v1

    .line 371
    .end local v1    # "ans":I
    .restart local v0    # "ans":Z
    :pswitch_0
    invoke-static {p0}, Lcom/vivo/common/provider/Utils;->isRejectNoNumberEnable(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 372
    .local v2, "isRejectNoNumber":Z
    if-eqz v2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    const/4 v0, 0x1

    .line 374
    const-string v3, "IQooSettings"

    const-string v4, "RejectNoNumber is true, should reject. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 375
    .restart local v1    # "ans":I
    goto :goto_1

    .line 378
    .end local v1    # "ans":I
    :cond_1
    invoke-static {p0, p3}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isSecretContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 379
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_2
    invoke-static {p0, p3}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isInWhitelist(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 384
    const/4 v0, 0x0

    goto :goto_0

    .line 387
    :cond_3
    invoke-static {p0}, Lcom/vivo/common/provider/Utils;->isRejectBlacklistEnable(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0, p1, p3}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isMatchBlacklist(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 388
    const/4 v0, 0x1

    goto :goto_0

    .line 390
    :cond_4
    invoke-static {p0, p3}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isInContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    .end local v2    # "isRejectNoNumber":Z
    :pswitch_1
    const/4 v0, 0x1

    .line 400
    invoke-static {p0, p3}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isSecretContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p0, p3}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isInWhitelist(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p0, p3}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isInContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static declared-synchronized isIntercept_PD1304T(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 421
    const-class v9, Lcom/vivo/common/provider/IQooSettings$BlackList;

    monitor-enter v9

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    const/4 v6, 0x0

    .line 440
    :cond_0
    :goto_0
    monitor-exit v9

    return v6

    .line 425
    :cond_1
    const/4 v6, 0x0

    .line 427
    .local v6, "ans":Z
    const/4 v7, 0x0

    .line 429
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 430
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_2

    .line 431
    const/4 v6, 0x1

    .line 436
    :cond_2
    if-eqz v7, :cond_0

    .line 437
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 421
    .end local v6    # "ans":Z
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 433
    .restart local v6    # "ans":Z
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 434
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 436
    if-eqz v7, :cond_0

    .line 437
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 436
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_3

    .line 437
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static declared-synchronized isMatchBlacklist(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 585
    const-class v9, Lcom/vivo/common/provider/IQooSettings$BlackList;

    monitor-enter v9

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    const/4 v6, 0x0

    .line 601
    :cond_0
    :goto_0
    monitor-exit v9

    return v6

    .line 588
    :cond_1
    const/4 v6, 0x0

    .line 589
    .local v6, "ans":Z
    const/4 v7, 0x0

    .line 591
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 592
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_2

    .line 593
    const/4 v6, 0x1

    .line 598
    :cond_2
    if-eqz v7, :cond_0

    .line 599
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 585
    .end local v6    # "ans":Z
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 595
    .restart local v6    # "ans":Z
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 596
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 598
    if-eqz v7, :cond_0

    .line 599
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 598
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_3

    .line 599
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static declared-synchronized isSecretContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 802
    const-class v11, Lcom/vivo/common/provider/IQooSettings$BlackList;

    monitor-enter v11

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    const/4 v8, 0x0

    .line 831
    :goto_0
    monitor-exit v11

    return v8

    .line 805
    :cond_0
    const/4 v8, 0x0

    .line 806
    .local v8, "isSecret":Z
    const/4 v10, 0x0

    .line 807
    .local v10, "where":Ljava/lang/String;
    const/4 v6, 0x0

    .line 808
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-static {p1}, Lcom/vivo/common/provider/Utils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 809
    .local v9, "num":Ljava/lang/String;
    invoke-static {v9}, Lcom/vivo/common/provider/Utils;->removePrefix12520(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 810
    const-string v0, "IQooSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is Secret Contect num is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    const/4 v1, 0x0

    .line 814
    .local v1, "phoneUri":Landroid/net/Uri;
    :try_start_2
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "encrypt"

    const-string v3, "> 0"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 816
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 820
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-lez v0, :cond_1

    .line 821
    const/4 v8, 0x1

    .line 826
    :cond_1
    if-eqz v6, :cond_2

    .line 827
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_2
    :goto_1
    const-string v0, "IQooSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSecretContact() is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 802
    .end local v1    # "phoneUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "isSecret":Z
    .end local v9    # "num":Ljava/lang/String;
    .end local v10    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 823
    .restart local v1    # "phoneUri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "isSecret":Z
    .restart local v9    # "num":Ljava/lang/String;
    .restart local v10    # "where":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 824
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 826
    if-eqz v6, :cond_2

    .line 827
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 826
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_3

    .line 827
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static isSmsIntercept(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "ans":Z
    sget-object v1, Lcom/vivo/common/provider/IQooSettings$BlackList;->CONTENT_QUERY_SMS_BLACK_LIST_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2}, Lcom/vivo/common/provider/IQooSettings$BlackList;->isIntercept(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 104
    const-string v1, "IQooSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmsIntercept is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v0
.end method
