.class public interface abstract Landroid/net/wifi/IWifiFwkExt;
.super Ljava/lang/Object;
.source "IWifiFwkExt.java"


# static fields
.field public static final ACTION_RESELECTION_AP:Ljava/lang/String; = "android.net.wifi.WIFI_RESELECTION_AP"

.field public static final ACTION_WIFI_FAILOVER_GPRS_DIALOG:Ljava/lang/String; = "android.intent.action_WIFI_FAILOVER_GPRS_DIALOG"

.field public static final AUTOCONNECT_ENABLE_ALL_NETWORKS:Ljava/lang/String; = "com.mediatek.common.wifi.AUTOCONNECT_ENABLE_ALL_NETWORK"

.field public static final AUTOCONNECT_SETTINGS_CHANGE:Ljava/lang/String; = "com.mediatek.common.wifi.AUTOCONNECT_SETTINGS_CHANGE"

.field public static final BEST_SIGNAL_THRESHOLD:I = -0x4f

.field public static final BSS_EXPIRE_AGE:I = 0xa

.field public static final BSS_EXPIRE_COUNT:I = 0x1

.field public static final EXTRA_SHOW_RESELECT_DIALOG_FLAG:Ljava/lang/String; = "SHOW_RESELECT_DIALOG"

.field public static final MIN_NETWORKS_NUM:I = 0x2

.field public static final RESELECT_DIALOG_CLASSNAME:Ljava/lang/String; = "com.mediatek.op01.plugin.WifiReselectApDialog"

.field public static final SUSPEND_NOTIFICATION_DURATION:J = 0x36ee80L

.field public static final WEAK_SIGNAL_THRESHOLD:I = -0x55

.field public static final WIFISETTINGS_CLASSNAME:Ljava/lang/String; = "com.android.settings.Settings$WifiSettingsActivity"


# virtual methods
.method public abstract defaultFrameworkScanIntervalMs()I
.end method

.method public abstract getApDefaultSsid()Ljava/lang/String;
.end method

.method public abstract getSecurity(Landroid/net/wifi/ScanResult;)I
.end method

.method public abstract getSecurity(Landroid/net/wifi/WifiConfiguration;)I
.end method

.method public abstract handleNetworkReselection()Z
.end method

.method public abstract hasConnectableAp()Z
.end method

.method public abstract hasCustomizedAutoConnect()Z
.end method

.method public abstract init()V
.end method

.method public abstract isWifiConnecting(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract shouldAutoConnect()Z
.end method

.method public abstract shouldEnableAllNetworksForCompletion()Z
.end method

.method public abstract shouldEnableAllNetworksForScreenOn()Z
.end method

.method public abstract suspendNotification()V
.end method
