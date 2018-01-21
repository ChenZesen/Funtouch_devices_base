.class public Landroid/util/VivoSmartMultiWindowConfig;
.super Ljava/lang/Object;
.source "VivoSmartMultiWindowConfig.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static ACTIVE_MODE:Z

.field public static DEBUG_ACTIVITY:Z

.field public static DEBUG_ACTIVITYSTACK:Z

.field public static DEBUG_ACTIVITYSTACKSUPERVISOR:Z

.field public static DEBUG_ALL:Z

.field public static DEBUG_AMS:Z

.field public static DEBUG_CONFIGURATION:Z

.field public static DEBUG_DISPLAYINFO:Z

.field public static DEBUG_IMPORTANT:Z

.field public static DEBUG_LAYOUT:Z

.field public static DEBUG_MUST_LOG:Z

.field public static DEBUG_MWAPP_TRANSITION:Z

.field public static DEBUG_POPUPWINDOW:Z

.field public static DEBUG_RESOURCES:Z

.field public static DEBUG_ROTATE:Z

.field public static DEBUG_SERVICE:Z

.field public static DEBUG_TIME:Z

.field public static DEBUG_WMS:Z

.field public static ENABLE_SPLIT:Z

.field public static FEATURE:Ljava/lang/String;

.field public static IS_EXPORT:Z

.field public static PASSIVE_MODE_ONLY:Z

.field public static TAG_ACTIVITY:Ljava/lang/String;

.field public static TAG_ACTIVITYSTACK:Ljava/lang/String;

.field public static TAG_ACTIVITYSTACKSUPERVISOR:Ljava/lang/String;

.field public static TAG_ACTIVITYTHREAD:Ljava/lang/String;

.field public static TAG_AMS:Ljava/lang/String;

.field public static TAG_CONFIGURATION:Ljava/lang/String;

.field public static TAG_DISPLAYINFO:Ljava/lang/String;

.field public static TAG_LAYOUT:Ljava/lang/String;

.field public static TAG_POPUPWINDOW:Ljava/lang/String;

.field public static TAG_RESOURCES:Ljava/lang/String;

.field public static TAG_ROTATE:Ljava/lang/String;

.field public static TAG_TIME:Ljava/lang/String;

.field public static TAG_WMS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    const-string v0, ""

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->FEATURE:Ljava/lang/String;

    .line 12
    sput-boolean v4, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    .line 14
    sget-object v0, Landroid/util/VivoSmartMultiWindowConfig;->FEATURE:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    .line 15
    sput-boolean v4, Landroid/util/VivoSmartMultiWindowConfig;->PASSIVE_MODE_ONLY:Z

    .line 16
    const-string v0, "true"

    const-string v1, "persist.vivo.multiwindow_active"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->ACTIVE_MODE:Z

    .line 18
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_ALL:Z

    .line 19
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    .line 20
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_ACTIVITY:Z

    .line 21
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_CONFIGURATION:Z

    .line 22
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_DISPLAYINFO:Z

    .line 23
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_RESOURCES:Z

    .line 24
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_POPUPWINDOW:Z

    .line 25
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_SERVICE:Z

    .line 26
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_LAYOUT:Z

    .line 27
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_AMS:Z

    .line 28
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_WMS:Z

    .line 29
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_ACTIVITYSTACKSUPERVISOR:Z

    .line 30
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_ACTIVITYSTACK:Z

    .line 31
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_TIME:Z

    .line 32
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_ROTATE:Z

    .line 33
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_MWAPP_TRANSITION:Z

    .line 34
    sput-boolean v4, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_MUST_LOG:Z

    .line 36
    const-string v0, "vivo_debug_ActivityThread"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_ACTIVITYTHREAD:Ljava/lang/String;

    .line 37
    const-string v0, "vivo_debug_Activity"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_ACTIVITY:Ljava/lang/String;

    .line 38
    const-string v0, "vivo_debug_Resources"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_RESOURCES:Ljava/lang/String;

    .line 39
    const-string v0, "vivo_debug_Configuration"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_CONFIGURATION:Ljava/lang/String;

    .line 40
    const-string v0, "vivo_debug_DisplayInfo"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_DISPLAYINFO:Ljava/lang/String;

    .line 41
    const-string v0, "vivo_debug_popupwindow"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_POPUPWINDOW:Ljava/lang/String;

    .line 42
    const-string v0, "vivo_debug_AMS"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_AMS:Ljava/lang/String;

    .line 43
    const-string v0, "vivo_debug_WMS"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_WMS:Ljava/lang/String;

    .line 44
    const-string v0, "vivo_debug_ActivityStackSupervisor"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_ACTIVITYSTACKSUPERVISOR:Ljava/lang/String;

    .line 45
    const-string v0, "vivo_debug_ActivityStack"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_ACTIVITYSTACK:Ljava/lang/String;

    .line 46
    const-string v0, "vivo_debug_time"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_TIME:Ljava/lang/String;

    .line 47
    const-string v0, "vivo_debug_layout"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_LAYOUT:Ljava/lang/String;

    .line 48
    const-string v0, "vivo_debug_rotate"

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->TAG_ROTATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deicdeDebugEnable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 62
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v0, "vivo.smart.multiwindow.log"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sput-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    .line 69
    sput-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_ACTIVITY:Z

    .line 70
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_CONFIGURATION:Z

    .line 71
    sput-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_DISPLAYINFO:Z

    .line 72
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_RESOURCES:Z

    .line 73
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_POPUPWINDOW:Z

    .line 74
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_SERVICE:Z

    .line 75
    sput-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_LAYOUT:Z

    .line 76
    sput-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_ACTIVITYSTACKSUPERVISOR:Z

    .line 77
    sput-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_ACTIVITYSTACK:Z

    .line 78
    sput-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_AMS:Z

    .line 79
    sput-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_WMS:Z

    .line 80
    sput-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_TIME:Z

    .line 81
    sput-boolean v2, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_MWAPP_TRANSITION:Z

    goto :goto_0
.end method

.method public static loadConfig()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "persist.vivo.multiwindow"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/VivoSmartMultiWindowConfig;->FEATURE:Ljava/lang/String;

    .line 52
    sget-object v0, Landroid/util/VivoSmartMultiWindowConfig;->FEATURE:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    .line 53
    const-string v0, "yes"

    const-string v1, "ro.vivo.product.overseas"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    .line 54
    invoke-static {}, Landroid/util/VivoSmartMultiWindowConfig;->deicdeDebugEnable()V

    .line 55
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    .line 59
    return-void
.end method
