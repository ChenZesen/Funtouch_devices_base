.class public Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$11;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$HostRefreshThread;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoConnectedState;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;,
        Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x21000

.field private static final BSSID_STAT_CACHE_SIZE:I = 0x14

.field private static final BSSID_STAT_EMPTY_COUNT:I = 0x3

.field private static final BSSID_STAT_RANGE_HIGH_DBM:I = -0x2d

.field private static final BSSID_STAT_RANGE_LOW_DBM:I = -0x69

.field private static final CMD_INTERNET_ACCESS:I = 0x21033

.field private static final CMD_RSSI_FETCH:I = 0x2100b

.field private static DBG:Z = false

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field private static final EVENT_ALL_WIFI_IS_UNAVAILABLE:I = 0x21032

.field private static final EVENT_BSSID_CHANGE:I = 0x21007

.field private static final EVENT_MONITOR_NETWORK_SPEED:I = 0x21037

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_P2P_STATE_CHANGE:I = 0x2102b

.field private static final EVENT_POOR_LINK_PROFILING_SETTINGS_CHANGE:I = 0x2102c

.field private static final EVENT_ROAMING_DETECT:I = 0x21028

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_SCREEN_OFF:I = 0x21009

.field private static final EVENT_SCREEN_ON:I = 0x21008

.field private static final EVENT_SUPPLICANT_STATE_CHANGE:I = 0x21004

.field private static final EVENT_VIVO_PKT_FETCH:I = 0x21035

.field private static final EVENT_VIVO_SMART_WIFI_VALID:I = 0x21034

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_IS_UNAVAILABLE:I = 0x21036

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final EXP_COEFFICIENT_MONITOR:D = 0.5

.field private static final EXP_COEFFICIENT_RECORD:D = 0.1

.field private static final FOREGROUND_APP_INFO_COUNT:I = 0x6

.field static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final GOOD_LINK_LOSS_THRESHOLD:D = 0.1

.field private static final GOOD_LINK_RSSI_RANGE_MAX:I = 0x14

.field private static final GOOD_LINK_RSSI_RANGE_MIN:I = 0x3

.field private static final GOOD_LINK_TARGET:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;

.field private static final INVALID_PKT_COUNT:I = 0x0

.field private static final INVALID_PKT_NAME:Ljava/lang/String; = ""

.field public static final INVALID_STEP:I = 0x5

.field private static final INVALID_UID:I = 0x0

.field private static final LINK_MONITOR_LEVEL_THRESHOLD:I = 0x3

.field private static final LINK_SAMPLING_INTERVAL_MS:J = 0x3e8L

.field private static final MAX_AVOID_TIME:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;

.field public static final MSG_NETWORK_DETECTION_RESULT:Ljava/lang/String; = "android.net.wifi.MSG_NETWORK_DETECTION_RESULT"

.field public static final NETWORK_STATE_INVALID:I = 0x2

.field public static final NETWORK_STATE_USER_PROMPTE:I = 0x3

.field public static final NETWORK_STATE_VALID:I = 0x1

.field public static final NOT_COMPLETED:I = -0x1

.field static final POOR_LINK_DETECTED:I = 0x21015

.field private static final POOR_LINK_LOSS_THRESHOLD:D = 0.45

.field private static final POOR_LINK_MIN_VOLUME:D = 2.0

.field private static final POOR_LINK_PROFILING_PERIOD_MILLIS:I = 0x3e8

.field private static final POOR_LINK_SAMPLE_COUNT:I = 0x3

.field public static final RSSI_RECORD_COUNT:I = 0x5

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "VivoWifiWatchdogStateMachine"

.field private static final VIVO_WIFI_MD5:Ljava/lang/String; = "105934603441e8b9"

.field public static final WIFI_CHECK_INTERNET:Ljava/lang/String; = "android.net.wifi.WIFI_CHECK_INTERNET"

.field private static currentRssiIndex:I

.field private static currentSpeedIndex:I

.field private static diffRssi:I

.field private static filterSpeed:D

.field private static isDetecting:Z

.field private static mCurrenSpeed:D

.field private static mLogMessages:Z

.field private static final mMovingNotShowDialog:Z

.field private static final mMtkGeminiSupport:Z

.field private static mNetworkDisableCount:I

.field private static mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

.field private static mRedirectUrl:Ljava/lang/String;

