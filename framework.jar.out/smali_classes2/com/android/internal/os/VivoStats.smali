.class public final Lcom/android/internal/os/VivoStats;
.super Ljava/lang/Object;
.source "VivoStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/VivoStats$UidCot;,
        Lcom/android/internal/os/VivoStats$AppInfo;,
        Lcom/android/internal/os/VivoStats$NoteHandler;
    }
.end annotation


# static fields
.field private static final ARGS_DISCONNECT_END:I = 0x675

.field private static final ARGS_GET_ALL_STATE:I = -0x7b

.field private static final ARGS_GET_CONFIG:I = 0x676

.field private static final ARGS_NOTE_ALL_STATE:I = 0x677

.field private static final ARGS_RECONNECT:I = 0x674

.field private static final ARGS_SET_VERSION:I = 0x673

.field private static final CONFIG_DEBUG:I = 0x1d

.field private static DEBUG:Z = false

.field private static final MSG_ACTIVITY:I = 0xe

.field private static final MSG_ACTIVITY_PAUSED:I = 0x5

.field private static final MSG_ACTIVITY_RESUMED:I = 0x4

.field private static final MSG_AP_STATE:I = 0x1

.field private static final MSG_AUDIO_STATE:I = 0xc

.field private static final MSG_BATTERY_LEVEL:I = 0xa

.field private static final MSG_BATTERY_PLUG:I = 0x9

.field private static final MSG_BRIGHTNESS:I = 0x2

.field private static final MSG_DOWNLOAD_STATE:I = 0xd

.field private static final MSG_GPS_STATE:I = 0xb

.field private static final MSG_HAS_CONNECT:I = 0x2710

.field private static final MSG_INPUT:I = 0x11

.field private static final MSG_MAX:I = 0x1e

.field private static final MSG_MEDIA:I = 0xf

.field private static final MSG_NOTE_GET_LIST:I = 0x13

.field private static final MSG_RECORD_STATE:I = 0x10

.field private static final MSG_REMOTE_REINIT:I = 0x2711

.field private static final MSG_REMOTE_STATE_INIT:I = 0x2712

.field private static final MSG_REMOVE_UID:I = 0x3

.field private static final MSG_RESET:I = 0x0

.field private static final MSG_SCREEN_STATE:I = 0x8

.field private static final MSG_SET_GET:I = 0x2713

.field private static final MSG_SHUTDOWN:I = 0x7

.field private static final MSG_WRITE_DATA:I = 0x6

.field private static final SERVICE_NAME:Ljava/lang/String; = "vivostats"

.field private static final TAG:Ljava/lang/String; = "VivoStats"

.field private static final TRANSACTION_GET_DISPLAY:I = 0x4

.field private static final TRANSACTION_GET_LIST:I = 0x7

.field private static final TRAN_CONFIG:I = 0x3

.field private static final TRAN_NOTE:I = 0x1

.field private static final TRAN_NOTE_ACTIVITY:I = 0x2

.field public static densityVer:I

.field public static mActivity_name:Ljava/lang/String;

.field private static mApState:I

.field private static mBrightness:I

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

.field private static mLastUid:I

.field private static mLevel:I

.field private static mPlugType:I

.field private static mRemote:Landroid/os/IBinder;

.field private static mResList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/VivoStats$UidCot;",
            ">;"
        }
    .end annotation
.end field

.field private static mReset:Z

.field private static mRestart:Z

.field private static mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private static mTState:Z

.field private static mTryConnect:I

.field private static mVersionCode:I

