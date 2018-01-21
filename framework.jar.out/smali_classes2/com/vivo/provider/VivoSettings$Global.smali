.class public final Lcom/vivo/provider/VivoSettings$Global;
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
    name = "Global"
.end annotation


# static fields
.field public static final NFC_ON:Ljava/lang/String; = "nfc_on"

.field public static final PREFERRED_SINGLELTE_MODE:Ljava/lang/String; = "preferred_singlelte_mode"

.field public static final VIRTUAL_MAIN_CARD:Ljava/lang/String; = "virtual_main_card"

.field public static final VIVO_CMCC_WIFI_DICONNECT_ENABLE_DATA:Ljava/lang/String; = "vivo_cmcc_wifi_disconnected_enable_data"

.field public static final VIVO_MULTI_SIM_BACK_CALL_SUBSCRIPTION:Ljava/lang/String; = "vivo_multi_sim_back_call"

.field public static final VIVO_MULTI_SIM_SMS_SUBSCRIPTION:Ljava/lang/String; = "vivo_multi_sim_sms"

.field public static final VIVO_MULTI_SIM_VOICE_CALL_SUBSCRIPTION:Ljava/lang/String; = "vivo_multi_sim_voice_call"

.field public static final VIVO_PREFER_NETWORK_MODE_SIM1:Ljava/lang/String; = "vivo_prefer_network_mode_sim1"

.field public static final VIVO_PREFER_NETWORK_MODE_SIM2:Ljava/lang/String; = "vivo_prefer_network_mode_sim2"

.field public static final WIFI_IS_FIRST_TIME_ENABLE:Ljava/lang/String; = "wifi_is_first_time_enable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
