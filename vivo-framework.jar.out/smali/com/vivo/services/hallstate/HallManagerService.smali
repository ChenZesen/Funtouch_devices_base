.class public Lcom/vivo/services/hallstate/HallManagerService;
.super Lcom/vivo/services/hallstate/IHallManager$Stub;
.source "HallManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;,
        Lcom/vivo/services/hallstate/HallManagerService$HallObserver;,
        Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;,
        Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;,
        Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT_COMPLETE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final ACTION_HALLOBSERVER_INVALID:Ljava/lang/String; = "com.android.service.hallobserver.invalid"

.field private static final ACTION_HALLOBSERVER_LOCK:Ljava/lang/String; = "com.android.service.hallobserver.lock"

.field private static final ACTION_HALLOBSERVER_UNLOCK:Ljava/lang/String; = "com.android.service.hallobserver.unlock"

.field private static final DEBUG:Z

.field private static final HALL_STATE_COVERED:I = 0x0

.field private static final HALL_STATE_UNCOVERED:I = 0x1

.field private static final HALL_STATE_UNKOWN:I = -0x1

.field private static final HALL_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/hall"

.field private static final HAVE_HALL_SENSOR:Z

.field private static final HAVE_HOLSTER_WINDOW:Z

.field private static final HOLSTER_MODE:Ljava/lang/String; = "holster_lock_screen_mode"

.field private static final INVALID_TIME:J = -0x1L

.field private static final KEY_SETTING_HALL_STATE:Ljava/lang/String; = "bbk_holster_state"

.field private static final MSG_HALL_STATE_CHANGED:I = 0x2

.field private static final MSG_HALL_STATE_INVALID:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HallManagerService"

.field private static mBootComplete:Z

.field private static mContext:Landroid/content/Context;

.field private static mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/services/hallstate/HallEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static mHallObserver:Lcom/vivo/services/hallstate/HallManagerService$HallObserver;

.field private static mLastHallEvent:Lcom/vivo/services/hallstate/HallEvent;

.field private static mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vivo/services/hallstate/IHallEventListener;",
            "Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;

.field private static mThread:Landroid/os/HandlerThread;

.field private static mThreadSetting:Landroid/os/HandlerThread;

.field private static singleton:Lcom/vivo/services/hallstate/HallManagerService;


# instance fields
.field private final mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEventHandler:Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;

.field private mMainLooper:Landroid/os/Looper;

.field private mSettingHandler:Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;