.field private static mRssiArray:[I

.field private static mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

.field private static mStepArray:[F

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

.field private static mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

.field private static mWifiStep:F

.field private static mWifiStep1:F

.field private static sPresetLoss:[D

.field private static sWifiOnly:Z

.field private static tableString:Ljava/lang/String;

.field private static tableValue:I


# instance fields
.field private baiduResponseCode:I

.field private currentDetailState:Landroid/net/NetworkInfo$DetailedState;

.field private dTotalTcpRxBytes:J

.field private dTotalTcpRxPkt:J

.field private dTotalTcpTxBytes:J

.field private dTotalTcpTxPkt:J

.field private dTotalTxPkt:J

.field private dialogNotShowAgain:Z

.field private isRoaming:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBaiduServer:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

.field private mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mCurrentSignalLevel:I

.field private mDNSFailCounts:D

.field private mDelayedCheckInternetCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mGoodLinkThreshold:D

.field private final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsScreenOn:Z

.field private mLastTcpRxBytes:J

.field private mLastTcpRxPkt:J

.field private mLastTcpTxBytes:J

.field private mLastTcpTxPkt:J

.field private mLastTimePktSample:J

.field private mLastTotalTxPkt:J

.field mLatencyPanelView:Landroid/view/View;

.field private mLatestRssi:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLinkSamplingIntervalMs:J

.field private mLinkSpeed:I

.field mLinkStatus:Ljava/lang/String;

.field private mNetworkValid:Z

.field mPoorLinkProfilingEnabled:Z

.field private final mPoorLinkProfilingInfo:Ljava/lang/Runnable;

.field private mPoorLinkThreshold:D

.field private mPoorNetworkDetectionEnabled:Z

.field private mRssiFetchToken:I

.field private mSSID:Ljava/lang/String;

.field private mSampleCount:I

.field private mSpeedMedian:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;

.field mTextView:Landroid/widget/TextView;

.field private mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mVivoConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoConnectedState;

.field private mVivoDefaultState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;

.field private mVivoIntentFilter:Landroid/content/IntentFilter;

.field private mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

.field private mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

.field private mVivoNotConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;

.field private mVivoOnlineState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;

.field private mVivoOnlineWatchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;

.field private mVivoPoorLinkDetectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;

.field private mVivoReadyToSwitchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;

.field private mVivoServer:Ljava/lang/String;

.field private mVivoVerifyingLinkState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

.field private mVivoWatchdogDisabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;

.field private mVivoWatchdogEnabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;

.field mWeightAlgo:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;

.field p2pStart:Z

.field toast:Landroid/widget/Toast;

.field private vivoResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 146
    sput-boolean v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    .line 147
    sput-boolean v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLogMessages:Z

    .line 320
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;

    new-instance v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;

    const v2, 0x1b7740

    invoke-direct {v1, v6, v7, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;

    const v2, 0x493e0

    invoke-direct {v1, v7, v9, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v8

    const/4 v1, 0x2

    new-instance v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v3, 0x6

    const/16 v4, 0xa

    const v5, 0xea60

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;

    const/16 v2, 0x9

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3, v6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;

    .line 338
    new-array v0, v7, [Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;

    new-instance v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;

    const v2, 0x1b7740

    const/16 v3, -0xc8

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;

    const v2, 0x493e0

    const/16 v3, -0x46

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v1, v0, v8

    const/4 v1, 0x2

    new-instance v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v3, -0x37

    invoke-direct {v2, v6, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;

    .line 356
    sput-boolean v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sWifiOnly:Z

    .line 403
    const-string v0, "ro.mtk_gemini_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mMtkGeminiSupport:Z

    .line 2395
    sput v10, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiStep:F

    .line 2396
    sput v10, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiStep1:F

    .line 2397
    sput-boolean v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isDetecting:Z

    .line 2399
    sput v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mNetworkDisableCount:I

    .line 2826
    new-array v0, v9, [I

    sput-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiArray:[I

    .line 2891
    new-array v0, v9, [F

    sput-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mStepArray:[F

    .line 2947
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    sput-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    .line 3383
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    sput-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    .line 3384
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    sput-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    .line 3385
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrenSpeed:D

    .line 3388
    sput v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentRssiIndex:I

    .line 3389
    sput v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentSpeedIndex:I

    .line 3390
    sput v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->tableValue:I

    .line 3391
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->tableString:Ljava/lang/String;

    .line 3392
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->filterSpeed:D

    .line 3393
    sput v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->diffRssi:I

    .line 3625
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    sput-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    .line 3825
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Messenger;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 416
    const-string v0, "VivoWifiWatchdogStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 351
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 360
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    .line 362
    iput v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I

    .line 366
    iput-boolean v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z

    .line 370
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoDefaultState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;

    .line 371
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoWatchdogDisabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;

    .line 372
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoWatchdogEnabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;

    .line 373
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNotConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;

    .line 374
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoVerifyingLinkState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

    .line 375
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoConnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoConnectedState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoConnectedState;

    .line 376
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineWatchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;

    .line 377
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    .line 378
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;

    .line 379
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    .line 380
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoPoorLinkDetectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;

    .line 381
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoReadyToSwitchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;

    .line 385
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z

    .line 388
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->p2pStart:Z

    .line 390
    iput-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    .line 391
    iput-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    .line 392
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    .line 395
    iput v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I

    .line 398
    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkThreshold:D

    .line 399
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mGoodLinkThreshold:D

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkStatus:Ljava/lang/String;

    .line 401
    iput-boolean v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWeightAlgo:Z

    .line 402
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mDelayedCheckInternetCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1945
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$4;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    .line 2398
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mDNSFailCounts:D

    .line 2400
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxPkt:J

    .line 2401
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxPkt:J

    .line 2402
    iput-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxPkt:J

    .line 2403
    iput-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxPkt:J

    .line 2404
    invoke-static {}, Landroid/net/VivoTrafficStats;->getTotalTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTotalTxPkt:J

    .line 2405
    iput-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTxPkt:J

    .line 2407
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxBytes:J

    .line 2408
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpTxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxBytes:J

    .line 2409
    iput-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxBytes:J

    .line 2410
    iput-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxBytes:J

    .line 2418
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkSamplingIntervalMs:J

    .line 2500
    iput-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2501
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dialogNotShowAgain:Z

    .line 2595
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mNetworkValid:Z

    .line 3386
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;

    const-string v1, "VivoWifiWatchdogStateMachine"

    const/4 v2, 0x7

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedMedian:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;

    .line 3387
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSSID:Ljava/lang/String;

    .line 3822
    const-string v0, "www.baidu.com"

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mBaiduServer:Ljava/lang/String;

    .line 3823
    const-string v0, "wf.vivo.com.cn"

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoServer:Ljava/lang/String;

    .line 3827
    iput v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduResponseCode:I

    .line 3828
    iput v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->vivoResponseCode:I

    .line 417
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    .line 419
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 421
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 424
    iput-object p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 425
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setupVivoReceiver()V

    .line 426
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->registerForVivoPoorNetworkSettingsChanges()V

    .line 427
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->registerForSmartWiFiToggle()V

    .line 428
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->initSpeedInfo()V

    .line 429
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->initPacketInfo()V

    .line 430
    invoke-static {}, Lcom/android/server/wifi/VivoServerMapHelper;->createVivoServerFile()V

    .line 432
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setupNetworkReceiver()V

    .line 434
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    .line 439
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->registerForWatchdogToggle()V

    .line 440
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoDefaultState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 441
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoWatchdogDisabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoDefaultState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 442
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoWatchdogEnabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoDefaultState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 443
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNotConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoWatchdogEnabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 444
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoVerifyingLinkState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoWatchdogEnabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 445
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoConnectedState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoWatchdogEnabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 446
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoWatchdogEnabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 447
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineWatchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoConnectedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 448
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoConnectedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 449
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoReadyToSwitchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoConnectedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 450
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoConnectedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 451
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoPoorLinkDetectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 453
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNotConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 458
    :goto_0
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setLogRecSize(I)V

    .line 459
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setLogOnlyTransitions(Z)V

    .line 460
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateSettings()V

    .line 461
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoWatchdogDisabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->preparePacketInfo()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getAvergSpeed()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$11600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;DDII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 144
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateSpeed(DDII)V

    return-void
.end method

.method static synthetic access$11700()D
    .locals 2

    .prologue
    .line 144
    sget-wide v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->filterSpeed:D

    return-wide v0
.end method

.method static synthetic access$11702(D)D
    .locals 0
    .param p0, "x0"    # D

    .prologue
    .line 144
    sput-wide p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->filterSpeed:D

    return-wide p0
.end method

.method static synthetic access$11800()D
    .locals 2

    .prologue
    .line 144
    sget-wide v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrenSpeed:D

    return-wide v0
.end method

.method static synthetic access$11900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return v0
.end method

.method static synthetic access$12000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;D)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # D

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->shouldSwitch4G(D)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return p1
.end method

.method static synthetic access$12100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isForegroundAppVisit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setForegroundAppInfo()V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxPkt:J

    return-wide v0
.end method

.method static synthetic access$12402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxPkt:J

    return-wide p1
.end method

.method static synthetic access$12500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxBytes:J

    return-wide v0
.end method

.method static synthetic access$12502(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpTxBytes:J

    return-wide p1
.end method

.method static synthetic access$12600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxPkt:J

    return-wide v0
.end method

.method static synthetic access$12602(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxPkt:J

    return-wide p1
.end method

.method static synthetic access$12700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxBytes:J

    return-wide v0
.end method

.method static synthetic access$12702(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTcpRxBytes:J

    return-wide p1
.end method

.method static synthetic access$12800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;DDDD)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # D

    .prologue
    .line 144
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setCurrentPacketInfo(DDDD)V

    return-void
.end method

.method static synthetic access$12902(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTxPkt:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->calculateSignalLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$13000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTotalTxPkt:J

    return-wide v0
.end method

.method static synthetic access$13002(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTotalTxPkt:J

    return-wide p1
.end method

.method static synthetic access$13100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxPkt:J

    return-wide v0
.end method

.method static synthetic access$13102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxPkt:J

    return-wide p1
.end method

.method static synthetic access$13200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxPkt:J

    return-wide v0
.end method

.method static synthetic access$13202(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxPkt:J

    return-wide p1
.end method

.method static synthetic access$13300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxBytes:J

    return-wide v0
.end method

.method static synthetic access$13302(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxBytes:J

    return-wide p1
.end method

.method static synthetic access$13400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxBytes:J

    return-wide v0
.end method

.method static synthetic access$13402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxBytes:J

    return-wide p1
.end method

.method static synthetic access$13500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->rxtxBytesNeedCheckInternet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$13600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendInternetCheck()V

    return-void
.end method

.method static synthetic access$13700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$13800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$13900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$14000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$14100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14600()[D
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sPresetLoss:[D

    return-object v0
.end method

.method static synthetic access$14602([D)[D
    .locals 0
    .param p0, "x0"    # [D

    .prologue
    .line 144
    sput-object p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sPresetLoss:[D

    return-object p0
.end method

.method static synthetic access$14700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14800()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$GoodLinkTarget;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mGoodLinkThreshold:D

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handlePoorLinkProfilingChange()V

    return-void
.end method

.method static synthetic access$15000()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$MaxAvoidTime;

    return-object v0
.end method

.method static synthetic access$15100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->tableString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getTxBytesCount()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$17100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->txrxBytesToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->speedToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$17500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$17600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$18100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$18200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$18300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setCurrentRssi(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$19000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # F

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setCurrentStep(F)V

    return-void
.end method

.method static synthetic access$19100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->notShowDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$19200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->notShowDialogStep()Z

    move-result v0

    return v0
.end method

.method static synthetic access$19300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dismissSwitchMobileNetworkDialog()V

    return-void
.end method

.method static synthetic access$19900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNotConnectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNotConnectedState;

    return-object v0
.end method

.method static synthetic access$20000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentDetailState:Landroid/net/NetworkInfo$DetailedState;

    return-object p1
.end method

.method static synthetic access$20200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21002(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dialogNotShowAgain:Z

    return p1
.end method

.method static synthetic access$21100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->switchToMobileNetwork(ZZ)V

    return-void
.end method

.method static synthetic access$21400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->checkInternet()V

    return-void
.end method

.method static synthetic access$21700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isVivoSmartWiFiEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$21800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setHostCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$21900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V

    return-void
.end method

.method static synthetic access$23002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 144
    sput-object p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$23100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->vivoResponseCode:I

    return v0
.end method

.method static synthetic access$23102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->vivoResponseCode:I

    return p1
.end method

.method static synthetic access$23200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isCaptivePortal()I

    move-result v0

    return v0
.end method

.method static synthetic access$23300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduResponseCode:I

    return v0
.end method

.method static synthetic access$23302(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduResponseCode:I

    return p1
.end method

.method static synthetic access$23400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduIsCaptivePortal()I

    move-result v0

    return v0
.end method

.method static synthetic access$23500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 144
    sput-boolean p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isDetecting:Z

    return p0
.end method

.method static synthetic access$23700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoWatchdogDisabledState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoWatchdogDisabledState;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoVerifyingLinkState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handleNetworkStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mDelayedCheckInternetCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineWatchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineWatchState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRoaming:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->handleAllWifiIsUnavailable(ZZ)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6102(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I

    return p1
.end method

.method static synthetic access$6104(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSampleCount:I

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->clearSpeedRecord()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$6404(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkSpeed:I

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkSpeed:I

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatestRssi:I

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatestRssi:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->updateRssi(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600()[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # [Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getMedianRssi([Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->hideLatencyPanel()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoOnlineState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoOnlineState;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object v0
.end method

.method static synthetic access$9502(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object p1
.end method

.method static synthetic access$9600(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->clearPktRecord()V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->clearForegroundAppInfo()V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->clearPacketInfoRecord()V

    return-void
.end method

.method private baiduIsCaptivePortal()I
    .locals 17

    .prologue
    .line 4189
    const-string v14, "VivoWifiWatchdogStateMachine"

    const-string v15, "baiduIsCaptivePortal start."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    const/4 v12, 0x0

    .line 4192
    .local v12, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v3, 0x257

    .line 4193
    .local v3, "httpResponseCode":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "http://"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mBaiduServer:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4194
    .local v13, "urlString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4195
    .local v6, "mNetwork":Landroid/net/Network;
    const-string v14, "net.baidu.dns"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getHostCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4197
    .local v5, "mHostCache":Ljava/lang/String;
    :try_start_0
    const-string v14, "unknown"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 4198
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "http://"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4201
    :cond_0
    const/4 v14, 0x0

    sput-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    .line 4203
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4205
    .local v7, "url":Ljava/net/URL;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->findWifiNetwork()Landroid/net/Network;

    move-result-object v6

    .line 4206
    if-nez v6, :cond_2

    .line 4207
    const-string v14, "CheckInternetThread baidu wifi mNetwork==null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4285
    if-eqz v12, :cond_1

    .line 4286
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move v4, v3

    .line 4290
    .end local v3    # "httpResponseCode":I
    .end local v7    # "url":Ljava/net/URL;
    .local v4, "httpResponseCode":I
    :goto_0
    return v4

    .line 4211
    .end local v4    # "httpResponseCode":I
    .restart local v3    # "httpResponseCode":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_2
    :try_start_1
    sget-boolean v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_3

    .line 4212
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CheckInternetThread baidu Checking "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " on "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4214
    :cond_3
    invoke-virtual {v6, v7}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v12, v0

    .line 4215
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 4216
    const/16 v14, 0x2710

    invoke-virtual {v12, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 4217
    const/16 v14, 0x2710

    invoke-virtual {v12, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 4218
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 4219
    const-string v14, "Connection"

    const-string v15, "Close"

    invoke-virtual {v12, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4220
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->connect()V

    .line 4222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 4224
    .local v8, "requestTimestamp":J
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 4227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 4229
    .local v10, "responseTimestamp":J
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 4230
    sget-boolean v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_4

    .line 4231
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CheckInternetThread baidu : ret="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " headers="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4245
    :cond_4
    const/16 v14, 0xc8

    if-ne v3, v14, :cond_6

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    if-nez v14, :cond_6

    .line 4246
    sget-boolean v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_5

    const-string v14, "CheckInternetThread baidu Empty 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4247
    :cond_5
    const/16 v3, 0xcc

    .line 4251
    :cond_6
    const/16 v14, 0x12c

    if-lt v3, v14, :cond_d

    const/16 v14, 0x190

    if-ge v3, v14, :cond_d

    .line 4252
    :try_start_2
    const-string v14, "Location"

    invoke-virtual {v12, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    .line 4255
    sget-boolean v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CheckInternetThread baidu: mRedirectUrl="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4256
    :cond_7
    sget-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    if-eqz v14, :cond_a

    sget-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    sget-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    const-string v15, "http://www.baidu.com"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    sget-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    const-string v15, "https://www.baidu.com"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    sget-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    const-string v15, "www.baidu.com"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    sget-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    const-string v15, "http://m.baidu.com"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    sget-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    const-string v15, "https://m.baidu.com"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    sget-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    const-string v15, "m.baidu.com"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 4263
    :cond_8
    sget-boolean v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_9

    const-string v14, "baiduIsCaptivePortal: redirect to baidu, interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4264
    :cond_9
    const/16 v3, 0xcc

    .line 4265
    const/4 v14, 0x0

    sput-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4285
    :cond_a
    :goto_1
    if-eqz v12, :cond_b

    .line 4286
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 4289
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "requestTimestamp":J
    .end local v10    # "responseTimestamp":J
    :cond_b
    :goto_2
    sget-boolean v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_c

    const-string v14, "VivoWifiWatchdogStateMachine"

    const-string v15, "CheckInternetThread baidu end."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move v4, v3

    .line 4290
    .end local v3    # "httpResponseCode":I
    .restart local v4    # "httpResponseCode":I
    goto/16 :goto_0

    .line 4269
    .end local v4    # "httpResponseCode":I
    .restart local v3    # "httpResponseCode":I
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "requestTimestamp":J
    .restart local v10    # "responseTimestamp":J
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isRedirect(Ljava/net/HttpURLConnection;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 4270
    sget-boolean v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_e

    const-string v14, "CheckInternetThread baidu not redirect interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4271
    :cond_e
    const/16 v3, 0xcc

    goto :goto_1

    .line 4274
    :catch_0
    move-exception v2

    .line 4275
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v14, "VivoWifiWatchdogStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 4278
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "requestTimestamp":J
    .end local v10    # "responseTimestamp":J
    :catch_1
    move-exception v2

    .line 4279
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CheckInternetThread baidu exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4280
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->collectNetworkData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4281
    const/16 v14, 0x257

    if-ne v3, v14, :cond_f

    .line 4285
    :cond_f
    if-eqz v12, :cond_b

    .line 4286
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 4285
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz v12, :cond_10

    .line 4286
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    throw v14
.end method

.method private calculateSignalLevel(I)I
    .locals 3
    .param p1, "rssi"    # I

    .prologue
    .line 1428
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 1429
    .local v0, "signalLevel":I
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSSI current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1431
    :cond_0
    return v0
.end method

.method private checkInternet()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3833
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isDetecting:Z

    if-eqz v0, :cond_0

    .line 3834
    const-string v0, "Is in wifi internet checking, ingore."

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3840
    :goto_0
    return-void

    .line 3837
    :cond_0
    sput-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isDetecting:Z

    .line 3838
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    invoke-virtual {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->start()V

    .line 3839
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Z)V

    invoke-virtual {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$CheckInternetThread;->start()V

    goto :goto_0
.end method

.method private clearForegroundAppInfo()V
    .locals 6

    .prologue
    .line 2979
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "clearForegroundAppInfo"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2980
    :cond_0
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 2981
    sget-object v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 2982
    sget-object v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    new-instance v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    aput-object v2, v1, v0

    .line 2984
    :cond_1
    sget-object v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const-string v3, ""

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->updateInfo(IJLjava/lang/String;)V

    .line 2980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2986
    :cond_2
    return-void
.end method

.method private clearPacketInfoRecord()V
    .locals 6

    .prologue
    .line 3676
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "clearPacketInfoRecord()"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3678
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 3679
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v2, v2, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txPacket:D

    .line 3680
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v2, v2, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    .line 3681
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v2, v2, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxPacket:D

    .line 3682
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v2, v2, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxBytes:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3678
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3684
    :catch_0
    move-exception v0

    .line 3685
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3687
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private clearPktRecord()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 2420
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTotalTxPkt:J

    .line 2421
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dTotalTxPkt:J

    .line 2422
    return-void
.end method

.method private clearRssiRecord()V
    .locals 4

    .prologue
    .line 2839
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "clearRssiRecord()"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2841
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 2842
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiArray:[I

    const/16 v3, -0x7f

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2841
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2844
    :catch_0
    move-exception v0

    .line 2845
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2847
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private clearSpeedRecord()V
    .locals 6

    .prologue
    .line 3528
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "clearSpeedRecord"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3530
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 3531
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v2, v2, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    .line 3532
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v2, v2, v1

    const/16 v3, -0x7f

    iput v3, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    .line 3533
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v2, v2, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    .line 3534
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v2, v2, v1

    const/16 v3, -0x7f

    iput v3, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3536
    :catch_0
    move-exception v0

    .line 3537
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3539
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private clearStepRecord()V
    .locals 4

    .prologue
    .line 2905
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "clearStepRecord()"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2907
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 2908
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mStepArray:[F

    const/high16 v3, 0x40a00000    # 5.0f

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2907
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2910
    :catch_0
    move-exception v0

    .line 2911
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2913
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private dismissSwitchMobileNetworkDialog()V
    .locals 2

    .prologue
    .line 2551
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "dismissSwitchMobileNetworkDialog"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2554
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isVivoSmartWiFiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2555
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "smart wifi is disabled, so return."

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2567
    :cond_1
    :goto_0
    return-void

    .line 2558
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 2560
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2561
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "dismiss dialog"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2562
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2564
    :catch_0
    move-exception v0

    .line 2565
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private findWifiNetwork()Landroid/net/Network;
    .locals 11

    .prologue
    .line 2473
    const/4 v8, 0x0

    .line 2475
    .local v8, "wifiNetwork":Landroid/net/Network;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2476
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v7

    .line 2477
    .local v7, "networks":[Landroid/net/Network;
    if-eqz v7, :cond_1

    array-length v9, v7

    if-lez v9, :cond_1

    .line 2478
    move-object v0, v7

    .local v0, "arr$":[Landroid/net/Network;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v0, v3

    .line 2479
    .local v6, "net":Landroid/net/Network;
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 2480
    .local v4, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 2481
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "network , net.netId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/net/Network;->netId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", info:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    .line 2482
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 2483
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "find wifi network , net.netId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/net/Network;->netId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2484
    move-object v8, v6

    .line 2478
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2490
    .end local v0    # "arr$":[Landroid/net/Network;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "i$":I
    .end local v4    # "info":Landroid/net/NetworkInfo;
    .end local v5    # "len$":I
    .end local v6    # "net":Landroid/net/Network;
    .end local v7    # "networks":[Landroid/net/Network;
    :catch_0
    move-exception v2

    .line 2491
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2493
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v8
.end method

.method private getAppPacketCount(I)J
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 3167
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppPacketCount, uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3168
    :cond_0
    const-wide/16 v0, 0x0

    .line 3170
    .local v0, "count":J
    if-gez p1, :cond_1

    move-wide v2, v0

    .line 3177
    .end local v0    # "count":J
    .local v2, "count":J
    :goto_0
    return-wide v2

    .line 3174
    .end local v2    # "count":J
    .restart local v0    # "count":J
    :cond_1
    invoke-static {p1}, Landroid/net/VivoTrafficStats;->getUidTxPackets(I)J

    move-result-wide v0

    .line 3176
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppPacketCount, count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_2
    move-wide v2, v0

    .line 3177
    .end local v0    # "count":J
    .restart local v2    # "count":J
    goto :goto_0
.end method

.method private getAvergSpeed()D
    .locals 18

    .prologue
    .line 3478
    const-wide/16 v12, 0x0

    .line 3479
    .local v12, "sum":D
    const-wide/16 v8, 0x0

    .line 3480
    .local v8, "num":D
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 3481
    .local v2, "averg":D
    const-string v10, "mSpeedArray: "

    .line 3484
    .local v10, "speedStr":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "pos":I
    :goto_0
    const/4 v11, 0x7

    if-ge v7, v11, :cond_1

    .line 3485
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v14, v14, v7

    iget-wide v14, v14, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " , "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3486
    sget-object v11, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v11, v11, v7

    iget-wide v14, v11, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpl-double v11, v14, v16

    if-nez v11, :cond_0

    move-wide v4, v2

    .line 3498
    .end local v2    # "averg":D
    .local v4, "averg":D
    :goto_1
    return-wide v4

    .line 3489
    .end local v4    # "averg":D
    .restart local v2    # "averg":D
    :cond_0
    sget-object v11, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v11, v11, v7

    iget-wide v14, v11, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-double/2addr v12, v14

    .line 3490
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v14

    .line 3484
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3492
    :cond_1
    const-wide/16 v14, 0x0

    cmpl-double v11, v8, v14

    if-eqz v11, :cond_2

    div-double v2, v12, v8

    .line 3497
    :cond_2
    :goto_2
    sget-boolean v11, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAvergSpeed , averg:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "  ,  "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_3
    move-wide v4, v2

    .line 3498
    .end local v2    # "averg":D
    .restart local v4    # "averg":D
    goto :goto_1

    .line 3493
    .end local v4    # "averg":D
    .restart local v2    # "averg":D
    :catch_0
    move-exception v6

    .line 3494
    .local v6, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getHostCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propname"    # Ljava/lang/String;

    .prologue
    .line 2497
    const-string v0, "unknown"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMaxSpeed()D
    .locals 10

    .prologue
    .line 3458
    const-wide/16 v2, 0x0

    .line 3459
    .local v2, "maxSpeed":D
    const-string v4, "mSpeedArray: "

    .line 3462
    .local v4, "speedStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/4 v5, 0x7

    if-ge v1, v5, :cond_1

    .line 3463
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v6, v6, v1

    iget-wide v6, v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3464
    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v5, v5, v1

    iget-wide v6, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v5, v5, v1

    iget-wide v6, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    cmpl-double v5, v6, v2

    if-lez v5, :cond_0

    .line 3465
    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v5, v5, v1

    iget-wide v2, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3462
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3469
    :catch_0
    move-exception v0

    .line 3470
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3474
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    sget-boolean v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMaxSpeed , maxSpeed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ,  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3475
    :cond_2
    return-wide v2
.end method

.method private getMedianRssi([Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;)I
    .locals 6
    .param p1, "array"    # [Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    .prologue
    .line 3541
    const/4 v2, 0x0

    .line 3544
    .local v2, "rssi":I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_1

    .line 3547
    :try_start_0
    aget-object v3, p1, v1

    iget v3, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    const/16 v4, -0x7f

    if-eq v3, v4, :cond_0

    .line 3548
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedMedian:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;

    aget-object v4, p1, v1

    iget v4, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    int-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->putAndGetMedian(D)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    double-to-int v2, v4

    .line 3544
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3551
    :catch_0
    move-exception v0

    .line 3552
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3555
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    sget-boolean v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMedianRssi , rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3556
    :cond_2
    return v2
.end method

.method private getMedianSpeed()D
    .locals 10

    .prologue
    .line 3440
    const-wide/16 v2, 0x0

    .line 3441
    .local v2, "speed":D
    const-string v4, "mSpeedArray: "

    .line 3444
    .local v4, "speedStr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/4 v5, 0x7

    if-ge v1, v5, :cond_1

    .line 3445
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v6, v6, v1

    iget-wide v6, v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3446
    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v5, v5, v1

    iget-wide v6, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_0

    .line 3447
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedMedian:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;

    sget-object v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v6, v6, v1

    iget-wide v6, v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->putAndGetMedian(D)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 3444
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3450
    :catch_0
    move-exception v0

    .line 3451
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3454
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    sget-boolean v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMedianSpeed , speed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ,  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3455
    :cond_2
    return-wide v2
.end method

.method private getPhoneInfo()Ljava/lang/String;
    .locals 19

    .prologue
    .line 4054
    const/4 v7, 0x0

    .line 4056
    .local v7, "infoString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4058
    .local v9, "sn1":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "sn1"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 4064
    :goto_0
    const-wide/16 v12, -0x1

    .line 4066
    .local v12, "st1":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "st1"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    .line 4067
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_0

    .line 4068
    const-wide/16 v12, 0x0

    .line 4077
    :goto_1
    const/4 v10, 0x0

    .line 4079
    .local v10, "sn2":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "sn2"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 4085
    :goto_2
    const-wide/16 v14, -0x1

    .line 4087
    .local v14, "st2":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "st2"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v14

    .line 4088
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-nez v16, :cond_1

    .line 4089
    const-wide/16 v14, 0x0

    .line 4098
    :goto_3
    const-string v6, ""

    .line 4100
    .local v6, "imei":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "phone"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v6

    .line 4106
    :goto_4
    const-string v8, ""

    .line 4108
    .local v8, "model":Ljava/lang/String;
    :try_start_5
    const-string v16, "ro.vivo.product.model"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v8

    .line 4114
    :goto_5
    const-wide/16 v4, 0x0

    .line 4116
    .local v4, "elap":J
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-wide v4

    .line 4122
    :goto_6
    const-string v2, ""

    .line 4124
    .local v2, "e":Ljava/lang/String;
    :try_start_7
    new-instance v16, Ljava/io/File;

    const-string v17, "/sys/block/mmcblk0/device/cid"

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v2

    .line 4130
    :goto_7
    const-string v11, ""

    .line 4132
    .local v11, "v":Ljava/lang/String;
    :try_start_8
    const-string v16, "ro.vivo.product.version"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v11

    .line 4138
    :goto_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sn1="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&st1="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&sn2="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&st2="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&imei="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&model="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&elap="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&e="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&v="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4140
    const-string v16, "VivoWifiWatchdogStateMachine"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "infoString:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    return-object v7

    .line 4059
    .end local v2    # "e":Ljava/lang/String;
    .end local v4    # "elap":J
    .end local v6    # "imei":Ljava/lang/String;
    .end local v8    # "model":Ljava/lang/String;
    .end local v10    # "sn2":Ljava/lang/String;
    .end local v11    # "v":Ljava/lang/String;
    .end local v12    # "st1":J
    .end local v14    # "st2":J
    :catch_0
    move-exception v3

    .line 4060
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4061
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 4070
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v12    # "st1":J
    :cond_0
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result-wide v16

    sub-long v12, v16, v12

    goto/16 :goto_1

    .line 4072
    :catch_1
    move-exception v3

    .line 4073
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4074
    const-wide/16 v12, 0x0

    goto/16 :goto_1

    .line 4080
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v10    # "sn2":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 4081
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4082
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 4091
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v14    # "st2":J
    :cond_1
    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result-wide v16

    sub-long v14, v16, v14

    goto/16 :goto_3

    .line 4093
    :catch_3
    move-exception v3

    .line 4094
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4095
    const-wide/16 v14, 0x0

    goto/16 :goto_3

    .line 4101
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v6    # "imei":Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 4102
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4103
    const-string v6, ""

    goto/16 :goto_4

    .line 4109
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v8    # "model":Ljava/lang/String;
    :catch_5
    move-exception v3

    .line 4110
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4111
    const-string v8, ""

    goto/16 :goto_5

    .line 4117
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v4    # "elap":J
    :catch_6
    move-exception v3

    .line 4118
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4119
    const-wide/16 v4, 0x0

    goto/16 :goto_6

    .line 4125
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v2    # "e":Ljava/lang/String;
    :catch_7
    move-exception v3

    .line 4126
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4127
    const-string v2, ""

    goto/16 :goto_7

    .line 4133
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v11    # "v":Ljava/lang/String;
    :catch_8
    move-exception v3

    .line 4134
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 4135
    const-string v11, ""

    goto/16 :goto_8
.end method

.method private getRssiIndex()I
    .locals 6

    .prologue
    .line 3571
    const/4 v1, 0x0

    .line 3572
    .local v1, "diff":I
    const/16 v3, -0x7f

    .line 3573
    .local v3, "oldRssi":I
    const/16 v0, -0x7f

    .line 3574
    .local v0, "currentRssi":I
    const/4 v2, 0x1

    .line 3575
    .local v2, "index":I
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getMedianRssi([Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;)I

    move-result v3

    .line 3576
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getMedianRssi([Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;)I

    move-result v0

    .line 3577
    sub-int v1, v0, v3

    .line 3578
    sput v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->diffRssi:I

    .line 3580
    const/16 v4, 0xa

    if-le v1, v4, :cond_1

    .line 3581
    const/4 v2, 0x0

    .line 3587
    :goto_0
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRssiIndex , index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3588
    :cond_0
    return v2

    .line 3582
    :cond_1
    const/16 v4, -0xa

    if-ge v1, v4, :cond_2

    .line 3583
    const/4 v2, 0x2

    goto :goto_0

    .line 3585
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getRxCount()D
    .locals 8

    .prologue
    .line 3700
    const-wide/16 v2, 0x0

    .line 3702
    .local v2, "rxCount":D
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 3703
    sget-object v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxPacket:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_0

    .line 3704
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    .line 3702
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3707
    :cond_1
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTxCount txCount:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3708
    :cond_2
    return-wide v2
.end method

.method private static getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1483
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private getSpeedIndex(D)I
    .locals 5
    .param p1, "speed"    # D

    .prologue
    .line 3591
    const/4 v0, 0x0

    .line 3593
    .local v0, "index":I
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_1

    .line 3594
    const/4 v0, 0x3

    .line 3602
    :goto_0
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpeedIndex , index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3603
    :cond_0
    return v0

    .line 3595
    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_2

    .line 3596
    const/4 v0, 0x2

    goto :goto_0

    .line 3597
    :cond_2
    const-wide/high16 v2, 0x400c000000000000L    # 3.5

    cmpg-double v1, p1, v2

    if-gez v1, :cond_3

    .line 3598
    const/4 v0, 0x1

    goto :goto_0

    .line 3600
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTxBytesCount()D
    .locals 8

    .prologue
    .line 3765
    const-wide/16 v2, 0x0

    .line 3768
    .local v2, "txBytesCount":D
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    .line 3769
    :try_start_0
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v4, v4, v1

    iget-wide v4, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 3770
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    .line 3768
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3773
    :catch_0
    move-exception v0

    .line 3774
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3777
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTxBytesCount txBytesCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3778
    :cond_2
    return-wide v2
.end method

.method private getTxCount()D
    .locals 8

    .prologue
    .line 3689
    const-wide/16 v2, 0x0

    .line 3691
    .local v2, "txCount":D
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 3692
    sget-object v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txPacket:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_0

    .line 3693
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    .line 3691
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3696
    :cond_1
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTxCount txCount:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3697
    :cond_2
    return-wide v2
.end method

.method private handleAllWifiIsUnavailable(ZZ)V
    .locals 4
    .param p1, "noInternetAccess"    # Z
    .param p2, "vivoPoorRssiState"    # Z

    .prologue
    .line 2074
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->moblieNetworkIsGood()Z

    move-result v0

    .line 2075
    .local v0, "mobileGood":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAllWifiIsUnavailable Mobile Network moblieGood:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", noInternetAccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vivoPoorRssiState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsScreenOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    .line 2076
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIsScreenOn:Z

    if-eqz v1, :cond_3

    .line 2077
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mobile Network Available, SWITCH!!"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2078
    :cond_0
    if-eqz p2, :cond_2

    .line 2080
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->switchToMobileNetwork(ZZ)V

    .line 2092
    :cond_1
    :goto_0
    return-void

    .line 2081
    :cond_2
    if-eqz p1, :cond_1

    .line 2083
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->switchToMobileNetwork(ZZ)V

    goto :goto_0

    .line 2086
    :cond_3
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "Mobile Network Unavailable."

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2087
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    if-eqz v1, :cond_1

    .line 2088
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "Mobile Network Unavailable, DO NOT SWITCH!!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2735
    :try_start_0
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2736
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    sget-boolean v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "VivoWifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNetworkStateChange networkInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :cond_0
    if-eqz v1, :cond_1

    .line 2738
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dialogNotShowAgain:Z

    .line 2739
    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$11;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2755
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 2741
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :pswitch_1
    const-string v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiInfo;

    .line 2743
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSSID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2752
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v0

    .line 2753
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2743
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    :try_start_1
    const-string v3, "null"

    goto :goto_1

    .line 2746
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dismissSwitchMobileNetworkDialog()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2739
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handlePoorLinkProfilingChange()V
    .locals 4

    .prologue
    .line 1994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLatencyProfilingChange(), mPoorLinkProfilingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1996
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sWifiOnly:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-nez v0, :cond_1

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1998
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->hideLatencyPanel()V

    .line 2017
    :goto_0
    return-void

    .line 2002
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoVerifyingLinkState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoLinkMonitoringState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoLinkMonitoringState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoPoorLinkDetectedState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoPoorLinkDetectedState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoReadyToSwitchState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoReadyToSwitchState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoNoInternetState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoNoInternetState;

    if-ne v0, v1, :cond_4

    .line 2006
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoVerifyingLinkState:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$VivoVerifyingLinkState;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->showLatencyPanel(I)V

    .line 2008
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2009
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2006
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 2013
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->hideLatencyPanel()V

    .line 2015
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private hideLatencyPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1931
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1933
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1935
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1938
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1939
    iput-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    .line 1942
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    iput-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    .line 1943
    return-void
.end method

.method private initPacketInfo()V
    .locals 3

    .prologue
    .line 3647
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 3648
    sget-object v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    new-instance v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    aput-object v2, v1, v0

    .line 3647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3650
    :cond_0
    return-void
.end method

.method private initSpeedInfo()V
    .locals 3

    .prologue
    .line 3410
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 3411
    sget-object v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    new-instance v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    aput-object v2, v1, v0

    .line 3412
    sget-object v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    new-instance v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    aput-object v2, v1, v0

    .line 3410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3414
    :cond_0
    return-void
.end method

.method private isCaptivePortal()I
    .locals 18

    .prologue
    .line 3958
    const/4 v13, 0x0

    .line 3959
    .local v13, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v3, 0x257

    .line 3960
    .local v3, "httpResponseCode":I
    const/4 v6, 0x0

    .line 3963
    .local v6, "mNetwork":Landroid/net/Network;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    const-string v15, "http"

    const-string v16, "clients3.google.com"

    const-string v17, "/generate_204"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v15, v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3965
    .local v12, "url":Ljava/net/URL;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isUserVivoCaptivePortalDetection()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 3966
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getPhoneInfo()Ljava/lang/String;

    move-result-object v7

    .line 3968
    .local v7, "phoneInfo":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoServer:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/t?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3969
    .local v14, "urlString":Ljava/lang/String;
    const-string v15, "net.vivofw.dns"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getHostCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3970
    .local v5, "mHostCache":Ljava/lang/String;
    const-string v15, "unknown"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 3971
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/t?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3973
    :cond_0
    new-instance v12, Ljava/net/URL;

    .end local v12    # "url":Ljava/net/URL;
    invoke-direct {v12, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3977
    .end local v5    # "mHostCache":Ljava/lang/String;
    .end local v7    # "phoneInfo":Ljava/lang/String;
    .end local v14    # "urlString":Ljava/lang/String;
    .restart local v12    # "url":Ljava/net/URL;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->findWifiNetwork()Landroid/net/Network;

    move-result-object v6

    .line 3978
    if-nez v6, :cond_3

    .line 3979
    const-string v15, "CheckInternetThread vivo wifi mNetwork==null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4045
    if-eqz v13, :cond_2

    .line 4046
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v4, v3

    .line 4050
    .end local v3    # "httpResponseCode":I
    .end local v12    # "url":Ljava/net/URL;
    .local v4, "httpResponseCode":I
    :goto_0
    return v4

    .line 3983
    .end local v4    # "httpResponseCode":I
    .restart local v3    # "httpResponseCode":I
    .restart local v12    # "url":Ljava/net/URL;
    :cond_3
    :try_start_1
    sget-boolean v15, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v15, :cond_4

    .line 3984
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckInternetThread vivo Checking "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " on "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3986
    :cond_4
    invoke-virtual {v6, v12}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v13, v0

    .line 3988
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isUserVivoCaptivePortalDetection()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 3989
    sget-boolean v15, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v15, :cond_5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "set Host to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoServer:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 3990
    :cond_5
    const-string v15, "Host"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoServer:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3993
    :cond_6
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 3994
    const/16 v15, 0x2710

    invoke-virtual {v13, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3995
    const/16 v15, 0x2710

    invoke-virtual {v13, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 3996
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 3997
    const-string v15, "Connection"

    const-string v16, "Close"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 4000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 4002
    .local v8, "requestTimestamp":J
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 4005
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 4007
    .local v10, "responseTimestamp":J
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 4008
    sget-boolean v15, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v15, :cond_7

    .line 4009
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckInternetThread vivo isCaptivePortal: ret="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " headers="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4014
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isUserVivoCaptivePortalDetection()Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->verifyMD5(Ljava/net/HttpURLConnection;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 4015
    sget-boolean v15, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v15, :cond_8

    const-string v15, "CheckInternetThread vivo MD5 is OK, interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4016
    :cond_8
    const/16 v3, 0xcc

    .line 4031
    :cond_9
    const/16 v15, 0xc8

    if-ne v3, v15, :cond_b

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v15

    if-nez v15, :cond_b

    .line 4032
    sget-boolean v15, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v15, :cond_a

    const-string v15, "CheckInternetThread vivo Empty 200 response interpreted as 204 response."

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4033
    :cond_a
    const/16 v3, 0xcc

    .line 4045
    :cond_b
    if-eqz v13, :cond_c

    .line 4046
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 4049
    .end local v8    # "requestTimestamp":J
    .end local v10    # "responseTimestamp":J
    .end local v12    # "url":Ljava/net/URL;
    :cond_c
    :goto_1
    sget-boolean v15, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v15, :cond_d

    const-string v15, "VivoWifiWatchdogStateMachine"

    const-string v16, "CheckInternetThread vivo end."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v4, v3

    .line 4050
    .end local v3    # "httpResponseCode":I
    .restart local v4    # "httpResponseCode":I
    goto/16 :goto_0

    .line 4038
    .end local v4    # "httpResponseCode":I
    .restart local v3    # "httpResponseCode":I
    :catch_0
    move-exception v2

    .line 4039
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckInternetThread vivo exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 4040
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->collectNetworkData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4041
    const/16 v15, 0x257

    if-ne v3, v15, :cond_e

    .line 4045
    :cond_e
    if-eqz v13, :cond_c

    .line 4046
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 4045
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    if-eqz v13, :cond_f

    .line 4046
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    throw v15
.end method

.method private isForegroundAppVisit()Z
    .locals 21

    .prologue
    .line 3043
    const/16 v18, 0x0

    .line 3045
    .local v18, "visit":Z
    :try_start_0
    sget-boolean v19, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoForegroundDetectedEnabled:Z

    if-nez v19, :cond_1

    .line 3046
    sget-boolean v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v19, :cond_0

    const-string v19, "isForegroundAppVisit vivoForegroundDetectedEnabled is false."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3047
    :cond_0
    const/16 v19, 0x1

    .line 3098
    :goto_0
    return v19

    .line 3050
    :cond_1
    const/4 v9, 0x0

    .line 3051
    .local v9, "foregroundUid":I
    const-wide/16 v6, 0x0

    .line 3053
    .local v6, "foregroundPacketCount":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "activity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 3055
    .local v2, "activityManager":Landroid/app/ActivityManager;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v15

    .line 3056
    .local v15, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v8, ""

    .line 3057
    .local v8, "foregroundPacketName":Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 3058
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    .line 3059
    .local v16, "topActivity":Landroid/content/ComponentName;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3062
    .end local v16    # "topActivity":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 3064
    .local v4, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3066
    .local v3, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 3067
    iget v9, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    goto :goto_1

    .line 3073
    .end local v3    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getAppPacketCount(I)J

    move-result-wide v6

    .line 3075
    sget-boolean v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v19, :cond_5

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isForegroundAppVisit, foregroundUid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", foregroundPacketName: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", foregroundPacketCount: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3078
    :cond_5
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ge v10, v0, :cond_9

    .line 3079
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    aget-object v19, v19, v10

    if-nez v19, :cond_7

    .line 3078
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3082
    :cond_7
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    aget-object v19, v19, v10

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->getUid()I

    move-result v17

    .line 3083
    .local v17, "uid":I
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    aget-object v19, v19, v10

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->getPacketCount()J

    move-result-wide v12

    .line 3084
    .local v12, "packetCount":J
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    aget-object v19, v19, v10

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->getPacketName()Ljava/lang/String;

    move-result-object v14

    .line 3085
    .local v14, "packetName":Ljava/lang/String;
    sget-boolean v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v19, :cond_8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mVivoAppPacketCount["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "].uid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , mVivoAppPacketCount["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "].packetName: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , mVivoAppPacketCount["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "].packetCount: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3088
    :cond_8
    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    cmp-long v19, v6, v12

    if-lez v19, :cond_6

    .line 3089
    const/16 v18, 0x1

    .line 3097
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "foregroundPacketCount":J
    .end local v8    # "foregroundPacketName":Ljava/lang/String;
    .end local v9    # "foregroundUid":I
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "packetCount":J
    .end local v14    # "packetName":Ljava/lang/String;
    .end local v15    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v17    # "uid":I
    :cond_9
    :goto_3
    sget-boolean v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v19, :cond_a

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isForegroundAppVisit, visit: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_a
    move/from16 v19, v18

    .line 3098
    goto/16 :goto_0

    .line 3093
    :catch_0
    move-exception v5

    .line 3094
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private isRedirect(Ljava/net/HttpURLConnection;)Z
    .locals 12
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 4317
    const/4 v6, 0x0

    .line 4318
    .local v6, "result":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 4319
    .local v7, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 4320
    .local v4, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 4323
    .local v8, "shouldRedirect":Z
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4324
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4325
    .local v1, "br":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 4326
    .local v3, "inputLine":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 4328
    sget-boolean v9, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "VivoWifiWatchdogStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "11 inputLine:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 4330
    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 4331
    sget-boolean v9, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "VivoWifiWatchdogStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "22 inputLine:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4332
    :cond_1
    const-string v9, "<metahttp-equiv=\"refresh\"content=\""

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "m.baidu.com"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 4333
    const-string v9, "<metahttp-equiv=\"refresh\"content=\""

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4334
    .local v0, "b":I
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4335
    sget-boolean v9, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "VivoWifiWatchdogStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "33 inputLine:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    :cond_2
    const-string v9, "<metahttp-equiv=\"refresh\"content=\""

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 4337
    const/4 v9, 0x0

    const-string v10, "\""

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4338
    sget-boolean v9, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "VivoWifiWatchdogStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "44 inputLine:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_5

    const-string v9, ";"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4340
    const/4 v9, 0x0

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4341
    sget-boolean v9, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_4

    const-string v9, "VivoWifiWatchdogStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "55 inputLine:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    :cond_4
    const-string v9, "\\d+"

    invoke-static {v9, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4343
    const-string v9, "VivoWifiWatchdogStateMachine"

    const-string v10, "set shouldRedirect to true."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4344
    const/4 v8, 0x1

    .line 4348
    .end local v0    # "b":I
    :cond_5
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 4351
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 4352
    .end local v5    # "is":Ljava/io/InputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    const-string v9, "VivoWifiWatchdogStateMachine"

    const-string v10, "Error reading InputStream"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4353
    const/4 v6, 0x0

    .line 4355
    if-eqz v4, :cond_6

    .line 4357
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4365
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    return v8

    .line 4350
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "inputLine":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_7
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 4355
    if-eqz v5, :cond_9

    .line 4357
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v5

    .line 4361
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 4359
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 4360
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "VivoWifiWatchdogStateMachine"

    const-string v10, "Error closing InputStream"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 4361
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 4359
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 4360
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "VivoWifiWatchdogStateMachine"

    const-string v10, "Error closing InputStream"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4355
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v4, :cond_8

    .line 4357
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4361
    :cond_8
    :goto_4
    throw v9

    .line 4359
    :catch_3
    move-exception v2

    .line 4360
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "VivoWifiWatchdogStateMachine"

    const-string v11, "Error closing InputStream"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4355
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 4351
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "inputLine":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_9
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private isSwitchMobileNetworkDialogShowing()Z
    .locals 4

    .prologue
    .line 2569
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "isSwitchMobileNetworkDialogShowing begin"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2570
    :cond_0
    const/4 v1, 0x0

    .line 2572
    .local v1, "isShowing":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    .line 2573
    const/4 v1, 0x0

    .line 2580
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSwitchMobileNetworkDialogShowing end isShowing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2581
    :cond_2
    return v1

    .line 2574
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 2575
    const/4 v1, 0x1

    goto :goto_0

    .line 2577
    :catch_0
    move-exception v0

    .line 2578
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isUserVivoCaptivePortalDetection()Z
    .locals 4

    .prologue
    .line 2758
    const-string v1, "ro.vivo.product.overseas"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2759
    .local v0, "overseas":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoWifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUserVivoCaptivePortalDetection overseas:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :cond_0
    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2761
    const/4 v1, 0x1

    .line 2763
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVivoSmartWiFiEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2781
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vivo_smart_wifi_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2782
    .local v0, "enabled":I
    sget-boolean v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVivoSmartWiFiEnabled() enabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2783
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private isWatchdogEnabled()Z
    .locals 4

    .prologue
    .line 593
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "wifi_watchdog_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 595
    .local v0, "ret":Z
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watchdog enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 596
    :cond_0
    return v0
.end method

.method private logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 4372
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLogMessages:Z

    if-eqz v0, :cond_0

    .line 4373
    const-string v0, "VivoWifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    :cond_0
    return-void
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 8
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 4296
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 4302
    .local v4, "inetAddress":[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 4303
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 4306
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "inetAddress":[Ljava/net/InetAddress;
    .end local v5    # "len$":I
    :goto_1
    return-object v0

    .line 4297
    :catch_0
    move-exception v2

    .line 4298
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    .line 4299
    goto :goto_1

    .line 4302
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "inetAddress":[Ljava/net/InetAddress;
    .restart local v5    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    move-object v0, v6

    .line 4306
    goto :goto_1
.end method

.method public static makeVivoWifiWatchdogStateMachine(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Messenger;)Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 467
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    sput-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 470
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 472
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sWifiOnly:Z

    .line 477
    const-string v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 479
    new-instance v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Messenger;)V

    .line 480
    .local v2, "wwsm":Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    invoke-virtual {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->start()V

    .line 481
    return-object v2

    .end local v2    # "wwsm":Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
    :cond_0
    move v3, v5

    .line 472
    goto :goto_0
.end method

.method public static moblieNetworkIsGood()Z
    .locals 7

    .prologue
    .line 3182
    const/4 v0, 0x0

    .line 3184
    .local v0, "good":Z
    sget-boolean v4, Lcom/android/server/wifi/VivoSmartWifiConstants;->vivoSwitch4GEnabled:Z

    if-nez v4, :cond_2

    .line 3185
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "VivoWifiWatchdogStateMachine"

    const-string v5, "moblieNetworkIsGood vivoSwitch4GEnabled is false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    :cond_0
    const/4 v0, 0x0

    .line 3200
    :cond_1
    :goto_0
    return v0

    .line 3189
    :cond_2
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_4

    .line 3190
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    .line 3191
    .local v1, "isEnabled":Z
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    .line 3192
    .local v3, "networkType":I
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v2

    .line 3193
    .local v2, "networkClass":I
    const-string v4, "VivoWifiWatchdogStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moblieNetworkIsGood, isEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", networkType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", networkClass:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    if-eqz v1, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 3196
    :cond_3
    const/4 v0, 0x1

    .line 3199
    .end local v1    # "isEnabled":Z
    .end local v2    # "networkClass":I
    .end local v3    # "networkType":I
    :cond_4
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "VivoWifiWatchdogStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moblieNetworkIsGood, good: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notShowDialog()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/16 v10, -0x7f

    .line 2849
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "notShowDialog()"

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2850
    :cond_0
    const/4 v0, 0x0

    .line 2851
    .local v0, "averageRssi":I
    const/4 v5, 0x0

    .line 2852
    .local v5, "sum":I
    const/4 v1, 0x0

    .line 2853
    .local v1, "averageRssi1":I
    const/4 v6, 0x0

    .line 2855
    .local v6, "sum1":I
    const/4 v3, 0x0

    .line 2858
    .local v3, "need":Z
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_0
    const/4 v8, 0x3

    if-ge v4, v8, :cond_4

    .line 2859
    :try_start_0
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notShowDialog() , mRssiArray["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiArray:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2860
    :cond_1
    sget-object v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiArray:[I

    aget v8, v8, v4

    if-ne v8, v10, :cond_3

    .line 2861
    const/4 v0, 0x0

    .line 2862
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "notShowDialog() true"

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2887
    :cond_2
    :goto_1
    return v7

    .line 2865
    :cond_3
    sget-object v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiArray:[I

    aget v8, v8, v4

    add-int/2addr v5, v8

    .line 2858
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2867
    :cond_4
    div-int/lit8 v0, v5, 0x3

    .line 2869
    const/4 v4, 0x3

    :goto_2
    const/4 v8, 0x5

    if-ge v4, v8, :cond_9

    .line 2870
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notShowDialog() , mRssiArray["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiArray:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2871
    :cond_5
    sget-object v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiArray:[I

    aget v8, v8, v4

    if-ne v8, v10, :cond_8

    .line 2872
    const/4 v1, 0x0

    .line 2873
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "notShowDialog() true"

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2883
    :catch_0
    move-exception v2

    .line 2884
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2886
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    sget-boolean v7, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notShowDialog() , need: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_7
    move v7, v3

    .line 2887
    goto :goto_1

    .line 2876
    :cond_8
    :try_start_1
    sget-object v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiArray:[I

    aget v8, v8, v4

    add-int/2addr v6, v8

    .line 2869
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2878
    :cond_9
    div-int/lit8 v1, v6, 0x2

    .line 2879
    sget-boolean v7, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notShowDialog() , averageRssi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", averageRssi1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2880
    :cond_a
    if-gt v1, v0, :cond_6

    .line 2881
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private notShowDialogStep()Z
    .locals 5

    .prologue
    .line 2915
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "notShowDialogStep()"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2916
    :cond_0
    const/4 v1, 0x0

    .line 2919
    .local v1, "need":Z
    :try_start_0
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notShowDialogStep() , mStepArray[5]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mStepArray:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStepArray[2]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mStepArray:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2921
    :cond_1
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mStepArray:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mStepArray:[F

    const/4 v4, 0x2

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 2922
    const/4 v1, 0x1

    .line 2929
    :goto_0
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notShowDialogStep() , need: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2930
    :cond_2
    return v1

    .line 2924
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 2926
    :catch_0
    move-exception v0

    .line 2927
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private poorLinkDetected()V
    .locals 1

    .prologue
    .line 2933
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "poorLinkDetected() , mMovingNotShowDialog: false"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2937
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V

    .line 2939
    return-void
.end method

.method private preparePacketInfo()V
    .locals 2

    .prologue
    .line 3652
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxPkt:J

    .line 3653
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxPkt:J

    .line 3654
    invoke-static {}, Landroid/net/VivoTrafficStats;->getTotalTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTotalTxPkt:J

    .line 3655
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpRxBytes:J

    .line 3656
    invoke-static {}, Landroid/net/VivoTrafficStats;->getWifiTcpTxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLastTcpTxBytes:J

    .line 3657
    return-void
.end method

.method private static putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1499
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForSettingsChanges()V
    .locals 4

    .prologue
    .line 572
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$3;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$3;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 579
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 582
    return-void
.end method

.method private registerForSmartWiFiToggle()V
    .locals 4

    .prologue
    .line 2790
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$9;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$9;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 2804
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_smart_wifi_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2807
    return-void
.end method

.method private registerForVivoPoorNetworkSettingsChanges()V
    .locals 4

    .prologue
    .line 2813
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$10;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$10;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 2820
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_smart_wifi_poor_network_detect_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2822
    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    .prologue
    .line 556
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$2;

    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$2;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 563
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 566
    return-void
.end method

.method private rxtxBytesNeedCheckInternet()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 3738
    const-wide/16 v6, 0x0

    .line 3739
    .local v6, "txBytesCount":D
    const-wide/16 v4, 0x0

    .line 3740
    .local v4, "rxBytesSum":D
    const/4 v1, 0x0

    .line 3743
    .local v1, "need":Z
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_3

    .line 3745
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v3, v3, v2

    iget-wide v8, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    cmpl-double v3, v8, v10

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v3, v3, v2

    iget-wide v8, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxBytes:D

    cmpl-double v3, v8, v10

    if-nez v3, :cond_1

    .line 3747
    :cond_0
    const/4 v3, 0x0

    .line 3762
    :goto_1
    return v3

    .line 3749
    :cond_1
    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v3, v3, v2

    iget-wide v8, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    cmpl-double v3, v8, v12

    if-lez v3, :cond_2

    .line 3750
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    .line 3752
    :cond_2
    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v3, v3, v2

    iget-wide v8, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxBytes:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-double/2addr v4, v8

    .line 3743
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3754
    :cond_3
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_4

    cmpg-double v3, v4, v12

    if-gtz v3, :cond_4

    .line 3755
    const/4 v1, 0x1

    .line 3761
    :cond_4
    :goto_2
    sget-boolean v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rxtxBytesNeedCheckInternet need:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_5
    move v3, v1

    .line 3762
    goto :goto_1

    .line 3757
    :catch_0
    move-exception v0

    .line 3758
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private rxtxPktNeedCheckInternet()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 3711
    const-wide/16 v6, 0x0

    .line 3712
    .local v6, "txCount":D
    const-wide/16 v4, 0x0

    .line 3713
    .local v4, "rxCount":D
    const/4 v1, 0x0

    .line 3716
    .local v1, "need":Z
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_3

    .line 3718
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v3, v3, v2

    iget-wide v8, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txPacket:D

    cmpl-double v3, v8, v10

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v3, v3, v2

    iget-wide v8, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxPacket:D

    cmpl-double v3, v8, v10

    if-nez v3, :cond_1

    .line 3720
    :cond_0
    const/4 v3, 0x0

    .line 3735
    :goto_1
    return v3

    .line 3722
    :cond_1
    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v3, v3, v2

    iget-wide v8, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txPacket:D

    cmpl-double v3, v8, v12

    if-lez v3, :cond_2

    .line 3723
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    .line 3725
    :cond_2
    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v3, v3, v2

    iget-wide v8, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxPacket:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-double/2addr v4, v8

    .line 3716
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3727
    :cond_3
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_4

    cmpg-double v3, v4, v12

    if-gtz v3, :cond_4

    .line 3728
    const/4 v1, 0x1

    .line 3734
    :cond_4
    :goto_2
    sget-boolean v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rxtxPktNeedCheckInternet need:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    :cond_5
    move v3, v1

    .line 3735
    goto :goto_1

    .line 3730
    :catch_0
    move-exception v0

    .line 3731
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private sendInternetCheck()V
    .locals 3

    .prologue
    .line 2425
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->isLinkdebouncing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2426
    const-string v1, "is in link debouncing, ignore."

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    .line 2433
    :goto_0
    return-void

    .line 2429
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_CHECK_INTERNET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2430
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2432
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private sendLinkStatusNotification(Z)V
    .locals 5
    .param p1, "isGood"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1435
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "########################################"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1437
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    if-ne v1, v3, :cond_1

    .line 1439
    if-ne p1, v3, :cond_4

    .line 1440
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "LinkStatusNotification  Good"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 1441
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1447
    :cond_1
    :goto_0
    if-eqz p1, :cond_5

    .line 1448
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x21016

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1449
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    if-eqz v1, :cond_2

    .line 1450
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$14302(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;J)J

    .line 1452
    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Good link notification is sent"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1467
    :cond_3
    :goto_1
    return-void

    .line 1443
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "LinkStatusNotification Poor"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 1444
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1456
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$7800(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->setPoorRssiState(ZI)V

    .line 1457
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->notShowSwitchDialog()Z

    move-result v0

    .line 1458
    .local v0, "need":Z
    if-eqz v0, :cond_6

    .line 1459
    const v1, 0x21032

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(III)V

    .line 1462
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    if-eqz v1, :cond_7

    .line 1463
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$14402(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;J)J

    .line 1465
    :cond_7
    const-string v1, "Poor link notification is sent"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCurrentPacketInfo(DDDD)V
    .locals 7
    .param p1, "t"    # D
    .param p3, "tB"    # D
    .param p5, "r"    # D
    .param p7, "rB"    # D

    .prologue
    const/16 v6, 0x8

    .line 3659
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentPacketInfo() , txPkt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rxPkt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", txBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rxBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3661
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 3662
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    iget-wide v4, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txPacket:D

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txPacket:D

    .line 3663
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    iget-wide v4, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    .line 3664
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    iget-wide v4, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxPacket:D

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxPacket:D

    .line 3665
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    iget-wide v4, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxBytes:D

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxBytes:D

    .line 3661
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3667
    :cond_1
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iput-wide p1, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txPacket:D

    .line 3668
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iput-wide p3, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    .line 3669
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iput-wide p5, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxPacket:D

    .line 3670
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iput-wide p7, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxBytes:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3674
    :goto_1
    return-void

    .line 3671
    :catch_0
    move-exception v0

    .line 3672
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setCurrentRssi(I)V
    .locals 6
    .param p1, "rssi"    # I

    .prologue
    const/4 v5, 0x4

    .line 2828
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentRssi() , rssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2830
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 2831
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiArray:[I

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiArray:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    aput v3, v2, v1

    .line 2830
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2833
    :cond_1
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRssiArray:[I

    const/4 v3, 0x4

    aput p1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2837
    :goto_1
    return-void

    .line 2834
    :catch_0
    move-exception v0

    .line 2835
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setCurrentSpeed(DI)V
    .locals 7
    .param p1, "speed"    # D
    .param p3, "rssi"    # I

    .prologue
    const/4 v6, 0x6

    .line 3501
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentSpeed , speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3503
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-wide v2, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setOldCurrentSpeed(DI)V

    .line 3504
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 3505
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    iget-wide v4, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    .line 3506
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    iput v3, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    .line 3504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3508
    :cond_1
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iput-wide p1, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    .line 3509
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iput p3, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3513
    .end local v1    # "pos":I
    :goto_1
    return-void

    .line 3510
    :catch_0
    move-exception v0

    .line 3511
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setCurrentStep(F)V
    .locals 6
    .param p1, "step"    # F

    .prologue
    const/4 v5, 0x4

    .line 2894
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentStep() , step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2896
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 2897
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mStepArray:[F

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mStepArray:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    aput v3, v2, v1

    .line 2896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2899
    :cond_1
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mStepArray:[F

    const/4 v3, 0x4

    aput p1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2903
    :goto_1
    return-void

    .line 2900
    :catch_0
    move-exception v0

    .line 2901
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setForegroundAppInfo()V
    .locals 22

    .prologue
    .line 2990
    const/16 v18, 0x0

    .line 2991
    .local v18, "uid":I
    const-string v14, ""

    .line 2992
    .local v14, "packetName":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 2999
    .local v6, "count":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "activity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 3001
    .local v2, "activityManager":Landroid/app/ActivityManager;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v16

    .line 3002
    .local v16, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v8, "null"

    .line 3003
    .local v8, "foregroundPacketName":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 3004
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    .line 3005
    .local v17, "topActivity":Landroid/content/ComponentName;
    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3008
    .end local v17    # "topActivity":Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 3010
    .local v4, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3012
    .local v3, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 3013
    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v18, v0

    .line 3014
    iget-object v14, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 3018
    .end local v3    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getAppPacketCount(I)J

    move-result-wide v6

    .line 3020
    sget-boolean v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v19, :cond_3

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setForegroundAppInfo, uid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", packetName:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", count:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V

    .line 3023
    :cond_3
    const/4 v15, 0x0

    .local v15, "pos":I
    :goto_1
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v15, v0, :cond_6

    .line 3025
    :try_start_0
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    aget-object v19, v19, v15

    if-nez v19, :cond_4

    .line 3026
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    new-instance v20, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    aput-object v20, v19, v15

    .line 3028
    :cond_4
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    add-int/lit8 v20, v15, 0x1

    aget-object v19, v19, v20

    if-nez v19, :cond_5

    .line 3029
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    add-int/lit8 v20, v15, 0x1

    new-instance v21, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    invoke-direct/range {v21 .. v22}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    aput-object v21, v19, v20

    .line 3031
    :cond_5
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    add-int/lit8 v20, v15, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->getUid()I

    move-result v13

    .line 3032
    .local v13, "newUid":I
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    add-int/lit8 v20, v15, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->getPacketCount()J

    move-result-wide v10

    .line 3033
    .local v10, "newCount":J
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    add-int/lit8 v20, v15, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->getPacketName()Ljava/lang/String;

    move-result-object v12

    .line 3034
    .local v12, "newName":Ljava/lang/String;
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    aget-object v19, v19, v15

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v10, v11, v12}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->updateInfo(IJLjava/lang/String;)V

    .line 3023
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 3036
    .end local v10    # "newCount":J
    .end local v12    # "newName":Ljava/lang/String;
    .end local v13    # "newUid":I
    :cond_6
    sget-object v19, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoAppPacketCount:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;

    const/16 v20, 0x5

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6, v7, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$ForegroundAppInfo;->updateInfo(IJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3041
    :goto_2
    return-void

    .line 3037
    :catch_0
    move-exception v5

    .line 3038
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private setHostCache()Z
    .locals 7

    .prologue
    .line 2705
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mBaiduServer:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2706
    .local v0, "serverBaidu":Ljava/net/InetAddress;
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoServer:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 2707
    .local v2, "serverVivo":Ljava/net/InetAddress;
    const-string v1, "unknown"

    .line 2708
    .local v1, "serverBaiduIp":Ljava/lang/String;
    const-string v3, "unknown"

    .line 2709
    .local v3, "serverVivoIp":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2713
    :cond_0
    if-eqz v2, :cond_1

    .line 2714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2717
    :cond_1
    const-string v4, "VivoWifiWatchdogStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHostCache() mSSID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", serverVivoIp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "serverBaiduIp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSSID:Ljava/lang/String;

    invoke-static {v4, v3, v1}, Lcom/android/server/wifi/VivoServerMapHelper;->updateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    const/4 v4, 0x1

    return v4
.end method

.method private setOldCurrentSpeed(DI)V
    .locals 7
    .param p1, "speed"    # D
    .param p3, "rssi"    # I

    .prologue
    const/4 v6, 0x6

    .line 3515
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOldCurrentSpeed , speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3517
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 3518
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    iget-wide v4, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    iput-wide v4, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    .line 3519
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    iput v3, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    .line 3517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3521
    :cond_1
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iput-wide p1, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    .line 3522
    sget-object v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mOldSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iput p3, v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3526
    :goto_1
    return-void

    .line 3523
    :catch_0
    move-exception v0

    .line 3524
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setupNetworkReceiver()V
    .locals 3

    .prologue
    .line 485
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$1;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 538
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    .line 539
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.wifi.p2p.Tx"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "wifi.wifi.roamingDetect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 550
    return-void
.end method

.method private setupVivoReceiver()V
    .locals 3

    .prologue
    .line 2597
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$8;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2689
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoIntentFilter:Landroid/content/IntentFilter;

    .line 2691
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_CHECK_INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2692
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RssiPacketCountInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2693
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "vivo_smart_wifi_all_wifi_is_unavailable"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2694
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "vivo_smart_wifi_poor_network_profile_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2695
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "vivo_smart_wifi_watchdog_settings_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2696
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "vivo_smart_wifi_poor_network_txretry_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2697
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.VIVO_SMART_WIFI_VALID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2698
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "vivo_smart_wifi_switch_to_4g_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2699
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "vivo_smart_wifi_wifi_is_available"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2702
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mVivoIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2703
    return-void
.end method

.method private shouldSwitch4G(D)Z
    .locals 7
    .param p1, "speed"    # D

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3559
    const/4 v1, 0x0

    .line 3560
    .local v1, "speedIndex":I
    const/4 v0, 0x0

    .line 3561
    .local v0, "rssiIndex":I
    const/4 v2, 0x0

    .line 3563
    .local v2, "switch4G":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getSpeedIndex(D)I

    move-result v3

    sput v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentSpeedIndex:I

    .line 3564
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getRssiIndex()I

    move-result v3

    sput v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentRssiIndex:I

    .line 3565
    sget-object v3, Lcom/android/server/wifi/VivoSmartWifiConstants;->SPEED_RSSI_STEP_MAP:[[I

    sget v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentRssiIndex:I

    aget-object v3, v3, v6

    sget v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentSpeedIndex:I

    aget v3, v3, v6

    sput v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->tableValue:I

    .line 3566
    sget-object v3, Lcom/android/server/wifi/VivoSmartWifiConstants;->SPEED_RSSI_STEP_MAP_STRING:[[Ljava/lang/String;

    sget v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentRssiIndex:I

    aget-object v3, v3, v6

    sget v6, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->currentSpeedIndex:I

    aget-object v3, v3, v6

    sput-object v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->tableString:Ljava/lang/String;

    .line 3567
    sget-boolean v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldSwitch4G , switch4G:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->tableValue:I

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3568
    :cond_0
    sget v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->tableValue:I

    if-nez v3, :cond_2

    :goto_1
    return v4

    :cond_1
    move v3, v5

    .line 3567
    goto :goto_0

    :cond_2
    move v4, v5

    .line 3568
    goto :goto_1
.end method

.method private showLatencyPanel(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 1859
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1861
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1864
    .local v0, "adbInflater":Landroid/view/LayoutInflater;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1865
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1866
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    const-string v5, "Link Status:\nRSSI:\nLinkSpeed:\nGoodLinkTargetRssi:\nGoodLinkTargetCount:\nSampleCount:\nCurrentLossValue:\nCurrentLossVolume:\n\np2pStart:\nPoorLinkThreshold:\nGoodLinkThreshold:\n"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1928
    :goto_0
    return-void

    .line 1883
    :cond_0
    const v4, 0x3030039

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    .line 1885
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1886
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    const v5, 0x30d007b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    .line 1889
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1891
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTextView:Landroid/widget/TextView;

    const-string v5, "Link Status:\nRSSI:\nLinkSpeed:\nGoodLinkTargetRssi:\nGoodLinkTargetCount:\nSampleCount:\nCurrentLossValue:\nCurrentLossVolume:\n\np2pStart:\nPoorLinkThreshold:\nGoodLinkThreshold:\n"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1908
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1910
    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7d3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1912
    const/16 v4, 0x18

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1914
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1915
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1916
    const/16 v4, 0x53

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1917
    const v4, 0x3e99999a    # 0.3f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1920
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1923
    .local v3, "windowManager":Landroid/view/WindowManager;
    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLatencyPanelView:Landroid/view/View;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1924
    .end local v2    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "windowManager":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 1925
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showSwitchMobileNetworkDialog(ZZ)V
    .locals 4
    .param p1, "noInternetAccess"    # Z
    .param p2, "vivoPoorRssiState"    # Z

    .prologue
    .line 2503
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSwitchMobileNetworkDialog dialogNotShowAgain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dialogNotShowAgain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2505
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isVivoSmartWiFiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->isSwitchMobileNetworkDialogShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->dialogNotShowAgain:Z

    if-eqz v1, :cond_3

    .line 2506
    :cond_1
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "smart wifi is disabled or dialog is showing, so return."

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2549
    :cond_2
    :goto_0
    return-void

    .line 2510
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_5

    .line 2511
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "mAlertDialog is null."

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2512
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v3}, Lvivo/util/VivoThemeUtil;->getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x30e0143

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x30e0144

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x30e0147

    new-instance v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$7;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x30e0148

    new-instance v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$6;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$6;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$5;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$5;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2538
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2539
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2546
    :catch_0
    move-exception v0

    .line 2547
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2541
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private speedToString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x7

    .line 3606
    const-string v3, ""

    .line 3607
    .local v3, "str":Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3610
    .local v0, "df":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 3611
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v5, v5, v2

    iget-wide v6, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->speed:D

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3610
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3613
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3614
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_1

    .line 3615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3614
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3617
    :catch_0
    move-exception v1

    .line 3618
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3620
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speedToString str:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3621
    :cond_2
    return-object v3
.end method

.method private startAuthenticationActivity()V
    .locals 10

    .prologue
    .line 3337
    sget-boolean v7, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "VivoWifiWatchdogStateMachine"

    const-string v8, "start the authentication activity in browser"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    :cond_0
    const/4 v2, 0x0

    .line 3342
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    const/4 v6, -0x1

    .line 3344
    .local v6, "networkID":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_1

    .line 3345
    const-string v7, "VivoWifiWatchdogStateMachine"

    const-string v8, "mWifiManager is null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    :goto_0
    return-void

    .line 3349
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 3350
    if-eqz v2, :cond_2

    .line 3351
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    .line 3354
    :cond_2
    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    if-nez v7, :cond_4

    .line 3355
    :cond_3
    const-string v7, "VivoWifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "networkID is invalid or mContext is null , will directly return. the current network id is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3378
    :catch_0
    move-exception v0

    .line 3379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3359
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->getAutoLoginVariable(I)I

    move-result v4

    .line 3360
    .local v4, "lastValue":I
    if-nez v4, :cond_5

    .line 3361
    const-string v7, "VivoWifiWatchdogStateMachine"

    const-string v8, "autologin is 0, return;"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3364
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/net/wifi/WifiManager;->setAutoLoginVariable(II)Z

    .line 3366
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->findWifiNetwork()Landroid/net/Network;

    move-result-object v5

    .line 3367
    .local v5, "network":Landroid/net/Network;
    iget v7, v5, Landroid/net/Network;->netId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3368
    .local v1, "id":Ljava/lang/String;
    const-string v7, "VivoWifiWatchdogStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", redirectUrl="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", wifiInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3371
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "com.vivo.browser.AUTHENTICATION"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3372
    const-string v7, "network"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3373
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3374
    const-string v7, "redirectUrl"

    sget-object v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3375
    const-string v7, "wifiInfo"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3376
    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3377
    iget-object v7, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private switchToMobileNetwork(ZZ)V
    .locals 2
    .param p1, "noInternetAccess"    # Z
    .param p2, "vivoPoorRssiState"    # Z

    .prologue
    .line 2585
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21015

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2591
    return-void
.end method

.method private txrxBytesToString()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x9

    const-wide/16 v10, 0x0

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 3781
    const-string v3, ""

    .line 3782
    .local v3, "str":Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#.#"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3792
    .local v0, "df":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    if-ge v2, v12, :cond_1

    .line 3793
    :try_start_0
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v4, v4, v2

    iget-wide v4, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxBytes:D

    div-double/2addr v4, v8

    cmpl-double v4, v4, v10

    if-eqz v4, :cond_0

    .line 3794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v5, v5, v2

    iget-wide v6, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxBytes:D

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3792
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3796
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0.0 , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 3799
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3800
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v12, :cond_3

    .line 3801
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v4, v4, v2

    iget-wide v4, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    div-double/2addr v4, v8

    cmpl-double v4, v4, v10

    if-eqz v4, :cond_2

    .line 3802
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v5, v5, v2

    iget-wide v6, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3800
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3804
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0.0 , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 3807
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3808
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v12, :cond_5

    .line 3809
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v4, v4, v2

    iget-wide v4, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    cmpl-double v4, v4, v10

    if-eqz v4, :cond_4

    .line 3810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v5, v5, v2

    iget-wide v6, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->rxBytes:D

    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mTxRxArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;

    aget-object v5, v5, v2

    iget-wide v8, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$TxRxInfo;->txBytes:D

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3808
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3812
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x.x , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_5

    .line 3815
    :catch_0
    move-exception v1

    .line 3816
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3818
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "txrxToString str:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3819
    :cond_6
    return-object v3
.end method

.method private updateCurrentBssid(Ljava/lang/String;)V
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const v2, 0x21007

    .line 1401
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update current BSSID to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_2

    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1404
    :cond_0
    if-nez p1, :cond_5

    .line 1405
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_3

    .line 1425
    :cond_1
    :goto_1
    return-void

    .line 1401
    :cond_2
    const-string v0, "null"

    goto :goto_0

    .line 1406
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    .line 1407
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "BSSID changed"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1408
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1413
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;->access$14200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1416
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    .line 1417
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_7

    .line 1418
    new-instance v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;-><init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    .line 1419
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$BssidStatistics;

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    :cond_7
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "BSSID changed"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1424
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_1
.end method

.method private updateRssi(I)V
    .locals 8
    .param p1, "rssi"    # I

    .prologue
    const/4 v7, 0x6

    .line 3426
    const-wide/16 v2, 0x0

    .line 3427
    .local v2, "speed":D
    sget-boolean v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "updateRssi begin"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3430
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 3431
    :try_start_0
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    aget-object v4, v4, v1

    sget-object v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    iput v5, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I

    .line 3430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3433
    :cond_1
    sget-object v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mSpeedArray:[Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    iput p1, v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$SpeedInfo;->rssi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3438
    :goto_1
    return-void

    .line 3434
    :catch_0
    move-exception v0

    .line 3435
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 600
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Updating secure settings"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 603
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sWifiOnly:Z

    if-eqz v0, :cond_1

    .line 604
    const-string v0, "Disabling poor network avoidance for wi-fi only device"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 605
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 614
    :goto_0
    const-string v0, "persist.sys.vivopoorlinkProfile"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    .line 616
    const-string v0, "persist.sys.vivopoorlink"

    const-string v1, "0.45"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkThreshold:D

    .line 617
    const-string v0, "persist.sys.vivogoodlink"

    const-string v1, "0.1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mGoodLinkThreshold:D

    .line 620
    const-string v0, "persist.sys.vivopoorlinktxretry"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWeightAlgo:Z

    .line 623
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "vivo_smart_wifi_poor_network_detect_enabled"

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPoorNetworkDetectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSpeed(DDII)V
    .locals 9
    .param p1, "value"    # D
    .param p3, "volume"    # D
    .param p5, "linkspeed"    # I
    .param p6, "rssi"    # I

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3416
    const-wide/16 v0, 0x0

    .line 3417
    .local v0, "speed":D
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "updateSpeed begin"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3418
    :cond_0
    cmpl-double v2, p3, v6

    if-lez v2, :cond_2

    .line 3419
    int-to-double v2, p5

    sub-double v4, v6, p1

    mul-double/2addr v2, v4

    mul-double v0, v2, v6

    .line 3420
    invoke-direct {p0, v0, v1, p6}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setCurrentSpeed(DI)V

    .line 3421
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSpeed , value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", volume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", linkspeed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3422
    :cond_1
    sput-wide v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrenSpeed:D

    .line 3424
    :cond_2
    return-void
.end method

.method private verifyMD5(Ljava/net/HttpURLConnection;)Z
    .locals 11
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 4146
    const/4 v5, 0x0

    .line 4147
    .local v5, "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 4148
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 4149
    .local v3, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 4152
    .local v7, "shouldRedirect":Z
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4153
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4154
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 4155
    .local v2, "inputLine":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4157
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "VivoWifiWatchdogStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "11 inputLine:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 4159
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 4160
    sget-boolean v8, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "VivoWifiWatchdogStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "22 inputLine:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    :cond_1
    const-string v8, "105934603441e8b9"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4162
    const/4 v7, 0x1

    .line 4164
    :cond_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 4167
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "inputLine":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 4168
    .end local v4    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    const-string v8, "VivoWifiWatchdogStateMachine"

    const-string v9, "Error reading InputStream"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4169
    const/4 v5, 0x0

    .line 4171
    if-eqz v3, :cond_3

    .line 4173
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4181
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return v7

    .line 4166
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "inputLine":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_4
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    .line 4171
    if-eqz v4, :cond_6

    .line 4173
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v3, v4

    .line 4177
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 4175
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 4176
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "VivoWifiWatchdogStateMachine"

    const-string v9, "Error closing InputStream"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 4177
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 4175
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "inputLine":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 4176
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "VivoWifiWatchdogStateMachine"

    const-string v9, "Error closing InputStream"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4171
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v3, :cond_5

    .line 4173
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4177
    :cond_5
    :goto_4
    throw v8

    .line 4175
    :catch_3
    move-exception v1

    .line 4176
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "VivoWifiWatchdogStateMachine"

    const-string v10, "Error closing InputStream"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4171
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 4167
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "inputLine":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_6
    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method


# virtual methods
.method collectNetworkData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "reasonExc"    # Ljava/lang/String;
    .param p2, "respondCode"    # Ljava/lang/String;

    .prologue
    .line 4471
    :try_start_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 4472
    .local v11, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "reason"

    invoke-virtual {v11, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4473
    const-string v2, "respondCode"

    invoke-virtual {v11, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4474
    const-string v2, "from"

    const-string v3, "VivoWifiWatchdogStateMachine"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4475
    new-instance v1, Lcom/vivo/common/VivoCollectData;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    .line 4476
    .local v1, "mVivoCollectData":Lcom/vivo/common/VivoCollectData;
    const-string v2, "201"

    invoke-virtual {v1, v2}, Lcom/vivo/common/VivoCollectData;->getControlInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4477
    const-string v2, "201"

    const-string v3, "2010"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 4484
    .end local v1    # "mVivoCollectData":Lcom/vivo/common/VivoCollectData;
    .end local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 4479
    .restart local v1    # "mVivoCollectData":Lcom/vivo/common/VivoCollectData;
    .restart local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v2, "VivoWifiWatchdogStateMachine"

    const-string v3, "collectNetworkDatadata:reason = no collect for getControlInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4481
    .end local v1    # "mVivoCollectData":Lcom/vivo/common/VivoCollectData;
    .end local v11    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 4482
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VivoWifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error collectNetworkData ingore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public completed(I)Z
    .locals 2
    .param p1, "responseCode"    # I

    .prologue
    .line 3949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completed vivoResponseCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->vivoResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baiduResponseCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->baiduResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 3950
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 585
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiInfo: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSignalLevel: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 5
    .param p1, "verbose"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2767
    const-string v0, "VivoWifiWatchdogStateMachine"

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

    .line 2768
    if-lez p1, :cond_0

    .line 2769
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setDbg(Z)V

    .line 2770
    sput-boolean v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    .line 2771
    sput-boolean v4, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLogMessages:Z

    .line 2777
    :goto_0
    invoke-static {p1}, Lcom/android/server/wifi/VivoServerMapHelper;->enableVerboseLogging(I)V

    .line 2778
    return-void

    .line 2773
    :cond_0
    sput-boolean v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z

    .line 2774
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->setDbg(Z)V

    .line 2775
    sput-boolean v3, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mLogMessages:Z

    goto :goto_0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4379
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4380
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4382
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4383
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4384
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4385
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4386
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->printTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPoorLinkThreshold(Z)D
    .locals 2
    .param p1, "isGood"    # Z

    .prologue
    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPoorLinkThreshold, isGood:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2034
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mGoodLinkThreshold:D

    .line 2035
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkThreshold:D

    goto :goto_0
.end method

.method public isAuth(I)Z
    .locals 1
    .param p1, "responseCode"    # I

    .prologue
    .line 3943
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x18f

    if-gt p1, v0, :cond_0

    .line 3944
    const/4 v0, 0x1

    .line 3946
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBad(I)Z
    .locals 1
    .param p1, "responseCode"    # I

    .prologue
    .line 3940
    const/16 v0, 0x257

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOK(I)Z
    .locals 1
    .param p1, "responseCode"    # I

    .prologue
    .line 3937
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method printTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4462
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " rt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4463
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4464
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setPoorLinkProfilingOn(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPoorLinkProfilingOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2025
    iput-boolean p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    .line 2026
    const v0, 0x2102c

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->sendMessage(I)V

    .line 2028
    return-void
.end method

.method public setPoorLinkThreshold(ZD)Z
    .locals 10
    .param p1, "isGood"    # Z
    .param p2, "threshold"    # D

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    .line 2040
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPoorLinkThreshold, isGood:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " threshold= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2043
    if-eqz p1, :cond_1

    .line 2044
    move-wide v0, p2

    .line 2045
    .local v0, "tmpgood":D
    iget-wide v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkThreshold:D

    .line 2050
    .local v2, "tmppoor":D
    :goto_0
    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    cmpl-double v4, v0, v8

    if-gtz v4, :cond_0

    cmpg-double v4, v0, v6

    if-ltz v4, :cond_0

    cmpl-double v4, v2, v8

    if-gtz v4, :cond_0

    cmpg-double v4, v2, v6

    if-gez v4, :cond_2

    .line 2051
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPoorLinkThreshold, fail good= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " poor ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 2052
    const/4 v4, 0x0

    .line 2059
    :goto_1
    return v4

    .line 2047
    .end local v0    # "tmpgood":D
    .end local v2    # "tmppoor":D
    :cond_1
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mGoodLinkThreshold:D

    .line 2048
    .restart local v0    # "tmpgood":D
    move-wide v2, p2

    .restart local v2    # "tmppoor":D
    goto :goto_0

    .line 2054
    :cond_2
    if-eqz p1, :cond_3

    .line 2055
    iput-wide p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mGoodLinkThreshold:D

    .line 2059
    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    .line 2057
    :cond_3
    iput-wide p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->mPoorLinkThreshold:D

    goto :goto_2
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 4397
    const-string v0, "unknown"

    .line 4398
    .local v0, "s":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 4454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4457
    :goto_0
    return-object v0

    .line 4400
    :sswitch_0
    const-string v0, "EVENT_WATCHDOG_SETTINGS_CHANGE"

    .line 4401
    goto :goto_0

    .line 4403
    :sswitch_1
    const-string v0, "EVENT_RSSI_CHANGE"

    .line 4404
    goto :goto_0

    .line 4406
    :sswitch_2
    const-string v0, "EVENT_WIFI_RADIO_STATE_CHANGE"

    .line 4407
    goto :goto_0

    .line 4409
    :sswitch_3
    const-string v0, "EVENT_NETWORK_STATE_CHANGE"

    .line 4410
    goto :goto_0

    .line 4412
    :sswitch_4
    const-string v0, "EVENT_SUPPLICANT_STATE_CHANGE"

    .line 4413
    goto :goto_0

    .line 4415
    :sswitch_5
    const-string v0, "EVENT_BSSID_CHANGE"

    .line 4416
    goto :goto_0

    .line 4418
    :sswitch_6
    const-string v0, "CMD_RSSI_FETCH"

    .line 4419
    goto :goto_0

    .line 4421
    :sswitch_7
    const-string v0, "RSSI_PKTCNT_FETCH_SUCCEEDED"

    .line 4422
    goto :goto_0

    .line 4424
    :sswitch_8
    const-string v0, "RSSI_PKTCNT_FETCH_FAILED"

    .line 4425
    goto :goto_0

    .line 4427
    :sswitch_9
    const-string v0, "EVENT_SCREEN_ON"

    .line 4428
    goto :goto_0

    .line 4430
    :sswitch_a
    const-string v0, "EVENT_SCREEN_OFF"

    .line 4431
    goto :goto_0

    .line 4433
    :sswitch_b
    const-string v0, "EVENT_ROAMING_DETECT"

    .line 4434
    goto :goto_0

    .line 4436
    :sswitch_c
    const-string v0, "EVENT_POOR_LINK_PROFILING_SETTINGS_CHANGE"

    .line 4437
    goto :goto_0

    .line 4439
    :sswitch_d
    const-string v0, "EVENT_WATCHDOG_TOGGLED"

    .line 4440
    goto :goto_0

    .line 4442
    :sswitch_e
    const-string v0, "EVENT_ALL_WIFI_IS_UNAVAILABLE"

    .line 4443
    goto :goto_0

    .line 4445
    :sswitch_f
    const-string v0, "EVENT_VIVO_SMART_WIFI_VALID"

    .line 4446
    goto :goto_0

    .line 4448
    :sswitch_10
    const-string v0, "EVENT_VIVO_PKT_FETCH"

    .line 4449
    goto :goto_0

    .line 4451
    :sswitch_11
    const-string v0, "CMD_INTERNET_ACCESS"

    .line 4452
    goto :goto_0

    .line 4398
    nop

    :sswitch_data_0
    .sparse-switch
        0x21001 -> :sswitch_d
        0x21002 -> :sswitch_3
        0x21003 -> :sswitch_1
        0x21004 -> :sswitch_4
        0x21005 -> :sswitch_2
        0x21006 -> :sswitch_0
        0x21007 -> :sswitch_5
        0x21008 -> :sswitch_9
        0x21009 -> :sswitch_a
        0x2100b -> :sswitch_6
        0x21028 -> :sswitch_b
        0x2102c -> :sswitch_c
        0x21032 -> :sswitch_e
        0x21033 -> :sswitch_11
        0x21034 -> :sswitch_f
        0x21035 -> :sswitch_10
        0x25015 -> :sswitch_7
        0x25016 -> :sswitch_8
    .end sparse-switch
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 4393
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
