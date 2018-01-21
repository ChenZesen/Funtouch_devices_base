.class public Lcom/qti/snapdragon/sdk/display/ColorManager;
.super Ljava/lang/Object;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/snapdragon/sdk/display/ColorManager$1;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$Log;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;,
        Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;
    }
.end annotation


# static fields
.field public static final BITFLAG_COLOR_BALANCE:J

.field public static final BITFLAG_GLOBAL_PICTURE_ADJUSTMENT:J

.field public static final BITFLAG_MEMORY_COLOR_FOLIAGE:J

.field public static final BITFLAG_MEMORY_COLOR_SKIN:J

.field public static final BITFLAG_MEMORY_COLOR_SKY:J

.field public static final COLOR_BALANCE_WARMTH_LOWER_BOUND:I = -0x64

.field public static final COLOR_BALANCE_WARMTH_UPPER_BOUND:I = 0x64

.field private static final INIT_VALUE:I = -0x3e7

.field public static final MODE_NAME_MAX_LENGTH:I = 0x20

.field private static final NUM_DISPLAY_TYPES:I = 0x3

.field private static PA_GLOBAL_CON:I = 0x0

.field private static PA_GLOBAL_DESAT:I = 0x0

.field private static PA_GLOBAL_DISABLE:I = 0x0

.field private static PA_GLOBAL_HUE:I = 0x0

.field private static PA_GLOBAL_SAT:I = 0x0

.field private static PA_GLOBAL_SAT_THRESH:I = 0x0

.field private static PA_GLOBAL_VAL:I = 0x0

.field private static final REMOTE_SERVICE_NAME:Ljava/lang/String;

.field public static final RET_FAILURE:I = -0x3e7

.field public static final RET_FEATURE_DISABLED:I = -0x389

.field public static final RET_ILLEGAL_ARGUMENT:I = -0x388

.field public static final RET_NOT_SUPPORTED:I = -0x385

.field public static final RET_PERMISSION_DENIED:I = -0x387

.field public static final RET_SUCCESS:I = 0x0

.field public static final RET_VALUE_OUT_OF_RANGE:I = -0x386

.field private static final SERVICE_INTENT_NAME:Ljava/lang/String; = "com.qti.service.colorservice.ColorServiceApp"

.field private static final SERVICE_INTENT_PACKAGE:Ljava/lang/String; = "com.qti.service.colorservice"

.field private static final SERVICE_PKG_NAME:Ljava/lang/String; = "com.qti.service.colorservice"

.field private static TAG:Ljava/lang/String; = null

.field private static VERBOSE_ENABLED:Z = false

.field private static colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener; = null

.field private static conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn; = null

.field private static isConnecting:Z = false

.field private static myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager; = null

.field private static final permission:Ljava/lang/String; = "com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS"

.field private static service:Lcom/qti/snapdragon/sdk/display/IColorService;

.field private static serviceContext:Landroid/content/Context;

.field private static serviceDie:Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;


# instance fields
.field private displayId:I

.field private isSystemApp:Z

.field memColorRanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private myApplication:Landroid/app/Application;

.field paRanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 65
    const-string v0, "ColorManager"

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    .line 66
    sput-boolean v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->VERBOSE_ENABLED:Z

    .line 68
    const-string v0, "1"

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_COLOR_BALANCE:J

    .line 69
    const-string v0, "10"

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_GLOBAL_PICTURE_ADJUSTMENT:J

    .line 70
    const-string v0, "100"

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_MEMORY_COLOR_SKIN:J

    .line 71
    const-string v0, "1000"

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_MEMORY_COLOR_SKY:J

    .line 72
    const-string v0, "10000"

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    sput-wide v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_MEMORY_COLOR_FOLIAGE:J

    .line 75
    sput v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_HUE:I

    .line 76
    sput v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_SAT:I

    .line 77
    const/4 v0, 0x4

    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_VAL:I

    .line 78
    const/16 v0, 0x8

    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_CON:I

    .line 79
    const/16 v0, 0x10

    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_SAT_THRESH:I

    .line 80
    const/16 v0, 0x20

    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_DESAT:I

    .line 81
    const/16 v0, 0x40

    sput v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_DISABLE:I

    .line 281
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/ColorManager;

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 287
    const-class v0, Lcom/qti/snapdragon/sdk/display/IColorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->REMOTE_SERVICE_NAME:Ljava/lang/String;

    .line 305
    sput-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceContext:Landroid/content/Context;

    .line 307
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    invoke-direct {v0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;-><init>(Lcom/qti/snapdragon/sdk/display/ColorManager$1;)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    .line 310
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    .line 355
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;

    invoke-direct {v0}, Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;-><init>()V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceDie:Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;I)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "displayId"    # I

    .prologue
    const/4 v0, 0x0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    .line 313
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->memColorRanges:Ljava/util/HashMap;

    .line 314
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->paRanges:Ljava/util/HashMap;

    .line 503
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->REMOTE_SERVICE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object v1

    sput-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    .line 504
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    if-nez v1, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find IService by name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->REMOTE_SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    iput-object p1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myApplication:Landroid/app/Application;

    .line 511
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    .line 513
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System app? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iput p2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    .line 516
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 63
    sput-boolean p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    return p0
.end method

.method static synthetic access$300()Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/qti/snapdragon/sdk/display/IColorService;)Lcom/qti/snapdragon/sdk/display/IColorService;
    .locals 0
    .param p0, "x0"    # Lcom/qti/snapdragon/sdk/display/IColorService;

    .prologue
    .line 63
    sput-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->REMOTE_SERVICE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceDie:Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->VERBOSE_ENABLED:Z

    return v0
.end method

