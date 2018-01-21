.class public Lcom/vivo/content/VivoContext;
.super Ljava/lang/Object;
.source "VivoContext.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final BBK_TOUCH_SCREEN_SERVICE:Ljava/lang/String; = "bbk_touch_screen_service"

.field public static final DEVICE_PARA_PROVIDE_SERVICE:Ljava/lang/String; = "device_para_provide_service"

.field public static final HALL_STATE_MANAGER:Ljava/lang/String; = "hall_state_manager"

.field public static final HALL_STATE_SERVICE:Ljava/lang/String; = "hall_state_service"

.field public static final MOTION_RECONGNITION_SERVICE:Ljava/lang/String; = "motion_recongnition"

.field public static final SENSOR_LOG_SERVICE:Ljava/lang/String; = "sensor_log"

.field public static final TAG:Ljava/lang/String; = "VivoContext"

.field public static final VIVO_LOG_SERVICE:Ljava/lang/String; = "vivo_log_service"

.field public static final VIVO_PERMISSION_SERVICE:Ljava/lang/String; = "vivo_permission_service"

.field public static final VIVO_PROX_CALI_SERVICE:Ljava/lang/String; = "vivo_prox_cali_service"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
