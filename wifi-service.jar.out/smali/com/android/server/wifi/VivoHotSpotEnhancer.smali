.class public Lcom/android/server/wifi/VivoHotSpotEnhancer;
.super Landroid/os/HandlerThread;
.source "VivoHotSpotEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;,
        Lcom/android/server/wifi/VivoHotSpotEnhancer$QueryDataUsedThread;,
        Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;,
        Lcom/android/server/wifi/VivoHotSpotEnhancer$DisableBlockedClient;,
        Lcom/android/server/wifi/VivoHotSpotEnhancer$DiableSoftAp;,
        Lcom/android/server/wifi/VivoHotSpotEnhancer$EnableNat;,
        Lcom/android/server/wifi/VivoHotSpotEnhancer$DisableNat;
    }
.end annotation


# static fields
.field private static final ACTION_DATA_CONSUM:Ljava/lang/String; = "com.android.vivo.net.wifi.dataConsumption"

.field private static final ACTION_DATA_INTERFACE_CHANGED:Ljava/lang/String; = "com.android.vivo.hotpot.dataInterfaceChanged"

.field private static final ACTION_DATA_LIMIT_UPDATE:Ljava/lang/String; = "com.android.vivo.net.hotspot.LimitationUpdate"

.field private static final ACTION_DATA_LIMIT_UPDATE_FRAMEWORK:Ljava/lang/String; = "com.android.vivo.net.hotspot.datalimitaion.update.framework"

.field private static final ACTION_IDLE_DISABLE_CANCEL:Ljava/lang/String; = "com.android.vivo.hotspot.idle_disable.cancel"

.field private static final ACTION_MODIFY_DATA_CONSUMPTION:Ljava/lang/String; = "com.android.vivo.changeDataConsumption"

.field private static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final ACTION_SHOW_ALERT_NOTIFICATION:Ljava/lang/String; = "com.android.vivo.net.hotspot.SHOW_ALERT_NOTIFICATION"

.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final ACTION_STATUS_BAR_STATE:Ljava/lang/String; = "com.android.vivo.net.wifi.statusbarchanged"

.field private static final ACTION_STATUS_BAR_STATE_ROM3:Ljava/lang/String; = "vivo.intent.action.STATUS_BAR_STATE_CHANGED"

.field private static final ACTION_VIVO_SUPER_POWER_SAVE:Ljava/lang/String; = "intent.action.super_power_save_send"

.field private static final ALERT_REMAINING_DATA:I = 0x100000

.field private static final DEFAULT_ALERT_PERIOD:I = 0x80

.field private static final DEFAULT_TETHER_DEBUG_PATH:Ljava/lang/String; = "/data/tetherdebug.conf"

.field private static final DOWN_STATUS_BAR_STATUE:Ljava/lang/String; = "down"

.field private static final DOWN_STATUS_BAR_STATUE_ROM3:Ljava/lang/String; = "expand"

.field private static final ENHANCE_ALERT_PERIOD:I = 0x38

.field private static final INT_SETTINGS_GLOBAL_DEVICE_LIMITAION:Ljava/lang/String; = "settings.device.limitaion"

.field private static final INT_UNLIMIT_DATA_LIMITATION_INDEX:I = 0x0

.field private static final KEY_DATA_CONSUMPTION:Ljava/lang/String; = "hotspot.data.consumption"

.field private static final KEY_DATA_CONSUMPTION_LONG:Ljava/lang/String; = "hotspot.data.consumption.long"

.field private static final KEY_DATA_INTERFACE_CHANGED:Ljava/lang/String; = "vivo.hotspot.dataInterfaceChanged"

.field private static final KEY_DATA_LIMITAION:Ljava/lang/String; = "hotspot.data.limitation"

.field private static final KEY_DATA_LIMITAION_INDEX:Ljava/lang/String; = "hotspot.data.limitation.index"

