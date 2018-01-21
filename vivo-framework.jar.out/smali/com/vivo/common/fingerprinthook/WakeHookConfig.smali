.class public Lcom/vivo/common/fingerprinthook/WakeHookConfig;
.super Ljava/lang/Object;
.source "WakeHookConfig.java"


# static fields
.field public static final FINGERPRINT_PRESS_UNLOCK_TIMEOUT:I = 0x12c0

.field public static final FINGERPRINT_TOUCH_UNLOCK_TIMEOUT:I = 0x320

.field private static final FRONT_FINGER_PROJECT:[Ljava/lang/String;

.field private static final MODEL:Ljava/lang/String;

.field private static final PLATFORM:Ljava/lang/String;

.field private static final PLATFORM_USE_WINDOW_HIDE_FUNCTION:[Ljava/lang/String;

.field private static final PROP_FINGERPRINT_FAIL_DELAY:Ljava/lang/String; = "persist.debug.fp_fail.delay"

.field private static final PROP_FINGERPRINT_SUCCESS_DELAY:Ljava/lang/String; = "persist.debug.fp_succ.delay"

.field private static final mAuthFailedDelay:J

.field private static final mAuthSuccessDelay:J

.field private static final mIsFrontFingerprint:Z

.field private static final mIsUseWindowHideFunction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 11
    const-string v0, "ro.product.model.bbk"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->MODEL:Ljava/lang/String;

    .line 12
    const-string v0, "ro.board.platform"

    const-string v1, "un-known"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->PLATFORM:Ljava/lang/String;

    .line 15
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "PD1602"

    aput-object v1, v0, v2

    const-string v1, "PD1603"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->FRONT_FINGER_PROJECT:[Ljava/lang/String;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "msm8952"

    aput-object v1, v0, v2

    const-string v1, "msm8916"

    aput-object v1, v0, v3

    const-string v1, "mt6752"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "mt6750"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "msm8952"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "msm8996"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->PLATFORM_USE_WINDOW_HIDE_FUNCTION:[Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->getAuthFailedDelayInner()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->mAuthFailedDelay:J

    .line 86
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->getAuthSuccessDelayIner()J

    move-result-wide v0

    sput-wide v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->mAuthSuccessDelay:J

    .line 87
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->isFrontFringerprintInner()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->mIsFrontFingerprint:Z

    .line 90
    sput-boolean v3, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->mIsUseWindowHideFunction:Z

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthFailedDelay()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->mAuthFailedDelay:J

    return-wide v0
.end method

.method private static getAuthFailedDelayInner()J
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->isFrontFringerprintInner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "persist.debug.fp_fail.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 43
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x96

    goto :goto_0
.end method

.method public static getAuthSuccessDelay()J
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->mAuthSuccessDelay:J

    return-wide v0
.end method

.method private static getAuthSuccessDelayIner()J
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->isFrontFringerprintInner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "persist.debug.fp_succ.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 54
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static isFrontFringerprintInner()Z
    .locals 5

    .prologue
    .line 62
    sget-object v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->FRONT_FINGER_PROJECT:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 63
    .local v3, "proj":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    const/4 v4, 0x1

    .line 67
    .end local v3    # "proj":Ljava/lang/String;
    :goto_1
    return v4

    .line 62
    .restart local v3    # "proj":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v3    # "proj":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isUseWindowHideFunction()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->mIsUseWindowHideFunction:Z

    return v0
.end method

.method public static isUseWindowHideFunctionInner()Z
    .locals 5

    .prologue
    .line 75
    sget-object v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->PLATFORM_USE_WINDOW_HIDE_FUNCTION:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 76
    .local v3, "platform":Ljava/lang/String;
    sget-object v4, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->PLATFORM:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    const/4 v4, 0x1

    .line 80
    .end local v3    # "platform":Ljava/lang/String;
    :goto_1
    return v4

    .line 75
    .restart local v3    # "platform":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v3    # "platform":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isFrontFringerprint()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/vivo/common/fingerprinthook/WakeHookConfig;->mIsFrontFingerprint:Z

    return v0
.end method
