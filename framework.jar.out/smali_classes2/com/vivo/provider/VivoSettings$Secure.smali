.class public final Lcom/vivo/provider/VivoSettings$Secure;
.super Ljava/lang/Object;
.source "VivoSettings.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/provider/VivoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final BBK_ADB_ENABLED:Ljava/lang/String; = "bbk_adb_enabled"

.field public static final BBK_DUAL_MIC:Ljava/lang/String; = "bbk_dual_mic"

.field public static final BBK_NETWORK_PROVIDER_CURRENT:Ljava/lang/String; = "bbk_network_provider_current"

.field public static final BBK_PIC_USE_GPS:Ljava/lang/String; = "bbk_pic_use_gps"

.field public static final BBK_POWER_ASSISTANT:Ljava/lang/String; = "bbk_power_assistant"

.field public static final BBK_RIL_WRONG:Ljava/lang/String; = "bbk_ril_wrong"

.field public static final BBK_UNLOCK_ANSWER:Ljava/lang/String; = "bbk_answer"

.field public static final BBK_UNLOCK_PROBLEM:Ljava/lang/String; = "bbk_problem"

.field public static final BLUETOOTH_ACTIVITY_IS_FOREGROUND:Ljava/lang/String; = "bluetooth_activity_is_foreground"

.field public static final BLUETOOTH_AUTO_DISABLE_ENABLE:Ljava/lang/String; = "bluetooth_auto_disable_enable"

.field public static final BLUETOOTH_AUTO_DISABLE_TIMEOUT:Ljava/lang/String; = "bluetooth_auto_disable_timeout"

.field public static final DEFAULT_INSTALL_LOCATION:Ljava/lang/String; = "default_install_location"

.field public static final IS_SAVE_LOG:Ljava/lang/String; = "is_save_log"

.field public static final NETWORK_TYPE_PREF:Ljava/lang/String; = "network_type_pref"

.field public static final SET_INSTALL_LOCATION:Ljava/lang/String; = "set_install_location"

.field public static final USB_CONNECT_PROMPT_ENABLE:Ljava/lang/String; = "is_usb_connect_prompt"

.field public static final USB_LAST_CONNECT_STATUS:Ljava/lang/String; = "usb_last_connect_status"

.field public static final WIFI_CONNECT_AP_TYPE:Ljava/lang/String; = "wifi_ap_connect_type"

.field public static final WIFI_CONNECT_AP_TYPE_AUTO:I = 0x0

.field public static final WIFI_CONNECT_AP_TYPE_MANUL:I = 0x1

.field public static final WIFI_CONNECT_TYPE:Ljava/lang/String; = "wifi_connect_type"

.field public static final WIFI_CONNECT_TYPE_ASK:I = 0x2

.field public static final WIFI_CONNECT_TYPE_AUTO:I = 0x0

.field public static final WIFI_CONNECT_TYPE_MANUL:I = 0x1

.field public static final WIFI_HOTSPOT_AUTO_DISABLE:Ljava/lang/String; = "wifi_hotspot_auto_disable"

.field public static final WIFI_HOTSPOT_AUTO_DISABLE_FOR_FIVE_MINS:I = 0x1

.field public static final WIFI_HOTSPOT_AUTO_DISABLE_FOR_TEN_MINS:I = 0x2

.field public static final WIFI_HOTSPOT_AUTO_DISABLE_OFF:I = 0x0

.field public static final WIFI_PRIORITY_TYPE:Ljava/lang/String; = "wifi_priority_type"

.field public static final WIFI_PRIORITY_TYPE_DEFAULT:I = 0x0

.field public static final WIFI_PRIORITY_TYPE_MAMUAL:I = 0x1

.field public static final WIFI_SELECT_SSID_ASK:I = 0x2

.field public static final WIFI_SELECT_SSID_AUTO:I = 0x0

.field public static final WIFI_SELECT_SSID_MANUL:I = 0x1

.field public static final WIFI_SELECT_SSID_TYPE:Ljava/lang/String; = "wifi_select_ssid_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