.field private static final KEY_MODIFY_DATA_CONSUMPTION:Ljava/lang/String; = "com.hotspot.dataConsumption.modification"

.field private static final KEY_STATUS_BAR_STATE:Ljava/lang/String; = "statusbar.state"

.field private static final KEY_STATUS_BAR_STATE_ROM3:Ljava/lang/String; = "state"

.field private static final LONG_SETTINGS_GLOBAL_DATA_LIMITATION:Ljava/lang/String; = "settings.datalimitation"

.field private static final M_BYTE_VAL:I = 0x100000

.field private static final RESHOLD_SPEED_LIMITAION:D = 0.95

.field private static final RX_MAX_SPEED:I = 0x13880

.field private static final RX_SPEED_LIMITATION:I = 0x190

.field private static final STRING_SETTINGS_GLOBAL_DATA_LIMITAION_INDEX:Ljava/lang/String; = "vivo.hotspot.settings.datalimitaion"

.field private static final STRING_SETTINGS_GLOBAL_STATUSBAR_STATE:Ljava/lang/String; = "statusbar_state"

.field private static final SettingsGlobalHotSpotDataLimitaion:Ljava/lang/String; = "vivo.hotspot.DataLimitation"

.field private static final TAG:Ljava/lang/String; = "VivoHotSpotEnhancer"

.field private static final TX_MAX_SPEED:I = 0x13880

.field private static final TX_SPEED_LIMITATION:I = 0x190

.field private static final UP_STATUS_BAR_STATUE:Ljava/lang/String; = "up"

.field private static final UP_STATUS_BAR_STATUE_ROM3:Ljava/lang/String; = "closed"

.field private static final VIVO_CMD_Data_Query_OneShot:I = 0x3

.field private static final VIVO_CMD_Data_Query_With_Limitation:I = 0x1

.field private static final VIVO_CMD_Data_Query_Without_Limitation:I = 0x2

.field private static mInstance:Lcom/android/server/wifi/VivoHotSpotEnhancer;

.field private static mOriginalAlertBytes:J


# instance fields
.field private DBG:Z

.field private IFACE_DATA:Ljava/lang/String;

.field private IFACE_WLAN:Ljava/lang/String;

.field private actionCount:J

.field private countDown:I

.field private currentTime:J

.field private dataConsumeNotifyIntent:Landroid/content/Intent;

.field private dataConsumedStr:Ljava/lang/String;

.field private hasSetDataSpeedLimit:Z

.field private hasShowDialog:Z

.field hotSpotConsumeReceiver:Landroid/content/BroadcastReceiver;

.field private isApEnabled:Z

.field private isDialogClicked:Z

.field private isOverFlow:Z

.field private isPowerSave:Z

.field private isScreenOn:Z

.field private isStatusBarDown:Z

.field private limitFilter:Landroid/content/IntentFilter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertDialog:Landroid/app/Dialog;

.field private final mAlertDialogID:I

.field private mCallerPackageName:Ljava/lang/String;

.field private mCallerUid:I

.field private mClientNum:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataConsemedDownSet:J

.field private mDataConsumed:J

.field private mDataConsumedOffset:J

.field private mDataContentObserver:Landroid/database/ContentObserver;

.field private mDataLimitation:J

.field mDataLimitationObserver:Landroid/database/ContentObserver;

.field private mDebugMode:Z

.field private mDeviceLimitation:I

.field private mEntryUid:Landroid/net/NetworkStatsHistory$Entry;

.field private mHandler:Landroid/os/Handler;

.field private mHotSpotPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mHotSpotReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mIsReceiverRegistered:Z

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPreDataConsumed:J

.field private mPreDataLimitation:J

.field mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

.field private mSimNums:I

.field private mSimUtils:Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;

.field private mStartDataUsage:J

.field private mStartTime:J

.field private mStats:Landroid/net/NetworkStats;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field mStatusBarStatusObserver:Landroid/database/ContentObserver;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTemplateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mUidHistory:Landroid/net/NetworkStatsHistory;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private natCount:I

