.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    .line 66
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 70
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 17
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v14, :cond_0

    .line 292
    new-instance v14, Landroid/content/res/Configuration;

    invoke-direct {v14}, Landroid/content/res/Configuration;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v14

    if-nez v14, :cond_1

    if-nez p2, :cond_1

    .line 297
    const/4 v14, 0x0

    .line 400
    :goto_0
    return v14

    .line 299
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    .line 301
    .local v2, "changes":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->clear()V

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 304
    .local v3, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 306
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 307
    or-int/lit16 v2, v2, 0xd00

    .line 313
    :cond_3
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v14, :cond_4

    .line 314
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v14}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 318
    :cond_4
    sget-boolean v14, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    if-eqz v14, :cond_c

    .line 319
    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/content/res/Configuration;->affectGlobal:Z

    if-eqz v14, :cond_5

    .line 320
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 327
    :cond_5
    :goto_1
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 330
    const/4 v13, 0x0

    .line 333
    .local v13, "tmpConfig":Landroid/content/res/Configuration;
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 334
    .local v10, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v10, v3}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 335
    sget-boolean v14, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    if-eqz v14, :cond_6

    if-eqz p1, :cond_6

    .line 336
    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_d

    .line 337
    iget v14, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v15, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v14, v15, :cond_6

    .line 338
    iget v12, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 339
    .local v12, "tmp":I
    iget v14, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v14, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 340
    iput v12, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 351
    .end local v12    # "tmp":I
    :cond_6
    :goto_2
    sget-boolean v14, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_RESOURCES:Z

    if-eqz v14, :cond_7

    .line 352
    sget-object v14, Landroid/util/VivoSmartMultiWindowConfig;->TAG_RESOURCES:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " TAG_SMARTWINDOW applyConfigurationToResourcesLocked dm = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", config = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", pid = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_12

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ResourcesKey;

    .line 360
    .local v9, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/Resources;

    .line 361
    .local v11, "r":Landroid/content/res/Resources;
    if-eqz v11, :cond_11

    .line 364
    iget v4, v9, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 365
    .local v4, "displayId":I
    if-nez v4, :cond_e

    const/4 v8, 0x1

    .line 367
    .local v8, "isDefaultDisplay":Z
    :goto_4
    const/4 v5, 0x0

    .line 368
    .local v5, "dm":Landroid/util/DisplayMetrics;
    sget-boolean v14, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    if-eqz v14, :cond_f

    .line 369
    move-object v5, v10

    .line 375
    :goto_5
    invoke-virtual {v9}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v6

    .line 376
    .local v6, "hasOverrideConfiguration":Z
    if-eqz v8, :cond_8

    if-eqz v6, :cond_10

    .line 377
    :cond_8
    if-nez v13, :cond_9

    .line 378
    new-instance v13, Landroid/content/res/Configuration;

    .end local v13    # "tmpConfig":Landroid/content/res/Configuration;
    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    .line 380
    .restart local v13    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 381
    if-nez v8, :cond_a

    .line 382
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 383
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 385
    :cond_a
    if-eqz v6, :cond_b

    .line 386
    iget-object v14, v9, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v13, v14}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 388
    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v11, v13, v5, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 358
    .end local v4    # "displayId":I
    .end local v5    # "dm":Landroid/util/DisplayMetrics;
    .end local v6    # "hasOverrideConfiguration":Z
    .end local v8    # "isDefaultDisplay":Z
    :goto_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 325
    .end local v7    # "i":I
    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .end local v10    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v11    # "r":Landroid/content/res/Resources;
    .end local v13    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_c
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto/16 :goto_1

    .line 344
    .restart local v10    # "mDisplayMetrics":Landroid/util/DisplayMetrics;
    .restart local v13    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_d
    iget v14, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v15, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v14, v15, :cond_6

    .line 345
    iget v12, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 346
    .restart local v12    # "tmp":I
    iget v14, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v14, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 347
    iput v12, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_2

    .line 365
    .end local v12    # "tmp":I
    .restart local v4    # "displayId":I
    .restart local v7    # "i":I
    .restart local v9    # "key":Landroid/content/res/ResourcesKey;
    .restart local v11    # "r":Landroid/content/res/Resources;
    :cond_e
    const/4 v8, 0x0

    goto :goto_4

    .line 371
    .restart local v5    # "dm":Landroid/util/DisplayMetrics;
    .restart local v8    # "isDefaultDisplay":Z
    :cond_f
    move-object v5, v3

    goto :goto_5

    .line 390
    .restart local v6    # "hasOverrideConfiguration":Z
    :cond_10
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_6

    .line 396
    .end local v4    # "displayId":I
    .end local v5    # "dm":Landroid/util/DisplayMetrics;
    .end local v6    # "hasOverrideConfiguration":Z
    .end local v8    # "isDefaultDisplay":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_6

    .line 400
    .end local v9    # "key":Landroid/content/res/ResourcesKey;
    .end local v11    # "r":Landroid/content/res/Resources;
    :cond_12
    if-eqz v2, :cond_13

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 96
    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    .line 97
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 98
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 99
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 100
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 101
    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    .line 102
    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    .line 103
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 110
    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 111
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 112
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 113
    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 114
    return-void

    .line 106
    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    .line 107
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 133
    if-eqz p2, :cond_0

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .line 135
    .local v1, "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 137
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 139
    .local v4, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v4, :cond_1

    .line 140
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .line 141
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v0    # "display":Landroid/view/Display;
    :goto_1
    return-object v0

    .line 133
    .end local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    goto :goto_0

    .line 145
    .restart local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 146
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_2

    .line 148
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_1

    .line 155
    .end local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 150
    .restart local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_2
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 151
    .restart local v0    # "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    .line 152
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 83
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v2, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 86
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 91
    :goto_0
    return-object v1

    .line 89
    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 24
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 172
    move-object/from16 v0, p7

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v17, v0

    .line 173
    .local v17, "scale":F
    if-eqz p6, :cond_0

    new-instance v15, Landroid/content/res/Configuration;

    move-object/from16 v0, p6

    invoke-direct {v15, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 175
    .local v15, "overrideConfigCopy":Landroid/content/res/Configuration;
    :goto_0
    new-instance v12, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, v17

    invoke-direct {v12, v0, v1, v15, v2}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;F)V

    .line 177
    .local v12, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    .line 181
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/ref/WeakReference;

    .line 182
    .local v20, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/res/Resources;

    move-object/from16 v16, v21

    .line 184
    .local v16, "r":Landroid/content/res/Resources;
    :goto_1
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 188
    monitor-exit p0

    .line 284
    .end local v16    # "r":Landroid/content/res/Resources;
    :goto_2
    return-object v16

    .line 173
    .end local v12    # "key":Landroid/content/res/ResourcesKey;
    .end local v15    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .end local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 182
    .restart local v12    # "key":Landroid/content/res/ResourcesKey;
    .restart local v15    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .restart local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 190
    .restart local v16    # "r":Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    new-instance v4, Landroid/content/res/AssetManager;

    invoke-direct {v4}, Landroid/content/res/AssetManager;-><init>()V

    .line 201
    .local v4, "assets":Landroid/content/res/AssetManager;
    if-eqz p1, :cond_3

    .line 202
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_3

    .line 203
    const-string v21, "ResourcesManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "error, getResources null. resDir="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v16, 0x0

    goto :goto_2

    .line 190
    .end local v4    # "assets":Landroid/content/res/AssetManager;
    .end local v16    # "r":Landroid/content/res/Resources;
    .end local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 208
    .restart local v4    # "assets":Landroid/content/res/AssetManager;
    .restart local v16    # "r":Landroid/content/res/Resources;
    .restart local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_3
    if-eqz p2, :cond_5

    .line 209
    move-object/from16 v3, p2

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v13, :cond_5

    aget-object v18, v3, v9

    .line 210
    .local v18, "splitResDir":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_4

    .line 211
    const-string v21, "ResourcesManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "error, getResources null. splitResDir="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/16 v16, 0x0

    goto :goto_2

    .line 209
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 217
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v18    # "splitResDir":Ljava/lang/String;
    :cond_5
    if-eqz p3, :cond_6

    .line 218
    move-object/from16 v3, p3

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_4
    if-ge v9, v13, :cond_6

    aget-object v10, v3, v9

    .line 219
    .local v10, "idmapPath":Ljava/lang/String;
    invoke-virtual {v4, v10}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    .line 218
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 223
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "idmapPath":Ljava/lang/String;
    .end local v13    # "len$":I
    :cond_6
    if-eqz p4, :cond_8

    .line 224
    move-object/from16 v3, p4

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_5
    if-ge v9, v13, :cond_8

    aget-object v14, v3, v9

    .line 225
    .local v14, "libDir":Ljava/lang/String;
    const-string v21, ".apk"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 228
    invoke-virtual {v4, v14}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_7

    .line 229
    const-string v21, "ResourcesManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Asset path \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\' does not exist or contains no resources."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 237
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "libDir":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 239
    .local v6, "dm":Landroid/util/DisplayMetrics;
    if-nez p5, :cond_c

    const/4 v11, 0x1

    .line 240
    .local v11, "isDefaultDisplay":Z
    :goto_6
    invoke-virtual {v12}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v8

    .line 241
    .local v8, "hasOverrideConfig":Z
    if-eqz v11, :cond_9

    if-eqz v8, :cond_d

    .line 242
    :cond_9
    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 243
    .local v5, "config":Landroid/content/res/Configuration;
    if-nez v11, :cond_a

    .line 244
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 246
    :cond_a
    if-eqz v8, :cond_b

    .line 247
    iget-object v0, v12, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 257
    :cond_b
    :goto_7
    new-instance v19, Landroid/content/res/VivoResources;

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v6, v5, v1}, Landroid/content/res/VivoResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 265
    .local v19, "vivoRes":Landroid/content/res/VivoResources;
    monitor-enter p0

    .line 266
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v20, Ljava/lang/ref/WeakReference;

    .line 267
    .restart local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v20, :cond_e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/res/Resources;

    move-object/from16 v7, v21

    .line 268
    .local v7, "existing":Landroid/content/res/Resources;
    :goto_8
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 273
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/VivoResources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/AssetManager;->close()V

    .line 275
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v16, v7

    goto/16 :goto_2

    .line 239
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v7    # "existing":Landroid/content/res/Resources;
    .end local v8    # "hasOverrideConfig":Z
    .end local v11    # "isDefaultDisplay":Z
    .end local v19    # "vivoRes":Landroid/content/res/VivoResources;
    :cond_c
    const/4 v11, 0x0

    goto :goto_6

    .line 251
    .restart local v8    # "hasOverrideConfig":Z
    .restart local v11    # "isDefaultDisplay":Z
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .restart local v5    # "config":Landroid/content/res/Configuration;
    goto :goto_7

    .line 267
    .restart local v19    # "vivoRes":Landroid/content/res/VivoResources;
    :cond_e
    const/4 v7, 0x0

    goto :goto_8

    .line 283
    .restart local v7    # "existing":Landroid/content/res/Resources;
    :cond_f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    monitor-exit p0

    move-object/from16 v16, v19

    goto/16 :goto_2

    .line 286
    .end local v7    # "existing":Landroid/content/res/Resources;
    .end local v20    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v21

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v21
.end method