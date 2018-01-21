.class public Landroid/hardware/fingerprint/FingerprintCollectData;
.super Ljava/lang/Object;
.source "FingerprintCollectData.java"


# static fields
.field public static final ALIPAY_LABEL_ID:Ljava/lang/String; = "10732"

.field public static final APP_LABEL_ID:Ljava/lang/String; = "10735"

.field public static final EVENT_ID:Ljava/lang/String; = "1073"

.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final FP_TYPE:Ljava/lang/String; = "fp_type"

.field public static final FP_TYPE_FPC:Ljava/lang/String; = "fpc"

.field public static final FP_TYPE_GOODIX:Ljava/lang/String; = "goodix"

.field private static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final FRONT_FINGER:Ljava/lang/String; = "persist.vivo.fingerprint.front"

.field public static final IDENTIFY:Ljava/lang/String; = "identify"

.field public static final IMAGE_COVERAGE:Ljava/lang/String; = "image_coverage"

.field public static final IMAGE_QUALITY:Ljava/lang/String; = "image_quality"

.field public static final KEYGUARD_LABEL_ID:Ljava/lang/String; = "10731"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PRESS_TOUCH_UNLOCK:Ljava/lang/String; = "press_touch_unlock"

.field private static final PROP_FINGER_TYPE:Ljava/lang/String; = "persist.sys.fptype"

.field private static final PROP_IMAGE_COVERAGE:Ljava/lang/String; = "sys.fp.image.coverage"

.field private static final PROP_IMAGE_QUALITY:Ljava/lang/String; = "sys.fp.image.quality"

.field private static final PROP_VERIFY_INDEX:Ljava/lang/String; = "sys.fp.verify.index"

.field private static final PROP_VERIFY_SCORE:Ljava/lang/String; = "sys.fp.verify.score"

.field public static final SCREEN_STATE:Ljava/lang/String; = "screen_state"

.field public static final SOFTWARE_LABEL_ID:Ljava/lang/String; = "10734"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "fingerprintCollect"

.field public static final TIME_LABEL_ID:Ljava/lang/String; = "10736"

.field public static final UNLOCK_MODE:Ljava/lang/String; = "unlock_mode"

.field public static final VERIFY_INDEX:Ljava/lang/String; = "verify_index"

.field public static final VERIFY_SCORE:Ljava/lang/String; = "verify_score"

.field public static final WECHAT_LABEL_ID:Ljava/lang/String; = "10733"

.field private static sInstance:Landroid/hardware/fingerprint/FingerprintCollectData;


# instance fields
.field private isFrontFingerprint:Z

.field private mContext:Landroid/content/Context;

.field private mVivoCollectData:Lcom/vivo/common/VivoCollectData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/fingerprint/FingerprintCollectData;->sInstance:Landroid/hardware/fingerprint/FingerprintCollectData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v2, p0, Landroid/hardware/fingerprint/FingerprintCollectData;->isFrontFingerprint:Z

    .line 56
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintCollectData;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/vivo/common/VivoCollectData;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintCollectData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintCollectData;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 58
    const-string/jumbo v0, "persist.vivo.fingerprint.front"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintCollectData;->isFrontFingerprint:Z

    .line 59
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/fingerprint/FingerprintCollectData;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintCollectData;

    .prologue
    .line 15
    iget-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintCollectData;->isFrontFingerprint:Z

    return v0
.end method

.method static synthetic access$100(Landroid/hardware/fingerprint/FingerprintCollectData;)Lcom/vivo/common/VivoCollectData;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintCollectData;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintCollectData;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/fingerprint/FingerprintCollectData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintCollectData;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintCollectData;->getFpType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFpType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    const-string/jumbo v1, "persist.sys.fptype"

    const-string/jumbo v2, "no_type"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "fp_type":Ljava/lang/String;
    const-string v1, "fingerprintCollect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read SystemProperties persist.sys.fptype type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintCollectData;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Landroid/hardware/fingerprint/FingerprintCollectData;->sInstance:Landroid/hardware/fingerprint/FingerprintCollectData;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/hardware/fingerprint/FingerprintCollectData;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintCollectData;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintCollectData;->sInstance:Landroid/hardware/fingerprint/FingerprintCollectData;

    .line 65
    :cond_0
    sget-object v0, Landroid/hardware/fingerprint/FingerprintCollectData;->sInstance:Landroid/hardware/fingerprint/FingerprintCollectData;

    return-object v0
.end method


# virtual methods
.method public writeCollectData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mPkgName"    # Ljava/lang/String;
    .param p2, "authResult"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "identify"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "1073"

    const-string v2, "10735"

    invoke-virtual {p0, v1, v2, v0}, Landroid/hardware/fingerprint/FingerprintCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 129
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 70
    const-string v1, "fingerprintCollect"

    const-string/jumbo v2, "writeData: params is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v2, "fingerprintCollect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeData: label: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pkgName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v1, "package_name"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " params: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "identify"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintCollectData$1;

    invoke-direct {v2, p0, p1, p3, p2}, Landroid/hardware/fingerprint/FingerprintCollectData$1;-><init>(Landroid/hardware/fingerprint/FingerprintCollectData;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "fingerprintCollect"

    const-string/jumbo v2, "writeData: write data failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