.field private preDataConsumedStr:Ljava/lang/String;

.field private preUpdateTime:J

.field private screenFilter:Landroid/content/IntentFilter;

.field private statsFilter:Landroid/content/IntentFilter;

.field private statusBarStatus:Ljava/lang/String;

.field private updateIntervelFrequency:I

.field private updateIntervelTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 132
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mOriginalAlertBytes:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 450
    const-string v2, "VivoHotSpotEnhancer"

    invoke-direct {p0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 115
    iput-wide v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStartDataUsage:J

    .line 116
    iput-wide v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    .line 117
    iput-wide v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    .line 118
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mPreDataLimitation:J

    .line 119
    iput-wide v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mPreDataConsumed:J

    .line 120
    iput-wide v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumedOffset:J

    .line 121
    const-wide/32 v2, 0xc800

    iput-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsemedDownSet:J

    .line 122
    iput v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDeviceLimitation:I

    .line 124
    const-string v2, "ap0"

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_WLAN:Ljava/lang/String;

    .line 125
    const-string v2, "rmnet_data0"

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_DATA:Ljava/lang/String;

    .line 138
    iput-boolean v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isStatusBarDown:Z

    .line 139
    iput-boolean v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isScreenOn:Z

    .line 140
    iput-boolean v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow:Z

    .line 141
    iput-boolean v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isPowerSave:Z

    .line 142
    iput-boolean v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasShowDialog:Z

    .line 143
    iput-boolean v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasSetDataSpeedLimit:Z

    .line 144
    iput-boolean v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isApEnabled:Z

    .line 145
    iput v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->natCount:I

    .line 146
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->statsFilter:Landroid/content/IntentFilter;

    .line 147
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->limitFilter:Landroid/content/IntentFilter;

    .line 148
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->screenFilter:Landroid/content/IntentFilter;

    .line 162
    const-string v2, "up"

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->statusBarStatus:Ljava/lang/String;

    .line 165
    const-string v2, "0.0"

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->preDataConsumedStr:Ljava/lang/String;

    .line 166
    iput v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mClientNum:I

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplateList:Ljava/util/List;

    .line 180
    iput v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSimNums:I

    .line 183
    iput-boolean v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isDialogClicked:Z

    .line 184
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumedStr:Ljava/lang/String;

    .line 186
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->updateIntervelTime:J

    .line 187
    iput v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->updateIntervelFrequency:I

    .line 188
    iput-wide v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->actionCount:J

    .line 189
    iget v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->updateIntervelFrequency:I

    iput v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->countDown:I

    .line 190
    iput-wide v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->preUpdateTime:J

    .line 194
    iput v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mAlertDialogID:I

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mHotSpotPackageNames:Ljava/util/List;

    .line 197
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerUid:I

    .line 198
    const-string v2, "com.android.tethersettings"

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerPackageName:Ljava/lang/String;

    .line 199
    iput-boolean v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z

    .line 202
    iput-boolean v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mIsReceiverRegistered:Z

    .line 203
    iput-boolean v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDebugMode:Z

    .line 215
    new-instance v2, Lcom/android/server/wifi/VivoHotSpotEnhancer$1;

    invoke-direct {v2, p0, v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer$1;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitationObserver:Landroid/database/ContentObserver;

    .line 237
    new-instance v2, Lcom/android/server/wifi/VivoHotSpotEnhancer$2;

    invoke-direct {v2, p0, v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer$2;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStatusBarStatusObserver:Landroid/database/ContentObserver;

    .line 251
    new-instance v2, Lcom/android/server/wifi/VivoHotSpotEnhancer$3;

    invoke-direct {v2, p0, v8}, Lcom/android/server/wifi/VivoHotSpotEnhancer$3;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataContentObserver:Landroid/database/ContentObserver;

    .line 261
    new-instance v2, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer$4;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mHotSpotReceiver:Landroid/content/BroadcastReceiver;

    .line 315
    new-instance v2, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer$5;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hotSpotConsumeReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    .line 452
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 454
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStatsService:Landroid/net/INetworkStatsService;

    .line 456
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 457
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 459
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 460
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 461
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mHotSpotPackageNames:Ljava/util/List;

    const-string v3, "com.vivo.easyshare"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mHotSpotReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 465
    new-instance v2, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSimUtils:Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;

    .line 466
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 467
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "vivoHotSpotEnhance"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 468
    .local v1, "vivoHotSpotEnhanceThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 469
    new-instance v2, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mQueryHander:Lcom/android/server/wifi/VivoHotSpotEnhancer$DataUsedQueryHandler;

    .line 473
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSimNums:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/wifi/VivoHotSpotEnhancer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSimNums:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/net/INetworkStatsSession;)Landroid/net/INetworkStatsSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Landroid/net/INetworkStatsSession;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplate:Landroid/net/NetworkTemplate;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isApEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isApEnabled:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStartDataUsage:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStartDataUsage:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->updateDataConsume()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/wifi/VivoHotSpotEnhancer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/VivoHotSpotEnhancer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerUid:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/VivoHotSpotEnhancer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->cancelDialog(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mPreDataLimitation:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->resetControlVariables()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->getDateConsumed()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->showAlertDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->statusBarStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->setDateSpeedLimit(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/wifi/VivoHotSpotEnhancer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->statusBarStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/server/wifi/VivoHotSpotEnhancer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumedOffset:J

    return-wide p1
.end method

.method static synthetic access$3202(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isScreenOn:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isPowerSave:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isNotify()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->calDataUsageAndBroadcast(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasShowDialog:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/wifi/VivoHotSpotEnhancer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_DATA:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isStatusBarDown:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isDialogClicked:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/wifi/VivoHotSpotEnhancer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isDialogClicked:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->enableNat()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->disableNat()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/VivoHotSpotEnhancer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mClientNum:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->getDataRemaining()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasSetDataSpeedLimit:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->handleConnectionChanges()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->setDebugMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDebugMode:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/VivoHotSpotEnhancer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSubInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/VivoHotSpotEnhancer;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mSubInfoList:Ljava/util/List;

    return-object p1
.end method

.method private calDataUsageAndBroadcast(Z)V
    .locals 8
    .param p1, "isForwarding"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 775
    const-string v2, "VivoHotSpotEnhancer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDataConsume is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " isForwarding:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "hasShowDialog: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasShowDialog:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    :goto_0
    iput-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    .line 777
    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 798
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-wide v2, v4

    .line 776
    goto :goto_0

    .line 780
    :cond_2
    if-eqz p1, :cond_0

    .line 781
    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    .line 782
    .local v0, "dataUsage":J
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumedStr:Ljava/lang/String;

    .line 783
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumedStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->preDataConsumedStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 784
    iget-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z

    if-eqz v2, :cond_0

    .line 785
    const-string v2, "VivoHotSpotEnhancer"

    const-string v3, "data consumed does not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 781
    .end local v0    # "dataUsage":J
    :cond_3
    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    iget-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    iget-wide v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    goto :goto_2

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasShowDialog:Z

    if-eqz v2, :cond_5

    iget-wide v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    goto :goto_2

    :cond_5
    iget-wide v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    goto :goto_2

    .line 789
    .restart local v0    # "dataUsage":J
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumedStr:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->preDataConsumedStr:Ljava/lang/String;

    .line 790
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumeNotifyIntent:Landroid/content/Intent;

    .line 791
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumeNotifyIntent:Landroid/content/Intent;

    const-string v3, "com.android.vivo.net.wifi.dataConsumption"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumeNotifyIntent:Landroid/content/Intent;

    const-string v3, "hotspot.data.consumption"

    iget-object v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumedStr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    const-string v2, "VivoHotSpotEnhancer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataConsumedStr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumedStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDataConsumed is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumeNotifyIntent:Landroid/content/Intent;

    const-string v3, "hotspot.data.consumption.long"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 795
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumeNotifyIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private cancelDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 746
    packed-switch p1, :pswitch_data_0

    .line 757
    :goto_0
    return-void

    .line 748
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 751
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mAlertDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 746
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private disableNat()V
    .locals 4

    .prologue
    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mNetworkService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_WLAN:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_DATA:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v1, "VivoHotSpotEnhancer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "success to disable nat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_DATA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_WLAN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->natCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->natCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VivoHotSpotEnhancer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error details :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-string v1, "VivoHotSpotEnhancer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " fail to disable nat with :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_DATA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_WLAN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpKeyVariables()V
    .locals 8

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z

    if-eqz v0, :cond_0

    .line 515
    const-string v0, "VivoHotSpotEnhancer"

    const-string v1, "******************************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataLimitaion is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConsumed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConsumedOffset is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumedOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsNotify is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isNotify()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsStatusBarDown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isStatusBarDown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsScreenOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataOverFlow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasShowAlertDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasShowDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSetDataSpeedLimit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasSetDataSpeedLimit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nat Count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->natCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->actionCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the offset between is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->actionCount:J

    const-wide/16 v4, 0x80

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v0, "VivoHotSpotEnhancer"

    const-string v1, "******************************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    return-void
.end method

.method private enableNat()Z
    .locals 4

    .prologue
    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mNetworkService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_WLAN:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_DATA:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VivoHotSpotEnhancer"

    const-string v2, "fail to enable Nat "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 989
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 990
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, "retVal":Ljava/lang/String;
    const-string v2, "VivoHotSpotEnhancer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveSubscriberId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-object v0
.end method

.method private getDataLimitaion()J
    .locals 4

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings.datalimitation"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDataRemaining()J
    .locals 4

    .prologue
    .line 687
    iget-wide v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->getDateConsumed()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getDateConsumed()J
    .locals 6

    .prologue
    .line 674
    const-string v2, "VivoHotSpotEnhancer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " forceUpdate-getDateConsumed threadid= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 677
    .local v0, "clientNum":I
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V

    .line 678
    :cond_0
    const-string v2, "VivoHotSpotEnhancer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " forceUpdate-complete the force update clientNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v0    # "clientNum":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->updateDataConsume()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStartDataUsage:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumedOffset:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    .line 683
    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    return-wide v2

    .line 679
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VivoHotSpotEnhancer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceUpdate failed to getDateConsumed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getIfaceName()V
    .locals 2

    .prologue
    .line 640
    const-string v0, "ro.vivo.product.solution"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    const-string v0, "ap0"

    iput-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_WLAN:Ljava/lang/String;

    .line 642
    const-string v0, "ccmni0"

    iput-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_DATA:Ljava/lang/String;

    .line 649
    :goto_0
    return-void

    .line 643
    :cond_0
    const-string v0, "ro.vivo.product.solution"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_WLAN:Ljava/lang/String;

    .line 645
    const-string v0, "rmnet_data0"

    iput-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_DATA:Ljava/lang/String;

    goto :goto_0

    .line 647
    :cond_1
    const-string v0, "VivoHotSpotEnhancer"

    const-string v1, "could not get the name of the Iface of hotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/wifi/VivoHotSpotEnhancer;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 534
    sget-object v0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mInstance:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mInstance:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    .line 536
    sget-object v0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mInstance:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-virtual {v0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->start()V

    .line 538
    :cond_0
    sget-object v0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mInstance:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    return-object v0
.end method

.method private handleConnectionChanges()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method private isNotify()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isStatusBarDown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isPowerSave:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOverFlow()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 691
    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->getDataRemaining()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSetSpeedLimit()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 616
    const-string v1, "VivoHotSpotEnhancer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data limitation is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DataConsume is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " alert data set is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v0

    .line 624
    :cond_1
    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    iget-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x100000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 625
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetControlVariables()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 632
    iput-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasShowDialog:Z

    .line 633
    iput-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasSetDataSpeedLimit:Z

    .line 636
    return-void
.end method

.method private setDateSpeedLimit(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const v4, 0x13880

    const/16 v3, 0x190

    .line 961
    iput-boolean p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasSetDataSpeedLimit:Z

    .line 962
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable Fast Query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    if-eqz p1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_WLAN:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 968
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->IFACE_WLAN:Ljava/lang/String;

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->setInterfaceThrottle(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private setDebugMode()V
    .locals 3

    .prologue
    .line 802
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tetherdebug.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 803
    .local v0, "debugDir":Ljava/io/File;
    const-string v1, "tetherdebug"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDebugMode:Z

    .line 808
    :goto_0
    return-void

    .line 806
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDebugMode:Z

    goto :goto_0
.end method

.method private showAlertDialog(Landroid/content/Context;)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 700
    const-string v2, "VivoHotSpotEnhancer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show alert dialog with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "with mContext :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 702
    const-string v2, "VivoHotSpotEnhancer"

    const-string v3, "data limitation is not invalid, return "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasShowDialog:Z

    if-eqz v2, :cond_1

    .line 706
    const-string v2, "VivoHotSpotEnhancer"

    const-string v3, "the dialog has showed, return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 709
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->disableNat()V

    .line 710
    iput-boolean v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasShowDialog:Z

    .line 711
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 712
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v2}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v2

    invoke-direct {v0, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 714
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x30e0149

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 715
    const v2, 0x30e014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 716
    const v2, 0x30e014b

    new-instance v3, Lcom/android/server/wifi/VivoHotSpotEnhancer$6;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer$6;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 725
    const v2, 0x30e014c

    new-instance v3, Lcom/android/server/wifi/VivoHotSpotEnhancer$7;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer$7;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 732
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mAlertDialog:Landroid/app/Dialog;

    .line 733
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mAlertDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/android/server/wifi/VivoHotSpotEnhancer$8;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer$8;-><init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 741
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 742
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private updateDataConsume()J
    .locals 11

    .prologue
    .line 657
    const-wide/16 v6, 0x0

    .line 658
    .local v6, "dataUsed":J
    :try_start_0
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTemplatedlist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplateList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 660
    .local v1, "template":Landroid/net/NetworkTemplate;
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStatsSession:Landroid/net/INetworkStatsSession;

    const/4 v2, -0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v9

    .line 661
    .local v9, "historyStats":Landroid/net/NetworkStatsHistory;
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get the data used of networktemplate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v9}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v2

    add-long/2addr v6, v2

    .line 663
    goto :goto_0

    .line 664
    .end local v1    # "template":Landroid/net/NetworkTemplate;
    .end local v9    # "historyStats":Landroid/net/NetworkStatsHistory;
    :cond_0
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data used is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .end local v6    # "dataUsed":J
    .end local v10    # "i$":Ljava/util/Iterator;
    :goto_1
    return-wide v6

    .line 666
    .restart local v6    # "dataUsed":J
    :catch_0
    move-exception v8

    .line 667
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get statsSession "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-wide/16 v6, -0x1

    goto :goto_1
.end method


# virtual methods
.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 980
    if-lez p1, :cond_0

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z

    .line 985
    :goto_0
    return-void

    .line 983
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z

    goto :goto_0
.end method

.method public getCallerUid()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerUid:I

    return v0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 3
    .param p1, "callerUid"    # I

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerPackageName:Ljava/lang/String;

    .line 507
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z

    if-eqz v0, :cond_0

    .line 508
    const-string v0, "VivoHotSpotEnhancer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerUid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :packagename is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public humanReadableByteCount(J)Ljava/lang/String;
    .locals 13
    .param p1, "bytes"    # J

    .prologue
    .line 761
    const/16 v2, 0x400

    .line 762
    .local v2, "unit":I
    long-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 763
    .local v0, "exp":I
    const-string v1, "M"

    .line 764
    .local v1, "pre":Ljava/lang/String;
    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    long-to-double v6, p1

    int-to-double v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public registerReceiver()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 542
    iget-boolean v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->DBG:Z

    if-eqz v5, :cond_0

    .line 543
    const-string v5, "VivoHotSpotEnhancer"

    const-string v6, "register Receiver...."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->statsFilter:Landroid/content/IntentFilter;

    const-string v6, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hotSpotConsumeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->statsFilter:Landroid/content/IntentFilter;

    const-string v8, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 548
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->limitFilter:Landroid/content/IntentFilter;

    const-string v6, "com.android.vivo.net.hotspot.LimitationUpdate"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->limitFilter:Landroid/content/IntentFilter;

    const-string v6, "com.android.vivo.changeDataConsumption"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hotSpotConsumeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->limitFilter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 553
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->screenFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->screenFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->screenFilter:Landroid/content/IntentFilter;

    const-string v6, "com.android.vivo.net.wifi.statusbarchanged"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->screenFilter:Landroid/content/IntentFilter;

    const-string v6, "vivo.intent.action.STATUS_BAR_STATE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->screenFilter:Landroid/content/IntentFilter;

    const-string v6, "intent.action.super_power_save_send"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->screenFilter:Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->screenFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hotSpotConsumeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->screenFilter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 563
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 564
    .local v1, "ifaceFilter":Landroid/content/IntentFilter;
    const-string v5, "com.android.vivo.hotpot.dataInterfaceChanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hotSpotConsumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 568
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 569
    .local v3, "pkgFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v5, "package"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 571
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hotSpotConsumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 573
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 574
    .local v4, "simFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hotSpotConsumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 577
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "settings.datalimitation"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 581
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "statusbar_state"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStatusBarStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 585
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 586
    .local v2, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 587
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 594
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mIsReceiverRegistered:Z

    .line 595
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dumpKeyVariables()V

    .line 597
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 476
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasSetDataSpeedLimit:Z

    .line 477
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isPowerSave:Z

    .line 478
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hasShowDialog:Z

    .line 479
    iput-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumedOffset:J

    .line 480
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->getIfaceName()V

    .line 481
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer;->getDataLimitaion()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitation:J

    .line 482
    iput-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumedOffset:J

    .line 483
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->preDataConsumedStr:Ljava/lang/String;

    .line 485
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isStatusBarDown:Z

    .line 486
    iput-boolean v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isScreenOn:Z

    .line 487
    iput-boolean v3, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isOverFlow:Z

    .line 490
    iput-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataConsumed:J

    .line 491
    iput-wide v4, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mPreDataConsumed:J

    .line 492
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->isDialogClicked:Z

    .line 493
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mTemplateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 494
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->dataConsumedStr:Ljava/lang/String;

    .line 495
    return-void
.end method

.method public setCallerUid(I)V
    .locals 0
    .param p1, "callerUid"    # I

    .prologue
    .line 498
    iput p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mCallerUid:I

    .line 499
    return-void
.end method

.method public setInterfaceThrottle(Ljava/lang/String;II)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxKbps"    # I
    .param p3, "txKbps"    # I

    .prologue
    .line 972
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :goto_0
    return-void

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VivoHotSpotEnhancer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unRegisterReceiver()V
    .locals 4

    .prologue
    .line 600
    iget-boolean v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mIsReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 613
    :goto_0
    return-void

    .line 604
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->hotSpotConsumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 605
    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataLimitationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 606
    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mStatusBarStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 607
    iget-object v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mDataContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 608
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer;->mIsReceiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VivoHotSpotEnhancer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unregister receiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
