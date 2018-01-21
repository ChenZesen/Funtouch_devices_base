.class public Lcom/android/server/wifi/VivoSmartWifiHelper;
.super Ljava/lang/Object;
.source "VivoSmartWifiHelper.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VivoSmartWifiHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoSmartWifiHelper;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiConnectionStatistics;Lcom/android/server/wifi/WifiNative;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "s"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "st"    # Landroid/net/wifi/WifiConnectionStatistics;
    .param p5, "n"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/wifi/VivoSmartWifiHelper;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/server/wifi/VivoSmartWifiHelper;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 78
    iput-object p3, p0, Lcom/android/server/wifi/VivoSmartWifiHelper;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 79
    iput-object p5, p0, Lcom/android/server/wifi/VivoSmartWifiHelper;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 81
    return-void
.end method
