.class public Lcom/vivo/services/motion/AllConfig;
.super Ljava/lang/Object;
.source "AllConfig.java"


# static fields
.field public static POSTURE_X_ANGLE:F = 0.0f

.field public static POSTURE_Y_ANGLE:F = 0.0f

.field public static REMIND_ANGLE:F = 0.0f

.field public static final ROMVERION10:F = 1.0f

.field public static final ROMVERION20:F = 2.0f

.field public static SWITCH_ANGLE:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "AllConfig"

.field public static mIsADSPAKMVirtGryo:Z

.field public static mIsAKMVirtGryo:Z

.field public static mIsALPSVirtGryo:Z

.field public static mIsArchADSP:Z

.field public static mIsDoubleloudspeaker:Z

.field public static mIsPhyGryo:Z

.field public static mIsShakeTwo:Z

.field public static mIsYASVirtGryo:Z

.field public static mLimitSwitch:Z

.field public static mNeedMag:Z

.field public static mOpenDirectory:Z

.field private static mPlatformName:Ljava/lang/String;

.field private static mProductName:Ljava/lang/String;

.field public static mRomVersion:F

.field private static mRomVersionSt:Ljava/lang/String;

.field public static mScreenOffWakeupDeviceNode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10
    const-string v0, ""

    sput-object v0, Lcom/vivo/services/motion/AllConfig;->mProductName:Ljava/lang/String;

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/vivo/services/motion/AllConfig;->mPlatformName:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/vivo/services/motion/AllConfig;->mRomVersionSt:Ljava/lang/String;

    .line 14
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    .line 15
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    .line 16
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    .line 17
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    .line 18
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mIsPhyGryo:Z

    .line 19
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mIsShakeTwo:Z

    .line 20
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    .line 22
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mScreenOffWakeupDeviceNode:Z

    .line 24
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mOpenDirectory:Z

    .line 26
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mLimitSwitch:Z

    .line 28
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mIsDoubleloudspeaker:Z

    .line 30
    sput-boolean v1, Lcom/vivo/services/motion/AllConfig;->mNeedMag:Z

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/vivo/services/motion/AllConfig;->mRomVersion:F

    .line 36
    const/high16 v0, 0x41700000    # 15.0f

    sput v0, Lcom/vivo/services/motion/AllConfig;->REMIND_ANGLE:F

    .line 37
    const/high16 v0, 0x41f00000    # 30.0f

    sput v0, Lcom/vivo/services/motion/AllConfig;->SWITCH_ANGLE:F

    .line 38
    sput v2, Lcom/vivo/services/motion/AllConfig;->POSTURE_X_ANGLE:F

    .line 39
    sput v2, Lcom/vivo/services/motion/AllConfig;->POSTURE_Y_ANGLE:F

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v1, "ro.product.model.bbk"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "AllConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "project is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v1, "ro.vivo.product.platform"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vivo/services/motion/AllConfig;->mPlatformName:Ljava/lang/String;

    .line 45
    const-string v1, "AllConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlatformName is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vivo/services/motion/AllConfig;->mPlatformName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz v0, :cond_1

    const-string v1, "PD1303"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PD1405A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vivo/services/motion/AllConfig;->mPlatformName:Ljava/lang/String;

    const-string v2, "QCOM8917"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vivo/services/motion/AllConfig;->mPlatformName:Ljava/lang/String;

    const-string v2, "QCOM8937"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vivo/services/motion/AllConfig;->mPlatformName:Ljava/lang/String;

    const-string v2, "QCOM8953"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vivo/services/motion/AllConfig;->mPlatformName:Ljava/lang/String;

    const-string v2, "QCOM8976"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vivo/services/motion/AllConfig;->mPlatformName:Ljava/lang/String;

    const-string v2, "QCOM8996"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    sput-boolean v4, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    .line 55
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "PD1503"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    sput-boolean v4, Lcom/vivo/services/motion/AllConfig;->mIsDoubleloudspeaker:Z

    .line 66
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "PD1401BL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    sput-boolean v4, Lcom/vivo/services/motion/AllConfig;->mIsShakeTwo:Z

    .line 71
    :cond_3
    if-eqz v0, :cond_5

    const-string v1, "PD1410L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1410F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1410V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1410LG4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1408L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1408F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1408V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1408LG4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1304CL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1304CF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1304CV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1304CLG4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1403L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1403F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1403V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1403LG4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1419L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1419V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1419LG4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1401V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1401F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1420L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1420LG4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1420F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1420V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1420F_EX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "TD1401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "TD1404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1408F_EX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1401F_EX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1410F_EX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PD1403W_EX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    :cond_4
    sput-boolean v4, Lcom/vivo/services/motion/AllConfig;->mScreenOffWakeupDeviceNode:Z

    .line 83
    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "PD1401F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    sput-boolean v4, Lcom/vivo/services/motion/AllConfig;->mOpenDirectory:Z

    .line 88
    :cond_6
    if-eqz v0, :cond_7

    const-string v1, "PD1408F_EX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    sput-boolean v4, Lcom/vivo/services/motion/AllConfig;->mLimitSwitch:Z

    .line 93
    :cond_7
    const-string v1, "ro.vivo.rom.version"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vivo/services/motion/AllConfig;->mRomVersionSt:Ljava/lang/String;

    .line 94
    const-string v1, "AllConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRomVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vivo/services/motion/AllConfig;->mRomVersionSt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v1, Lcom/vivo/services/motion/AllConfig;->mRomVersionSt:Ljava/lang/String;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/vivo/services/motion/AllConfig;->mRomVersionSt:Ljava/lang/String;

    const-string v2, "rom_2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 96
    const/high16 v1, 0x40000000    # 2.0f

    sput v1, Lcom/vivo/services/motion/AllConfig;->mRomVersion:F

    .line 100
    :cond_8
    :goto_0
    if-eqz v0, :cond_9

    const-string v1, "TD1405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 102
    sput-boolean v4, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    .line 105
    :cond_9
    return-void

    .line 97
    :cond_a
    sget-object v1, Lcom/vivo/services/motion/AllConfig;->mRomVersionSt:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/vivo/services/motion/AllConfig;->mRomVersionSt:Ljava/lang/String;

    const-string v2, "rom_1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 98
    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lcom/vivo/services/motion/AllConfig;->mRomVersion:F

    goto :goto_0
.end method
