.class public Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;
.super Ljava/lang/Object;
.source "FingerprintWakeHookCollectData.java"


# static fields
.field public static final ALIPAY_LABEL_ID:Ljava/lang/String; = "10732"

.field public static final EVENT_ID:Ljava/lang/String; = "1073"

.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final FP_TYPE:Ljava/lang/String; = "fp_type"

.field public static final FP_TYPE_FPC:Ljava/lang/String; = "fpc"

.field public static final FP_TYPE_GOODIX:Ljava/lang/String; = "goodix"

.field public static final IDENTIFY:Ljava/lang/String; = "identify"

.field public static final KEYGUARD_LABEL_ID:Ljava/lang/String; = "10731"

.field private static final PROP_FINGER_TYPE:Ljava/lang/String; = "persist.sys.fptype"

.field public static final SPEED:Ljava/lang/String; = "speed"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVivoCollectData:Lcom/vivo/common/VivoCollectData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/vivo/common/VivoCollectData;

    iget-object v1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;)Lcom/vivo/common/VivoCollectData;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getFpType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    const-string v1, "persist.sys.fptype"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, "fp_type":I
    sget-object v1, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFpType(): fp_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 80
    const-string v1, "fpc"

    .line 84
    :goto_0
    return-object v1

    .line 81
    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 82
    const-string v1, "goodix"

    goto :goto_0

    .line 84
    :cond_1
    const-string v1, "no_type"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    invoke-direct {v0, p0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    .line 46
    :cond_0
    sget-object v0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->mInstance:Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;

    return-object v0
.end method


# virtual methods
.method public writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
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
    .line 50
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 51
    sget-object v1, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->TAG:Ljava/lang/String;

    const-string v2, "writeData(): params is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 57
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData$1;-><init>(Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/vivo/common/fingerprinthook/FingerprintWakeHookCollectData;->TAG:Ljava/lang/String;

    const-string v2, "writeData()\uff1a write data failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
