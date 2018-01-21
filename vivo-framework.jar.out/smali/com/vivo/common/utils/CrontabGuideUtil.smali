.class public Lcom/vivo/common/utils/CrontabGuideUtil;
.super Ljava/lang/Object;
.source "CrontabGuideUtil.java"


# static fields
.field private static final countFlag:[Ljava/lang/String;

.field private static final firstTimeFlag:[Ljava/lang/String;

.field private static mUtil:Lcom/vivo/common/utils/CrontabGuideUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mUtil:Lcom/vivo/common/utils/CrontabGuideUtil;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bbk_crontab_used_poweroff_firsttime"

    aput-object v1, v0, v2

    const-string v1, "bbk_crontab_used_poweron_firsttime"

    aput-object v1, v0, v3

    const-string v1, "bbk_crontab_used_vibrate_firsttime"

    aput-object v1, v0, v4

    const-string v1, "bbk_crontab_used_offline_firsttime"

    aput-object v1, v0, v5

    const-string v1, "bbk_crontab_used_systemclean_firsttime"

    aput-object v1, v0, v6

    sput-object v0, Lcom/vivo/common/utils/CrontabGuideUtil;->firstTimeFlag:[Ljava/lang/String;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bbk_crontab_used_poweroff_count"

    aput-object v1, v0, v2

    const-string v1, "bbk_crontab_used_poweron_count"

    aput-object v1, v0, v3

    const-string v1, "bbk_crontab_used_vibrate_count"

    aput-object v1, v0, v4

    const-string v1, "bbk_crontab_used_offline_count"

    aput-object v1, v0, v5

    const-string v1, "bbk_crontab_used_systemclean_count"

    aput-object v1, v0, v6

    sput-object v0, Lcom/vivo/common/utils/CrontabGuideUtil;->countFlag:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/common/utils/CrontabGuideUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mUtil:Lcom/vivo/common/utils/CrontabGuideUtil;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/vivo/common/utils/CrontabGuideUtil;

    invoke-direct {v0, p0}, Lcom/vivo/common/utils/CrontabGuideUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mUtil:Lcom/vivo/common/utils/CrontabGuideUtil;

    .line 48
    :cond_0
    sget-object v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mUtil:Lcom/vivo/common/utils/CrontabGuideUtil;

    return-object v0
.end method

.method private haveUsedCrontab()Z
    .locals 4

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bbk_crontab_used"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "bbk_crontab_used":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    const/4 v1, 0x1

    .line 232
    :cond_0
    return v1
.end method

.method private isMatchGuide(I)Z
    .locals 7
    .param p1, "flag"    # I

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 295
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/vivo/common/utils/CrontabGuideUtil;->countFlag:[Ljava/lang/String;

    add-int/lit8 v6, p1, -0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 297
    .local v3, "used_count":I
    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 299
    iget-object v4, p0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 301
    .local v2, "statusBar":Landroid/app/StatusBarManager;
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v4, "bbk.intent.action.CRONTAB.USER_GUIDE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "i":Landroid/content/Intent;
    const-string v4, "flag"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    iget-object v4, p0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    const/4 v1, 0x1

    .line 313
    .end local v0    # "i":Landroid/content/Intent;
    .end local v2    # "statusBar":Landroid/app/StatusBarManager;
    :goto_0
    return v1

    .line 309
    :cond_0
    iget-object v4, p0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/vivo/common/utils/CrontabGuideUtil;->countFlag:[Ljava/lang/String;

    add-int/lit8 v6, p1, -0x1

    aget-object v5, v5, v6

    add-int/lit8 v6, v3, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private isPhoneOffline()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "ret":Z
    iget-object v3, p0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 79
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0
.end method

.method private isPhoneVibrate()Z
    .locals 6

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 59
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    move v2, v1

    .line 66
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 60
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 61
    .local v3, "ringerMode":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 63
    const/4 v1, 0x1

    :cond_1
    move v2, v1

    .line 66
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method private isTimeMatch(I)Z
    .locals 22
    .param p1, "flag"    # I

    .prologue
    .line 241
    const/4 v8, 0x0

    .line 243
    .local v8, "ret":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 244
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/vivo/common/utils/CrontabGuideUtil;->countFlag:[Ljava/lang/String;

    add-int/lit8 v19, p1, -0x1

    aget-object v18, v18, v19

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 246
    .local v16, "used_count":I
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move v9, v8

    .line 284
    .end local v8    # "ret":Z
    .local v9, "ret":I
    :goto_0
    return v9

    .line 247
    .end local v9    # "ret":I
    .restart local v8    # "ret":Z
    :cond_0
    if-nez v16, :cond_1

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/vivo/common/utils/CrontabGuideUtil;->firstTimeFlag:[Ljava/lang/String;

    add-int/lit8 v19, p1, -0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/vivo/common/utils/CrontabGuideUtil;->countFlag:[Ljava/lang/String;

    add-int/lit8 v19, p1, -0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v9, v8

    .line 253
    .restart local v9    # "ret":I
    goto :goto_0

    .line 255
    .end local v9    # "ret":I
    :cond_1
    const-string v17, "ABC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "used_count="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/vivo/common/utils/CrontabGuideUtil;->firstTimeFlag:[Ljava/lang/String;

    add-int/lit8 v19, p1, -0x1

    aget-object v18, v18, v19

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    add-long v10, v18, v20

    .line 260
    .local v10, "time":J
    const-string v17, "ABC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "time match time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",now="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",diff="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v20, v10, v6

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/vivo/common/utils/CrontabGuideUtil;->firstTimeFlag:[Ljava/lang/String;

    add-int/lit8 v19, p1, -0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/vivo/common/utils/CrontabGuideUtil;->countFlag:[Ljava/lang/String;

    add-int/lit8 v19, p1, -0x1

    aget-object v18, v18, v19

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/vivo/common/utils/CrontabGuideUtil;->countFlag:[Ljava/lang/String;

    add-int/lit8 v19, p1, -0x1

    aget-object v18, v18, v19

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 268
    .end local v10    # "time":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/vivo/common/utils/CrontabGuideUtil;->firstTimeFlag:[Ljava/lang/String;

    add-int/lit8 v19, p1, -0x1

    aget-object v18, v18, v19

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 270
    .local v4, "firstTime":J
    const-wide/32 v18, 0x4ef6d80

    add-long v18, v18, v4

    add-int/lit8 v17, v16, -0x1

    const v20, 0x5265c00

    mul-int v17, v17, v20

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v12, v18, v20

    .line 271
    .local v12, "time1":J
    const-wide/32 v18, 0x55d4a80

    add-long v18, v18, v4

    add-int/lit8 v17, v16, -0x1

    const v20, 0x5265c00

    mul-int v17, v17, v20

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v18, v20

    .line 272
    .local v14, "time2":J
    const-string v17, "ABC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "time match time1="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",time2="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    cmp-long v17, v6, v12

    if-lez v17, :cond_3

    cmp-long v17, v6, v14

    if-ltz v17, :cond_4

    .line 275
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/vivo/common/utils/CrontabGuideUtil;->firstTimeFlag:[Ljava/lang/String;

    add-int/lit8 v19, p1, -0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/utils/CrontabGuideUtil;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/vivo/common/utils/CrontabGuideUtil;->countFlag:[Ljava/lang/String;

    add-int/lit8 v19, p1, -0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    const/4 v8, 0x0

    :goto_1
    move v9, v8

    .line 284
    .restart local v9    # "ret":I
    goto/16 :goto_0

    .line 282
    .end local v9    # "ret":I
    :cond_4
    const/4 v8, 0x1

    goto :goto_1
.end method


# virtual methods
.method public isMatchOfflineGuide()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/vivo/common/utils/CrontabGuideUtil;->isPhoneOffline()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 179
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 167
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/utils/CrontabGuideUtil;->haveUsedCrontab()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    .line 169
    .restart local v1    # "ret":I
    goto :goto_0

    .line 171
    .end local v1    # "ret":I
    :cond_1
    invoke-direct {p0, v3}, Lcom/vivo/common/utils/CrontabGuideUtil;->isTimeMatch(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    .line 173
    .restart local v1    # "ret":I
    goto :goto_0

    .line 175
    .end local v1    # "ret":I
    :cond_2
    invoke-direct {p0, v3}, Lcom/vivo/common/utils/CrontabGuideUtil;->isMatchGuide(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 179
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public isMatchPoweroffGuide()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/vivo/common/utils/CrontabGuideUtil;->haveUsedCrontab()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 102
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 93
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/vivo/common/utils/CrontabGuideUtil;->isTimeMatch(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .line 95
    .restart local v1    # "ret":I
    goto :goto_0

    .line 97
    .end local v1    # "ret":I
    :cond_1
    invoke-direct {p0, v3}, Lcom/vivo/common/utils/CrontabGuideUtil;->isMatchGuide(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 102
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public isMatchPoweronGuide()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/vivo/common/utils/CrontabGuideUtil;->haveUsedCrontab()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 126
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 117
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/vivo/common/utils/CrontabGuideUtil;->isTimeMatch(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .line 119
    .restart local v1    # "ret":I
    goto :goto_0

    .line 121
    .end local v1    # "ret":I
    :cond_1
    invoke-direct {p0, v3}, Lcom/vivo/common/utils/CrontabGuideUtil;->isMatchGuide(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 126
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public isMatchSystemcleanGuide()Z
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x1

    .line 214
    .local v0, "ret":Z
    const/4 v1, 0x0

    return v1
.end method

.method public isMatchVibrateGuide()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/vivo/common/utils/CrontabGuideUtil;->isPhoneVibrate()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 153
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 140
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/utils/CrontabGuideUtil;->haveUsedCrontab()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    .line 142
    .restart local v1    # "ret":I
    goto :goto_0

    .line 144
    .end local v1    # "ret":I
    :cond_1
    invoke-direct {p0, v3}, Lcom/vivo/common/utils/CrontabGuideUtil;->isTimeMatch(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    .line 146
    .restart local v1    # "ret":I
    goto :goto_0

    .line 148
    .end local v1    # "ret":I
    :cond_2
    invoke-direct {p0, v3}, Lcom/vivo/common/utils/CrontabGuideUtil;->isMatchGuide(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 153
    .restart local v1    # "ret":I
    goto :goto_0
.end method
