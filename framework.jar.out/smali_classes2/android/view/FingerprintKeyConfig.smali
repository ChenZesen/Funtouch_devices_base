.class public Landroid/view/FingerprintKeyConfig;
.super Ljava/lang/Object;
.source "FingerprintKeyConfig.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final FRONT_FINGERKEY_LONG_PRESS_PROJECTS:[Ljava/lang/String;

.field private static final FRONT_FINGER_KEY_PROJECTS:[Ljava/lang/String;

.field private static final IS_FRONT_FINGER:Ljava/lang/String; = "persist.vivo.fingerprint.front"

.field private static final IS_SUPPOT_FINGER_KEY:Ljava/lang/String; = "persist.vivo.support.fingerkey"

.field private static final MODEL:Ljava/lang/String;

.field private static final PROP_FINGERPRINT_HOMEKEY:Ljava/lang/String; = "persist.sys.fphomekey"

.field private static final PROP_FINGERPRINT_WAKEUP:Ljava/lang/String; = "persist.sys.fpwakeup"

.field private static final PYSICAL_HOME_KEY_PROJECTS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FingerprintKeyConfig"

.field private static final TOUCH_HOME_KEY_PROJECTS:[Ljava/lang/String;

.field private static final mIsFingerprintKeyCanWakeup:Z

.field private static final mIsFrontFingerprintkey:Z

.field private static final mIsPhysiscalHomeKey:Z

.field private static final mIsSupportLongPress:Z

.field private static final mIsSupportTouchHomeKey:Z


# instance fields
.field private isSupportFingerKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    const-string v0, "ro.product.model.bbk"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/FingerprintKeyConfig;->MODEL:Ljava/lang/String;

    .line 21
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pd1602"

    aput-object v1, v0, v2

    const-string v1, "pd1603"

    aput-object v1, v0, v3

    const-string v1, "td1603"

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/FingerprintKeyConfig;->PYSICAL_HOME_KEY_PROJECTS:[Ljava/lang/String;

    .line 22
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pd1602"

    aput-object v1, v0, v2

    const-string v1, "pd1603"

    aput-object v1, v0, v3

    const-string v1, "td1603"

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/FingerprintKeyConfig;->TOUCH_HOME_KEY_PROJECTS:[Ljava/lang/String;

    .line 23
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pd1602"

    aput-object v1, v0, v2

    const-string v1, "pd1603"

    aput-object v1, v0, v3

    const-string v1, "td1603"

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/FingerprintKeyConfig;->FRONT_FINGER_KEY_PROJECTS:[Ljava/lang/String;

    .line 24
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Landroid/view/FingerprintKeyConfig;->FRONT_FINGERKEY_LONG_PRESS_PROJECTS:[Ljava/lang/String;

    .line 102
    invoke-static {}, Landroid/view/FingerprintKeyConfig;->isPhysiscalHomeKeyInternal()Z

    move-result v0

    sput-boolean v0, Landroid/view/FingerprintKeyConfig;->mIsPhysiscalHomeKey:Z

    .line 103
    invoke-static {}, Landroid/view/FingerprintKeyConfig;->isFingerprintKeyCanWakeupInternal()Z

    move-result v0

    sput-boolean v0, Landroid/view/FingerprintKeyConfig;->mIsFingerprintKeyCanWakeup:Z

    .line 104
    invoke-static {}, Landroid/view/FingerprintKeyConfig;->isSupportTouchHomeKeyInternal()Z

    move-result v0

    sput-boolean v0, Landroid/view/FingerprintKeyConfig;->mIsSupportTouchHomeKey:Z

    .line 105
    invoke-static {}, Landroid/view/FingerprintKeyConfig;->isFrontFingerprintkeyInternal()Z

    move-result v0

    sput-boolean v0, Landroid/view/FingerprintKeyConfig;->mIsFrontFingerprintkey:Z

    .line 106
    invoke-static {}, Landroid/view/FingerprintKeyConfig;->mIsSupportLongPressInternal()Z

    move-result v0

    sput-boolean v0, Landroid/view/FingerprintKeyConfig;->mIsSupportLongPress:Z

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/FingerprintKeyConfig;->isSupportFingerKey:Z

    return-void
.end method

.method public static isFingerprintKeyCanWakeup()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Landroid/view/FingerprintKeyConfig;->mIsFingerprintKeyCanWakeup:Z

    return v0
.end method

.method private static isFingerprintKeyCanWakeupInternal()Z
    .locals 2

    .prologue
    .line 98
    const-string v0, "persist.sys.fpwakeup"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFrontFingerprintkey()Z
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Landroid/view/FingerprintKeyConfig;->isSupportTouchHomeKeyInternal()Z

    .line 78
    sget-boolean v0, Landroid/view/FingerprintKeyConfig;->mIsFrontFingerprintkey:Z

    return v0
.end method

.method private static isFrontFingerprintkeyInternal()Z
    .locals 3

    .prologue
    .line 82
    const-string v1, "persist.vivo.fingerprint.front"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    .local v0, "isFrontFingerkey":Z
    return v0
.end method

.method public static isPhysiscalHomeKey()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Landroid/view/FingerprintKeyConfig;->mIsPhysiscalHomeKey:Z

    return v0
.end method

.method private static isPhysiscalHomeKeyInternal()Z
    .locals 3

    .prologue
    .line 49
    const-string v1, "persist.vivo.support.fingerkey"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 50
    .local v0, "isSupportFingerKey":Z
    return v0
.end method

.method public static isSupportLongPress()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Landroid/view/FingerprintKeyConfig;->mIsSupportLongPress:Z

    return v0
.end method

.method public static isSupportTouchHomeKey()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Landroid/view/FingerprintKeyConfig;->mIsPhysiscalHomeKey:Z

    return v0
.end method

.method private static isSupportTouchHomeKeyInternal()Z
    .locals 3

    .prologue
    .line 72
    const-string v1, "persist.vivo.support.fingerkey"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    .local v0, "isSupportTouchHome":Z
    return v0
.end method

.method private static mIsSupportLongPressInternal()Z
    .locals 5

    .prologue
    .line 58
    sget-object v0, Landroid/view/FingerprintKeyConfig;->FRONT_FINGERKEY_LONG_PRESS_PROJECTS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 59
    .local v3, "model":Ljava/lang/String;
    sget-object v4, Landroid/view/FingerprintKeyConfig;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    const/4 v4, 0x1

    .line 63
    .end local v3    # "model":Ljava/lang/String;
    :goto_1
    return v4

    .line 58
    .restart local v3    # "model":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "model":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