.field private static final run:[Z


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private final mAppInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/VivoStats$AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 22
    const-string v0, "/"

    sput-object v0, Lcom/android/internal/os/VivoStats;->mActivity_name:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    .line 50
    const/16 v0, 0x1e

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    .line 72
    sput v1, Lcom/android/internal/os/VivoStats;->mLevel:I

    .line 73
    sput v1, Lcom/android/internal/os/VivoStats;->mApState:I

    .line 74
    sput v1, Lcom/android/internal/os/VivoStats;->mLastUid:I

    .line 75
    sput v1, Lcom/android/internal/os/VivoStats;->mPlugType:I

    .line 76
    sput v1, Lcom/android/internal/os/VivoStats;->mBrightness:I

    .line 77
    sput-boolean v2, Lcom/android/internal/os/VivoStats;->mReset:Z

    .line 78
    sput-object v3, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    .line 79
    const/16 v0, 0xa

    sput v0, Lcom/android/internal/os/VivoStats;->mTryConnect:I

    .line 80
    sput v2, Lcom/android/internal/os/VivoStats;->mVersionCode:I

    .line 81
    sput-boolean v2, Lcom/android/internal/os/VivoStats;->mTState:Z

    .line 82
    sput v2, Lcom/android/internal/os/VivoStats;->densityVer:I

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/os/VivoStats;->mResList:Landroid/util/SparseArray;

    .line 279
    sput-object v3, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    .line 479
    sput-boolean v2, Lcom/android/internal/os/VivoStats;->mRestart:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/VivoStats;->mAppInfo:Landroid/util/SparseArray;

    .line 280
    new-instance v0, Lcom/android/internal/os/VivoStats$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/VivoStats$1;-><init>(Lcom/android/internal/os/VivoStats;)V

    iput-object v0, p0, Lcom/android/internal/os/VivoStats;->conn:Landroid/content/ServiceConnection;

    .line 502
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/VivoStats;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/VivoStats;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/VivoStats;->notePEM(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/os/VivoStats;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/VivoStats;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/os/VivoStats;->connectPEM()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/os/VivoStats;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/VivoStats;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/os/VivoStats;->getConfig(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/internal/os/VivoStats;->mResList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/os/VivoStats;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/VivoStats;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/VivoStats;->toTState(III)V

    return-void
.end method

.method static synthetic access$200()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Landroid/os/IBinder;

    .prologue
    .line 21
    sput-object p0, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->mTState:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 21
    sput-boolean p0, Lcom/android/internal/os/VivoStats;->mTState:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/os/VivoStats;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/VivoStats;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/os/VivoStats;->noteTState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/os/VivoStats;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/VivoStats;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/os/VivoStats;->noteAllState()V

    return-void
.end method

.method static synthetic access$600()Lcom/android/internal/os/VivoStats$NoteHandler;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/os/VivoStats;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/VivoStats;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/os/VivoStats;->getAllState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/os/VivoStats;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/VivoStats;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/VivoStats;->notePEM(III)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/os/VivoStats;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/VivoStats;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/os/VivoStats;->disconnectPEM()V

    return-void
.end method

.method public static checkIsReset(IZ)Z
    .locals 3
    .param p0, "level"    # I
    .param p1, "reset"    # Z

    .prologue
    .line 481
    const-string v0, "rom_2.5"

    const-string v1, "ro.vivo.rom.version"

    const-string v2, "rom_2.0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 482
    const/4 p1, 0x0

    .line 483
    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    sget-boolean v0, Lcom/android/internal/os/VivoStats;->mRestart:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x63

    if-lt p0, v0, :cond_1

    .line 484
    :cond_0
    const/4 p1, 0x1

    .line 486
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/VivoStats;->mRestart:Z

    .line 488
    :cond_2
    return p1
.end method

.method private connectPEM()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xbb8

    const/16 v8, 0x2711

    .line 309
    const-string v3, "VivoStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectPEM, mTryConnect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/os/VivoStats;->mTryConnect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget v3, Lcom/android/internal/os/VivoStats;->mTryConnect:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/internal/os/VivoStats;->mTryConnect:I

    .line 311
    sget v3, Lcom/android/internal/os/VivoStats;->mTryConnect:I

    if-gez v3, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.vivo.pem.PemService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.vivo.pem"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    sget-object v3, Lcom/android/internal/os/VivoStats;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/os/VivoStats;->conn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 316
    .local v2, "result":Z
    const-string v3, "VivoStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-nez v2, :cond_0

    sget-object v3, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    const/16 v4, 0x2711

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VivoStats"

    const-string v4, "bindService:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    sget-object v3, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v3, v8, v10, v11}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private disconnectPEM()V
    .locals 3

    .prologue
    .line 298
    const-string v1, "VivoStats"

    const-string v2, "disconnectPEM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :try_start_0
    sget-object v1, Lcom/android/internal/os/VivoStats;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/os/VivoStats;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 301
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    .line 302
    const/16 v1, 0xa

    sput v1, Lcom/android/internal/os/VivoStats;->mTryConnect:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VivoStats"

    const-string v2, "unbindService:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doGetList(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 509
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 511
    .local v3, "resList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/VivoStats$UidCot;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 512
    .local v0, "NU":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 513
    new-instance v5, Lcom/android/internal/os/VivoStats$UidCot;

    invoke-direct {v5}, Lcom/android/internal/os/VivoStats$UidCot;-><init>()V

    .line 514
    .local v5, "u":Lcom/android/internal/os/VivoStats$UidCot;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/os/VivoStats$UidCot;->uid:I

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/os/VivoStats$UidCot;->density:I

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/os/VivoStats$UidCot;->pkg:[Ljava/lang/String;

    .line 517
    iget v6, v5, Lcom/android/internal/os/VivoStats$UidCot;->uid:I

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    .end local v5    # "u":Lcom/android/internal/os/VivoStats$UidCot;
    :cond_0
    sget-object v4, Lcom/android/internal/os/VivoStats;->mResList:Landroid/util/SparseArray;

    .line 520
    .local v4, "tmp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/VivoStats$UidCot;>;"
    sput-object v3, Lcom/android/internal/os/VivoStats;->mResList:Landroid/util/SparseArray;

    .line 521
    sget v6, Lcom/android/internal/os/VivoStats;->densityVer:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/internal/os/VivoStats;->densityVer:I

    .line 522
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 523
    const/4 v4, 0x0

    .line 524
    const-string v6, "VivoStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doGetList update densityVer = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/internal/os/VivoStats;->densityVer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v0    # "NU":I
    .end local v2    # "i":I
    .end local v4    # "tmp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/VivoStats$UidCot;>;"
    :goto_1
    return-void

    .line 525
    :catch_0
    move-exception v1

    .line 526
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "VivoStats"

    const-string v7, "doGetList error:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getAllState()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 406
    new-array v3, v2, [I

    .line 407
    .local v3, "aUid":[I
    const/16 v10, 0x24

    aput v10, v3, v9

    .line 408
    aget v10, v3, v9

    new-array v6, v10, [J

    .line 409
    .local v6, "gpuT":[J
    aget v10, v3, v9

    new-array v8, v10, [J

    .line 410
    .local v8, "screenT":[J
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 411
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 413
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v10, "com.vivo.pem.IPemr"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 414
    const/16 v10, -0x7b

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 416
    array-length v10, v6

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    array-length v10, v8

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v10, -0x1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v10, -0x1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    sget-object v10, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-interface {v10, v11, v0, v1, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 423
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readLongArray([J)V

    .line 424
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->readLongArray([J)V

    .line 425
    iget-object v9, p0, Lcom/android/internal/os/VivoStats;->mAppInfo:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 426
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/4 v9, 0x0

    aget v9, v3, v9

    if-ge v7, v9, :cond_0

    .line 427
    aget-wide v10, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_2

    .line 443
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 446
    .end local v2    # "_result":Z
    .end local v7    # "i":I
    :goto_2
    return-void

    :cond_1
    move v2, v9

    .line 422
    goto :goto_0

    .line 428
    .restart local v2    # "_result":Z
    .restart local v7    # "i":I
    :cond_2
    :try_start_1
    new-instance v4, Lcom/android/internal/os/VivoStats$AppInfo;

    invoke-direct {v4, p0}, Lcom/android/internal/os/VivoStats$AppInfo;-><init>(Lcom/android/internal/os/VivoStats;)V

    .line 429
    .local v4, "app":Lcom/android/internal/os/VivoStats$AppInfo;
    iget-object v9, v4, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v10, 0x0

    aget-wide v12, v6, v7

    long-to-int v11, v12

    aput v11, v9, v10

    .line 430
    iget-object v9, v4, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v10, 0x1

    aget-wide v12, v8, v7

    long-to-int v11, v12

    and-int/lit16 v11, v11, 0xff

    aput v11, v9, v10

    .line 431
    aget-wide v10, v8, v7

    const-wide/16 v12, 0x100

    div-long/2addr v10, v12

    aput-wide v10, v8, v7

    .line 432
    iget-object v9, v4, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v10, 0x4

    aget-wide v12, v8, v7

    long-to-int v11, v12

    and-int/lit16 v11, v11, 0xff

    aput v11, v9, v10

    .line 433
    aget-wide v10, v8, v7

    const-wide/16 v12, 0x100

    div-long/2addr v10, v12

    aput-wide v10, v8, v7

    .line 434
    iget-object v9, v4, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v10, 0x2

    aget-wide v12, v8, v7

    long-to-int v11, v12

    and-int/lit16 v11, v11, 0xff

    aput v11, v9, v10

    .line 435
    aget-wide v10, v8, v7

    const-wide/16 v12, 0x100

    div-long/2addr v10, v12

    aput-wide v10, v8, v7

    .line 436
    iget-object v9, v4, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v10, 0x3

    aget-wide v12, v8, v7

    long-to-int v11, v12

    and-int/lit16 v11, v11, 0xff

    aput v11, v9, v10

    .line 437
    iget-object v9, p0, Lcom/android/internal/os/VivoStats;->mAppInfo:Landroid/util/SparseArray;

    iget-object v10, v4, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v9, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    sget-boolean v9, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "VivoStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAllState, uid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", audio = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", record = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", gps = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", media = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 440
    .end local v2    # "_result":Z
    .end local v4    # "app":Lcom/android/internal/os/VivoStats$AppInfo;
    .end local v7    # "i":I
    :catch_0
    move-exception v5

    .line 441
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "VivoStats"

    const-string v10, "getAllState:"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_2

    .line 443
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v9
.end method

.method private getConfig(Landroid/os/IBinder;)Z
    .locals 11
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 346
    const/16 v8, 0x1e

    new-array v0, v8, [I

    .line 347
    .local v0, "args":[I
    const/4 v5, 0x0

    .line 348
    .local v5, "result":Z
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 349
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 351
    .local v4, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v8, "com.vivo.pem.IPemr"

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    if-nez v0, :cond_0

    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    :goto_0
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-interface {p1, v8, v1, v4, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 355
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 356
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v5, v6

    .line 357
    :goto_1
    if-eqz v5, :cond_4

    .line 358
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 359
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget-object v8, Lcom/android/internal/os/VivoStats;->run:[Z

    array-length v8, v8

    if-ge v3, v8, :cond_3

    .line 360
    sget-object v9, Lcom/android/internal/os/VivoStats;->run:[Z

    aget v8, v0, v3

    if-lez v8, :cond_2

    move v8, v6

    :goto_3
    aput-boolean v8, v9, v3

    .line 361
    const-string v8, "VivoStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "run["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 353
    .end local v3    # "i":I
    :cond_0
    array-length v8, v0

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v2

    .line 366
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "VivoStats"

    const-string v7, "getConfig:"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    return v5

    :cond_1
    move v5, v7

    .line 356
    goto :goto_1

    .restart local v3    # "i":I
    :cond_2
    move v8, v7

    .line 360
    goto :goto_3

    .line 363
    :cond_3
    const/16 v8, 0x1d

    :try_start_2
    aget v8, v0, v8

    if-lez v8, :cond_5

    :goto_5
    sput-boolean v6, Lcom/android/internal/os/VivoStats;->DEBUG:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    .restart local v3    # "i":I
    :cond_5
    move v6, v7

    .line 363
    goto :goto_5

    .line 368
    .end local v3    # "i":I
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v6
.end method

.method public static note(III)I
    .locals 6
    .param p0, "what"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    const/16 v5, 0x2713

    const/16 v4, 0x2711

    .line 106
    sget-boolean v1, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "note what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", arg1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", arg2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    const/16 v1, 0x1e

    if-ge p0, v1, :cond_3

    .line 108
    sget-object v1, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v2, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 125
    :cond_2
    :goto_0
    return v0

    .line 111
    :cond_3
    if-ne p0, v4, :cond_5

    .line 112
    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v1, v4}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendEmptyMessage(I)Z

    .line 125
    :cond_4
    :goto_1
    const/16 v0, 0x7b

    goto :goto_0

    .line 113
    :cond_5
    if-ne p0, v5, :cond_4

    .line 114
    const/16 v1, 0x673

    if-ne p1, v1, :cond_6

    .line 115
    sget v0, Lcom/android/internal/os/VivoStats;->mVersionCode:I

    .line 116
    .local v0, "versionCode":I
    sput p2, Lcom/android/internal/os/VivoStats;->mVersionCode:I

    .line 117
    sget-object v1, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    if-nez v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 119
    .end local v0    # "versionCode":I
    :cond_6
    const/16 v1, 0x674

    if-eq p1, v1, :cond_7

    const/16 v1, 0x676

    if-eq p1, v1, :cond_7

    const/16 v1, 0x677

    if-ne p1, v1, :cond_8

    .line 120
    :cond_7
    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v2, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v2, v5, p1, p2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 121
    :cond_8
    const/16 v1, 0x675

    if-ne p1, v1, :cond_4

    .line 122
    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private noteAllState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x2712

    .line 336
    sget v0, Lcom/android/internal/os/VivoStats;->mPlugType:I

    if-ltz v0, :cond_0

    const/16 v0, 0x9

    sget v3, Lcom/android/internal/os/VivoStats;->mPlugType:I

    invoke-direct {p0, v4, v0, v3}, Lcom/android/internal/os/VivoStats;->notePEM(III)V

    .line 337
    :cond_0
    sget v0, Lcom/android/internal/os/VivoStats;->mLevel:I

    if-ltz v0, :cond_1

    const/16 v0, 0xa

    sget v3, Lcom/android/internal/os/VivoStats;->mLevel:I

    invoke-direct {p0, v4, v0, v3}, Lcom/android/internal/os/VivoStats;->notePEM(III)V

    .line 338
    :cond_1
    const/16 v3, 0x8

    sget-object v0, Lcom/android/internal/os/VivoStats;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-direct {p0, v4, v3, v0}, Lcom/android/internal/os/VivoStats;->notePEM(III)V

    .line 339
    sget v0, Lcom/android/internal/os/VivoStats;->mBrightness:I

    if-lez v0, :cond_2

    const/4 v0, 0x2

    sget v3, Lcom/android/internal/os/VivoStats;->mBrightness:I

    invoke-direct {p0, v4, v0, v3}, Lcom/android/internal/os/VivoStats;->notePEM(III)V

    .line 340
    :cond_2
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->mReset:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v4, v2, v2}, Lcom/android/internal/os/VivoStats;->notePEM(III)V

    sput-boolean v2, Lcom/android/internal/os/VivoStats;->mReset:Z

    .line 341
    :cond_3
    sget v0, Lcom/android/internal/os/VivoStats;->mApState:I

    if-ltz v0, :cond_4

    sget v0, Lcom/android/internal/os/VivoStats;->mApState:I

    invoke-direct {p0, v4, v1, v0}, Lcom/android/internal/os/VivoStats;->notePEM(III)V

    .line 342
    :cond_4
    sget v0, Lcom/android/internal/os/VivoStats;->mLastUid:I

    if-ltz v0, :cond_5

    sget v0, Lcom/android/internal/os/VivoStats;->mLastUid:I

    sget-object v1, Lcom/android/internal/os/VivoStats;->mActivity_name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/VivoStats;->notePEM(ILjava/lang/String;)V

    .line 343
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 338
    goto :goto_0
.end method

.method private notePEM(III)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 449
    sget-object v2, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 462
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 452
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.vivo.pem.IPemr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    sget-object v2, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "VivoStats"

    const-string v3, "notePEM:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private notePEM(ILjava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 465
    sget-object v2, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 477
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 468
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.vivo.pem.IPemr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    sget-object v2, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 472
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "VivoStats"

    const-string v3, "notePEM:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private noteTState()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/VivoStats;->mAppInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 326
    iget-object v2, p0, Lcom/android/internal/os/VivoStats;->mAppInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/VivoStats$AppInfo;

    .line 327
    .local v0, "app":Lcom/android/internal/os/VivoStats$AppInfo;
    iget-object v2, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v2, v2, v6

    if-lez v2, :cond_0

    const/16 v2, 0xc

    iget-object v3, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v3, v3, v6

    iget-object v4, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/os/VivoStats;->notePEM(III)V

    .line 328
    :cond_0
    iget-object v2, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v2, v2, v9

    if-lez v2, :cond_1

    const/16 v2, 0x10

    iget-object v3, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v3, v3, v9

    iget-object v4, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/os/VivoStats;->notePEM(III)V

    .line 329
    :cond_1
    iget-object v2, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v2, v2, v8

    if-lez v2, :cond_2

    const/16 v2, 0xf

    iget-object v3, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v3, v3, v8

    iget-object v4, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/os/VivoStats;->notePEM(III)V

    .line 330
    :cond_2
    iget-object v2, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v2, v2, v7

    if-lez v2, :cond_3

    const/16 v2, 0xb

    iget-object v3, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v3, v3, v7

    iget-object v4, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/os/VivoStats;->notePEM(III)V

    .line 325
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "app":Lcom/android/internal/os/VivoStats$AppInfo;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/os/VivoStats;->mAppInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 333
    return-void
.end method

.method public static onChangeCfg(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)V
    .locals 6
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "acInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 554
    :try_start_0
    sget-object v3, Lcom/android/internal/os/VivoStats;->mResList:Landroid/util/SparseArray;

    iget v4, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/VivoStats$UidCot;

    .line 555
    .local v2, "u":Lcom/android/internal/os/VivoStats$UidCot;
    if-eqz v2, :cond_0

    .line 556
    iget-object v3, v2, Lcom/android/internal/os/VivoStats$UidCot;->pkg:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 557
    iget v3, v2, Lcom/android/internal/os/VivoStats$UidCot;->density:I

    iput v3, p0, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    .line 567
    :cond_0
    :goto_0
    sget v3, Lcom/android/internal/os/VivoStats;->densityVer:I

    iput v3, p0, Landroid/content/pm/ApplicationInfo;->densityVer:I

    .line 568
    const-string v3, "VivoStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeCfg density = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ver = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/content/pm/ApplicationInfo;->densityVer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .end local v2    # "u":Lcom/android/internal/os/VivoStats$UidCot;
    :goto_1
    return-void

    .line 559
    .restart local v2    # "u":Lcom/android/internal/os/VivoStats$UidCot;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, v2, Lcom/android/internal/os/VivoStats$UidCot;->pkg:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 560
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/os/VivoStats$UidCot;->pkg:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 561
    iget v3, v2, Lcom/android/internal/os/VivoStats$UidCot;->density:I

    iput v3, p0, Landroid/content/pm/ApplicationInfo;->overrideDensity:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    .end local v1    # "i":I
    .end local v2    # "u":Lcom/android/internal/os/VivoStats$UidCot;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VivoStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeCfg error on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "u":Lcom/android/internal/os/VivoStats$UidCot;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private toTState(III)V
    .locals 9
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 390
    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    invoke-direct {p0, p2, p3, v8}, Lcom/android/internal/os/VivoStats;->toTStateSg(III)V

    .line 391
    :cond_0
    const/16 v2, 0xf

    if-ne p1, v2, :cond_1

    invoke-direct {p0, p2, p3, v7}, Lcom/android/internal/os/VivoStats;->toTStateSg(III)V

    .line 392
    :cond_1
    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, p2, p3, v2}, Lcom/android/internal/os/VivoStats;->toTStateSg(III)V

    .line 393
    :cond_2
    const/16 v2, 0xc

    if-ne p1, v2, :cond_4

    .line 394
    const/16 v2, 0x64

    if-le p2, v2, :cond_3

    .line 395
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/VivoStats;->mAppInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 396
    iget-object v2, p0, Lcom/android/internal/os/VivoStats;->mAppInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/VivoStats$AppInfo;

    .line 397
    .local v0, "app":Lcom/android/internal/os/VivoStats$AppInfo;
    iget-object v2, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    iget-object v3, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    iget-object v4, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v5, 0x0

    aput v5, v4, v8

    aput v5, v3, v6

    aput v5, v2, v7

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "app":Lcom/android/internal/os/VivoStats$AppInfo;
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0, p2, p3, v6}, Lcom/android/internal/os/VivoStats;->toTStateSg(III)V

    .line 403
    :cond_4
    return-void
.end method

.method private toTStateSg(III)V
    .locals 3
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "idx"    # I

    .prologue
    .line 375
    const/16 v1, 0x3e8

    if-gt p2, v1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/VivoStats;->mAppInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/VivoStats$AppInfo;

    .line 377
    .local v0, "app":Lcom/android/internal/os/VivoStats$AppInfo;
    if-lez p1, :cond_3

    .line 378
    if-nez v0, :cond_2

    .line 379
    new-instance v0, Lcom/android/internal/os/VivoStats$AppInfo;

    .end local v0    # "app":Lcom/android/internal/os/VivoStats$AppInfo;
    invoke-direct {v0, p0}, Lcom/android/internal/os/VivoStats$AppInfo;-><init>(Lcom/android/internal/os/VivoStats;)V

    .line 380
    .restart local v0    # "app":Lcom/android/internal/os/VivoStats$AppInfo;
    iget-object v1, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 381
    iget-object v1, p0, Lcom/android/internal/os/VivoStats;->mAppInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    :cond_2
    iget-object v1, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v2, v1, p3

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p3

    goto :goto_0

    .line 385
    :cond_3
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v1, v1, p3

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/os/VivoStats$AppInfo;->ss:[I

    aget v2, v1, p3

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p3

    goto :goto_0
.end method


# virtual methods
.method public getListRemote(I)V
    .locals 8
    .param p1, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 531
    sget-object v3, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    if-nez v3, :cond_0

    .line 532
    sget-object v3, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v4, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    const/16 v5, 0x13

    invoke-virtual {v4, v5, v6, v6}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 550
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.vivo.pem.IPemr"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    sget-object v3, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/os/VivoStats;->doGetList(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 544
    :catch_0
    move-exception v2

    .line 545
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "VivoStats"

    const-string v4, "getListRemote error:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 547
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public noteAPState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 99
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteAPState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    :cond_1
    sput p1, Lcom/android/internal/os/VivoStats;->mApState:I

    .line 103
    return-void
.end method

.method public noteActivityPausedLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x5

    .line 214
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteActivityPausedLocked uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    :cond_1
    return-void
.end method

.method public noteActivityResumedLocked(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/16 v5, 0xe

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 205
    sget v0, Lcom/android/internal/os/VivoStats;->mLastUid:I

    if-eq v0, p1, :cond_1

    .line 206
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteActivityResumedLocked uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/os/VivoStats;->mLastUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    sput p1, Lcom/android/internal/os/VivoStats;->mLastUid:I

    .line 208
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v1, v4, p1, v3}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    :cond_1
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v2, Lcom/android/internal/os/VivoStats;->mActivity_name:Ljava/lang/String;

    invoke-virtual {v1, v5, p1, v3, v2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    :cond_2
    return-void
.end method

.method public noteAudio(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    const/16 v3, 0xc

    .line 135
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteAudio state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v1, v3, p2, p1}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    :cond_1
    return-void
.end method

.method public noteBatteryState(II)V
    .locals 4
    .param p1, "plugType"    # I
    .param p2, "level"    # I

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x9

    .line 179
    sget v0, Lcom/android/internal/os/VivoStats;->mPlugType:I

    if-eq v0, p1, :cond_1

    .line 180
    sput p1, Lcom/android/internal/os/VivoStats;->mPlugType:I

    .line 181
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    :cond_0
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteBatteryState plugType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    sget v0, Lcom/android/internal/os/VivoStats;->mLevel:I

    if-eq v0, p2, :cond_3

    .line 186
    sput p2, Lcom/android/internal/os/VivoStats;->mLevel:I

    .line 187
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    :cond_2
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteBatteryState plugType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_3
    return-void
.end method

.method public noteGpsState(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "uid"    # I

    .prologue
    const/16 v3, 0xb

    .line 172
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteGpsState start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    :cond_1
    return-void
.end method

.method noteReadSummary()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/VivoStats;->mRestart:Z

    .line 225
    return-void
.end method

.method public noteRemoveUid(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x3

    .line 166
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteRemoveUid uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    :cond_1
    return-void
.end method

.method noteReset(Z)Z
    .locals 5
    .param p1, "detachIfReset"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset detachIfReset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v4, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v2, v0, v2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    :cond_1
    sget-object v0, Lcom/android/internal/os/VivoStats;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_2

    sput-boolean v1, Lcom/android/internal/os/VivoStats;->mReset:Z

    .line 201
    :cond_2
    return v1

    :cond_3
    move v0, v2

    .line 199
    goto :goto_0
.end method

.method public noteResetAudio()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 147
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    const-string v1, "noteResetAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    :cond_1
    return-void
.end method

.method public noteResetVideo()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    .line 141
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    const-string v1, "noteResetVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    :cond_1
    return-void
.end method

.method public noteScreenBrightness(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    const/4 v3, 0x2

    .line 159
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteScreenBrightness brightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    :cond_1
    sput p1, Lcom/android/internal/os/VivoStats;->mBrightness:I

    .line 163
    return-void
.end method

.method public noteScreenState(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "oldState"    # I

    .prologue
    const/16 v3, 0x8

    .line 153
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteScreenState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    :cond_1
    return-void
.end method

.method public noteShutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 193
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    const-string v1, "noteShutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    :cond_1
    return-void
.end method

.method public noteVideo(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    const/16 v3, 0xf

    .line 129
    sget-boolean v0, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteVideo state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v1, v3, p2, p1}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    :cond_1
    return-void
.end method

.method noteWriteSummary()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 220
    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/VivoStats;->run:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    sget-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/internal/os/VivoStats$NoteHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/VivoStats$NoteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    :cond_0
    return-void
.end method

.method public publish(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    .line 88
    sget-boolean v1, Lcom/android/internal/os/VivoStats;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoStats"

    const-string v2, "VivoStats publish!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    sput-object p2, Lcom/android/internal/os/VivoStats;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 90
    sput-object p1, Lcom/android/internal/os/VivoStats;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "vivo_stats"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    sget-object v1, Lcom/android/internal/os/VivoStats;->run:[Z

    const/16 v2, 0xc

    sget-object v3, Lcom/android/internal/os/VivoStats;->run:[Z

    const/16 v4, 0x10

    sget-object v5, Lcom/android/internal/os/VivoStats;->run:[Z

    const/16 v6, 0xb

    sget-object v7, Lcom/android/internal/os/VivoStats;->run:[Z

    const/16 v8, 0xf

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    aput-boolean v9, v5, v6

    aput-boolean v9, v3, v4

    aput-boolean v9, v1, v2

    .line 94
    new-instance v1, Lcom/android/internal/os/VivoStats$NoteHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/os/VivoStats$NoteHandler;-><init>(Lcom/android/internal/os/VivoStats;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/internal/os/VivoStats;->mHandler:Lcom/android/internal/os/VivoStats$NoteHandler;

    .line 96
    return-void
.end method
