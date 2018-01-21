.class public Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;
.super Ljava/lang/Object;
.source "BBKEngineerPowerSave.java"


# static fields
.field private static final ACTION_SAVE_POWER:Ljava/lang/String; = "android.intent.action.ALARM_SAVE_POWER"

.field private static final DELAY_TIME_MILLIS:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "BBKEngineerUtileService"

.field private static final USER_ACTION_CONTACTS_CHANGED:Ljava/lang/String; = "contacts_changed"

.field private static final USER_ACTION_NETWORK_CONNECTED:Ljava/lang/String; = "network_connected"

.field private static final USER_ACTION_NO_CHANGEDE:Ljava/lang/String; = "no"

.field private static final USER_ACTION_PROPER:Ljava/lang/String; = "persist.sys.user.action"

.field private static final USER_ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "sim_ready"

.field private static final USER_ACTION_TIME_CHANGED:Ljava/lang/String; = "time_changed"

.field private static final USER_ACTION_USB_CONNECT:Ljava/lang/String; = "usb_connect"


# instance fields
.field private mConnecteReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mCountdownRunnable:Ljava/lang/Runnable;

.field public mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mShutdownDialog:Landroid/app/AlertDialog;

.field private mShutdownSecond:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownDialog:Landroid/app/AlertDialog;

    .line 47
    const/16 v0, 0x1e

    iput v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownSecond:I

    .line 110
    new-instance v0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;

    invoke-direct {v0, p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$3;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mCountdownRunnable:Ljava/lang/Runnable;

    .line 128
    new-instance v0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;

    invoke-direct {v0, p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$4;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mConnecteReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$5;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mObserver:Landroid/database/ContentObserver;

    .line 59
    const-string v0, "BBKEngineerUtileService"

    const-string v1, "BBKEngineerPowerSave start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->needStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->registerNetworkEvent()V

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->needStart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->registerNetworkEvent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->isSystemReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->isUserChageTime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->simCardReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->setAlarmManager()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->shutdown()V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    iget v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownSecond:I

    return v0
.end method

.method static synthetic access$510(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)I
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    iget v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownSecond:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownSecond:I

    return v0
.end method

.method static synthetic access$600(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->unRegisterNetworkEvent()V

    return-void
.end method

.method static synthetic access$800(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->cancelAlarmManager()V

    return-void
.end method

.method static synthetic access$900(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->showShutdownDailog()V

    return-void
.end method

.method private cancelAlarmManager()V
    .locals 3

    .prologue
    .line 268
    const-string v1, "BBKEngineerUtileService"

    const-string v2, "cancelAlarmManager()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 270
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 271
    return-void
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ALARM_SAVE_POWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 277
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private isSystemReady()Z
    .locals 4

    .prologue
    .line 323
    const-string v2, "init.svc.bootanim"

    const-string v3, "running"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "bootanim":Ljava/lang/String;
    const-string v2, "sys.boot_completed"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "boot_completed":Ljava/lang/String;
    const-string v2, "stopped"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const/4 v2, 0x1

    .line 328
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isUserChageTime()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 334
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 335
    .local v0, "autoEnabled":I
    if-nez v0, :cond_0

    .line 336
    const/4 v2, 0x1

    .line 341
    .end local v0    # "autoEnabled":I
    :cond_0
    :goto_0
    return v2

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "BBKEngineerUtileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUserChageTime():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private needStart()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 206
    const-string v3, "persist.sys.factory.mode"

    const-string v4, "no"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "factory":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "yes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    const-string v3, "BBKEngineerUtileService"

    const-string v4, "factory mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    :goto_0
    return v2

    .line 211
    :cond_1
    const-string v3, "persist.sys.user.action"

    const-string v4, "no"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "act":Ljava/lang/String;
    const-string v3, "no"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    const-string v3, "BBKEngineerUtileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 217
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->simCardReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->wifiConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 221
    const-string v3, "persist.sys.user.action"

    const-string v4, "network_connected"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_3
    const-string v2, "BBKEngineerUtileService"

    const-string v3, "system not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private registerNetworkEvent()V
    .locals 5

    .prologue
    .line 232
    const-string v1, "BBKEngineerUtileService"

    const-string v2, "registerNetworkEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "android.intent.action.ALARM_SAVE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mConnecteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 242
    return-void
.end method

.method private setAlarmManager()V
    .locals 8

    .prologue
    .line 256
    const-string v4, "BBKEngineerUtileService"

    const-string v5, "setAlarmManager()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    iget-object v4, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 259
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x1b77400

    add-long v2, v4, v6

    .line 260
    .local v2, "elapsedRealtime":J
    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v2    # "elapsedRealtime":J
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "BBKEngineerUtileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAlarmManager():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showShutdownDailog()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->unRegisterNetworkEvent()V

    .line 69
    invoke-direct {p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->cancelAlarmManager()V

    .line 71
    const-string v1, "BBKEngineerUtileService"

    const-string v2, "showAlertDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/16 v1, 0x1e

    iput v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownSecond:I

    .line 73
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    const v2, 0x30e0160

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownSecond:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    const v3, 0x30e015f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    const v3, 0x30e0161

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$2;

    invoke-direct {v3, p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$2;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    const v3, 0x30e0162

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$1;

    invoke-direct {v3, p0}, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave$1;-><init>(Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownDialog:Landroid/app/AlertDialog;

    .line 98
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 99
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 100
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x280080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 103
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mShutdownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 104
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mHandler:Landroid/os/Handler;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mCountdownRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    return-void
.end method

.method private shutdown()V
    .locals 8

    .prologue
    .line 371
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 372
    .local v2, "pms":Landroid/os/IPowerManager;
    const-string v4, "android.os.IPowerManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 373
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 374
    .local v3, "shutdwon":Ljava/lang/reflect/Method;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-le v4, v5, :cond_0

    .line 375
    const-string v4, "shutdown"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 376
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "pms":Landroid/os/IPowerManager;
    .end local v3    # "shutdwon":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 378
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "pms":Landroid/os/IPowerManager;
    .restart local v3    # "shutdwon":Ljava/lang/reflect/Method;
    :cond_0
    const-string v4, "shutdown"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 379
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "pms":Landroid/os/IPowerManager;
    .end local v3    # "shutdwon":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private simCardReady()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 349
    .local v7, "cur":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 350
    .local v6, "contacts":I
    if-lez v6, :cond_0

    .line 351
    const-string v0, "persist.sys.user.action"

    const-string v1, "contacts_changed"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "BBKEngineerUtileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contacts count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 365
    .end local v6    # "contacts":I
    .end local v7    # "cur":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 356
    .restart local v6    # "contacts":I
    .restart local v7    # "cur":Landroid/database/Cursor;
    :cond_0
    iget-object v0, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 357
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 358
    const-string v0, "persist.sys.user.action"

    const-string v1, "sim_ready"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v0, "BBKEngineerUtileService"

    const-string v1, "SIM_STATE_READY!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v10

    .line 360
    goto :goto_0

    .line 362
    .end local v6    # "contacts":I
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v8

    .line 363
    .local v8, "ex":Ljava/lang/Exception;
    const-string v0, "BBKEngineerUtileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simCardReady():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unRegisterNetworkEvent()V
    .locals 4

    .prologue
    .line 245
    const-string v1, "BBKEngineerUtileService"

    const-string v2, "unRegisterNetworkEvent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mConnecteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    iget-object v1, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "BBKEngineerUtileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterNetworkEvent():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wifiConnected()Z
    .locals 7

    .prologue
    .line 307
    const/4 v2, 0x0

    .line 309
    .local v2, "network":Z
    :try_start_0
    iget-object v4, p0, Lcom/vivo/services/engineerutile/BBKEngineerPowerSave;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 311
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 312
    .local v3, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    const/4 v2, 0x1

    .line 318
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v3    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "BBKEngineerUtileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifiConnected():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wifiConnectedBefore()Z
    .locals 10

    .prologue
    .line 282
    const/4 v5, 0x0

    .line 284
    .local v5, "network":Z
    :try_start_0
    const-string v1, "/data/misc/wifi/wpa_supplicant.conf"

    .line 285
    .local v1, "configPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v3, "file":Ljava/io/File;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 287
    .local v6, "reader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 288
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 289
    .local v4, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 290
    const-string v7, "network={"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 291
    const-string v7, "BBKEngineerUtileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network={"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v5, 0x1

    .line 297
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 298
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "configPath":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    :goto_0
    return v5

    .line 299
    :catch_0
    move-exception v2

    .line 300
    .local v2, "ex":Ljava/lang/Exception;
    const-string v7, "BBKEngineerUtileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wifiConnectedBefore():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
