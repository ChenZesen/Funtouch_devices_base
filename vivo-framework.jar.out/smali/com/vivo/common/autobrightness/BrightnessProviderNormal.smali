.class public Lcom/vivo/common/autobrightness/BrightnessProviderNormal;
.super Lcom/vivo/common/autobrightness/BrightnessProvider;
.source "BrightnessProviderNormal.java"


# static fields
.field private static final MIN_BRIGHTNESS_VALUE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "BrightnessProviderNormal"

.field private static final mProductModel:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuskyLightBrightness:[I

.field private mLastScreenLevel:I

.field private mLastScreenValueLevelIndex:I

.field private mLcdBacklightValues:[I

.field private mSuperPowerSaveMode:Z

.field private mSuperPowerSavingBacklightValues:[I

.field private mTotalDarkLightBrightness:[I

.field private screenAutoBrightnessLevelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "ro.product.model.bbk"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProvider;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->screenAutoBrightnessLevelList:Ljava/util/List;

    .line 39
    const/16 v0, 0xf

    iput v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSaveMode:Z

    .line 45
    iput-object p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->initBrightnessValues(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private adjustScreenBrightnessLevel()V
    .locals 11

    .prologue
    .line 321
    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->screenAutoBrightnessLevelList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 322
    .local v0, "arrayLength":I
    const/16 v4, 0xff

    .line 323
    .local v4, "maxValue":I
    const/16 v5, 0x14

    .line 325
    .local v5, "minValue":I
    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 326
    .local v6, "pm":Landroid/os/PowerManager;
    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    .line 327
    .local v1, "defaultBrightness":I
    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_brightness"

    const/4 v10, -0x2

    invoke-static {v8, v9, v1, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 332
    .local v7, "value":I
    sub-int v8, v7, v5

    int-to-float v8, v8

    const/16 v9, 0xeb

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    div-float/2addr v8, v9

    float-to-int v2, v8

    .line 334
    .local v2, "level":I
    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 335
    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 336
    .local v3, "maxIndex":I
    if-le v2, v3, :cond_1

    move v2, v3

    .line 337
    :cond_1
    iget v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    if-ne v2, v8, :cond_2

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_2
    iput v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    .line 340
    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->screenAutoBrightnessLevelList:Ljava/util/List;

    iget v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLcdBacklightValues:[I

    goto :goto_0
.end method

.method private adjustScreenBrightnessLevel(I)V
    .locals 9
    .param p1, "brightness"    # I

    .prologue
    .line 345
    iget-object v6, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->screenAutoBrightnessLevelList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 346
    .local v0, "arrayLength":I
    const/16 v3, 0xff

    .line 347
    .local v3, "maxValue":I
    const/16 v4, 0x14

    .line 349
    .local v4, "minValue":I
    move v5, p1

    .line 351
    .local v5, "value":I
    sub-int v6, v5, v4

    int-to-float v6, v6

    const/16 v7, 0xeb

    int-to-float v7, v7

    int-to-float v8, v0

    div-float/2addr v7, v8

    div-float/2addr v6, v7

    float-to-int v1, v6

    .line 353
    .local v1, "level":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 354
    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 355
    .local v2, "maxIndex":I
    if-le v1, v2, :cond_1

    move v1, v2

    .line 356
    :cond_1
    iget v6, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    if-ne v1, v6, :cond_2

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_2
    iput v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    .line 359
    iget-object v6, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->screenAutoBrightnessLevelList:Ljava/util/List;

    iget v7, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    iput-object v6, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLcdBacklightValues:[I

    goto :goto_0
.end method

.method private dumpArrray([I)Ljava/lang/String;
    .locals 7
    .param p1, "list"    # [I

    .prologue
    .line 442
    const-string v3, ""

    .line 443
    .local v3, "str":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 444
    const-string v5, "null."

    .line 452
    :goto_0
    return-object v5

    .line 446
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 447
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 448
    .local v4, "x":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 450
    .end local v4    # "x":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 452
    goto :goto_0
.end method

.method private initBrightnessValues(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v13, 0x3090254

    const v12, 0x3090085

    const v10, 0x3090065

    const/4 v11, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 55
    .local v7, "resources":Landroid/content/res/Resources;
    const-string v2, ""

    .line 56
    .local v2, "configBrightness":Ljava/lang/String;
    const-string v3, ""

    .line 57
    .local v3, "configSuperPower":Ljava/lang/String;
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseCameraLuma()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 58
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1408bl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 59
    const v8, 0x3090210

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x3090230

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 61
    const v8, 0x309022f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 62
    const v8, 0x3090231

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 63
    const-string v2, "screen_autobrightness_pd1408bl_level_names"

    .line 64
    const-string v3, "super_power_saving_pd1408bl_autobrightness"

    .line 65
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading PD1408BL super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseCameraLuma()Z

    move-result v8

    if-eqz v8, :cond_24

    .line 296
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v8

    const-string v9, "BrightnessLuma"

    invoke-virtual {v8, v9, v2}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v8

    const-string v9, "BrightnessSuperPower"

    invoke-virtual {v8, v9, v3}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_1
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v6, :cond_25

    aget-object v5, v0, v4

    .line 305
    .local v5, "identifier":Ljava/lang/String;
    const-string v8, "BrightnessProviderNormal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VIVO identifier="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v8, "BrightnessProviderNormal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VOVO identifier="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v5, v11, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->screenAutoBrightnessLevelList:Ljava/util/List;

    invoke-virtual {v7, v5, v11, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 67
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "identifier":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_0
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1421"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 69
    const v8, 0x30903ec

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x309040c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 71
    const v8, 0x309040b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 72
    const v8, 0x309040d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 73
    const-string v2, "screen_autobrightness_pd1421d_level_names"

    .line 74
    const-string v3, "super_power_saving_pd1421d_autobrightness"

    .line 75
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading PD1421d super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 76
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_1
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1415"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 77
    const v8, 0x3090584

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 78
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x30905a4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 79
    const v8, 0x30905a3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 80
    const v8, 0x30905a5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 81
    const-string v2, "screen_autobrightness_pd1415d_oled_level_names"

    .line 82
    const-string v3, "super_power_saving_pd1415d_oled_autobrightness"

    .line 83
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading PD1415d super_power_saving_pd1415d_oled_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 84
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1422"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 85
    const v8, 0x309040e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 86
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x309042e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 87
    const v8, 0x309042d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 88
    const v8, 0x309042f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 89
    const-string v2, "screen_autobrightness_pd1422l_level_names"

    .line 90
    const-string v3, "super_power_saving_pd1422l_autobrightness"

    .line 91
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading PD1422l super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 94
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_3
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1401cl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 95
    const v8, 0x30902fe

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x309031e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 97
    const v8, 0x309031d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 98
    const v8, 0x309031f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 99
    const-string v2, "screen_autobrightness_pd1401l_level_names"

    .line 100
    const-string v3, "super_power_saving_pd1401l_autobrightness"

    .line 101
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading PD1401CL super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_4
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1502lg4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 106
    const v8, 0x3090562

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x3090582

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 108
    const v8, 0x3090581    # 4.0267E-37f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 109
    const v8, 0x3090583

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 110
    const-string v2, "screen_autobrightness_pd1502lg4_level_names"

    .line 111
    const-string v3, "super_power_saving_pd1502lg4_autobrightness"

    .line 112
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading PD1502LG4 super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_5
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1502"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 114
    const v8, 0x3090430

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 115
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x3090450

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 116
    const v8, 0x309044f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 117
    const v8, 0x3090451

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 118
    const-string v2, "screen_autobrightness_pd1502_level_names"

    .line 119
    const-string v3, "super_power_saving_pd1502_autobrightness"

    .line 120
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading PD1502 super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 122
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_6
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1510"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 123
    const v8, 0x309051e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 124
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x309053e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 125
    const v8, 0x309053d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 126
    const v8, 0x309053f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 127
    const-string v2, "screen_autobrightness_pd1510_level_names"

    .line 128
    const-string v3, "super_power_saving_pd1510_autobrightness"

    .line 129
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading PD1510 super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_7
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1304dw_ex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 133
    const v8, 0x3090452

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 134
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x3090472

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 135
    const v8, 0x3090471

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 136
    const v8, 0x3090473

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 137
    const-string v2, "screen_autobrightness_pd1304dw_ex_level_names"

    .line 138
    const-string v3, "super_power_saving_pd1304dw_ex_autobrightness"

    .line 139
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1304dw_ex super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 140
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_8
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1503"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 141
    const v8, 0x3090474

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 142
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x3090494

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 143
    const v8, 0x3090493

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 144
    const v8, 0x3090495

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 145
    const-string v2, "screen_autobrightness_pd1503_level_names"

    .line 146
    const-string v3, "super_power_saving_pd1503_autobrightness"

    .line 147
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1503 super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_9
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1405"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 149
    const v8, 0x3090496

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 150
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x30904b6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 151
    const v8, 0x30904b5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 152
    const v8, 0x30904b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 153
    const-string v2, "screen_autobrightness_pd1405a_level_names"

    .line 154
    const-string v3, "super_power_saving_pd1405a_autobrightness"

    .line 155
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1405a super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 156
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_a
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1505w_ex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1505bw_ex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 157
    :cond_b
    const v8, 0x30904b8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 158
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x30904d8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 159
    const v8, 0x30904d7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 160
    const v8, 0x30904d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 161
    const-string v2, "screen_autobrightness_pd1505w_ex_level_names"

    .line 162
    const-string v3, "super_power_saving_pd1505w_ex_autobrightness"

    .line 163
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1505w_ex super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_c
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1419"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1309cw_ex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1309f_ex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 165
    :cond_d
    const v8, 0x30904da

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 166
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x30904fa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 167
    const v8, 0x30904f9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 168
    const v8, 0x30904fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 169
    const-string v2, "screen_autobrightness_pd1419c_level_names"

    .line 170
    const-string v3, "super_power_saving_pd1419c_autobrightness"

    .line 171
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1419c or pd1309cw_ex or pd1309f_ex super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_e
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1501"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1515"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 173
    :cond_f
    const v8, 0x30905a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 174
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x30905c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 175
    const v8, 0x30905c5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 176
    const v8, 0x30905c7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 177
    const-string v2, "screen_autobrightness_pd1501d_oled_level_names"

    .line 178
    const-string v3, "super_power_saving_pd1501d_autobrightness"

    .line 179
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1501d super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_10
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1505"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 181
    const v8, 0x30905c8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 182
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x30905e8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 183
    const v8, 0x30905e7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 184
    const v8, 0x30905e9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 185
    const-string v2, "screen_autobrightness_pd1505l_level_names"

    .line 186
    const-string v3, "super_power_saving_pd1505l_autobrightness"

    .line 187
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1505l super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_11
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1516"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1522"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 189
    :cond_12
    const v8, 0x3090540

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 190
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x3090560

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 191
    const v8, 0x309055f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 192
    const v8, 0x3090561

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 193
    const-string v2, "screen_autobrightness_pd1516a_level_names"

    .line 194
    const-string v3, "super_power_saving_pd1516a_autobrightness"

    .line 195
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1516a super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 196
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_13
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1524"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_14

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "td1602"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 197
    :cond_14
    const v8, 0x30905ea

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 198
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x309060a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 199
    const v8, 0x3090609

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 200
    const v8, 0x309060b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 201
    const-string v2, "screen_autobrightness_pd1524_level_names"

    .line 202
    const-string v3, "super_power_saving_pd1524_autobrightness"

    .line 203
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1524 super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_15
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1523f_ex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1523b"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 205
    :cond_16
    const v8, 0x309060c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 206
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x309062c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 207
    const v8, 0x309062b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 208
    const v8, 0x309062d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 209
    const-string v2, "screen_autobrightness_pd1523a_level_names"

    .line 210
    const-string v3, "super_power_saving_pd1523a_autobrightness"

    .line 211
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1523a super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 212
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_17
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1523"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_18

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1612"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 213
    :cond_18
    const v8, 0x309062e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 214
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x309064e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 215
    const v8, 0x309064d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 216
    const v8, 0x309064f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 217
    const-string v2, "screen_autobrightness_pd1523_level_names"

    .line 218
    const-string v3, "super_power_saving_pd1523_autobrightness"

    .line 219
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1523 super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_19
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1603"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "td1603"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1616"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1624"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 221
    :cond_1a
    const v8, 0x3090650

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 222
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x3090670

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 223
    const v8, 0x309066f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 224
    const v8, 0x3090671

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 225
    const-string v2, "screen_autobrightness_pd1603_level_names"

    .line 226
    const-string v3, "super_power_saving_pd1603_autobrightness"

    .line 227
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1603 super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_1b
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1602"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 229
    const v8, 0x3090672

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x3090692

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 231
    const v8, 0x3090691

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 232
    const v8, 0x3090693

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 233
    const-string v2, "screen_autobrightness_pd1602_level_names"

    .line 234
    const-string v3, "super_power_saving_pd1602_autobrightness"

    .line 235
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1602 super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 236
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_1c
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1613"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1d

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1621"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1d

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "td1605"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 237
    :cond_1d
    const v8, 0x3090694

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 238
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x30906b4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 239
    const v8, 0x30906b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 240
    const v8, 0x30906b5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 241
    const-string v2, "screen_autobrightness_pd1613_level_names"

    .line 242
    const-string v3, "super_power_saving_pd1613_autobrightness"

    .line 243
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1613 super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_1e
    const v8, 0x3090232

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 246
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x3090252

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 247
    const v8, 0x3090251

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 248
    const v8, 0x3090253

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 249
    const-string v2, "screen_autobrightness_default_luma_level_names{WARNING-DEFAULT}"

    .line 250
    const-string v3, "super_power_saving_default_luma_autobrightness{WARNING-DEFAULT}"

    .line 251
    const-string v8, "BrightnessProviderNormal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoBrightnessWARNING:use defalt brightness(luma) parameters: model="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; go provider specific parameter!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 254
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_1f
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1419"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 255
    const v8, 0x3090386

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 256
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x30903a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 257
    const v8, 0x30903a5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 258
    const v8, 0x30903a7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 259
    const-string v2, "screen_autobrightness_pd1419l_level_names"

    .line 260
    const-string v3, "super_power_saving_pd1419l_autobrightness"

    .line 261
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1419l super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_20
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1610"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 264
    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 265
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x309003e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 266
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 267
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 268
    const-string v2, "screen_autobrightness_level_names{WARNING-DEFAULT}"

    .line 269
    const-string v3, "super_power_saving_autobrightness{WARNING-DEFAULT}"

    .line 270
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1610 super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_21
    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1616"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_22

    sget-object v8, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    const-string v9, "pd1624"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 274
    :cond_22
    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 275
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x309003f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 276
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 277
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 278
    const-string v2, "screen_autobrightness_level_names{WARNING-DEFAULT}"

    .line 279
    const-string v3, "super_power_saving_autobrightness{WARNING-DEFAULT}"

    .line 280
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading pd1616 super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 284
    .end local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    :cond_23
    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 285
    .restart local v1    # "autoBrightnessLevelNames":[Ljava/lang/String;
    const v8, 0x309003c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    .line 286
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mDuskyLightBrightness:[I

    .line 287
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mTotalDarkLightBrightness:[I

    .line 288
    const-string v2, "screen_autobrightness_level_names{WARNING-DEFAULT}"

    .line 289
    const-string v3, "super_power_saving_autobrightness{WARNING-DEFAULT}"

    .line 290
    const-string v8, "BrightnessProviderNormal"

    const-string v9, "loading defualt super_power_saving_autobrightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v8, "BrightnessProviderNormal"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoBrightnessWARNING:use default brightness(normal) parameters: model="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mProductModel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Need to provide specific one."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 299
    :cond_24
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v8

    const-string v9, "BrightnessNormal"

    invoke-virtual {v8, v9, v2}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v8

    const-string v9, "BrightnessSuperPower"

    invoke-virtual {v8, v9, v3}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 310
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_25
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v8

    if-eqz v8, :cond_26

    .line 311
    const/4 v8, 0x2

    iput v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    .line 313
    :cond_26
    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->screenAutoBrightnessLevelList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    .line 314
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->adjustScreenBrightnessLevel()V

    .line 315
    iget-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->screenAutoBrightnessLevelList:Ljava/util/List;

    iget v9, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    iput-object v8, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLcdBacklightValues:[I

    .line 316
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "BrightnessProviderNormal"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    return-void
.end method


# virtual methods
.method public getBrightness(I)I
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 388
    iput p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    .line 389
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSaveMode:Z

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    iget v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    aget v0, v1, v2

    .line 395
    .local v0, "brightness":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBrightness level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->log(Ljava/lang/String;)V

    .line 396
    return v0

    .line 392
    .end local v0    # "brightness":I
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLcdBacklightValues:[I

    iget v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    aget v0, v1, v2

    .restart local v0    # "brightness":I
    goto :goto_0
.end method

.method public getBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)I
    .locals 3
    .param p1, "abInfo"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 372
    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iput v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    .line 374
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSaveMode:Z

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    iget v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    aget v0, v1, v2

    .line 379
    .local v0, "brightness":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBrightness abInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->log(Ljava/lang/String;)V

    .line 381
    return v0

    .line 377
    .end local v0    # "brightness":I
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLcdBacklightValues:[I

    iget v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    aget v0, v1, v2

    .restart local v0    # "brightness":I
    goto :goto_0
.end method

.method public notifyStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 401
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->adjustScreenBrightnessLevel()V

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSaveMode:Z

    .line 404
    const-string v0, "BrightnessProviderNormal"

    const-string v1, "notifyStateChanged mSuperPowerSaveMode:true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const/4 v0, 0x6

    if-ne v0, p1, :cond_2

    .line 407
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->adjustScreenBrightnessLevel()V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSaveMode:Z

    .line 409
    const-string v0, "BrightnessProviderNormal"

    const-string v1, "notifyStateChanged mSuperPowerSaveMode:false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :cond_2
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "BrightnessProviderNormal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged un-known:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBrihgtnessChangeObserved(I)I
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->adjustScreenBrightnessLevel(I)V

    .line 421
    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSaveMode:Z

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    iget v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    aget v0, v2, v3

    .line 423
    .local v0, "ret":I
    const-string v2, "BrightnessProviderNormal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBrihgtnessChangeObserved mSuperPowerSaveMode=true ,ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 428
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 426
    .end local v1    # "ret":I
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLcdBacklightValues:[I

    iget v3, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    aget v0, v2, v3

    .line 427
    .restart local v0    # "ret":I
    const-string v2, "BrightnessProviderNormal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBrihgtnessChangeObserved mSuperPowerSaveMode=false,ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 428
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public setLightSensorEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->adjustScreenBrightnessLevel()V

    .line 438
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 457
    const-string v0, ""

    .line 458
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    mLastScreenValueLevelIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenValueLevelIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastScreenLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLastScreenLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSuperPowerSaveMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSaveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    mLcdBacklightValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mLcdBacklightValues:[I

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->dumpArrray([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    mSuperPowerSavingBacklightValues:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->mSuperPowerSavingBacklightValues:[I

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/BrightnessProviderNormal;->dumpArrray([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    return-object v0
.end method
