.class public final Lcom/android/server/policy/VivoPolicyConstant;
.super Ljava/lang/Object;
.source "VivoPolicyConstant.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final ACTION_HW_KEY_ALARM_CHANGE:Ljava/lang/String; = "vivo.intent.action.HW_KEY_ALARM_CHANGE"

.field public static final ACTION_INPUT_VOLUME_CLICK:Ljava/lang/String; = "com.vivo.inputtest.intent.action.VOLUME_KEY_CLICK"

.field public static final ACTION_MTK_LOG_CHANGED:Ljava/lang/String; = "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

.field public static final ACTION_POWER_KEY_OVER_LONG_PRESS:Ljava/lang/String; = "vivo.intent.action.POWER_KEY_OVER_LONG_PRESS"

.field public static final ACTION_POWER_KEY_SCREEN_OFF:Ljava/lang/String; = "vivo.intent.action.POWER_KEY_SCREEN_OFF"

.field public static final ACTION_VIVO_LOG_CHANGED:Ljava/lang/String; = "android.vivo.bbklog.action.CHANGED"

.field public static final FINISH_HANDLED:I = -0x65

.field public static final FINISH_NOT_HANDLED:I = -0x66

.field public static final FORWARD:I = -0x64

.field public static final KEYCODE_BAR_SWIPE:I

.field public static final KEYCODE_TS_LARGE_SUPPRESSION:I

.field public static final KEYCODE_WAKEUP:I

.field public static final KEYCODE_WAKEUP_SWIPE:I

.field public static final KEY_BOOT_REASON:Ljava/lang/String; = "sys.boot.reason"

.field public static final KEY_DRIVING_MODE:Ljava/lang/String; = "sys.drive_mode"

.field public static final KEY_SUPER_SAVER:Ljava/lang/String; = "sys.super_power_save"

.field public static final KEY_VIVO_INPUT_LOG_CTRL:Ljava/lang/String; = "persist.sys.input.log"

.field public static final KEY_VIVO_LOG_CTRL:Ljava/lang/String; = "persist.sys.log.ctrl"

.field private static final OBJECT_BAR_SWIPE:Ljava/lang/Object;

.field private static final OBJECT_DISABLE_HOMEKEY_LONGPRESS:Ljava/lang/Object;

.field private static final OBJECT_HOMEKEY_DISPATCHED:Ljava/lang/Object;

.field private static final OBJECT_TS_LARGE_SUPPRESSION:Ljava/lang/Object;

.field private static final OBJECT_WAKEUP:Ljava/lang/Object;

.field private static final OBJECT_WAKEUP_SWIPE:Ljava/lang/Object;

.field public static final PLATFORM_INFO:Ljava/lang/String;

.field public static final PRIVATE_FLAG_DISABLE_HOMEKEY_LONGPRESS:I

.field public static final PRIVATE_FLAG_HOMEKEY_DISPATCHED:I

.field public static final STATE_BEFORE_DISPATCHING:I = 0x1

.field public static final STATE_BEFORE_QUEUEING:I = 0x0

.field public static final STATE_UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 38
    sget-object v0, Lcom/vivo/content/VivoConstants;->PLATFORM_TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/VivoPolicyConstant;->PLATFORM_INFO:Ljava/lang/String;

    .line 40
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "PRIVATE_FLAG_HOMEKEY_DISPATCHED"

    invoke-static {v0, v2}, Lcom/android/server/policy/VivoPolicyUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_HOMEKEY_DISPATCHED:Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_HOMEKEY_DISPATCHED:Ljava/lang/Object;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_HOMEKEY_DISPATCHED:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    sput v0, Lcom/android/server/policy/VivoPolicyConstant;->PRIVATE_FLAG_HOMEKEY_DISPATCHED:I

    .line 43
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v2, "PRIVATE_FLAG_DISABLE_HOMEKEY_LONGPRESS"

    invoke-static {v0, v2}, Lcom/android/server/policy/VivoPolicyUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_DISABLE_HOMEKEY_LONGPRESS:Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_DISABLE_HOMEKEY_LONGPRESS:Ljava/lang/Object;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_DISABLE_HOMEKEY_LONGPRESS:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    sput v0, Lcom/android/server/policy/VivoPolicyConstant;->PRIVATE_FLAG_DISABLE_HOMEKEY_LONGPRESS:I

    .line 46
    const-class v0, Landroid/view/KeyEvent;

    const-string v2, "KEYCODE_TS_LARGE_SUPPRESSION"

    invoke-static {v0, v2}, Lcom/android/server/policy/VivoPolicyUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_TS_LARGE_SUPPRESSION:Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_TS_LARGE_SUPPRESSION:Ljava/lang/Object;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_TS_LARGE_SUPPRESSION:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    sput v0, Lcom/android/server/policy/VivoPolicyConstant;->KEYCODE_TS_LARGE_SUPPRESSION:I

    .line 49
    const-class v0, Landroid/view/KeyEvent;

    const-string v2, "KEYCODE_BAR_SWIPE"

    invoke-static {v0, v2}, Lcom/android/server/policy/VivoPolicyUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_BAR_SWIPE:Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_BAR_SWIPE:Ljava/lang/Object;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_BAR_SWIPE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    sput v0, Lcom/android/server/policy/VivoPolicyConstant;->KEYCODE_BAR_SWIPE:I

    .line 52
    const-class v0, Landroid/view/KeyEvent;

    const-string v2, "KEYCODE_WAKEUP"

    invoke-static {v0, v2}, Lcom/android/server/policy/VivoPolicyUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_WAKEUP:Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_WAKEUP:Ljava/lang/Object;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_WAKEUP:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_4
    sput v0, Lcom/android/server/policy/VivoPolicyConstant;->KEYCODE_WAKEUP:I

    .line 55
    const-class v0, Landroid/view/KeyEvent;

    const-string v2, "KEYCODE_WAKEUP_SWIPE"

    invoke-static {v0, v2}, Lcom/android/server/policy/VivoPolicyUtil;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_WAKEUP_SWIPE:Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_WAKEUP_SWIPE:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/VivoPolicyConstant;->OBJECT_WAKEUP_SWIPE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    sput v1, Lcom/android/server/policy/VivoPolicyConstant;->KEYCODE_WAKEUP_SWIPE:I

    return-void

    :cond_1
    move v0, v1

    .line 41
    goto :goto_0

    :cond_2
    move v0, v1

    .line 44
    goto :goto_1

    :cond_3
    move v0, v1

    .line 47
    goto :goto_2

    :cond_4
    move v0, v1

    .line 50
    goto :goto_3

    :cond_5
    move v0, v1

    .line 53
    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