.field private mSettingObserver:Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string v0, "persist.vivo.phone.hall"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Have_hall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/hallstate/HallManagerService;->HAVE_HALL_SENSOR:Z

    .line 51
    sput-boolean v2, Lcom/vivo/services/hallstate/HallManagerService;->mBootComplete:Z

    .line 54
    const-string v0, "Have_holster_with_window"

    const-string v1, "persist.vivo.phone.holster"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/hallstate/HallManagerService;->HAVE_HOLSTER_WINDOW:Z

    .line 59
    const-string v0, "debug.hallstate.debug"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    .line 65
    new-instance v0, Lcom/vivo/services/hallstate/HallEvent;

    invoke-direct {v0}, Lcom/vivo/services/hallstate/HallEvent;-><init>()V

    sput-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mLastHallEvent:Lcom/vivo/services/hallstate/HallEvent;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mEventList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "contxt"    # Landroid/content/Context;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/vivo/services/hallstate/IHallManager$Stub;-><init>()V

    .line 77
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService;->mSettingObserver:Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;

    .line 79
    new-instance v2, Lcom/vivo/services/hallstate/HallManagerService$1;

    invoke-direct {v2, p0}, Lcom/vivo/services/hallstate/HallManagerService$1;-><init>(Lcom/vivo/services/hallstate/HallManagerService;)V

    iput-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v2, Lcom/vivo/services/hallstate/HallManagerService$2;

    invoke-direct {v2, p0}, Lcom/vivo/services/hallstate/HallManagerService$2;-><init>(Lcom/vivo/services/hallstate/HallManagerService;)V

    iput-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    sput-object p1, Lcom/vivo/services/hallstate/HallManagerService;->mContext:Landroid/content/Context;

    .line 297
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HallManagerService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mThread:Landroid/os/HandlerThread;

    .line 298
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "HallManagerServiceSetting"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mThreadSetting:Landroid/os/HandlerThread;

    .line 299
    sget-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 300
    sget-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mThreadSetting:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 301
    sget-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService;->mMainLooper:Landroid/os/Looper;

    .line 302
    new-instance v2, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;

    iget-object v3, p0, Lcom/vivo/services/hallstate/HallManagerService;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;-><init>(Lcom/vivo/services/hallstate/HallManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService;->mEventHandler:Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;

    .line 303
    new-instance v2, Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;

    sget-object v3, Lcom/vivo/services/hallstate/HallManagerService;->mThreadSetting:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;-><init>(Lcom/vivo/services/hallstate/HallManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService;->mSettingHandler:Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;

    .line 304
    sget-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 305
    new-instance v2, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;

    invoke-direct {v2, p0}, Lcom/vivo/services/hallstate/HallManagerService$HallObserver;-><init>(Lcom/vivo/services/hallstate/HallManagerService;)V

    sput-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mHallObserver:Lcom/vivo/services/hallstate/HallManagerService$HallObserver;

    .line 306
    new-instance v2, Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;

    invoke-direct {v2, p0}, Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;-><init>(Lcom/vivo/services/hallstate/HallManagerService;)V

    iput-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService;->mSettingObserver:Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;

    .line 308
    sget-boolean v2, Lcom/vivo/services/hallstate/HallManagerService;->HAVE_HOLSTER_WINDOW:Z

    if-eqz v2, :cond_0

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.service.hallobserver.invalid"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    sget-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/services/hallstate/HallManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v1, "filterBootComplete":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    sget-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/services/hallstate/HallManagerService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "filterBootComplete":Landroid/content/IntentFilter;
    :cond_0
    sget-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mLastHallEvent:Lcom/vivo/services/hallstate/HallEvent;

    invoke-direct {p0, v2}, Lcom/vivo/services/hallstate/HallManagerService;->updateSettingHallState(Lcom/vivo/services/hallstate/HallEvent;)V

    .line 320
    iget-object v2, p0, Lcom/vivo/services/hallstate/HallManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "holster_lock_screen_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vivo/services/hallstate/HallManagerService;->mSettingObserver:Lcom/vivo/services/hallstate/HallManagerService$SettingOberserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 322
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/services/hallstate/HallManagerService;)Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManagerService;->mEventHandler:Lcom/vivo/services/hallstate/HallManagerService$StateEventHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/services/hallstate/HallManagerService;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManagerService;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vivo/services/hallstate/HallManagerService;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;
    .param p1, "x1"    # Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vivo/services/hallstate/HallManagerService;->handleHallMonitorDeath(Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/vivo/services/hallstate/HallManagerService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/services/hallstate/HallManagerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/services/hallstate/HallManagerService;Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vivo/services/hallstate/HallManagerService;->isEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/vivo/services/hallstate/HallManagerService;->nativeInitHallState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600()Lcom/vivo/services/hallstate/HallEvent;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mLastHallEvent:Lcom/vivo/services/hallstate/HallEvent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vivo/services/hallstate/HallManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vivo/services/hallstate/HallManagerService;->clearEvent()V

    return-void
.end method

.method static synthetic access$1800(Lcom/vivo/services/hallstate/HallManagerService;Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;
    .param p1, "x1"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vivo/services/hallstate/HallManagerService;->pushEvent(Lcom/vivo/services/hallstate/HallEvent;)V

    return-void
.end method

.method static synthetic access$1900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 38
    sput-boolean p0, Lcom/vivo/services/hallstate/HallManagerService;->mBootComplete:Z

    return p0
.end method

.method static synthetic access$300(Lcom/vivo/services/hallstate/HallManagerService;Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;
    .param p1, "x1"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vivo/services/hallstate/HallManagerService;->sendHallStateBroadcast(Lcom/vivo/services/hallstate/HallEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/services/hallstate/HallManagerService;Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;
    .param p1, "x1"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vivo/services/hallstate/HallManagerService;->updateSettingHallState(Lcom/vivo/services/hallstate/HallEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vivo/services/hallstate/HallManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vivo/services/hallstate/HallManagerService;->hasPendingEvent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/vivo/services/hallstate/HallManagerService;)Lcom/vivo/services/hallstate/HallEvent;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vivo/services/hallstate/HallManagerService;->popEvent()Lcom/vivo/services/hallstate/HallEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/services/hallstate/HallManagerService;Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;
    .param p1, "x1"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vivo/services/hallstate/HallManagerService;->dispatchEvent(Lcom/vivo/services/hallstate/HallEvent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vivo/services/hallstate/HallManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/hallstate/HallManagerService;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vivo/services/hallstate/HallManagerService;->handleHallInvalid()V

    return-void
.end method

.method private clearEvent()V
    .locals 2

    .prologue
    .line 287
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    monitor-exit v1

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 292
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private dispatchEvent(Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 233
    sget-object v5, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    monitor-enter v5

    .line 234
    :try_start_0
    sget-object v4, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 237
    .local v3, "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;

    .line 238
    .local v0, "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    if-eqz v0, :cond_1

    .line 239
    sget-boolean v4, Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 240
    const-string v4, "HallManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchEvent call onStateChangedLocked event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/vivo/services/hallstate/HallEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    invoke-virtual {v0, p1}, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->onStateChangedLocked(Lcom/vivo/services/hallstate/HallEvent;)V

    goto :goto_0

    .line 253
    .end local v0    # "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;>;"
    .end local v3    # "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 244
    .restart local v0    # "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;>;"
    .restart local v3    # "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;"
    :cond_1
    :try_start_1
    const-string v4, "HallManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchEvent hmd is null:token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    .end local v0    # "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    .end local v3    # "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;"
    :cond_2
    sget-boolean v4, Lcom/vivo/services/hallstate/HallManagerService;->mBootComplete:Z

    if-eqz v4, :cond_3

    .line 248
    iget-object v4, p0, Lcom/vivo/services/hallstate/HallManagerService;->mSettingHandler:Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;->removeMessages(I)V

    .line 249
    iget-object v4, p0, Lcom/vivo/services/hallstate/HallManagerService;->mSettingHandler:Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 250
    .local v2, "msg":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    iget-object v4, p0, Lcom/vivo/services/hallstate/HallManagerService;->mSettingHandler:Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;

    invoke-virtual {v4, v2}, Lcom/vivo/services/hallstate/HallManagerService$SettingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 427
    const-string v4, "HALL STATE MANAGER (dumpsys hall_state_service)\n"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HAVE_HOLSTER_WINDOW:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/vivo/services/hallstate/HallManagerService;->HAVE_HOLSTER_WINDOW:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    sget-object v5, Lcom/vivo/services/hallstate/HallManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 430
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastHallEvent:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/vivo/services/hallstate/HallManagerService;->mLastHallEvent:Lcom/vivo/services/hallstate/HallEvent;

    invoke-virtual {v6}, Lcom/vivo/services/hallstate/HallEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    sget-object v5, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    monitor-enter v5

    .line 433
    :try_start_1
    sget-object v4, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    const-string v4, "mListeners is empty"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 450
    return-void

    .line 431
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 436
    :cond_1
    const/4 v1, 0x0

    .line 437
    .local v1, "i":I
    :try_start_3
    sget-object v4, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 438
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    add-int/lit8 v1, v1, 0x1

    .line 440
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 441
    .local v3, "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;

    .line 442
    .local v0, "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    if-eqz v0, :cond_2

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " HallMonitor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    .end local v0    # "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;>;"
    .end local v3    # "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;"
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 445
    .restart local v0    # "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    .restart local v1    # "i":I
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;>;"
    .restart local v3    # "obj":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/vivo/services/hallstate/IHallEventListener;Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;>;"
    :cond_2
    :try_start_4
    const-string v4, "HallManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HallMonitor is null. token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/services/hallstate/HallManagerService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->singleton:Lcom/vivo/services/hallstate/HallManagerService;

    if-nez v0, :cond_1

    .line 326
    const-class v1, Lcom/vivo/services/hallstate/HallManagerService;

    monitor-enter v1

    .line 327
    :try_start_0
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->singleton:Lcom/vivo/services/hallstate/HallManagerService;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcom/vivo/services/hallstate/HallManagerService;

    invoke-direct {v0, p0}, Lcom/vivo/services/hallstate/HallManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/services/hallstate/HallManagerService;->singleton:Lcom/vivo/services/hallstate/HallManagerService;

    .line 330
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_1
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->singleton:Lcom/vivo/services/hallstate/HallManagerService;

    return-object v0

    .line 330
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleHallInvalid()V
    .locals 3

    .prologue
    .line 179
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-static {}, Lcom/vivo/services/hallstate/HallManagerService;->nativeHandleHallInvalid()V

    .line 181
    const-string v0, "HallManagerService"

    const-string v2, "handleHallInvalid write invalid"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleHallMonitorDeath(Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;)V
    .locals 3
    .param p1, "hmd"    # Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    const-string v0, "HallManagerService"

    const-string v1, "handleHallMonitorDeath hmd is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_0
    return-void

    .line 457
    :cond_0
    sget-boolean v0, Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 458
    const-string v0, "HallManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHallMonitorDeath hmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_1
    # getter for: Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->mHallEventListener:Lcom/vivo/services/hallstate/IHallEventListener;
    invoke-static {p1}, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->access$900(Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;)Lcom/vivo/services/hallstate/IHallEventListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/services/hallstate/HallManagerService;->unregisterHallStateListener(Lcom/vivo/services/hallstate/IHallEventListener;)V

    goto :goto_0
.end method

.method private hasPendingEvent()Z
    .locals 2

    .prologue
    .line 257
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p1, "mContentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    .line 594
    const-string v1, "holster_lock_screen_mode"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 596
    .local v0, "isEnabled":Z
    :goto_0
    return v0

    .line 594
    .end local v0    # "isEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeHandleHallEnable(I)I
.end method

.method private static native nativeHandleHallInvalid()V
.end method

.method private static native nativeInitHallState()I
.end method

.method private popEvent()Lcom/vivo/services/hallstate/HallEvent;
    .locals 4

    .prologue
    .line 274
    sget-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 275
    :try_start_0
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 276
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mEventList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/hallstate/HallEvent;

    .line 277
    .local v0, "event":Lcom/vivo/services/hallstate/HallEvent;
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mEventList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 278
    monitor-exit v2

    .line 281
    .end local v0    # "event":Lcom/vivo/services/hallstate/HallEvent;
    :goto_0
    return-object v0

    .line 280
    :cond_0
    const-string v1, "HallManagerService"

    const-string v3, "popEvent EventList is empty. return null."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private pushEvent(Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    const-string v0, "HallManagerService"

    const-string v1, "pushEvent is null. return."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return-void

    .line 267
    :cond_0
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mLastHallEvent:Lcom/vivo/services/hallstate/HallEvent;

    invoke-virtual {v0, p1}, Lcom/vivo/services/hallstate/HallEvent;->copyFrom(Lcom/vivo/services/hallstate/HallEvent;)V

    .line 270
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendHallStateBroadcast(Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 188
    const-string v0, "HallManagerService"

    const-string v1, "sendHallStateBroadcast event is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-boolean v0, Lcom/vivo/services/hallstate/HallManagerService;->HAVE_HOLSTER_WINDOW:Z

    if-eqz v0, :cond_5

    .line 192
    sget-boolean v0, Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 193
    const-string v0, "HallManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHallStateBroadcast event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vivo/services/hallstate/HallEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_2
    invoke-virtual {p1}, Lcom/vivo/services/hallstate/HallEvent;->isUncovered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.service.hallobserver.unlock"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    iget v3, p1, Lcom/vivo/services/hallstate/HallEvent;->state:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {p1}, Lcom/vivo/services/hallstate/HallEvent;->isCovered()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.service.hallobserver.lock"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    iget v3, p1, Lcom/vivo/services/hallstate/HallEvent;->state:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 200
    :cond_4
    const-string v0, "HallManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHallStateBroadcast uknown hallState, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vivo/services/hallstate/HallEvent;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_5
    sget-boolean v0, Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "HallManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAVE_HOLSTER_WINDOW:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/services/hallstate/HallManagerService;->HAVE_HOLSTER_WINDOW:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " No need to send."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateSettingHallState(Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 210
    if-nez p1, :cond_1

    .line 211
    const-string v1, "HallManagerService"

    const-string v2, "updateSettingHallState event is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    sget-boolean v1, Lcom/vivo/services/hallstate/HallManagerService;->HAVE_HOLSTER_WINDOW:Z

    if-eqz v1, :cond_2

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/hallstate/HallManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bbk_holster_state"

    iget v3, p1, Lcom/vivo/services/hallstate/HallEvent;->state:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    sget-boolean v1, Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "HallManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSettingHallState set bbk_holster_state as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/vivo/services/hallstate/HallEvent;->state:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HallManagerService"

    const-string v2, "updateSettingHallState failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-boolean v1, Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "HallManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAVE_HOLSTER_WINDOW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/vivo/services/hallstate/HallManagerService;->HAVE_HOLSTER_WINDOW:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " No need to update setting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 415
    sget-object v0, Lcom/vivo/services/hallstate/HallManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump HallManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-direct {p0, p2}, Lcom/vivo/services/hallstate/HallManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public hallSwitchEnable(I)I
    .locals 4
    .param p1, "enable"    # I

    .prologue
    .line 587
    const/4 v0, -0x1

    .line 588
    .local v0, "ret":I
    invoke-static {p1}, Lcom/vivo/services/hallstate/HallManagerService;->nativeHandleHallEnable(I)I

    move-result v0

    .line 589
    const-string v1, "HallManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hallSwitchEnable write enable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return v0
.end method

.method public registerHallStateListener(Landroid/os/IBinder;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "mToken"    # Landroid/os/IBinder;
    .param p2, "listener"    # Lcom/vivo/services/hallstate/IHallEventListener;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 338
    sget-boolean v1, Lcom/vivo/services/hallstate/HallManagerService;->HAVE_HALL_SENSOR:Z

    if-nez v1, :cond_0

    .line 339
    const-string v1, "HallManagerService"

    const-string v3, "registerHallStateListener, not have hall sensor, return false;"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 369
    :goto_0
    return v1

    .line 343
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_4

    .line 344
    :cond_1
    const-string v3, "HallManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerHallStateListener failed,as token:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_2

    const-string v1, "null"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " listener="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_3

    const-string v1, "null"

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " tag="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " pkgName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 346
    goto :goto_0

    .line 344
    :cond_2
    const-string v1, "not_null"

    goto :goto_1

    :cond_3
    const-string v1, "not_null"

    goto :goto_2

    .line 348
    :cond_4
    sget-object v8, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    monitor-enter v8

    .line 349
    :try_start_0
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;

    .line 351
    .local v0, "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    if-eqz v0, :cond_5

    .line 352
    const-string v1, "HallManagerService"

    const-string v2, "Already registered!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    monitor-exit v8

    move v1, v7

    goto :goto_0

    .line 356
    :cond_5
    new-instance v0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;

    .end local v0    # "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;-><init>(Lcom/vivo/services/hallstate/HallManagerService;Landroid/os/IBinder;Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    .restart local v0    # "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :try_start_2
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-boolean v1, Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 364
    const-string v2, "HallManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerHallStateListener success. hmd:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_8

    const-string v1, "null"

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_6
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mLastHallEvent:Lcom/vivo/services/hallstate/HallEvent;

    invoke-virtual {v1}, Lcom/vivo/services/hallstate/HallEvent;->isStateValid()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 367
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mLastHallEvent:Lcom/vivo/services/hallstate/HallEvent;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->onStateChangedLocked(Lcom/vivo/services/hallstate/HallEvent;J)V

    .line 369
    :cond_7
    monitor-exit v8

    move v1, v7

    goto/16 :goto_0

    .line 359
    :catch_0
    move-exception v6

    .line 360
    .local v6, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HallMonintor is already dead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    .end local v0    # "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 364
    .restart local v0    # "hmd":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    :cond_8
    :try_start_3
    invoke-virtual {v0}, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_3
.end method

.method public unregisterHallStateListener(Lcom/vivo/services/hallstate/IHallEventListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/vivo/services/hallstate/IHallEventListener;

    .prologue
    .line 376
    sget-boolean v1, Lcom/vivo/services/hallstate/HallManagerService;->HAVE_HALL_SENSOR:Z

    if-nez v1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 380
    :cond_0
    if-nez p1, :cond_1

    .line 381
    const-string v1, "HallManagerService"

    const-string v2, "unregisterHallStateListener listener is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_1
    sget-object v2, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 385
    :try_start_0
    sget-object v1, Lcom/vivo/services/hallstate/HallManagerService;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;

    .line 386
    .local v0, "ret":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    sget-boolean v1, Lcom/vivo/services/hallstate/HallManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 387
    const-string v3, "HallManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterHallStateListener,return object is: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_3

    const-string v1, "null"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "ret":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 387
    .restart local v0    # "ret":Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/vivo/services/hallstate/HallManagerService$HallMonitorDelegate;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1
.end method
