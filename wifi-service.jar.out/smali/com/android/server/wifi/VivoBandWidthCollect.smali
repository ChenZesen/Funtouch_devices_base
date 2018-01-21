.class Lcom/android/server/wifi/VivoBandWidthCollect;
.super Lcom/android/internal/util/StateMachine;
.source "VivoBandWidthCollect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;,
        Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;,
        Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;,
        Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x21900

.field private static final COLLECT_NUM:I = 0x3

.field private static DBG:Z = false

.field private static final EVENT_MONITOR_NETWORK_SPEED:I = 0x21905

.field private static final EVENT_MONITOR_STEP_CHANGED:I = 0x21906

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21901

.field private static final EVENT_SCREEN_OFF:I = 0x21904

.field private static final EVENT_SCREEN_ON:I = 0x21903

.field private static final EVENT_WIFI_STATE_CHANGE:I = 0x21902

.field private static final MIN_DAYS:I = 0x3

.field private static final MONITOR_NETWORK_SPEED_PEROID:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "VivoBandWidthCollect"

.field private static mScreenOn:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDetailState:Landroid/net/NetworkInfo$DetailedState;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSpeedKB:I

.field private mVivoCollectData:Lcom/vivo/common/VivoCollectData;

.field private mVivoDefaultState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;

.field private mVivoTempDisabledState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;

.field private mVivoWifiConnectedState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;

