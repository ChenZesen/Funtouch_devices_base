.class public Lcom/vivo/common/autobrightness/LightController;
.super Ljava/lang/Object;
.source "LightController.java"


# static fields
.field private static final ANTI_SHAKE_THRESHOLD:I = 0x3

.field private static final CAMERA_LUMA_INVALID:I = -0x1

.field private static final DEFAULT_DOWN_LEVELS:[I

.field public static final DEFAULT_LIGHT_LEVEL:I = 0x1

.field private static final DEFAULT_UP_LEVELS:[I

.field private static final DUSKY_LIGHT_HIGH_DEFAULT:I = 0xc

.field public static final DUSKY_LIGHT_HIGH_TOP:I = 0x14

.field private static final DUSKY_LIGHT_LOW_DEFAULT:I = 0x1

.field private static final DUSKY_LIGHT_LOW_TOP:I = 0x2

.field public static final LIGHT_DEGREE_BRIGHT:I = 0x4

.field public static final LIGHT_DEGREE_DUSKY:I = 0x1

.field public static final LIGHT_DEGREE_FLOATING:I = 0x2

.field public static final LIGHT_DEGREE_MORNING:I = 0x3

.field public static final LIGHT_DEGREE_TOTAL_DARK:I = 0x0

.field private static MAX_LIGHT_LEVEL:I = 0x0

.field private static final MORNING_LIGHT_TOP:I = 0x23

.field private static final NORMAL_LIGHT_LEVEL:I = 0x1

.field public static final STATE_LIGHT_DISABLE:I = 0x1

.field public static final STATE_LIGHT_ENABLE:I = 0x0

.field public static final STATE_SCREEN_DIM:I = 0x1

.field public static final STATE_SCREEN_OFF:I = 0x0

.field public static final STATE_SCREEN_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LightController"

.field private static mLightBaseValue:I

.field private static mLightDegree:I

.field private static mLightLux:I

.field private static final mModel:Ljava/lang/String;

.field private static mPreLuxValue:I

.field private static mSpecialLuxStatus:I

.field private static final mUseAlsMemory:Z

.field private static final mUseCameraLuma:Z


# instance fields
.field private MIN_LIGHT_LEVEL:I

.field private mAutoBrightnessDownLevels:[I

.field private mAutoBrightnessUpLevels:[I

.field private mCameraLumaValid:Z

.field private mCameraLumaValue:I

.field private mContext:Landroid/content/Context;

.field private mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

.field private mDuskyLightHighThreshold:I

.field private mDuskyLightLowThreshold:I

.field private mDuskyLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

.field private mForceChangeLightLevel:Z

.field private mLightEnabled:Z

.field private mLightLevel:I

.field private mLightLevelsCount:I

.field private mLightLuxTimestamp:J

.field private mLightTempDegree:I

.field private mLightTempDegreeCount:I

.field private mProximityPositive:Z

.field private mWaitFirstLight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    const/4 v1, 0x0

    .line 38
    const-string v0, "ro.product.model.bbk"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/LightController;->mModel:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseCameraLuma()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/LightController;->mUseCameraLuma:Z

    .line 47
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseAlsMemory()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/LightController;->mUseAlsMemory:Z

    .line 49
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vivo/common/autobrightness/LightController;->DEFAULT_UP_LEVELS:[I

    .line 50
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vivo/common/autobrightness/LightController;->DEFAULT_DOWN_LEVELS:[I

    .line 58
    const/4 v0, 0x4

    sput v0, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    .line 64
    sput v1, Lcom/vivo/common/autobrightness/LightController;->mPreLuxValue:I

    .line 65
    sput v1, Lcom/vivo/common/autobrightness/LightController;->mLightBaseValue:I

    .line 67
    sput v1, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    .line 98
    const/16 v0, 0x64

    sput v0, Lcom/vivo/common/autobrightness/LightController;->mLightLux:I

    return-void

    .line 49
    nop

    :array_0
    .array-data 4
        0x14
        0x28
        0x3c
        0x50
        0x64
        0x12c
        0x1f4
        0x384
        0x514
        0x7d0
        0xbb8
        0x1194
        0x1770
    .end array-data

    .line 50
    :array_1
    .array-data 4
        0x2
        0x1e
        0x32
        0x46
        0x5a
        0xc8
        0x190
        0x2bc
        0x44c
        0x672
        0x9c4
        0xea6
        0x1482
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mCallback"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v2, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevel:I

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegreeCount:I

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLuxTimestamp:J

    .line 76
    const/16 v0, 0xc

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightHighThreshold:I

    .line 77
    iput v2, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightLowThreshold:I

    .line 89
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/LightController;->mWaitFirstLight:Z

    .line 90
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/LightController;->mLightEnabled:Z

    .line 91
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/LightController;->mProximityPositive:Z

    .line 96
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/LightController;->mCameraLumaValid:Z

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mCameraLumaValue:I

    .line 99
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/LightController;->mForceChangeLightLevel:Z

    .line 104
    iput-object p1, p0, Lcom/vivo/common/autobrightness/LightController;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/vivo/common/autobrightness/LightController;->mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

    .line 106
    new-instance v0, Lcom/vivo/common/autobrightness/LightTendency;

    const/16 v1, 0x19

    const-wide v2, 0x3fdcccccc0000000L    # 0.44999998807907104

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/common/autobrightness/LightTendency;-><init>(ID)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

    .line 107
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/LightController;->initLightParameters()V

    .line 108
    iget-object v0, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    array-length v0, v0

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevelsCount:I

    .line 109
    const-string v0, "LightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LightController mLightLevelsCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevelsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessDownLevels:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessDownLevels:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevelsCount:I

    .line 112
    const-string v0, "LightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LightController change mLightLevelsCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevelsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevelsCount:I

    sput v0, Lcom/vivo/common/autobrightness/LightController;->MAX_LIGHT_LEVEL:I

    .line 115
    iput v4, p0, Lcom/vivo/common/autobrightness/LightController;->MIN_LIGHT_LEVEL:I

    .line 117
    return-void
.end method

.method private answerFirstList(II)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "lux"    # I

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 314
    iput p1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevel:I

    .line 315
    invoke-virtual {p0}, Lcom/vivo/common/autobrightness/LightController;->resetLightDegreeInfo()V

    .line 316
    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/LightController;->isDuskyLux(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    sput v1, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    .line 319
    iput v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    .line 320
    iput v3, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightHighThreshold:I

    .line 321
    iput v1, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightLowThreshold:I

    .line 329
    :cond_0
    :goto_0
    sget v0, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/LightController;->changeLightDegree(I)V

    .line 330
    const-string v0, "LightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first light lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLightDegree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    invoke-static {v2}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 322
    :cond_1
    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/LightController;->isTotalDarkLux(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    sput v2, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    .line 325
    iput v2, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    .line 326
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightLowThreshold:I

    .line 327
    iput v3, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightHighThreshold:I

    goto :goto_0
.end method

.method private calcLightDegree(I)I
    .locals 2
    .param p1, "lux"    # I

    .prologue
    .line 412
    const/4 v0, 0x4

    .line 413
    .local v0, "degree":I
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/LightController;->isTotalDarkLux(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    const/4 v0, 0x0

    .line 423
    :cond_0
    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/LightTendency;->reset()V

    .line 426
    :cond_1
    return v0

    .line 415
    :cond_2
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/LightController;->isDuskyLux(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const/4 v0, 0x1

    .line 417
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/LightController;->isFloatingLux(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private calcLightLevel(I)I
    .locals 4
    .param p1, "lux"    # I

    .prologue
    .line 268
    iget v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevel:I

    .line 270
    .local v1, "level":I
    iget v2, p0, Lcom/vivo/common/autobrightness/LightController;->MIN_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_2

    .line 271
    iget v0, p0, Lcom/vivo/common/autobrightness/LightController;->MIN_LIGHT_LEVEL:I

    .line 272
    .local v0, "i":I
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    aget v2, v2, v0

    if-le p1, v2, :cond_1

    .line 273
    add-int/lit8 v0, v0, 0x1

    .line 274
    add-int/lit8 v1, v1, 0x1

    .line 275
    sget v2, Lcom/vivo/common/autobrightness/LightController;->MAX_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_0

    .line 310
    .end local v0    # "i":I
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calcLightLevel lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/LightController;->log(Ljava/lang/String;)V

    .line 311
    return v1

    .line 280
    :cond_2
    sget v2, Lcom/vivo/common/autobrightness/LightController;->MAX_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_4

    .line 281
    sget v2, Lcom/vivo/common/autobrightness/LightController;->MAX_LIGHT_LEVEL:I

    add-int/lit8 v0, v2, -0x1

    .line 282
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessDownLevels:[I

    aget v2, v2, v0

    if-ge p1, v2, :cond_1

    .line 283
    add-int/lit8 v0, v0, -0x1

    .line 284
    add-int/lit8 v1, v1, -0x1

    .line 285
    iget v2, p0, Lcom/vivo/common/autobrightness/LightController;->MIN_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 290
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    aget v2, v2, v1

    if-le p1, v2, :cond_6

    .line 291
    move v0, v1

    .line 292
    .restart local v0    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    aget v2, v2, v0

    if-le p1, v2, :cond_1

    .line 293
    add-int/lit8 v0, v0, 0x1

    .line 294
    add-int/lit8 v1, v1, 0x1

    .line 295
    sget v2, Lcom/vivo/common/autobrightness/LightController;->MAX_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_5

    goto :goto_0

    .line 299
    .end local v0    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessDownLevels:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_1

    .line 300
    add-int/lit8 v0, v1, -0x1

    .line 301
    .restart local v0    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessDownLevels:[I

    aget v2, v2, v0

    if-ge p1, v2, :cond_1

    .line 302
    add-int/lit8 v0, v0, -0x1

    .line 303
    add-int/lit8 v1, v1, -0x1

    .line 304
    iget v2, p0, Lcom/vivo/common/autobrightness/LightController;->MIN_LIGHT_LEVEL:I

    if-ne v1, v2, :cond_7

    goto :goto_0
.end method

.method private changeLightDegree(I)V
    .locals 4
    .param p1, "newDegree"    # I

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 358
    if-nez p1, :cond_0

    .line 359
    iput v2, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightLowThreshold:I

    .line 360
    iput v3, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightHighThreshold:I

    .line 361
    iget-object v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

    invoke-interface {v0, p1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;->onLightDegreeChanged(I)V

    .line 362
    sput p1, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    .line 394
    :goto_0
    return-void

    .line 363
    :cond_0
    if-ne p1, v1, :cond_2

    .line 364
    iput v3, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightHighThreshold:I

    .line 365
    iput v1, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightLowThreshold:I

    .line 366
    sget v0, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    if-eq v0, v2, :cond_1

    .line 368
    iget-object v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

    invoke-interface {v0, p1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;->onLightDegreeChanged(I)V

    .line 370
    :cond_1
    sput p1, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    goto :goto_0

    .line 371
    :cond_2
    if-ne p1, v2, :cond_3

    .line 372
    iput v3, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightHighThreshold:I

    .line 373
    iput v1, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightLowThreshold:I

    .line 374
    iget-object v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

    invoke-interface {v0, p1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;->onLightDegreeChanged(I)V

    .line 375
    sput p1, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    goto :goto_0

    .line 376
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 377
    iput v2, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightLowThreshold:I

    .line 378
    iput v3, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightHighThreshold:I

    .line 379
    iget-object v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

    invoke-interface {v0, p1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;->onLightDegreeChanged(I)V

    .line 380
    sput p1, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    goto :goto_0

    .line 383
    :cond_4
    iget v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevel:I

    if-nez v0, :cond_5

    .line 387
    const-string v0, "mForceChangeLightLevel=true"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/LightController;->log(Ljava/lang/String;)V

    .line 388
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/LightController;->mForceChangeLightLevel:Z

    .line 390
    :cond_5
    invoke-virtual {p0}, Lcom/vivo/common/autobrightness/LightController;->resetLightDegreeInfo()V

    .line 391
    iget-object v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

    invoke-interface {v0, p1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;->onLightDegreeChanged(I)V

    goto :goto_0
.end method

.method public static degreeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "degree"    # I

    .prologue
    .line 396
    packed-switch p0, :pswitch_data_0

    .line 408
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 398
    :pswitch_0
    const-string v0, "TOTAL_DARK"

    goto :goto_0

    .line 400
    :pswitch_1
    const-string v0, "DUSKY"

    goto :goto_0

    .line 402
    :pswitch_2
    const-string v0, "MORNING"

    goto :goto_0

    .line 404
    :pswitch_3
    const-string v0, "BRIGHT"

    goto :goto_0

    .line 406
    :pswitch_4
    const-string v0, "FLOATING"

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getMaxLightLevel()I
    .locals 1

    .prologue
    .line 191
    sget v0, Lcom/vivo/common/autobrightness/LightController;->MAX_LIGHT_LEVEL:I

    return v0
.end method

.method private getSpecialLuxStatus(I)Z
    .locals 5
    .param p1, "lux"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "ratio":I
    add-int/lit16 v3, p1, -0x190

    div-int/lit16 v0, v3, 0x190

    .line 198
    sget v3, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v1

    .line 200
    :cond_1
    if-ne v0, v2, :cond_2

    sget v3, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 201
    sget v1, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    move v1, v2

    .line 202
    goto :goto_0

    .line 204
    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    sget v3, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    .line 205
    sget v1, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    move v1, v2

    .line 206
    goto :goto_0

    .line 208
    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    sget v3, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_4

    .line 209
    sget v1, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    or-int/lit8 v1, v1, 0x4

    sput v1, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    move v1, v2

    .line 210
    goto :goto_0

    .line 212
    :cond_4
    const/16 v2, 0x12c

    if-ge p1, v2, :cond_0

    .line 213
    sput v1, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    goto :goto_0
.end method

.method private initLightParameters()V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/vivo/common/autobrightness/LightController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, "resources":Landroid/content/res/Resources;
    sget-boolean v1, Lcom/vivo/common/autobrightness/LightController;->mUseAlsMemory:Z

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/LightController;->initLightParametersAlsMemory(Landroid/content/res/Resources;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/LightController;->initLightParametersNormal(Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method private initLightParametersAlsMemory(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 132
    move-object v2, p1

    .line 133
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v1, ""

    .line 134
    .local v1, "configLightUp":Ljava/lang/String;
    const-string v0, ""

    .line 135
    .local v0, "configLightDown":Ljava/lang/String;
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getScreenLevelCount()I

    move-result v3

    const/16 v4, 0x89

    if-ne v3, v4, :cond_0

    .line 136
    const v3, 0x309003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    .line 137
    const v3, 0x3090039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessDownLevels:[I

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default_config_137LevelAutoBrightnessUpLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default_config_137LevelAutoBrightnessDownLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v3, "LightController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vivo/common/autobrightness/LightController;->mModel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "from default parameters."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v3

    const-string v4, "LightMemoryLevelDown"

    invoke-virtual {v3, v4, v0}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v3

    const-string v4, "LightMemoryLevelUp"

    invoke-virtual {v3, v4, v1}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void

    .line 142
    :cond_0
    sget-object v3, Lcom/vivo/common/autobrightness/LightController;->mModel:Ljava/lang/String;

    const-string v4, "pd1408bl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    const v3, 0x3090031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    .line 144
    const v3, 0x3090032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessDownLevels:[I

    .line 145
    const-string v3, "LightController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vivo/common/autobrightness/LightController;->mModel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parameters."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pd1408bl_config_autoBrightnessUpLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pd1408bl_config_autoBrightnessDownLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    const v3, 0x3090035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    .line 150
    const v3, 0x3090036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessDownLevels:[I

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default_config_autoBrightnessUpLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default_config_autoBrightnessDownLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v3, "LightController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vivo/common/autobrightness/LightController;->mModel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "from default parameters."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private initLightParametersNormal(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v5, 0x309002d

    .line 161
    move-object v2, p1

    .line 162
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v1, ""

    .line 163
    .local v1, "configLightUp":Ljava/lang/String;
    const-string v0, ""

    .line 164
    .local v0, "configLightDown":Ljava/lang/String;
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseLightThresholdVer2nd()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    const v3, 0x309002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    .line 166
    const v3, 0x3090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessDownLevels:[I

    .line 167
    const-string v3, "LightController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vivo/common/autobrightness/LightController;->mModel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parameters."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_autoBrightnessVer2UpLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_autoBrightnessVer2DownLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_0
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v3

    const-string v4, "LightNormalLevelDown"

    invoke-virtual {v3, v4, v0}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v3

    const-string v4, "LightNormalLevelUp"

    invoke-virtual {v3, v4, v1}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void

    .line 170
    :cond_0
    sget-object v3, Lcom/vivo/common/autobrightness/LightController;->mModel:Ljava/lang/String;

    const-string v4, "pd1401"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    const v3, 0x309002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    .line 172
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessDownLevels:[I

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_autoBrightnessLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pd1401l_config_autoBrightnessUpLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_1
    const v3, 0x309002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    .line 177
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessDownLevels:[I

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_autoBrightnessLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_autoBrightnessUpLevels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private isDuskyLux(I)Z
    .locals 1
    .param p1, "lux"    # I

    .prologue
    .line 429
    iget v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightLowThreshold:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightHighThreshold:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFloatingLux(I)Z
    .locals 2
    .param p1, "lux"    # I

    .prologue
    const/4 v0, 0x1

    .line 432
    iget-object v1, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

    invoke-virtual {v1, p1}, Lcom/vivo/common/autobrightness/LightTendency;->putLux(I)V

    .line 433
    sget v1, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/LightController;->mCameraLumaValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/LightTendency;->isTendencyTriggered()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMorningLux(I)Z
    .locals 1
    .param p1, "lux"    # I

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/LightController;->mCameraLumaValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightLowThreshold:I

    if-lt p1, v0, :cond_0

    const/16 v0, 0x23

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTotalDarkLux(I)Z
    .locals 1
    .param p1, "lux"    # I

    .prologue
    .line 436
    iget v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightLowThreshold:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "LightController"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    return-void
.end method

.method private updateLightDegree(I)V
    .locals 4
    .param p1, "lux"    # I

    .prologue
    const/4 v2, 0x3

    .line 333
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/LightController;->calcLightDegree(I)I

    move-result v0

    .line 334
    .local v0, "degree":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 336
    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    .line 337
    iput v2, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegreeCount:I

    .line 349
    :goto_0
    iget v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    sget v3, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    if-eq v1, v3, :cond_4

    iget v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegreeCount:I

    if-lt v1, v2, :cond_4

    .line 350
    const-string v1, "LightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLightDegree changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    invoke-static {v3}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    invoke-static {v3}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/LightController;->changeLightDegree(I)V

    .line 356
    :goto_1
    return-void

    .line 338
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 340
    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    .line 341
    iput v2, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegreeCount:I

    goto :goto_0

    .line 342
    :cond_1
    iget v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    if-eq v0, v1, :cond_2

    .line 343
    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    .line 344
    const/4 v1, 0x0

    iput v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegreeCount:I

    goto :goto_0

    .line 346
    :cond_2
    iget v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegreeCount:I

    if-lt v1, v2, :cond_3

    move v1, v2

    :goto_2
    iput v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegreeCount:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegreeCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 353
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLightTempDegree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    invoke-static {v2}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLightDegree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    invoke-static {v2}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLightTempDegreeCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegreeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/LightController;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getLightDegree()I
    .locals 1

    .prologue
    .line 442
    sget v0, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    return v0
.end method

.method public getLightLevel()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevel:I

    return v0
.end method

.method public getLightLevel(I)I
    .locals 11
    .param p1, "lux"    # I

    .prologue
    const/16 v10, 0x1388

    const/16 v9, 0x1f4

    const/4 v8, 0x0

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "level":I
    const-wide/16 v2, 0x0

    .line 222
    .local v2, "t":J
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/LightController;->calcLightLevel(I)I

    move-result v0

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 224
    sput p1, Lcom/vivo/common/autobrightness/LightController;->mLightLux:I

    .line 225
    iget-wide v4, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLuxTimestamp:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLuxTimestamp:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 226
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLuxTimestamp:J

    .line 227
    sput p1, Lcom/vivo/common/autobrightness/LightController;->mLightBaseValue:I

    .line 231
    :cond_1
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/LightController;->mProximityPositive:Z

    if-nez v1, :cond_8

    .line 232
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/LightController;->mWaitFirstLight:Z

    if-eqz v1, :cond_7

    .line 233
    invoke-direct {p0, v0, p1}, Lcom/vivo/common/autobrightness/LightController;->answerFirstList(II)V

    .line 234
    sput v8, Lcom/vivo/common/autobrightness/LightController;->mSpecialLuxStatus:I

    .line 235
    iput-boolean v8, p0, Lcom/vivo/common/autobrightness/LightController;->mWaitFirstLight:Z

    .line 236
    const/16 v1, 0x320

    if-le p1, v1, :cond_2

    if-ge p1, v10, :cond_2

    .line 237
    iget-object v1, p0, Lcom/vivo/common/autobrightness/LightController;->mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

    invoke-interface {v1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;->onLightStateChanged()V

    .line 243
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/LightController;->mForceChangeLightLevel:Z

    if-eqz v1, :cond_3

    .line 244
    iput-boolean v8, p0, Lcom/vivo/common/autobrightness/LightController;->mForceChangeLightLevel:Z

    .line 245
    const/4 v1, 0x1

    iput v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevel:I

    .line 246
    if-nez v0, :cond_3

    .line 247
    const/4 v0, 0x1

    .line 253
    :cond_3
    :goto_1
    sget v1, Lcom/vivo/common/autobrightness/LightController;->mLightBaseValue:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v9, :cond_4

    if-le p1, v9, :cond_4

    if-lt p1, v10, :cond_5

    :cond_4
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/LightController;->getSpecialLuxStatus(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 254
    :cond_5
    iget-object v1, p0, Lcom/vivo/common/autobrightness/LightController;->mDegreeChangedCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;

    invoke-interface {v1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$DegreeChangedCallback;->onLightStateChanged()V

    .line 256
    :cond_6
    sput p1, Lcom/vivo/common/autobrightness/LightController;->mPreLuxValue:I

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lux="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " lightLevel="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/LightController;->log(Ljava/lang/String;)V

    .line 258
    return v0

    .line 241
    :cond_7
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/LightController;->updateLightDegree(I)V

    goto :goto_0

    .line 251
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLightLevel mProximityPositive"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/vivo/common/autobrightness/LightController;->mProximityPositive:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mWaitFirstLight="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/vivo/common/autobrightness/LightController;->mWaitFirstLight:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/LightController;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public notifyStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 463
    packed-switch p1, :pswitch_data_0

    .line 487
    :goto_0
    :pswitch_0
    return-void

    .line 465
    :pswitch_1
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/LightController;->mWaitFirstLight:Z

    .line 466
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightEnabled:Z

    .line 467
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LightController;->mProximityPositive:Z

    .line 468
    invoke-virtual {p0}, Lcom/vivo/common/autobrightness/LightController;->resetLightDegreeInfo()V

    .line 469
    const-string v0, "notifyStateChanged(STATE_LIGHT_ENABLE);"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/LightController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :pswitch_2
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LightController;->mWaitFirstLight:Z

    .line 473
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightEnabled:Z

    .line 474
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LightController;->mProximityPositive:Z

    .line 475
    invoke-virtual {p0}, Lcom/vivo/common/autobrightness/LightController;->resetLightDegreeInfo()V

    .line 476
    const-string v0, "notifyStateChanged(STATE_LIGHT_DISABLE);"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/LightController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :pswitch_3
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/LightController;->mProximityPositive:Z

    .line 480
    const-string v0, "notifyStateChanged(STATE_ALS_PROXIMITY_FAR);"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/LightController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :pswitch_4
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/LightController;->mProximityPositive:Z

    .line 484
    const-string v0, "notifyStateChanged(STATE_ALS_PROXIMITY_NEAR);"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/LightController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetLightDegreeInfo()V
    .locals 2

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 449
    sput v0, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    .line 450
    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegree:I

    .line 451
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegreeCount:I

    .line 452
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/LightController;->mWaitFirstLight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevel:I

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/vivo/common/autobrightness/LightController;->mAutoBrightnessUpLevels:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightHighThreshold:I

    .line 457
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightLowThreshold:I

    .line 458
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/LightController;->mCameraLumaValid:Z

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mCameraLumaValue:I

    .line 460
    iget-object v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightTendency:Lcom/vivo/common/autobrightness/LightTendency;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/LightTendency;->reset()V

    .line 461
    return-void

    .line 455
    :cond_0
    const/16 v0, 0xc

    iput v0, p0, Lcom/vivo/common/autobrightness/LightController;->mDuskyLightHighThreshold:I

    goto :goto_0
.end method

.method public setCameraLuma(IZ)V
    .locals 0
    .param p1, "luma"    # I
    .param p2, "valid"    # Z

    .prologue
    .line 445
    iput p1, p0, Lcom/vivo/common/autobrightness/LightController;->mCameraLumaValue:I

    .line 446
    iput-boolean p2, p0, Lcom/vivo/common/autobrightness/LightController;->mCameraLumaValid:Z

    .line 447
    return-void
.end method

.method public setLightLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevel:I

    .line 266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLightLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mLightDegree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/vivo/common/autobrightness/LightController;->mLightDegree:I

    invoke-static {v1}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mLightLevelsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightLevelsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mLightTempDegreeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LightController;->mLightTempDegreeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
