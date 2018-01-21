.class public Lcom/android/server/am/VivoPowerOffAlarmUtility;
.super Ljava/lang/Object;
.source "VivoPowerOffAlarmUtility.java"


# static fields
.field private static final ALARM_BOOT_DONE:Ljava/lang/String; = "android.intent.action.normal.boot.done"

.field private static final REMOVE_IPOWIN:Ljava/lang/String; = "alarm.boot.remove.ipowin"

.field private static final SHUTDOWN_WHAT:I = 0x3ea

.field private static final STARTANI_WHAT:I = 0x3e8

.field private static final STOPANI_WHAT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "PowerOffAlarm"

.field private static mIPOWin:Landroid/view/View;

.field private static mInstance:Lcom/android/server/am/VivoPowerOffAlarmUtility;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mFirstBoot:Z

.field private mHandler:Landroid/os/Handler;

.field private mRecover:Z

.field private mRollback:Z

.field private mStack:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mIPOWin:Landroid/view/View;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "aStack"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mRollback:Z

    .line 30
    iput-boolean v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mRecover:Z

    .line 31
    iput-boolean v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mFirstBoot:Z

    .line 245
    new-instance v1, Lcom/android/server/am/VivoPowerOffAlarmUtility$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/VivoPowerOffAlarmUtility$2;-><init>(Lcom/android/server/am/VivoPowerOffAlarmUtility;)V

    iput-object v1, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-static {}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iput-object p1, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStackSupervisor;

    .line 67
    iget-object v1, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->registerNormalBootReceiver(Landroid/content/Context;)V

    .line 68
    const-string v1, "persist.sys.ams.recover"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 70
    .local v0, "recover":Z
    if-eqz v0, :cond_0

    .line 71
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->checkFlightMode(ZZ)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->createIPOWin(Landroid/content/Context;)V

    .line 75
    .end local v0    # "recover":Z
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/VivoPowerOffAlarmUtility;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/VivoPowerOffAlarmUtility;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mRollback:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/VivoPowerOffAlarmUtility;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/VivoPowerOffAlarmUtility;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->checkFlightMode(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/VivoPowerOffAlarmUtility;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/VivoPowerOffAlarmUtility;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/VivoPowerOffAlarmUtility;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/VivoPowerOffAlarmUtility;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/VivoPowerOffAlarmUtility;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/VivoPowerOffAlarmUtility;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->createIPOWin(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/VivoPowerOffAlarmUtility;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/VivoPowerOffAlarmUtility;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->removeIPOWin(Landroid/content/Context;)V

    return-void
.end method

.method private checkFlightMode(ZZ)V
    .locals 6
    .param p1, "recover"    # Z
    .param p2, "shutdown"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    const-string v3, "PowerOffAlarm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRollback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mRollback:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recover = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz p1, :cond_1

    .line 161
    const-string v2, "PowerOffAlarm"

    const-string v3, "since system crash, switch flight mode to off"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mRollback:Z

    if-eqz v3, :cond_2

    .line 168
    iput-boolean v1, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mRollback:Z

    .line 169
    const-string v2, "persist.sys.ams.recover"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    if-nez p2, :cond_0

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    iget-object v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 184
    .local v1, "mode":Z
    :cond_3
    if-nez v1, :cond_0

    .line 185
    const-string v3, "PowerOffAlarm"

    const-string v4, "turn on flight mode"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "persist.sys.ams.recover"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-boolean v2, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mRollback:Z

    .line 188
    iget-object v3, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private createIPOWin(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x400

    const/4 v5, -0x1

    .line 196
    const-string v3, "PowerOffAlarm"

    const-string v4, "createIPOWin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v3, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mIPOWin:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 199
    const-string v3, "PowerOffAlarm"

    const-string v4, "IPOWin already exist"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 202
    :cond_0
    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 204
    .local v1, "win":Landroid/view/Window;
    const/16 v3, 0x7d9

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 205
    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 207
    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 211
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 213
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 214
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const-string v3, "IPOWindow"

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    const/16 v3, 0x418

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 219
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 221
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mIPOWin:Landroid/view/View;

    .line 222
    sget-object v3, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mIPOWin:Landroid/view/View;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 223
    sget-object v3, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mIPOWin:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    const-string v3, "sys.ipowin.done"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/VivoPowerOffAlarmUtility;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "aStack"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mInstance:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mInstance:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    .line 53
    :goto_0
    return-object v0

    .line 50
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 51
    new-instance v0, Lcom/android/server/am/VivoPowerOffAlarmUtility;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/VivoPowerOffAlarmUtility;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityStackSupervisor;)V

    sput-object v0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mInstance:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    .line 53
    :cond_1
    sget-object v0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mInstance:Lcom/android/server/am/VivoPowerOffAlarmUtility;

    goto :goto_0
.end method

.method public static isAlarmBoot()Z
    .locals 3

    .prologue
    .line 102
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 105
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 103
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final registerNormalBootReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.normal.boot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.normal.shutdown"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.normal.boot.done"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "alarm.boot.remove.ipowin"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mFirstBoot:Z

    .line 121
    new-instance v1, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/VivoPowerOffAlarmUtility$1;-><init>(Lcom/android/server/am/VivoPowerOffAlarmUtility;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    return-void
.end method

.method private removeIPOWin(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const-string v1, "PowerOffAlarm"

    const-string v2, "removeIPOWin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v1, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mIPOWin:Landroid/view/View;

    if-nez v1, :cond_0

    .line 232
    const-string v1, "PowerOffAlarm"

    const-string v2, "already removed, skip!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 237
    .local v0, "wm":Landroid/view/WindowManager;
    sget-object v1, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mIPOWin:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 238
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mIPOWin:Landroid/view/View;

    .line 239
    const-string v1, "sys.ipowin.done"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public launchPowrOffAlarm(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "recover"    # Ljava/lang/Boolean;
    .param p2, "shutdown"    # Ljava/lang/Boolean;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/VivoPowerOffAlarmUtility;->checkFlightMode(ZZ)V

    .line 90
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.POWER_OFF_ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/android/server/am/VivoPowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    return-void
.end method