.field private mVivoWifiNotConnectState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 51
    sput-boolean v0, Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z

    .line 80
    sput-boolean v0, Lcom/android/server/wifi/VivoBandWidthCollect;->mScreenOn:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 87
    const-string v0, "VivoBandWidthCollect"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;-><init>(Lcom/android/server/wifi/VivoBandWidthCollect;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoDefaultState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;

    .line 68
    new-instance v0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;-><init>(Lcom/android/server/wifi/VivoBandWidthCollect;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoWifiConnectedState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;

    .line 69
    new-instance v0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;-><init>(Lcom/android/server/wifi/VivoBandWidthCollect;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoWifiNotConnectState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;

    .line 70
    new-instance v0, Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;-><init>(Lcom/android/server/wifi/VivoBandWidthCollect;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoTempDisabledState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 89
    iput-object p1, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 91
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiConfigStore()Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 93
    const-string v0, "VivoBandWidthCollect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VivoBandWidthCollect mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoDefaultState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoBandWidthCollect;->addState(Lcom/android/internal/util/State;)V

    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoWifiConnectedState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoDefaultState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoWifiNotConnectState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoDefaultState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoTempDisabledState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoTempDisabledState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoWifiNotConnectState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoBandWidthCollect;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoDefaultState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoBandWidthCollect;->setInitialState(Lcom/android/internal/util/State;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect;->start()V

    .line 107
    invoke-direct {p0}, Lcom/android/server/wifi/VivoBandWidthCollect;->setupReceiver()V

    .line 108
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/server/wifi/VivoBandWidthCollect;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 49
    sput-boolean p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/VivoBandWidthCollect;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/VivoBandWidthCollect;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mSpeedKB:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/VivoBandWidthCollect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/VivoBandWidthCollect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/VivoBandWidthCollect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/VivoBandWidthCollect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/VivoBandWidthCollect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/wifi/VivoBandWidthCollect;->isWiFiEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/VivoBandWidthCollect;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/VivoBandWidthCollect;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mCurrentDetailState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/VivoBandWidthCollect;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mCurrentDetailState:Landroid/net/NetworkInfo$DetailedState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoWifiNotConnectState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiNotConnectState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/VivoBandWidthCollect;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/VivoBandWidthCollect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->increaseConnectedCount(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/VivoBandWidthCollect;)Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mVivoWifiConnectedState:Lcom/android/server/wifi/VivoBandWidthCollect$VivoWifiConnectedState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/VivoBandWidthCollect;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoBandWidthCollect;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoBandWidthCollect;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private increaseConnectedCount(I)V
    .locals 10
    .param p1, "netId"    # I

    .prologue
    .line 363
    iget-object v7, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 364
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-wide/16 v4, 0x0

    .line 365
    .local v4, "now":J
    const-wide/16 v2, 0x0

    .line 366
    .local v2, "from":J
    sget-boolean v7, Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "VivoBandWidthCollect"

    const-string v8, "increaseConnectedCount, begin"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    if-nez v0, :cond_2

    .line 369
    :try_start_0
    const-string v7, "VivoBandWidthCollect"

    const-string v8, "config == null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 373
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/android/server/wifi/VivoSmartWifiConstants;->getDate()I

    move-result v7

    int-to-long v4, v7

    .line 374
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/VivoWifiConfiguration;->getVivoLastConnectedTime()I

    move-result v7

    if-nez v7, :cond_4

    .line 375
    const-string v7, "00000000"

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 380
    :goto_1
    const-string v7, "VivoBandWidthCollect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "increaseConnectedCount, from:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", now :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    cmp-long v7, v4, v2

    if-lez v7, :cond_1

    .line 385
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/wifi/VivoBandWidthCollect;->setLastConnectedTime(IJ)V

    .line 386
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/VivoWifiConfiguration;->getVivoConfigInitTime()I

    move-result v7

    if-nez v7, :cond_3

    .line 387
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    long-to-int v8, v4

    invoke-virtual {v7, v8}, Landroid/net/wifi/VivoWifiConfiguration;->setVivoConfigInitTime(I)V

    .line 389
    :cond_3
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    invoke-virtual {v8}, Landroid/net/wifi/VivoWifiConfiguration;->getVivoConnectedCount()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/wifi/VivoWifiConfiguration;->setVivoConnectedCount(I)V

    .line 393
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoBandWidthCollect;->collectBandWidth()V

    .line 396
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 377
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    :try_start_1
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/VivoWifiConfiguration;->getVivoLastConnectedTime()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    int-to-long v2, v7

    goto :goto_1
.end method

.method private isWiFiEnabled()Z
    .locals 4

    .prologue
    .line 514
    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 515
    .local v0, "enabled":Z
    :goto_0
    sget-boolean v1, Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoBandWidthCollect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWiFiEnabled() enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    return v0

    .line 514
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLastConnectedTime(IJ)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "time"    # J

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 416
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 417
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Landroid/net/wifi/VivoWifiConfiguration;->setVivoLastConnectedTime(I)V

    .line 418
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 420
    :cond_0
    return-void
.end method

.method private setupReceiver()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/android/server/wifi/VivoBandWidthCollect$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoBandWidthCollect$1;-><init>(Lcom/android/server/wifi/VivoBandWidthCollect;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mIntentFilter:Landroid/content/IntentFilter;

    .line 143
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/VivoBandWidthCollect;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method


# virtual methods
.method public collectBandWidth()V
    .locals 29

    .prologue
    .line 476
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 477
    .local v2, "configedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_5

    .line 478
    const/4 v14, 0x3

    .line 479
    .local v14, "count":I
    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    .line 480
    .local v15, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v15, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/VivoWifiConfiguration;->getVivoConnectedCount()I

    move-result v16

    .line 481
    .local v16, "currentCount":I
    iget-object v4, v15, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/VivoWifiConfiguration;->getVivoLastAutoEnabledTime()I

    move-result v23

    .line 482
    .local v23, "max_speed":I
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_1

    .line 483
    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/WifiConfiguration;

    .line 484
    .local v27, "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/VivoWifiConfiguration;->getVivoConnectedCount()I

    move-result v28

    .line 485
    .local v28, "selectedCount":I
    move/from16 v0, v28

    move/from16 v1, v16

    if-lt v0, v1, :cond_0

    iget v4, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, v27

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v4, v5, :cond_0

    .line 486
    add-int/lit8 v14, v14, -0x1

    .line 482
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 489
    .end local v27    # "selectedConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v28    # "selectedCount":I
    :cond_1
    iget-object v4, v15, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/VivoWifiConfiguration;->getVivoLatitude()D

    move-result-wide v20

    .line 490
    .local v20, "lastUploadTime":D
    invoke-static {}, Lcom/android/server/wifi/VivoSmartWifiConstants;->getDate()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v24, v0

    .line 491
    .local v24, "now":J
    sget-boolean v4, Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "VivoBandWidthCollect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "collectBandWidth: currentConfig.SSID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", maxSpeed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastUploadTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_2
    if-lez v14, :cond_4

    const/4 v4, 0x3

    move/from16 v0, v16

    if-lt v0, v4, :cond_4

    if-lez v23, :cond_4

    move-wide/from16 v0, v24

    long-to-double v4, v0

    sub-double v4, v4, v20

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    iget-object v4, v15, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/VivoWifiConfiguration;->getVivoIsInRange()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 493
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 494
    .local v13, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 495
    .local v22, "maxSpeed":Ljava/lang/String;
    const-string v4, "SSID"

    iget-object v5, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v4, "MAX_SPEED"

    move-object/from16 v0, v22

    invoke-virtual {v13, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    new-instance v3, Lcom/vivo/common/VivoCollectData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/VivoBandWidthCollect;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    .line 498
    .local v3, "mVivoCollectData":Lcom/vivo/common/VivoCollectData;
    const-string v4, "201"

    const-string v5, "20110"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v3 .. v13}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 500
    sget-boolean v4, Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "VivoBandWidthCollect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "collectBandWidth upload : SSID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", maxSpeed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/VivoBandWidthCollect;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v5, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v26

    .line 502
    .local v26, "reallyCurrentConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/VivoWifiConfiguration;->setVivoIsInRange(Z)V

    .line 503
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->vivoWifiConfiguration:Landroid/net/wifi/VivoWifiConfiguration;

    move-wide/from16 v0, v24

    long-to-double v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/net/wifi/VivoWifiConfiguration;->setVivoLatitude(D)V

    .line 504
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v3    # "mVivoCollectData":Lcom/vivo/common/VivoCollectData;
    .end local v13    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "maxSpeed":Ljava/lang/String;
    .end local v26    # "reallyCurrentConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 508
    .end local v2    # "configedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v14    # "count":I
    .end local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "currentCount":I
    .end local v18    # "i":I
    .end local v19    # "j":I
    .end local v20    # "lastUploadTime":D
    .end local v23    # "max_speed":I
    .end local v24    # "now":J
    :catch_0
    move-exception v17

    .line 509
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 511
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 5
    .param p1, "verbose"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    const-string v0, "VivoBandWidthCollect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVerboseLogging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-lez p1, :cond_0

    .line 425
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoBandWidthCollect;->setDbg(Z)V

    .line 426
    sput-boolean v4, Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z

    .line 431
    :goto_0
    return-void

    .line 428
    :cond_0
    sput-boolean v3, Lcom/android/server/wifi/VivoBandWidthCollect;->DBG:Z

    .line 429
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/VivoBandWidthCollect;->setDbg(Z)V

    goto :goto_0
.end method