.method private checkModeValidity(Lcom/qti/snapdragon/sdk/display/ModeInfo;)I
    .locals 2
    .param p1, "pf"    # Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .prologue
    .line 2645
    if-nez p1, :cond_0

    .line 2646
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Mode data missing"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2647
    const/16 v0, -0x3e7

    .line 2653
    :goto_0
    return v0

    .line 2649
    :cond_0
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result v0

    if-gez v0, :cond_1

    .line 2650
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "ID out of range"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    const/16 v0, -0x386

    goto :goto_0

    .line 2653
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorListener"    # Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/16 v4, -0x3e7

    .line 409
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 410
    :cond_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "One of the parmeter passed is null"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/16 v4, -0x388

    .line 470
    :goto_0
    return v4

    .line 413
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 414
    .local v1, "res":I
    if-eqz v1, :cond_2

    .line 415
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "Required permission \'com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS\' is missing"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_2
    sput-object p1, Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    .line 421
    sput-object p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceContext:Landroid/content/Context;

    .line 422
    sget-boolean v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    if-eqz v6, :cond_3

    .line 423
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "Connection already in progress"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_3
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isServiceRunning()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 428
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Service running"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v3, "serviceIntent":Landroid/content/Intent;
    const-string v6, "com.qti.service.colorservice"

    const-string v7, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    invoke-virtual {v6, v3, v7, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 433
    .local v2, "serviceBound":Z
    if-ne v2, v9, :cond_4

    .line 434
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "Running service bound"

    invoke-static {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    invoke-interface {v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;->onConnected()V

    move v4, v5

    .line 436
    goto :goto_0

    .line 439
    :cond_4
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "Bind failed even when service is running"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    .end local v2    # "serviceBound":Z
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    :cond_5
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Service is not running"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const/4 v6, 0x1

    :try_start_0
    sput-boolean v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 450
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    :goto_1
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 457
    .restart local v3    # "serviceIntent":Landroid/content/Intent;
    const-string v6, "com.qti.service.colorservice"

    const-string v7, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager;->conn:Lcom/qti/snapdragon/sdk/display/ColorManager$DisplayConn;

    const/4 v8, 0x1

    invoke-virtual {v6, v3, v7, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 460
    .restart local v2    # "serviceBound":Z
    if-ne v2, v9, :cond_6

    move v4, v5

    .line 461
    goto/16 :goto_0

    .line 452
    .end local v2    # "serviceBound":Z
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 467
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/SecurityException;
    sput-boolean v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z

    .line 469
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_0

    .line 463
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "serviceBound":Z
    .restart local v3    # "serviceIntent":Landroid/content/Intent;
    :cond_6
    :try_start_3
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Failed to connect to remote service"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v6, 0x0

    sput-boolean v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->isConnecting:Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;
    .locals 7
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 542
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 543
    :cond_0
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Application or context passed is null"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null passed for Application or context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 546
    :cond_1
    if-nez p2, :cond_2

    .line 547
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Display Id passed is null"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Display ID passed is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 551
    :cond_2
    const-string v3, "com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS"

    invoke-virtual {p0, v3}, Landroid/app/Application;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 552
    .local v1, "res":I
    if-eqz v1, :cond_3

    .line 553
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Required permission \'com.qti.snapdragon.sdk.permission.DISPLAY_SETTINGS\' is missing"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_0
    return-object v2

    .line 558
    :cond_3
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    if-nez v3, :cond_4

    .line 560
    :try_start_0
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v4

    new-instance v5, Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v6

    invoke-direct {v5, p0, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;-><init>(Landroid/app/Application;I)V

    aput-object v5, v3, v4

    .line 562
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instance created for display type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v4

    aput-object v2, v3, v4

    goto :goto_0

    .line 571
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Returning existing instance"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->getValue()I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_0
.end method

.method private static isServiceRunning()Z
    .locals 10

    .prologue
    .line 2690
    const/4 v6, 0x0

    .line 2691
    .local v6, "serviceFound":Z
    const/4 v3, 0x0

    .line 2694
    .local v3, "in":Ljava/io/InputStream;
    const/4 v7, 0x3

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "/system/bin/sh"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "-c"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "ps"

    aput-object v8, v0, v7

    .line 2695
    .local v0, "args":[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 2697
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 2698
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 2699
    const/16 v7, 0x400

    new-array v5, v7, [B

    .line 2700
    .local v5, "re":[B
    :cond_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 2701
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    const-string v8, "colorservice"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 2702
    const/4 v6, 0x1

    .line 2709
    :cond_1
    if-eqz v3, :cond_2

    .line 2711
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2718
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "re":[B
    :cond_2
    :goto_0
    return v6

    .line 2712
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v4    # "process":Ljava/lang/Process;
    .restart local v5    # "re":[B
    :catch_0
    move-exception v2

    .line 2713
    .local v2, "ex":Ljava/io/IOException;
    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v8, "Harmless exception on close!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2706
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "re":[B
    :catch_1
    move-exception v2

    .line 2707
    .restart local v2    # "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2709
    if-eqz v3, :cond_2

    .line 2711
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2712
    :catch_2
    move-exception v2

    .line 2713
    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v8, "Harmless exception on close!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2709
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_3

    .line 2711
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2715
    :cond_3
    :goto_1
    throw v7

    .line 2712
    :catch_3
    move-exception v2

    .line 2713
    .restart local v2    # "ex":Ljava/io/IOException;
    sget-object v8, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v9, "Harmless exception on close!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 494
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public createNewMode(Ljava/lang/String;)I
    .locals 9
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    const/16 v4, -0x385

    const/16 v5, -0x3e7

    .line 1295
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v7, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v6, v6, v7

    if-eqz v6, :cond_5

    .line 1296
    const-wide/16 v0, 0x0

    .line 1300
    .local v0, "FLAG":J
    :try_start_0
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1301
    .local v3, "isSupported":Z
    const/4 v6, 0x1

    if-eq v3, v6, :cond_0

    .line 1337
    .end local v0    # "FLAG":J
    .end local v3    # "isSupported":Z
    :goto_0
    return v4

    .line 1304
    .restart local v0    # "FLAG":J
    :catch_0
    move-exception v2

    .line 1305
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1309
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "isSupported":Z
    :cond_0
    iget-boolean v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    if-nez v6, :cond_1

    .line 1310
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "You do not have permission to perform this operation"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const/16 v4, -0x387

    goto :goto_0

    .line 1315
    :cond_1
    if-eqz p1, :cond_2

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_3

    .line 1316
    :cond_2
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Mode name is missing or crossing max length"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1317
    goto :goto_0

    .line 1321
    :cond_3
    :try_start_1
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "For createNewMode- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v7, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v6, v7, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->createNewModeAllFeatures(ILjava/lang/String;)I

    move-result v4

    .line 1323
    .local v4, "retVal":I
    if-ltz v4, :cond_4

    .line 1324
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "createNewMode() worked"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1331
    .end local v4    # "retVal":I
    :catch_1
    move-exception v2

    .line 1332
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Service create new mode failed"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1333
    goto :goto_0

    .line 1326
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v4    # "retVal":I
    :cond_4
    :try_start_2
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service createNewMode failed with return value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v5

    .line 1327
    goto :goto_0

    .line 1336
    .end local v0    # "FLAG":J
    .end local v3    # "isSupported":Z
    .end local v4    # "retVal":I
    :cond_5
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instance for the display type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesnt exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1337
    goto/16 :goto_0
.end method

.method public createNewMode(Ljava/lang/String;Ljava/util/EnumSet;I)I
    .locals 10
    .param p1, "modeName"    # Ljava/lang/String;
    .param p3, "colorBalance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p2, "featureList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;>;"
    const/16 v8, -0x385

    const/16 v9, -0x3e7

    .line 985
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_b

    .line 986
    const-wide/16 v4, 0x0

    .line 990
    .local v4, "FLAG":J
    :try_start_0
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 991
    .local v7, "isSupported":Z
    const/4 v1, 0x1

    if-eq v7, v1, :cond_0

    .line 1063
    .end local v4    # "FLAG":J
    .end local v7    # "isSupported":Z
    :goto_0
    return v8

    .line 994
    .restart local v4    # "FLAG":J
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 999
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "isSupported":Z
    :cond_0
    iget-boolean v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    if-nez v1, :cond_1

    .line 1000
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "You do not have permission to perform this operation"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const/16 v8, -0x387

    goto :goto_0

    .line 1005
    :cond_1
    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_3

    .line 1006
    :cond_2
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "Mode name is missing or crossing max length"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 1007
    goto :goto_0

    .line 1012
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1013
    :cond_4
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "FeatureList missing"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 1014
    goto :goto_0

    .line 1020
    :cond_5
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1022
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1024
    const/16 v1, -0x64

    if-lt p3, v1, :cond_7

    const/16 v1, 0x64

    if-gt p3, v1, :cond_7

    .line 1027
    sget-wide v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_COLOR_BALANCE:J

    or-long/2addr v4, v2

    .line 1042
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-nez v1, :cond_9

    .line 1043
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "FeatureList is incomplete. Colorbalance missing"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 1044
    goto :goto_0

    .line 1029
    :cond_7
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "Color balance value passed is out of range"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/16 v8, -0x386

    goto :goto_0

    .line 1033
    :cond_8
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "FEATURE_COLOR_BALANCE is not supported"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_9
    :try_start_1
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For createNewMode- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    move-object v3, p1

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/qti/snapdragon/sdk/display/IColorService;->createNewMode(ILjava/lang/String;JI)I

    move-result v8

    .line 1049
    .local v8, "retVal":I
    if-ltz v8, :cond_a

    .line 1050
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "createNewMode() worked"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1057
    .end local v8    # "retVal":I
    :catch_1
    move-exception v0

    .line 1058
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "Service create new mode failed"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 1059
    goto/16 :goto_0

    .line 1052
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v8    # "retVal":I
    :cond_a
    :try_start_2
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service createNewMode failed with return value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v8, v9

    .line 1053
    goto/16 :goto_0

    .line 1062
    .end local v4    # "FLAG":J
    .end local v7    # "isSupported":Z
    .end local v8    # "retVal":I
    :cond_b
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance for the display type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesnt exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 1063
    goto/16 :goto_0
.end method

.method public deleteMode(I)I
    .locals 7
    .param p1, "modeId"    # I

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 919
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 922
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 923
    .local v1, "isSupported":Z
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 957
    .end local v1    # "isSupported":Z
    :goto_0
    return v2

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 931
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    iget-boolean v4, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    if-nez v4, :cond_1

    .line 932
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "You do not have permission to perform this operation"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const/16 v2, -0x387

    goto :goto_0

    .line 935
    :cond_1
    if-gez p1, :cond_2

    .line 936
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Mode ID provided is less than 0"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const/16 v2, -0x386

    goto :goto_0

    .line 940
    :cond_2
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v4, v5, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->deleteMode(II)I

    move-result v2

    .line 941
    .local v2, "retVal":I
    if-nez v2, :cond_3

    .line 942
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "deleteMode() worked"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 949
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 950
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service set active mode failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 951
    goto :goto_0

    .line 944
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "retVal":I
    :cond_3
    :try_start_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service deleteMode failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v3

    .line 945
    goto :goto_0

    .line 956
    .end local v1    # "isSupported":Z
    .end local v2    # "retVal":I
    :cond_4
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 957
    goto :goto_0
.end method

.method public disableMemoryColorConfig(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;)I
    .locals 7
    .param p1, "type"    # Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 2146
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    .line 2148
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_MEMORY_COLOR_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2149
    .local v1, "isSupported":Z
    if-nez v1, :cond_1

    .line 2178
    .end local v1    # "isSupported":Z
    :cond_0
    :goto_0
    return v2

    .line 2152
    :catch_0
    move-exception v0

    .line 2153
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2156
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_1
    if-nez p1, :cond_2

    .line 2157
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Memory color type passed is null"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const/16 v2, -0x388

    goto :goto_0

    .line 2161
    :cond_2
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling disableMemoryColorConfig for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->getValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/qti/snapdragon/sdk/display/IColorService;->disableMemoryColorConfiguration(II)I

    move-result v2

    .line 2163
    .local v2, "retVal":I
    if-eqz v2, :cond_0

    .line 2164
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableMemoryColorConfig failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 2165
    goto :goto_0

    .line 2171
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 2172
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service disableMemoryColorConfig failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 2173
    goto :goto_0

    .line 2177
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isSupported":Z
    :cond_3
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 2178
    goto :goto_0
.end method

.method public disablePictureAdjustmentConfig()I
    .locals 12

    .prologue
    const/16 v10, -0x385

    const/16 v11, -0x3e7

    .line 2501
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 2503
    :try_start_0
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2504
    .local v9, "isSupported":Z
    if-nez v9, :cond_1

    .line 2530
    .end local v9    # "isSupported":Z
    :cond_0
    :goto_0
    return v10

    .line 2507
    :catch_0
    move-exception v8

    .line 2508
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2512
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "isSupported":Z
    :cond_1
    :try_start_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling disablePictureAdjustmentConfig for display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    sget v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_DISABLE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/qti/snapdragon/sdk/display/IColorService;->setPAParameters(IIIIIII)I

    move-result v10

    .line 2515
    .local v10, "retVal":I
    if-eqz v10, :cond_0

    .line 2516
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disablePictureAdjustmentConfig failed with return value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v10, v11

    .line 2517
    goto :goto_0

    .line 2523
    .end local v10    # "retVal":I
    :catch_1
    move-exception v8

    .line 2524
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Service disablePictureAdjustmentConfig failed"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    .line 2525
    goto :goto_0

    .line 2529
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v9    # "isSupported":Z
    :cond_2
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance for the display type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesnt exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    .line 2530
    goto :goto_0
.end method

.method public enablePictureAdjustmentDesaturation()I
    .locals 12

    .prologue
    const/16 v10, -0x385

    const/16 v11, -0x3e7

    .line 2458
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 2460
    :try_start_0
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2461
    .local v9, "isSupported":Z
    if-nez v9, :cond_1

    .line 2487
    .end local v9    # "isSupported":Z
    :cond_0
    :goto_0
    return v10

    .line 2464
    :catch_0
    move-exception v8

    .line 2465
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2469
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "isSupported":Z
    :cond_1
    :try_start_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling enablePictureAdjustmentDesaturation for display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    sget v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_DESAT:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/qti/snapdragon/sdk/display/IColorService;->setPAParameters(IIIIIII)I

    move-result v10

    .line 2472
    .local v10, "retVal":I
    if-eqz v10, :cond_0

    .line 2473
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePictureAdjustmentDesaturation failed with return value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v10, v11

    .line 2474
    goto :goto_0

    .line 2480
    .end local v10    # "retVal":I
    :catch_1
    move-exception v8

    .line 2481
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Service enablePictureAdjustmentDesaturation failed"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    .line 2482
    goto :goto_0

    .line 2486
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v9    # "isSupported":Z
    :cond_2
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance for the display type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesnt exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    .line 2487
    goto :goto_0
.end method

.method public getActiveMode()[I
    .locals 10

    .prologue
    const/4 v4, 0x2

    const/16 v6, -0x385

    const/16 v9, -0x3e7

    const/4 v8, 0x0

    .line 766
    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 767
    .local v2, "retArray":[I
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 770
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v1

    .line 771
    .local v1, "isSupported":Z
    if-nez v1, :cond_0

    .line 772
    const/4 v4, 0x0

    const/16 v5, -0x385

    aput v5, v2, v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .end local v1    # "isSupported":Z
    :goto_0
    return-object v2

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 777
    aput v6, v2, v8

    goto :goto_0

    .line 782
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling getActiveMode() for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const/4 v4, 0x2

    new-array v3, v4, [J

    fill-array-data v3, :array_1

    .line 784
    .local v3, "retVal":[J
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService;->getActiveMode(I)[J

    move-result-object v3

    .line 785
    if-eqz v3, :cond_1

    array-length v4, v3

    if-gtz v4, :cond_2

    .line 786
    :cond_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "getActive service returned null "

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v4, 0x0

    const/16 v5, -0x3e7

    aput v5, v2, v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 798
    .end local v3    # "retVal":[J
    :catch_1
    move-exception v0

    .line 799
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service get active mode failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    aput v9, v2, v8

    goto :goto_0

    .line 789
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "retVal":[J
    :cond_2
    const/4 v4, 0x0

    :try_start_2
    aget-wide v4, v3, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 790
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service getActiveMode failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 v4, 0x0

    const/16 v5, -0x3e7

    aput v5, v2, v4

    goto :goto_0

    .line 794
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-wide v6, v3, v5

    long-to-int v5, v6

    aput v5, v2, v4

    .line 795
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-wide v6, v3, v5

    long-to-int v5, v6

    aput v5, v2, v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 804
    .end local v1    # "isSupported":Z
    .end local v3    # "retVal":[J
    :cond_4
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    aput v9, v2, v8

    goto/16 :goto_0

    .line 766
    nop

    :array_0
    .array-data 4
        -0x3e7
        0x0
    .end array-data

    .line 783
    :array_1
    .array-data 8
        -0x3e7
        0x0
    .end array-data
.end method

.method public getAdaptiveBacklightScale()I
    .locals 7

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 1708
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_2

    .line 1711
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1712
    .local v1, "isSupported":Z
    if-nez v1, :cond_0

    .line 1735
    .end local v1    # "isSupported":Z
    :goto_0
    return v2

    .line 1715
    :catch_0
    move-exception v0

    .line 1716
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1719
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isAdaptiveBacklightEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1720
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "FEATURE_ADAPTIVE_BACKLIGHT is disabled"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const/16 v2, -0x389

    goto :goto_0

    .line 1725
    :cond_1
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling getAdaptiveBacklightScale for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService;->getAdaptiveBacklightScale(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1727
    .local v2, "retVal":I
    goto :goto_0

    .line 1729
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 1730
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service getAdaptiveBacklightScale failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1731
    goto :goto_0

    .line 1734
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isSupported":Z
    :cond_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1735
    goto :goto_0
.end method

.method public getBacklightQualityLevel()Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1600
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    .line 1603
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v1

    .line 1604
    .local v1, "isSupported":Z
    if-nez v1, :cond_0

    .line 1605
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "FEATURE_ADAPTIVE_BACKLIGHT is not supported"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1639
    .end local v1    # "isSupported":Z
    :goto_0
    return-object v3

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1610
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "FEATURE_ADAPTIVE_BACKLIGHT is not supported"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1613
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isAdaptiveBacklightEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1614
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "FEATURE_ADAPTIVE_BACKLIGHT is disabled"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1619
    :cond_1
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling getBacklightQualityLevel for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService;->getBacklightQualityLevel(I)I

    move-result v2

    .line 1621
    .local v2, "retVal":I
    if-gez v2, :cond_2

    .line 1622
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBacklightQualityLevel returned error value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1633
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 1634
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service getBacklightQualityLevel failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1626
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "retVal":I
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->values()[Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    move-result-object v4

    aget-object v3, v4, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1628
    :catch_2
    move-exception v0

    .line 1629
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Level type mismatch"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1638
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "isSupported":Z
    .end local v2    # "retVal":I
    :cond_3
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getColorBalance()I
    .locals 7

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 671
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_2

    .line 674
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 675
    .local v1, "isSupported":Z
    if-nez v1, :cond_1

    .line 699
    .end local v1    # "isSupported":Z
    :cond_0
    :goto_0
    return v2

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 684
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_1
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling getColorBalance for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService;->getColorBalance(I)I

    move-result v2

    .line 686
    .local v2, "retVal":I
    const/16 v4, -0x64

    if-ge v2, v4, :cond_0

    .line 687
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service getColorBalance failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 689
    goto :goto_0

    .line 693
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service get color balance failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 695
    goto :goto_0

    .line 698
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isSupported":Z
    :cond_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 699
    goto :goto_0
.end method

.method public getDefaultMode()I
    .locals 7

    .prologue
    const/16 v3, -0x385

    const/16 v4, -0x3e7

    .line 1189
    const/16 v2, -0x3e7

    .line 1191
    .local v2, "retVal":I
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    .line 1194
    :try_start_0
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1195
    .local v1, "isSupported":Z
    if-nez v1, :cond_0

    .line 1218
    .end local v1    # "isSupported":Z
    :goto_0
    return v3

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1204
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    :try_start_1
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling getDefaultMode() for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v3, v5}, Lcom/qti/snapdragon/sdk/display/IColorService;->getDefaultMode(I)I

    move-result v2

    .line 1206
    if-gez v2, :cond_1

    .line 1207
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service getDefaultMode failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 1208
    goto :goto_0

    :cond_1
    move v3, v2

    .line 1210
    goto :goto_0

    .line 1212
    :catch_1
    move-exception v0

    .line 1213
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service get default mode failed"

    invoke-static {v3, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 1214
    goto :goto_0

    .line 1217
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isSupported":Z
    :cond_2
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 1218
    goto :goto_0
.end method

.method public getMaxLimitMemoryColor(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;)I
    .locals 10
    .param p1, "type"    # Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;
    .param p2, "parameter"    # Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    .prologue
    const/16 v6, -0x385

    const/16 v7, -0x3e7

    .line 1916
    sget-object v8, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v8, v8, v9

    if-eqz v8, :cond_6

    .line 1918
    :try_start_0
    sget-object v8, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_MEMORY_COLOR_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1919
    .local v2, "isSupported":Z
    if-nez v2, :cond_0

    .line 1956
    .end local v2    # "isSupported":Z
    :goto_0
    return v6

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1926
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "isSupported":Z
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1927
    :cond_1
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Feature type or request passed is null"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    const/16 v6, -0x388

    goto :goto_0

    .line 1932
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "max"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1933
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->memColorRanges:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1934
    .local v4, "maxVal":Ljava/lang/Integer;
    if-eqz v4, :cond_3

    .line 1935
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    .line 1937
    :cond_3
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling getMaxLimitMemoryColor for display "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v8, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->getValue()I

    move-result v9

    invoke-interface {v6, v8, v9}, Lcom/qti/snapdragon/sdk/display/IColorService;->getRangeMemoryColorParameter(II)[I

    move-result-object v5

    .line 1939
    .local v5, "retVal":[I
    if-eqz v5, :cond_4

    array-length v6, v5

    const/4 v8, 0x6

    if-ge v6, v8, :cond_5

    .line 1940
    :cond_4
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v8, "Service did not return proper parameter"

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 1941
    goto :goto_0

    .line 1944
    :cond_5
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->getValue()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v1, v6, 0x1

    .line 1945
    .local v1, "index":I
    iget-object v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->memColorRanges:Ljava/util/HashMap;

    aget v8, v5, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    aget v6, v5, v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1949
    .end local v1    # "index":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "maxVal":Ljava/lang/Integer;
    .end local v5    # "retVal":[I
    :catch_1
    move-exception v0

    .line 1950
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v8, "Service getMaxLimitMemoryColor failed"

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 1951
    goto/16 :goto_0

    .line 1955
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "isSupported":Z
    :cond_6
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instance for the display type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " doesnt exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 1956
    goto/16 :goto_0
.end method

.method public getMaxLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I
    .locals 10
    .param p1, "parameter"    # Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    .prologue
    const/16 v6, -0x385

    const/16 v7, -0x3e7

    .line 2197
    sget-object v8, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v8, v8, v9

    if-eqz v8, :cond_5

    .line 2199
    :try_start_0
    sget-object v8, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2200
    .local v2, "isSupported":Z
    if-nez v2, :cond_0

    .line 2237
    .end local v2    # "isSupported":Z
    :goto_0
    return v6

    .line 2203
    :catch_0
    move-exception v0

    .line 2204
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2207
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "isSupported":Z
    :cond_0
    if-nez p1, :cond_1

    .line 2208
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Parameter passed is null"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    const/16 v6, -0x388

    goto :goto_0

    .line 2213
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "max"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2214
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->paRanges:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2215
    .local v4, "maxVal":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 2216
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    .line 2218
    :cond_2
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling getMaxLimitPictureAdjustment for display "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v8, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v6, v8}, Lcom/qti/snapdragon/sdk/display/IColorService;->getRangePAParameter(I)[I

    move-result-object v5

    .line 2220
    .local v5, "retVal":[I
    if-eqz v5, :cond_3

    array-length v6, v5

    const/16 v8, 0xa

    if-ge v6, v8, :cond_4

    .line 2221
    :cond_3
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v8, "Service did not return proper parameter"

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2222
    goto :goto_0

    .line 2225
    :cond_4
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->getValue()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v1, v6, 0x1

    .line 2226
    .local v1, "index":I
    iget-object v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->paRanges:Ljava/util/HashMap;

    aget v8, v5, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    aget v6, v5, v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2230
    .end local v1    # "index":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "maxVal":Ljava/lang/Integer;
    .end local v5    # "retVal":[I
    :catch_1
    move-exception v0

    .line 2231
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v8, "Service getMaxLimitPictureAdjustment failed"

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2232
    goto/16 :goto_0

    .line 2236
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "isSupported":Z
    :cond_5
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instance for the display type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " doesnt exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2237
    goto/16 :goto_0
.end method

.method public getMaxSunlightVisibilityStrength()I
    .locals 7

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 1414
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_2

    .line 1417
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1418
    .local v1, "isSupported":Z
    if-nez v1, :cond_0

    .line 1441
    .end local v1    # "isSupported":Z
    :goto_0
    return v2

    .line 1421
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1425
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSunlightVisibilityEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1426
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT is disabled"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const/16 v2, -0x389

    goto :goto_0

    .line 1431
    :cond_1
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling getMaxSVI for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/qti/snapdragon/sdk/display/IColorService;->getRangeSunlightVisibilityStrength(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1433
    .local v2, "retVal":I
    goto :goto_0

    .line 1435
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 1436
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service getMaxSVI failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1437
    goto :goto_0

    .line 1440
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isSupported":Z
    :cond_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1441
    goto :goto_0
.end method

.method public getMemoryColorParams(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;)Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;
    .locals 10
    .param p1, "type"    # Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2096
    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v8, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v7, v7, v8

    if-eqz v7, :cond_5

    .line 2098
    :try_start_0
    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_MEMORY_COLOR_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v1

    .line 2099
    .local v1, "isSupported":Z
    if-nez v1, :cond_0

    .line 2100
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "FEATURE_MEMORY_COLOR_ADJUSTMENT is not supported"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 2132
    .end local v1    # "isSupported":Z
    :goto_0
    return-object v2

    .line 2103
    :catch_0
    move-exception v0

    .line 2104
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2105
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "FEATURE_MEMORY_COLOR_ADJUSTMENT is not supported"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 2106
    goto :goto_0

    .line 2108
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    if-nez p1, :cond_1

    .line 2109
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "Mem color type passed is null"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 2110
    goto :goto_0

    .line 2113
    :cond_1
    :try_start_1
    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling getMemoryColorParams for display "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v8, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->getValue()I

    move-result v9

    invoke-interface {v7, v8, v9}, Lcom/qti/snapdragon/sdk/display/IColorService;->getMemoryColorParameters(II)[I

    move-result-object v3

    .line 2115
    .local v3, "retVal":[I
    if-eqz v3, :cond_2

    array-length v7, v3

    const/4 v8, 0x4

    if-ge v7, v8, :cond_3

    .line 2116
    :cond_2
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "getMemorycolorParams failed "

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 2117
    goto :goto_0

    .line 2120
    :cond_3
    new-instance v2, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;

    const/4 v7, 0x0

    aget v7, v3, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    const/4 v9, 0x2

    aget v9, v3, v9

    invoke-direct {v2, p1, v7, v8, v9}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;-><init>(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;III)V

    .line 2121
    .local v2, "memConfig":Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;
    const/4 v7, 0x3

    aget v7, v3, v7

    if-nez v7, :cond_4

    :goto_1
    iput-boolean v5, v2, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->isEnabled:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2125
    .end local v2    # "memConfig":Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;
    .end local v3    # "retVal":[I
    :catch_1
    move-exception v0

    .line 2126
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "Service getMemoryColorParams failed"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 2127
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "memConfig":Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;
    .restart local v3    # "retVal":[I
    :cond_4
    move v5, v6

    .line 2121
    goto :goto_1

    .line 2131
    .end local v1    # "isSupported":Z
    .end local v2    # "memConfig":Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;
    .end local v3    # "retVal":[I
    :cond_5
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instance for the display type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesnt exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 2132
    goto/16 :goto_0
.end method

.method public getMinLimitMemoryColor(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;)I
    .locals 10
    .param p1, "type"    # Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;
    .param p2, "parameter"    # Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    .prologue
    const/16 v6, -0x385

    const/16 v7, -0x3e7

    .line 1973
    sget-object v8, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v8, v8, v9

    if-eqz v8, :cond_6

    .line 1975
    :try_start_0
    sget-object v8, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_MEMORY_COLOR_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1976
    .local v2, "isSupported":Z
    if-nez v2, :cond_0

    .line 2013
    .end local v2    # "isSupported":Z
    :goto_0
    return v6

    .line 1979
    :catch_0
    move-exception v0

    .line 1980
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1983
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "isSupported":Z
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1984
    :cond_1
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Feature type or request passed is null"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const/16 v6, -0x388

    goto :goto_0

    .line 1989
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "min"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1990
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->memColorRanges:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1991
    .local v4, "minVal":Ljava/lang/Integer;
    if-eqz v4, :cond_3

    .line 1992
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    .line 1994
    :cond_3
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling getMinLimitMemoryColor for display "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v8, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->getValue()I

    move-result v9

    invoke-interface {v6, v8, v9}, Lcom/qti/snapdragon/sdk/display/IColorService;->getRangeMemoryColorParameter(II)[I

    move-result-object v5

    .line 1996
    .local v5, "retVal":[I
    if-eqz v5, :cond_4

    array-length v6, v5

    const/4 v8, 0x6

    if-ge v6, v8, :cond_5

    .line 1997
    :cond_4
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v8, "Service did not return proper parameter"

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 1998
    goto :goto_0

    .line 2001
    :cond_5
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->getValue()I

    move-result v6

    mul-int/lit8 v1, v6, 0x2

    .line 2002
    .local v1, "index":I
    iget-object v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->memColorRanges:Ljava/util/HashMap;

    aget v8, v5, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    aget v6, v5, v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2006
    .end local v1    # "index":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "minVal":Ljava/lang/Integer;
    .end local v5    # "retVal":[I
    :catch_1
    move-exception v0

    .line 2007
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v8, "Service getMinLimitMemoryColor failed"

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2008
    goto/16 :goto_0

    .line 2012
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "isSupported":Z
    :cond_6
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instance for the display type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " doesnt exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2013
    goto/16 :goto_0
.end method

.method public getMinLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I
    .locals 10
    .param p1, "parameter"    # Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    .prologue
    const/16 v6, -0x385

    const/16 v7, -0x3e7

    .line 2254
    sget-object v8, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v8, v8, v9

    if-eqz v8, :cond_5

    .line 2256
    :try_start_0
    sget-object v8, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2257
    .local v2, "isSupported":Z
    if-nez v2, :cond_0

    .line 2294
    .end local v2    # "isSupported":Z
    :goto_0
    return v6

    .line 2260
    :catch_0
    move-exception v0

    .line 2261
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2264
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "isSupported":Z
    :cond_0
    if-nez p1, :cond_1

    .line 2265
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Parameter passed is null"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    const/16 v6, -0x388

    goto :goto_0

    .line 2270
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "min"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2271
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->paRanges:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2272
    .local v4, "minVal":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 2273
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    .line 2275
    :cond_2
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling getMinLimitPictureAdjustment for display "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v8, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v6, v8}, Lcom/qti/snapdragon/sdk/display/IColorService;->getRangePAParameter(I)[I

    move-result-object v5

    .line 2277
    .local v5, "retVal":[I
    if-eqz v5, :cond_3

    array-length v6, v5

    const/16 v8, 0xa

    if-ge v6, v8, :cond_4

    .line 2278
    :cond_3
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v8, "Service did not return proper parameter"

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2279
    goto :goto_0

    .line 2282
    :cond_4
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->getValue()I

    move-result v6

    mul-int/lit8 v1, v6, 0x2

    .line 2283
    .local v1, "index":I
    iget-object v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->paRanges:Ljava/util/HashMap;

    aget v8, v5, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    aget v6, v5, v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2287
    .end local v1    # "index":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "minVal":Ljava/lang/Integer;
    .end local v5    # "retVal":[I
    :catch_1
    move-exception v0

    .line 2288
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v8, "Service getMaxLimitPictureAdjustment failed"

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2289
    goto/16 :goto_0

    .line 2293
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "isSupported":Z
    :cond_5
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instance for the display type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " doesnt exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2294
    goto/16 :goto_0
.end method

.method public getMinSunlightVisibilityStrength()I
    .locals 7

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 1454
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_2

    .line 1457
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1458
    .local v1, "isSupported":Z
    if-nez v1, :cond_0

    .line 1481
    .end local v1    # "isSupported":Z
    :goto_0
    return v2

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1465
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSunlightVisibilityEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1466
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT is disabled"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    const/16 v2, -0x389

    goto :goto_0

    .line 1471
    :cond_1
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling getMinSVI for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/qti/snapdragon/sdk/display/IColorService;->getRangeSunlightVisibilityStrength(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1473
    .local v2, "retVal":I
    goto :goto_0

    .line 1475
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 1476
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service getMinSVI failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1477
    goto :goto_0

    .line 1480
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isSupported":Z
    :cond_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1481
    goto :goto_0
.end method

.method public getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    .locals 6
    .param p1, "type"    # Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 875
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v4, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 877
    :try_start_0
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v1

    .line 878
    .local v1, "isSupported":Z
    if-nez v1, :cond_0

    .line 879
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FEATURE_COLOR_MODE_SELECTION is not supported for display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v1    # "isSupported":Z
    :goto_0
    return-object v2

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 886
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    if-nez p1, :cond_1

    .line 887
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Mode Type passed is null"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Type passed is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 891
    :cond_1
    :try_start_1
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v4, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->getValue()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService;->getModes(II)[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 892
    .local v2, "mode":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    goto :goto_0

    .line 893
    .end local v2    # "mode":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    :catch_1
    move-exception v0

    .line 894
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Service get modes failed"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 899
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isSupported":Z
    :cond_2
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instance for the display type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesnt exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNumOfModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)I
    .locals 7
    .param p1, "type"    # Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 717
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    .line 719
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 720
    .local v1, "isSupported":Z
    if-nez v1, :cond_1

    .line 748
    .end local v1    # "isSupported":Z
    :cond_0
    :goto_0
    return v2

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 728
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_1
    if-nez p1, :cond_2

    .line 729
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Feature id passed is null"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Type passed is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 734
    :cond_2
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling getNumOfModes for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->getValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/qti/snapdragon/sdk/display/IColorService;->getNumModes(II)I

    move-result v2

    .line 736
    .local v2, "retVal":I
    if-gez v2, :cond_0

    .line 737
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service getNumModes failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 738
    goto :goto_0

    .line 742
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service get num modes failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 744
    goto :goto_0

    .line 747
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isSupported":Z
    :cond_3
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 748
    goto/16 :goto_0
.end method

.method public getPictureAdjustmentParams()Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 2541
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_7

    .line 2543
    :try_start_0
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2544
    .local v9, "isSupported":Z
    if-nez v9, :cond_0

    move-object v0, v13

    .line 2608
    .end local v9    # "isSupported":Z
    :goto_0
    return-object v0

    .line 2547
    :catch_0
    move-exception v8

    .line 2548
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v13

    .line 2549
    goto :goto_0

    .line 2552
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "isSupported":Z
    :cond_0
    :try_start_1
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPictureAdjustmentParams for display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v2, v3}, Lcom/qti/snapdragon/sdk/display/IColorService;->getRangePAParameter(I)[I

    move-result-object v12

    .line 2554
    .local v12, "retVal2":[I
    if-eqz v12, :cond_1

    array-length v2, v12

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 2555
    :cond_1
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "getRanagePAParameter failed"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v13

    .line 2556
    goto :goto_0

    .line 2558
    :cond_2
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v2, v3}, Lcom/qti/snapdragon/sdk/display/IColorService;->getPAParameters(I)[I

    move-result-object v11

    .line 2559
    .local v11, "retVal":[I
    if-eqz v11, :cond_3

    array-length v2, v11

    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 2560
    :cond_3
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "getPictureAdjustmentParams failed"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v13

    .line 2561
    goto :goto_0

    .line 2564
    :cond_4
    const/4 v7, 0x0

    .line 2565
    .local v7, "deSatEnabled":Z
    const/4 v10, 0x1

    .line 2566
    .local v10, "paDisabled":Z
    const-class v2, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 2582
    .local v1, "params":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;>;"
    const/4 v2, 0x0

    aget v2, v11, v2

    sget v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_DESAT:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 2583
    const/4 v7, 0x1

    .line 2588
    :goto_1
    const/4 v2, 0x0

    aget v2, v11, v2

    sget v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_DISABLE:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 2589
    const/4 v10, 0x1

    .line 2594
    :goto_2
    new-instance v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;

    const/4 v2, 0x1

    aget v2, v11, v2

    const/4 v3, 0x2

    aget v3, v11, v3

    const/4 v4, 0x3

    aget v4, v11, v4

    const/4 v5, 0x4

    aget v5, v11, v5

    const/4 v6, 0x5

    aget v6, v11, v6

    invoke-direct/range {v0 .. v6}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;-><init>(Ljava/util/EnumSet;IIIII)V

    .line 2596
    .local v0, "paConfig":Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
    iput-boolean v7, v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->isDesaturation:Z

    .line 2597
    iput-boolean v10, v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->isGlobalPADisabled:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2601
    .end local v0    # "paConfig":Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
    .end local v1    # "params":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;>;"
    .end local v7    # "deSatEnabled":Z
    .end local v10    # "paDisabled":Z
    .end local v11    # "retVal":[I
    .end local v12    # "retVal2":[I
    :catch_1
    move-exception v8

    .line 2602
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Service getPictureAdjustmentParams failed"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v13

    .line 2603
    goto/16 :goto_0

    .line 2586
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v1    # "params":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;>;"
    .restart local v7    # "deSatEnabled":Z
    .restart local v10    # "paDisabled":Z
    .restart local v11    # "retVal":[I
    .restart local v12    # "retVal2":[I
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 2592
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 2607
    .end local v1    # "params":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;>;"
    .end local v7    # "deSatEnabled":Z
    .end local v9    # "isSupported":Z
    .end local v10    # "paDisabled":Z
    .end local v11    # "retVal":[I
    .end local v12    # "retVal2":[I
    :cond_7
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instance for the display type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesnt exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v13

    .line 2608
    goto/16 :goto_0
.end method

.method public getSunlightVisibilityStrength()I
    .locals 7

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 1555
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    .line 1558
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1559
    .local v1, "isSupported":Z
    if-nez v1, :cond_1

    .line 1586
    .end local v1    # "isSupported":Z
    :cond_0
    :goto_0
    return v2

    .line 1562
    :catch_0
    move-exception v0

    .line 1563
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1566
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_1
    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSunlightVisibilityEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1567
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT is disabled"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    const/16 v2, -0x389

    goto :goto_0

    .line 1572
    :cond_2
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling getSunlightVisibilityStrength for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService;->getSunlightVisibilityStrength(I)I

    move-result v2

    .line 1574
    .local v2, "retVal":I
    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinSunlightVisibilityStrength()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1575
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service getSunlightVisibilityStrength failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 1576
    goto :goto_0

    .line 1580
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 1581
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service getSunlightVisibilityStrength failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1582
    goto :goto_0

    .line 1585
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isSupported":Z
    :cond_3
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1586
    goto/16 :goto_0
.end method

.method public isAdaptiveBacklightEnabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1785
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    .line 1788
    :try_start_0
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v1

    .line 1789
    .local v1, "isSupported":Z
    if-nez v1, :cond_1

    .line 1790
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "FEATURE_ADAPTIVE_BACKLIGHT is not supported"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    .end local v1    # "isSupported":Z
    :cond_0
    :goto_0
    return v3

    .line 1793
    :catch_0
    move-exception v0

    .line 1794
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1798
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_1
    :try_start_1
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling isAdaptiveBacklightEnabled for display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    invoke-virtual {v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->getValue()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/qti/snapdragon/sdk/display/IColorService;->isActiveFeatureOn(II)I

    move-result v2

    .line 1801
    .local v2, "retVal":I
    if-ne v2, v4, :cond_0

    .line 1802
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "isActiveFeatureOn returned retVal"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 1803
    goto :goto_0

    .line 1807
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 1808
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service isActiveFeatureOn failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1813
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isSupported":Z
    :cond_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    .locals 6
    .param p1, "feature"    # Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 587
    iget-object v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myApplication:Landroid/app/Application;

    if-nez v3, :cond_0

    .line 606
    :goto_0
    return v2

    .line 590
    :cond_0
    if-nez p1, :cond_1

    .line 591
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Feature id passed is null"

    invoke-static {v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Feature ID passed is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 594
    :cond_1
    iget-object v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 596
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.qti.service.colorservice"

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :try_start_1
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v4, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->getValue()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/qti/snapdragon/sdk/display/IColorService;->isFeatureSupported(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 603
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 605
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Service isFeatureSupported crashed"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSunlightVisibilityEnabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1746
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    .line 1749
    :try_start_0
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v1

    .line 1750
    .local v1, "isSupported":Z
    if-nez v1, :cond_1

    .line 1751
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "FEATURE_SUNLIGHT_VISIBILITY_IMPROVEMENT is not supported"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    .end local v1    # "isSupported":Z
    :cond_0
    :goto_0
    return v3

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1759
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_1
    :try_start_1
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling isSunlightVisibilityEnabled for display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    sget-object v7, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    invoke-virtual {v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->getValue()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/qti/snapdragon/sdk/display/IColorService;->isActiveFeatureOn(II)I

    move-result v2

    .line 1762
    .local v2, "retVal":I
    if-ne v2, v4, :cond_0

    .line 1764
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "isActiveFeatureOn returned retVal"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 1765
    goto :goto_0

    .line 1769
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 1770
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service isActiveFeatureOn failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1775
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isSupported":Z
    :cond_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public modifyMode(ILjava/lang/String;)I
    .locals 9
    .param p1, "modeId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    const/16 v4, -0x385

    const/16 v5, -0x3e7

    .line 1354
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v7, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v6, v6, v7

    if-eqz v6, :cond_6

    .line 1355
    const-wide/16 v0, 0x0

    .line 1358
    .local v0, "FLAG":J
    :try_start_0
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1359
    .local v3, "isSupported":Z
    const/4 v6, 0x1

    if-eq v3, v6, :cond_0

    .line 1399
    .end local v0    # "FLAG":J
    .end local v3    # "isSupported":Z
    :goto_0
    return v4

    .line 1362
    .restart local v0    # "FLAG":J
    :catch_0
    move-exception v2

    .line 1363
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1367
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "isSupported":Z
    :cond_0
    iget-boolean v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    if-nez v6, :cond_1

    .line 1368
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "You do not have permission to perform this operation"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const/16 v4, -0x387

    goto :goto_0

    .line 1373
    :cond_1
    if-gez p1, :cond_2

    .line 1374
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Mode id passed is negative"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1375
    goto :goto_0

    .line 1378
    :cond_2
    if-eqz p2, :cond_3

    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_4

    .line 1379
    :cond_3
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Mode name is missing or crossing max length"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1380
    goto :goto_0

    .line 1383
    :cond_4
    :try_start_1
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "For modifyMode- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v7, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v6, v7, p1, p2}, Lcom/qti/snapdragon/sdk/display/IColorService;->modifyModeAllFeatures(IILjava/lang/String;)I

    move-result v4

    .line 1385
    .local v4, "retVal":I
    if-nez v4, :cond_5

    .line 1386
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "modifyMode() worked"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1393
    .end local v4    # "retVal":I
    :catch_1
    move-exception v2

    .line 1394
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Service modify mode failed"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1395
    goto :goto_0

    .line 1388
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v4    # "retVal":I
    :cond_5
    :try_start_2
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service modifyMode failed with return value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v5

    .line 1389
    goto/16 :goto_0

    .line 1398
    .end local v0    # "FLAG":J
    .end local v3    # "isSupported":Z
    .end local v4    # "retVal":I
    :cond_6
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instance for the display type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesnt exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1399
    goto/16 :goto_0
.end method

.method public modifyMode(ILjava/lang/String;Ljava/util/EnumSet;I)I
    .locals 9
    .param p1, "modeId"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p4, "colorBalance"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p3, "featureList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;>;"
    const/16 v4, -0x385

    const/16 v5, -0x3e7

    .line 1094
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v7, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v6, v6, v7

    if-eqz v6, :cond_c

    .line 1095
    const-wide/16 v0, 0x0

    .line 1098
    .local v0, "FLAG":J
    :try_start_0
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1099
    .local v3, "isSupported":Z
    const/4 v6, 0x1

    if-eq v3, v6, :cond_0

    .line 1176
    .end local v0    # "FLAG":J
    .end local v3    # "isSupported":Z
    :goto_0
    return v4

    .line 1102
    .restart local v0    # "FLAG":J
    :catch_0
    move-exception v2

    .line 1103
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1107
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "isSupported":Z
    :cond_0
    iget-boolean v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    if-nez v6, :cond_1

    .line 1108
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "You do not have permission to perform this operation"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const/16 v4, -0x387

    goto :goto_0

    .line 1113
    :cond_1
    if-gez p1, :cond_2

    .line 1114
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Mode id passed is negative"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1115
    goto :goto_0

    .line 1118
    :cond_2
    if-eqz p2, :cond_3

    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_4

    .line 1119
    :cond_3
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Mode name is missing or crossing max length"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1120
    goto :goto_0

    .line 1125
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1126
    :cond_5
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "FeatureList missing"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1127
    goto :goto_0

    .line 1133
    :cond_6
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p3, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1135
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1137
    const/16 v6, -0x64

    if-lt p4, v6, :cond_8

    const/16 v6, 0x64

    if-gt p4, v6, :cond_8

    .line 1140
    sget-wide v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->BITFLAG_COLOR_BALANCE:J

    or-long/2addr v0, v6

    .line 1155
    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_a

    .line 1156
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "FeatureList is incomplete. Colorbalance missing"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1157
    goto :goto_0

    .line 1142
    :cond_8
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "Color balance value passed is out of range"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const/16 v4, -0x386

    goto :goto_0

    .line 1146
    :cond_9
    sget-object v5, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v6, "FEATURE_COLOR_BALANCE is not supported"

    invoke-static {v5, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1160
    :cond_a
    :try_start_1
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "For modifyMode- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v7, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v6, v7, p1, p2}, Lcom/qti/snapdragon/sdk/display/IColorService;->modifyModeAllFeatures(IILjava/lang/String;)I

    move-result v4

    .line 1162
    .local v4, "retVal":I
    if-nez v4, :cond_b

    .line 1163
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "modifyMode() worked"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1170
    .end local v4    # "retVal":I
    :catch_1
    move-exception v2

    .line 1171
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v7, "Service modify mode failed"

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1172
    goto/16 :goto_0

    .line 1165
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v4    # "retVal":I
    :cond_b
    :try_start_2
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service modifyMode failed with return value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v5

    .line 1166
    goto/16 :goto_0

    .line 1175
    .end local v0    # "FLAG":J
    .end local v3    # "isSupported":Z
    .end local v4    # "retVal":I
    :cond_c
    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Instance for the display type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesnt exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1176
    goto/16 :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2623
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2624
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aput-object v3, v0, v1

    .line 2625
    iput-object v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myApplication:Landroid/app/Application;

    .line 2628
    :cond_0
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceDie:Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;

    if-eqz v0, :cond_1

    .line 2630
    :try_start_0
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "de-register death notify"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceDie:Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;

    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;->mToken:Landroid/os/IBinder;

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceDie:Lcom/qti/snapdragon/sdk/display/ColorManager$ServiceDead;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2636
    :cond_1
    :goto_0
    sput-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->serviceContext:Landroid/content/Context;

    .line 2637
    sput-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->colorMgrListener:Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;

    .line 2638
    return-void

    .line 2632
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setActiveMode(I)I
    .locals 7
    .param p1, "modeId"    # I

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 824
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    .line 827
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 828
    .local v1, "isSupported":Z
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 859
    .end local v1    # "isSupported":Z
    :goto_0
    return v2

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 837
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    if-gez p1, :cond_1

    .line 838
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Mode ID provided is less than 0"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const/16 v2, -0x386

    goto :goto_0

    .line 842
    :cond_1
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling setActiveMode for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v4, v5, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->setActiveMode(II)I

    move-result v2

    .line 844
    .local v2, "retVal":I
    if-nez v2, :cond_2

    .line 845
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "SetActiveMode() worked"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 852
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service set active mode failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 854
    goto :goto_0

    .line 847
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "retVal":I
    :cond_2
    :try_start_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service setActiveMode failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v3

    .line 848
    goto :goto_0

    .line 858
    .end local v1    # "isSupported":Z
    .end local v2    # "retVal":I
    :cond_3
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 859
    goto/16 :goto_0
.end method

.method public setAdaptiveBacklightEnabled(Z)I
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/16 v3, -0x3e7

    .line 1868
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    .line 1869
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1870
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "FEATURE_ADAPTIVE_BACKLIGHT is not supported"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const/16 v2, -0x385

    .line 1897
    :goto_0
    return v2

    .line 1875
    :cond_0
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling setActiveFeatureControl for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->ON:Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    .line 1878
    .local v1, "request":Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;
    :goto_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    invoke-virtual {v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->getValue()I

    move-result v6

    invoke-virtual {v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->getValue()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lcom/qti/snapdragon/sdk/display/IColorService;->setActiveFeatureControl(III)I

    move-result v2

    .line 1881
    .local v2, "retVal":I
    if-nez v2, :cond_2

    .line 1882
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "setActiveFeatureControl() worked"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1890
    .end local v1    # "request":Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;
    .end local v2    # "retVal":I
    :catch_0
    move-exception v0

    .line 1891
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service setActiveFeatureControl failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1892
    goto :goto_0

    .line 1876
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->OFF:Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    goto :goto_1

    .line 1884
    .restart local v1    # "request":Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;
    .restart local v2    # "retVal":I
    :cond_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service setActiveFeatureControl failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 1886
    goto :goto_0

    .line 1896
    .end local v1    # "request":Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;
    .end local v2    # "retVal":I
    :cond_3
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1897
    goto/16 :goto_0
.end method

.method public setBacklightQualityLevel(Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;)I
    .locals 7
    .param p1, "level"    # Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 1656
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 1659
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v1

    .line 1660
    .local v1, "isSupported":Z
    if-nez v1, :cond_0

    .line 1661
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "FEATURE_ADAPTIVE_BACKLIGHT is not supported"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1695
    .end local v1    # "isSupported":Z
    :goto_0
    return v2

    .line 1664
    :catch_0
    move-exception v0

    .line 1665
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1666
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "FEATURE_ADAPTIVE_BACKLIGHT is not supported"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1669
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isAdaptiveBacklightEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1670
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "FEATURE_ADAPTIVE_BACKLIGHT is disabled"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const/16 v2, -0x389

    goto :goto_0

    .line 1673
    :cond_1
    if-nez p1, :cond_2

    .line 1674
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "level passed is null"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const/16 v2, -0x388

    goto :goto_0

    .line 1679
    :cond_2
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling setBacklightQualityLevel for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/ColorManager$ADAPTIVE_BACKLIGHT_QUALITY_LEVEL;->getValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/qti/snapdragon/sdk/display/IColorService;->setBacklightQualityLevel(II)I

    move-result v2

    .line 1681
    .local v2, "retVal":I
    if-nez v2, :cond_3

    .line 1682
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "setBacklightQualityLevel() worked"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1688
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 1689
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service setBacklightQualityLevel failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1690
    goto :goto_0

    .line 1684
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "retVal":I
    :cond_3
    :try_start_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service setBacklightQualityLevel failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v3

    .line 1685
    goto :goto_0

    .line 1694
    .end local v1    # "isSupported":Z
    .end local v2    # "retVal":I
    :cond_4
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1695
    goto/16 :goto_0
.end method

.method public setColorBalance(I)I
    .locals 7
    .param p1, "warmth"    # I

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 624
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 627
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 628
    .local v1, "isSupported":Z
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 658
    .end local v1    # "isSupported":Z
    :goto_0
    return v2

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 636
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    const/16 v4, -0x64

    if-lt p1, v4, :cond_1

    const/16 v4, 0x64

    if-le p1, v4, :cond_2

    .line 637
    :cond_1
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Warmth given is outside the range (-100, 100)"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/16 v2, -0x386

    goto :goto_0

    .line 641
    :cond_2
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling setColorBalance for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v4, v5, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->setColorBalance(II)I

    move-result v2

    .line 643
    .local v2, "retVal":I
    if-nez v2, :cond_3

    .line 644
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "SetColorBalance() worked"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 651
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service set color balance failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 653
    goto :goto_0

    .line 646
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "retVal":I
    :cond_3
    :try_start_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service setColorBalance failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v3

    .line 647
    goto :goto_0

    .line 657
    .end local v1    # "isSupported":Z
    .end local v2    # "retVal":I
    :cond_4
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 658
    goto/16 :goto_0
.end method

.method public setDefaultMode(I)I
    .locals 7
    .param p1, "modeId"    # I

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 1237
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 1240
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1241
    .local v1, "isSupported":Z
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 1276
    .end local v1    # "isSupported":Z
    :goto_0
    return v2

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1250
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    iget-boolean v4, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSystemApp:Z

    if-nez v4, :cond_1

    .line 1251
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "You do not have permission to perform this operation"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const/16 v2, -0x387

    goto :goto_0

    .line 1254
    :cond_1
    if-gez p1, :cond_2

    .line 1255
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "Mode ID provided is less than 0"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const/16 v2, -0x386

    goto :goto_0

    .line 1259
    :cond_2
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling setDefaultMode for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v4, v5, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->setDefaultMode(II)I

    move-result v2

    .line 1261
    .local v2, "retVal":I
    if-nez v2, :cond_3

    .line 1262
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "SetDefaultMode() worked"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1269
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 1270
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service set default mode failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1271
    goto :goto_0

    .line 1264
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "retVal":I
    :cond_3
    :try_start_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service setDefaultMode failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v3

    .line 1265
    goto :goto_0

    .line 1275
    .end local v1    # "isSupported":Z
    .end local v2    # "retVal":I
    :cond_4
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1276
    goto/16 :goto_0
.end method

.method public setMemoryColorParams(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;)I
    .locals 10
    .param p1, "memConfig"    # Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;

    .prologue
    const/16 v8, -0x385

    const/16 v0, -0x386

    const/16 v9, -0x3e7

    .line 2031
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_a

    .line 2033
    :try_start_0
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_MEMORY_COLOR_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2034
    .local v7, "isSupported":Z
    if-nez v7, :cond_1

    .line 2083
    .end local v7    # "isSupported":Z
    :cond_0
    :goto_0
    return v8

    .line 2037
    :catch_0
    move-exception v6

    .line 2038
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2041
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "isSupported":Z
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getMemoryColorType()Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2042
    :cond_2
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "MemoryColorConfig instance or the Memory color type passed is null"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    const/16 v8, -0x388

    goto :goto_0

    .line 2045
    :cond_3
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getHue()I

    move-result v1

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getMemoryColorType()Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    move-result-object v2

    sget-object v3, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->HUE:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    invoke-virtual {p0, v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinLimitMemoryColor(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;)I

    move-result v2

    if-lt v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getHue()I

    move-result v1

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getMemoryColorType()Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    move-result-object v2

    sget-object v3, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->HUE:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    invoke-virtual {p0, v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMaxLimitMemoryColor(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;)I

    move-result v2

    if-le v1, v2, :cond_5

    .line 2049
    :cond_4
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "Hue is out of range"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .line 2050
    goto :goto_0

    .line 2051
    :cond_5
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getSaturation()I

    move-result v1

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getMemoryColorType()Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    move-result-object v2

    sget-object v3, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->SATURATION:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    invoke-virtual {p0, v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinLimitMemoryColor(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;)I

    move-result v2

    if-lt v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getSaturation()I

    move-result v1

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getMemoryColorType()Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    move-result-object v2

    sget-object v3, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->SATURATION:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    invoke-virtual {p0, v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMaxLimitMemoryColor(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;)I

    move-result v2

    if-le v1, v2, :cond_7

    .line 2055
    :cond_6
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "Saturation is out of range"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .line 2056
    goto :goto_0

    .line 2057
    :cond_7
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getIntensity()I

    move-result v1

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getMemoryColorType()Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    move-result-object v2

    sget-object v3, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->INTENSITY:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    invoke-virtual {p0, v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinLimitMemoryColor(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;)I

    move-result v2

    if-lt v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getIntensity()I

    move-result v1

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getMemoryColorType()Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    move-result-object v2

    sget-object v3, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;->INTENSITY:Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;

    invoke-virtual {p0, v2, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMaxLimitMemoryColor(Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_PARAMS;)I

    move-result v2

    if-le v1, v2, :cond_9

    .line 2061
    :cond_8
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v2, "Intensity value is out of range"

    invoke-static {v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    .line 2062
    goto/16 :goto_0

    .line 2065
    :cond_9
    :try_start_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling setMemoryColorParams for display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getMemoryColorType()Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig$MEMORY_COLOR_TYPE;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getHue()I

    move-result v3

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getSaturation()I

    move-result v4

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/MemoryColorConfig;->getIntensity()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/qti/snapdragon/sdk/display/IColorService;->setMemoryColorParameters(IIIII)I

    move-result v8

    .line 2069
    .local v8, "retVal":I
    if-eqz v8, :cond_0

    .line 2070
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMemorycolorParams failed with return value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v8, v9

    .line 2071
    goto/16 :goto_0

    .line 2076
    .end local v8    # "retVal":I
    :catch_1
    move-exception v6

    .line 2077
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Service setMemoryColorParams failed"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 2078
    goto/16 :goto_0

    .line 2082
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "isSupported":Z
    :cond_a
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance for the display type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesnt exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 2083
    goto/16 :goto_0
.end method

.method public setPictureAdjustmentParams(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;)I
    .locals 13
    .param p1, "paConfig"    # Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;

    .prologue
    const/16 v11, -0x385

    const/16 v1, -0x388

    const/16 v12, -0x3e7

    const/16 v0, -0x386

    .line 2314
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v4, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_f

    .line 2316
    :try_start_0
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 2317
    .local v10, "isSupported":Z
    if-nez v10, :cond_1

    .line 2399
    .end local v10    # "isSupported":Z
    :cond_0
    :goto_0
    return v11

    .line 2320
    :catch_0
    move-exception v9

    .line 2321
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2324
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "isSupported":Z
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getParamFlags()Ljava/util/EnumSet;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2325
    :cond_2
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Parameter passed is null or the enumset of parameters is null"

    invoke-static {v0, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v1

    .line 2326
    goto :goto_0

    .line 2328
    :cond_3
    const/4 v2, 0x0

    .line 2329
    .local v2, "flag":I
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getParamFlags()Ljava/util/EnumSet;

    move-result-object v8

    .line 2331
    .local v8, "dataSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;>;"
    sget-object v3, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->HUE:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {v8, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2332
    sget v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_HUE:I

    or-int/2addr v2, v3

    .line 2333
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getHue()I

    move-result v3

    sget-object v4, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->HUE:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v4

    if-lt v3, v4, :cond_4

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getHue()I

    move-result v3

    sget-object v4, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->HUE:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMaxLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v4

    if-le v3, v4, :cond_5

    .line 2335
    :cond_4
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Hue is out of range"

    invoke-static {v1, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v0

    .line 2336
    goto :goto_0

    .line 2340
    :cond_5
    sget-object v3, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {v8, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2341
    sget v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_SAT:I

    or-int/2addr v2, v3

    .line 2342
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getSaturation()I

    move-result v3

    sget-object v4, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v4

    if-lt v3, v4, :cond_6

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getSaturation()I

    move-result v3

    sget-object v4, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMaxLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v4

    if-le v3, v4, :cond_7

    .line 2344
    :cond_6
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Saturation is out of range"

    invoke-static {v1, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v0

    .line 2345
    goto :goto_0

    .line 2349
    :cond_7
    sget-object v3, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->INTENSITY:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {v8, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2350
    sget v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_VAL:I

    or-int/2addr v2, v3

    .line 2351
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getIntensity()I

    move-result v3

    sget-object v4, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->INTENSITY:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v4

    if-lt v3, v4, :cond_8

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getIntensity()I

    move-result v3

    sget-object v4, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->INTENSITY:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMaxLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v4

    if-le v3, v4, :cond_9

    .line 2353
    :cond_8
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Intensity is out of range"

    invoke-static {v1, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v0

    .line 2354
    goto/16 :goto_0

    .line 2358
    :cond_9
    sget-object v3, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->CONTRAST:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {v8, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2359
    sget v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_CON:I

    or-int/2addr v2, v3

    .line 2360
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getContrast()I

    move-result v3

    sget-object v4, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->CONTRAST:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v4

    if-lt v3, v4, :cond_a

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getContrast()I

    move-result v3

    sget-object v4, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->CONTRAST:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMaxLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v4

    if-le v3, v4, :cond_b

    .line 2362
    :cond_a
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Contrast is out of range"

    invoke-static {v1, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v0

    .line 2363
    goto/16 :goto_0

    .line 2367
    :cond_b
    sget-object v3, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION_THRESHOLD:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {v8, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2368
    sget v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_SAT_THRESH:I

    or-int/2addr v2, v3

    .line 2369
    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getSaturationThreshold()I

    move-result v3

    sget-object v4, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION_THRESHOLD:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v4

    if-lt v3, v4, :cond_c

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getSaturationThreshold()I

    move-result v3

    sget-object v4, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION_THRESHOLD:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMaxLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v4

    if-le v3, v4, :cond_d

    .line 2372
    :cond_c
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "Saturation threshold is out of range"

    invoke-static {v1, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v0

    .line 2373
    goto/16 :goto_0

    .line 2376
    :cond_d
    if-nez v2, :cond_e

    .line 2377
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v3, "The enumset passed is empty"

    invoke-static {v0, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v1

    .line 2378
    goto/16 :goto_0

    .line 2381
    :cond_e
    :try_start_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setPAParameters for display "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getHue()I

    move-result v3

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getSaturation()I

    move-result v4

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getIntensity()I

    move-result v5

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getContrast()I

    move-result v6

    invoke-virtual {p1}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getSaturationThreshold()I

    move-result v7

    invoke-interface/range {v0 .. v7}, Lcom/qti/snapdragon/sdk/display/IColorService;->setPAParameters(IIIIIII)I

    move-result v11

    .line 2384
    .local v11, "retVal":I
    if-eqz v11, :cond_0

    .line 2385
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPAParameters failed with return value "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v11, v12

    .line 2386
    goto/16 :goto_0

    .line 2392
    .end local v11    # "retVal":I
    :catch_1
    move-exception v9

    .line 2393
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Service setPAParameters failed"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v12

    .line 2394
    goto/16 :goto_0

    .line 2398
    .end local v2    # "flag":I
    .end local v8    # "dataSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;>;"
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v10    # "isSupported":Z
    :cond_f
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance for the display type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " doesnt exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v12

    .line 2399
    goto/16 :goto_0
.end method

.method public setPictureAdjustmentSaturationThreshold(I)I
    .locals 12
    .param p1, "thresholdVal"    # I

    .prologue
    const/16 v10, -0x385

    const/16 v11, -0x3e7

    .line 2412
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 2414
    :try_start_0
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2415
    .local v9, "isSupported":Z
    if-nez v9, :cond_1

    .line 2446
    .end local v9    # "isSupported":Z
    :cond_0
    :goto_0
    return v10

    .line 2418
    :catch_0
    move-exception v8

    .line 2419
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 2422
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "isSupported":Z
    :cond_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION_THRESHOLD:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v0

    if-lt p1, v0, :cond_2

    sget-object v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;->SATURATION_THRESHOLD:Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-virtual {p0, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMaxLimitPictureAdjustment(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;)I

    move-result v0

    if-le p1, v0, :cond_3

    .line 2424
    :cond_2
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Saturation threshold is out of range"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    const/16 v10, -0x386

    goto :goto_0

    .line 2428
    :cond_3
    :try_start_1
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling setPictureAdjustmentSaturationThreshold for display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v1, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    sget v2, Lcom/qti/snapdragon/sdk/display/ColorManager;->PA_GLOBAL_SAT_THRESH:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, p1

    invoke-interface/range {v0 .. v7}, Lcom/qti/snapdragon/sdk/display/IColorService;->setPAParameters(IIIIIII)I

    move-result v10

    .line 2431
    .local v10, "retVal":I
    if-eqz v10, :cond_0

    .line 2432
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPictureAdjustmentSaturationThreshold failed with return value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v10, v11

    .line 2433
    goto :goto_0

    .line 2439
    .end local v10    # "retVal":I
    :catch_1
    move-exception v8

    .line 2440
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v1, "Service setPictureAdjustmentSaturationThreshold failed"

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    .line 2441
    goto :goto_0

    .line 2445
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v9    # "isSupported":Z
    :cond_4
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance for the display type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesnt exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v11

    .line 2446
    goto/16 :goto_0
.end method

.method public setSunlightVisibilityEnabled(Z)I
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/16 v3, -0x3e7

    .line 1827
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    .line 1828
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1829
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT is not supported"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    const/16 v2, -0x385

    .line 1856
    :goto_0
    return v2

    .line 1834
    :cond_0
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling setActiveFeatureControl for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->ON:Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    .line 1837
    .local v1, "request":Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;
    :goto_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    sget-object v6, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;

    invoke-virtual {v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$ACTIVE_FEATURE_TYPE;->getValue()I

    move-result v6

    invoke-virtual {v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->getValue()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lcom/qti/snapdragon/sdk/display/IColorService;->setActiveFeatureControl(III)I

    move-result v2

    .line 1840
    .local v2, "retVal":I
    if-nez v2, :cond_2

    .line 1841
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "setActiveFeatureControl() worked"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1849
    .end local v1    # "request":Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;
    .end local v2    # "retVal":I
    :catch_0
    move-exception v0

    .line 1850
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service setActiveFeatureControl failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1851
    goto :goto_0

    .line 1835
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;->OFF:Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;

    goto :goto_1

    .line 1843
    .restart local v1    # "request":Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;
    .restart local v2    # "retVal":I
    :cond_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service setActiveFeatureControl failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 1845
    goto :goto_0

    .line 1855
    .end local v1    # "request":Lcom/qti/snapdragon/sdk/display/ColorManager$CONTROL_REQUEST_TYPE;
    .end local v2    # "retVal":I
    :cond_3
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1856
    goto/16 :goto_0
.end method

.method public setSunlightVisibilityStrength(I)I
    .locals 7
    .param p1, "strengthVal"    # I

    .prologue
    const/16 v2, -0x385

    const/16 v3, -0x3e7

    .line 1497
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->myInstance:[Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_5

    .line 1500
    :try_start_0
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {p0, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isFeatureSupported(Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1501
    .local v1, "isSupported":Z
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 1541
    .end local v1    # "isSupported":Z
    :goto_0
    return v2

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1508
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "isSupported":Z
    :cond_0
    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->isSunlightVisibilityEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1509
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v4, "FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT is disabled"

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const/16 v2, -0x389

    goto :goto_0

    .line 1513
    :cond_1
    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinSunlightVisibilityStrength()I

    move-result v4

    if-lt p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMaxSunlightVisibilityStrength()I

    move-result v4

    if-le p1, v4, :cond_3

    .line 1515
    :cond_2
    sget-object v3, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strengthVal given is outside the range ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMinSunlightVisibilityStrength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getMaxSunlightVisibilityStrength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const/16 v2, -0x386

    goto :goto_0

    .line 1521
    :cond_3
    :try_start_1
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling setSVI for display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->service:Lcom/qti/snapdragon/sdk/display/IColorService;

    iget v5, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-interface {v4, v5, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->setSunlightVisibilityStrength(II)I

    move-result v2

    .line 1524
    .local v2, "retVal":I
    if-nez v2, :cond_4

    .line 1525
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "setSunlightVisibilityStrength() worked"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1534
    .end local v2    # "retVal":I
    :catch_1
    move-exception v0

    .line 1535
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    const-string v5, "Service setSunlightVisibilityStrength failed"

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1536
    goto/16 :goto_0

    .line 1527
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "retVal":I
    :cond_4
    :try_start_2
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service setSunlightVisibilityStrength failed with return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v3

    .line 1530
    goto/16 :goto_0

    .line 1540
    .end local v1    # "isSupported":Z
    .end local v2    # "retVal":I
    :cond_5
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instance for the display type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/snapdragon/sdk/display/ColorManager;->displayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesnt exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1541
    goto/16 :goto_0
.end method
