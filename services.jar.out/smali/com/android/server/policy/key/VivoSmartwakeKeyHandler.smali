.class public final Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
.super Lcom/android/server/policy/AVivoInterceptKeyCallback;
.source "VivoSmartwakeKeyHandler.java"

# interfaces
.implements Lcom/android/server/policy/IVivoWindowListener;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final ACTION_SMART_WAKE_DISMISS:Ljava/lang/String; = "com.vivo.smartwake.dismiss"

.field private static final EXTRA_USER_PRESENT_DELAY:Ljava/lang/String; = "user_present_delay"

.field public static final FORWARD:I = -0x64

.field public static final HANDLED:I = 0x0

.field public static final HANDLED_PASS_TO_USER:I = 0x1

.field private static final MSG_COLLECT_DATA:I = 0x6

.field private static final MSG_COLLECT_WAKEUP:I = 0x7

.field private static final MSG_VSW_MEDIA_WAKELOCK:I = 0x5

.field private static final MSG_VSW_VIEW_DISABLE:I = 0x4

.field private static final MSG_VSW_VIEW_ENABLE:I = 0x1

.field private static final MSG_VSW_VIEW_LIGHT:I = 0x2

.field private static final MSG_VSW_VIEW_START:I = 0x3

.field private static final PKG_BROWSER:Ljava/lang/String; = "com.vivo.browser"

.field private static final PKG_DIALER:Ljava/lang/String; = "com.android.dialer"

.field private static PKG_EMAIL:Ljava/lang/String; = null

.field private static final PKG_FACEBOOK:Ljava/lang/String; = "com.facebook.katana"

.field private static final PKG_MOBILEQQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field private static final PKG_WECHAT:Ljava/lang/String; = "com.tencent.mm"

.field private static final PKG_WHATSAPP:Ljava/lang/String; = "com.whatsapp"

.field static final PROP_DISMISS:Ljava/lang/String; = "sys.smartwake.dismiss"

.field private static final RO_VIVO_ROM:Ljava/lang/String;

.field private static final START_SERVICE_ACTION:Ljava/lang/String; = "intent.action.custom.gesture"

.field static final TAG:Ljava/lang/String; = "smartwake "

.field static final VCD_EID_DCLICK:Ljava/lang/String; = "1008"

.field static final VCD_EID_SMARTWAKE:Ljava/lang/String; = "1006"

.field static final VCD_ELABEL_C:Ljava/lang/String; = "10064"

.field static final VCD_ELABEL_DCLICK:Ljava/lang/String; = "10082"

.field static final VCD_ELABEL_DOWN:Ljava/lang/String; = "10063"

.field static final VCD_ELABEL_E:Ljava/lang/String; = "10067"

.field static final VCD_ELABEL_LEFT:Ljava/lang/String; = "10066"

.field static final VCD_ELABEL_M:Ljava/lang/String; = "10065"

.field static final VCD_ELABEL_O:Ljava/lang/String; = "10068"

.field static final VCD_ELABEL_RIGHT:Ljava/lang/String; = "10066"

.field static final VCD_ELABEL_UP:Ljava/lang/String; = "10062"

.field static final VCD_ELABEL_W:Ljava/lang/String; = "10069"


# instance fields
.field private mACCSensor:Landroid/hardware/Sensor;

.field private final mCheckOrientation:Z

.field private mContext:Landroid/content/Context;

.field private mDismissKeyguard:Z

.field private volatile mGDataCount:I

.field private mHandler:Landroid/os/Handler;

.field private volatile mHasReportedSmartwakeKey:Z

.field private mIsPhoneHeadStand:Z

.field private mIsSmartkeyDownReported:Z

.field private volatile mKeyCode:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPendingIntent:Landroid/content/Intent;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorChangedCount:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserPresentRunnable:Ljava/lang/Runnable;

.field private mVivoCollectData:Lcom/vivo/common/VivoCollectData;

.field private mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

.field private mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

.field private mWMS:Landroid/view/IWindowManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 940
    const-string v0, "ro.vivo.rom"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->RO_VIVO_ROM:Ljava/lang/String;

    .line 941
    const-string v0, "com.vivo.email"

    sput-object v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->PKG_EMAIL:Ljava/lang/String;

    .line 943
    sget-object v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->RO_VIVO_ROM:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->RO_VIVO_ROM:Ljava/lang/String;

    const-string v1, "rom_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    const-string v0, "com.android.email"

    sput-object v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->PKG_EMAIL:Ljava/lang/String;

    .line 946
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vivoPolicy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/AVivoInterceptKeyCallback;-><init>()V

    .line 407
    iput v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I

    .line 416
    new-instance v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$1;-><init>(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    .line 1089
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mDismissKeyguard:Z

    .line 1099
    new-instance v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$3;-><init>(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mUserPresentRunnable:Ljava/lang/Runnable;

    .line 1122
    new-instance v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$4;-><init>(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1153
    new-instance v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$5;-><init>(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 1188
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSensorChangedCount:I

    .line 1191
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mIsPhoneHeadStand:Z

    .line 1192
    iput v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mGDataCount:I

    .line 1193
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHasReportedSmartwakeKey:Z

    .line 1194
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mIsSmartkeyDownReported:Z

    .line 1195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    .line 75
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .line 78
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "VivoSmartwakeKeyHandler"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 82
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->checkOrientation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mCheckOrientation:Z

    .line 83
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->registerReceiver()V

    .line 84
    new-instance v0, Lcom/vivo/common/VivoCollectData;

    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->viewDisable()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->collectSmartwake(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->collectDclick(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHasReportedSmartwakeKey:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mUserPresentRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mDismissKeyguard:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mDismissKeyguard:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->viewEnable(IZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->launchApp(IZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->wakeupByPM()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->viewUpdateDisappearTime(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->viewStart(Z)V

    return-void
.end method

.method private broadcastKeyguardDismiss()V
    .locals 2

    .prologue
    .line 1094
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.smartwake.dismiss"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1096
    return-void
.end method

.method private checkForwardDeforeQueueing(II)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "policyFlags"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "isDrop":Z
    sparse-switch p1, :sswitch_data_0

    .line 131
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 123
    :sswitch_1
    const/high16 v1, 0x2000000

    if-eq p2, v1, :cond_0

    .line 125
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1d -> :sswitch_1
        0x1f -> :sswitch_1
        0x21 -> :sswitch_1
        0x22 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2b -> :sswitch_1
        0x33 -> :sswitch_1
        0xe0 -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method private checkOrientation()Z
    .locals 3

    .prologue
    .line 1199
    const-string v1, "ro.vivo.product.solution"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, "platform":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartwake check orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 1201
    const-string v1, "QCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1202
    invoke-static {}, Lcom/sensoroperate/VivoSensorTest;->getInstance()Lcom/sensoroperate/VivoSensorTest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    .line 1203
    const/4 v1, 0x1

    .line 1205
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private collectDclick(I)V
    .locals 12
    .param p1, "keyCode"    # I

    .prologue
    .line 1267
    packed-switch p1, :pswitch_data_0

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1269
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    const-string v1, "1008"

    invoke-virtual {v0, v1}, Lcom/vivo/common/VivoCollectData;->getControlInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    const-string v0, "smartwake CollectData: label=10082"

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 1271
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    const-string v2, "1008"

    const-string v3, "10082"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    goto :goto_0

    .line 1267
    nop

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_0
    .end packed-switch
.end method

.method private collectSmartwake(I)V
    .locals 12
    .param p1, "keyCode"    # I

    .prologue
    .line 1225
    const-string v3, ""

    .line 1226
    .local v3, "label":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1228
    :sswitch_0
    const-string v3, "10062"

    .line 1260
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    const-string v1, "1006"

    invoke-virtual {v0, v1}, Lcom/vivo/common/VivoCollectData;->getControlInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smartwake CollectData: label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 1262
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    const-string v2, "1006"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    goto :goto_0

    .line 1231
    :sswitch_1
    const-string v3, "10063"

    .line 1232
    goto :goto_1

    .line 1235
    :sswitch_2
    const-string v3, "10066"

    .line 1236
    goto :goto_1

    .line 1239
    :sswitch_3
    const-string v3, "10066"

    .line 1240
    goto :goto_1

    .line 1242
    :sswitch_4
    const-string v3, "10064"

    .line 1243
    goto :goto_1

    .line 1245
    :sswitch_5
    const-string v3, "10067"

    .line 1246
    goto :goto_1

    .line 1249
    :sswitch_6
    const-string v3, "10065"

    .line 1250
    goto :goto_1

    .line 1252
    :sswitch_7
    const-string v3, "10068"

    .line 1253
    goto :goto_1

    .line 1255
    :sswitch_8
    const-string v3, "10069"

    .line 1256
    goto :goto_1

    .line 1226
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x1f -> :sswitch_4
        0x21 -> :sswitch_5
        0x29 -> :sswitch_6
        0x2b -> :sswitch_7
        0x33 -> :sswitch_8
        0x12e -> :sswitch_1
    .end sparse-switch
.end method

.method private dismissKeyguard()V
    .locals 4

    .prologue
    .line 718
    const-string v1, "sys.smartwake.dismiss"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mDismissKeyguard:Z

    .line 733
    :try_start_0
    const-string v1, "smartwake dismissKeyguard... "

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->keyguardDone(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartwake dismissKeyguard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getComponentName(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 988
    const/4 v2, 0x0

    .local v2, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 989
    .local v0, "clsName":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1026
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1028
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :goto_1
    return-object v3

    .line 992
    :sswitch_0
    const-string v2, "com.android.dialer"

    .line 993
    const-string v0, "com.android.dialer.TwelveKeyDialer"

    .line 994
    goto :goto_0

    .line 996
    :sswitch_1
    const-string v2, "com.vivo.browser"

    .line 997
    const-string v0, "com.vivo.browser.BrowserActivity"

    .line 998
    goto :goto_0

    .line 1000
    :sswitch_2
    const-string v2, "com.tencent.mobileqq"

    .line 1001
    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getMainActivityClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    goto :goto_0

    .line 1004
    :sswitch_3
    const-string v3, "persist.sys.vivo.product.cust"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1005
    .local v1, "country":Ljava/lang/String;
    const-string v3, "IN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1007
    const-string v2, "com.whatsapp"

    .line 1013
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getMainActivityClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    goto :goto_0

    .line 1011
    :cond_0
    const-string v2, "com.tencent.mm"

    goto :goto_2

    .line 1016
    .end local v1    # "country":Ljava/lang/String;
    :sswitch_4
    sget-object v2, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->PKG_EMAIL:Ljava/lang/String;

    .line 1017
    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getMainActivityClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    goto :goto_0

    .line 1020
    :sswitch_5
    const-string v2, "com.facebook.katana"

    .line 1021
    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getMainActivityClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    goto :goto_0

    .line 1032
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 989
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_4
        0x1f -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_5
        0x2b -> :sswitch_2
        0x33 -> :sswitch_3
    .end sparse-switch
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getMainActivityClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1038
    const/4 v0, 0x0

    .line 1040
    .local v0, "clsName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1041
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1044
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 1045
    .local v3, "pkgName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1047
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    .line 1049
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1050
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1052
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1058
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method

.method private getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getWMS()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWMS:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 711
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWMS:Landroid/view/IWindowManager;

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWMS:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private interceptKeyBeforeQueueing(ZILandroid/view/KeyEvent;Z)I
    .locals 24
    .param p1, "down"    # Z
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "isScreenOn"    # Z

    .prologue
    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v13

    .line 191
    .local v13, "repeatCount":I
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v7, v0, [F

    .line 192
    .local v7, "TestVal_digit":[F
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v4, v0, [F

    .line 193
    .local v4, "DefBase_digit":[F
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v6, v0, [F

    .line 194
    .local v6, "MinBase_digit":[F
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v5, v0, [F

    .line 195
    .local v5, "MaxBase_digit":[F
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v8, v0, [I

    .line 196
    .local v8, "arg":[I
    const/16 v18, 0x0

    .local v18, "x":F
    const/16 v19, 0x0

    .local v19, "y":F
    const/16 v20, 0x0

    .line 197
    .local v20, "z":F
    const/16 v21, 0x0

    const/16 v22, 0x1

    aput v22, v8, v21

    .line 198
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "smartwake interceptKeyBeforeQueueing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mCheckOrientation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    if-nez v13, :cond_3

    .line 202
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHasReportedSmartwakeKey:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 204
    if-eqz p1, :cond_4

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 207
    new-instance v14, Lcom/sensoroperate/SensorTestResult;

    invoke-direct {v14}, Lcom/sensoroperate/SensorTestResult;-><init>()V

    .line 208
    .local v14, "result":Lcom/sensoroperate/SensorTestResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    move-object/from16 v21, v0

    const/16 v22, 0x31

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v14, v8, v2}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I

    .line 209
    invoke-virtual {v14, v7, v4, v6, v5}, Lcom/sensoroperate/SensorTestResult;->getAllTestResult([F[F[F[F)I

    move-result v15

    .line 210
    .local v15, "ret":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v0, v15, :cond_1

    .line 211
    const/16 v21, 0x0

    aget v21, v7, v21

    const/high16 v22, 0x42c80000    # 100.0f

    div-float v18, v21, v22

    .line 212
    const/16 v21, 0x1

    aget v21, v7, v21

    const/high16 v22, 0x42c80000    # 100.0f

    div-float v19, v21, v22

    .line 213
    const/16 v21, 0x2

    aget v21, v7, v21

    const/high16 v22, 0x42c80000    # 100.0f

    div-float v20, v21, v22

    .line 214
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "smartwake x:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " y:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " z:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 218
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 219
    const-string v21, "smartwake mWakeLock release"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 220
    const/high16 v21, -0x3f400000    # -6.0f

    cmpg-float v21, v19, v21

    if-gez v21, :cond_2

    .line 222
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mIsPhoneHeadStand:Z

    .line 223
    const-string v21, "smartwake Phone is headstand, drop ts wakeup key, down"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 224
    const/4 v14, 0x0

    .line 401
    .end local v14    # "result":Lcom/sensoroperate/SensorTestResult;
    .end local v15    # "ret":I
    :cond_0
    :goto_1
    return v14

    .line 216
    .restart local v14    # "result":Lcom/sensoroperate/SensorTestResult;
    .restart local v15    # "ret":I
    :cond_1
    const-string v21, "smartwake get gsensor data failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mIsPhoneHeadStand:Z

    .line 229
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mIsSmartkeyDownReported:Z

    .line 230
    const-string v21, "smartwake Phone direction is normal down"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 255
    .end local v14    # "result":Lcom/sensoroperate/SensorTestResult;
    .end local v15    # "ret":I
    :cond_3
    :goto_2
    const/4 v14, 0x0

    .line 256
    .local v14, "result":I
    sparse-switch p2, :sswitch_data_0

    .line 398
    const/16 v14, -0x64

    goto :goto_1

    .line 235
    .end local v14    # "result":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mIsSmartkeyDownReported:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mIsPhoneHeadStand:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 237
    :cond_5
    const-string v21, "smartwake Phone is headstand, drop ts wakeup key, up"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 238
    const/4 v14, 0x0

    goto :goto_1

    .line 242
    :cond_6
    const-string v21, "smartwake Phone direction is normal up"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 244
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHasReportedSmartwakeKey:Z

    .line 245
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mIsSmartkeyDownReported:Z

    goto :goto_2

    .line 251
    :cond_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "smartwake Has reported smartwake key "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    goto :goto_2

    .line 260
    .restart local v14    # "result":I
    :sswitch_0
    const-string v21, "CUSTOM_SmartwakeHandler"

    const-string v22, "KEYCODE_CUSTOM_GESTURE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-eqz p1, :cond_0

    if-nez v13, :cond_0

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->startCustomGestureService()V

    goto/16 :goto_1

    .line 267
    :sswitch_1
    if-eqz p1, :cond_8

    if-nez v13, :cond_8

    .line 269
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->performHapticFeedback(I)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->wakeupByPM(J)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 273
    .local v12, "msg":Landroid/os/Message;
    move/from16 v0, p2

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 276
    .end local v12    # "msg":Landroid/os/Message;
    :cond_8
    const/4 v14, 0x1

    .line 277
    goto/16 :goto_1

    .line 282
    :sswitch_2
    if-eqz p1, :cond_c

    if-nez v13, :cond_c

    .line 284
    const/4 v9, 0x0

    .line 285
    .local v9, "isIdle":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v16

    .line 286
    .local v16, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v16, :cond_9

    .line 288
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v21

    if-nez v21, :cond_d

    const/4 v9, 0x1

    .line 290
    :cond_9
    :goto_3
    if-eqz v9, :cond_c

    .line 292
    const/4 v11, 0x0

    .line 293
    .local v11, "mediaKeyCode":I
    const/16 v17, 0x0

    .line 294
    .local v17, "vibra":Z
    const/16 v21, 0x15

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->isMusicActive()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 298
    const/16 v11, 0x58

    .line 313
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->sendSimulatedMediaButtonEvent(I)V

    .line 314
    if-eqz v17, :cond_b

    .line 316
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->performHapticFeedback(I)V

    .line 319
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 320
    .restart local v12    # "msg":Landroid/os/Message;
    move/from16 v0, p2

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 324
    .end local v9    # "isIdle":Z
    .end local v11    # "mediaKeyCode":I
    .end local v12    # "msg":Landroid/os/Message;
    .end local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v17    # "vibra":Z
    :cond_c
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHasReportedSmartwakeKey:Z

    goto/16 :goto_1

    .line 288
    .restart local v9    # "isIdle":Z
    .restart local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_d
    const/4 v9, 0x0

    goto :goto_3

    .line 301
    .restart local v11    # "mediaKeyCode":I
    .restart local v17    # "vibra":Z
    :cond_e
    const/16 v21, 0x16

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->isMusicActive()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 305
    const/16 v11, 0x57

    goto :goto_4

    .line 310
    :cond_f
    const/16 v11, 0x55

    .line 311
    const/16 v17, 0x1

    goto :goto_4

    .line 336
    .end local v9    # "isIdle":Z
    .end local v11    # "mediaKeyCode":I
    .end local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v17    # "vibra":Z
    :sswitch_3
    if-eqz p1, :cond_0

    if-nez v13, :cond_0

    .line 338
    const/4 v9, 0x0

    .line 339
    .restart local v9    # "isIdle":Z
    const/4 v10, 0x0

    .line 340
    .local v10, "isRinging":Z
    const/16 v17, 0x0

    .line 341
    .restart local v17    # "vibra":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v16

    .line 342
    .restart local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v16, :cond_10

    .line 344
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v10

    .line 345
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v21

    if-nez v21, :cond_13

    const/4 v9, 0x1

    .line 347
    :cond_10
    :goto_5
    if-eqz v9, :cond_14

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 360
    const-string v21, "smartwake prepare removed. hasMessages..."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 363
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 365
    .restart local v12    # "msg":Landroid/os/Message;
    move/from16 v0, p2

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 366
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 368
    const/16 v17, 0x1

    .line 386
    .end local v12    # "msg":Landroid/os/Message;
    :goto_6
    if-eqz v17, :cond_12

    .line 388
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->performHapticFeedback(I)V

    .line 391
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 392
    .restart local v12    # "msg":Landroid/os/Message;
    move/from16 v0, p2

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 345
    .end local v12    # "msg":Landroid/os/Message;
    :cond_13
    const/4 v9, 0x0

    goto :goto_5

    .line 370
    :cond_14
    if-nez v10, :cond_15

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 374
    .restart local v12    # "msg":Landroid/os/Message;
    move/from16 v0, p2

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 375
    const/16 v21, -0x1

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->wakeupByPM(J)V

    .line 379
    const/16 v17, 0x1

    .line 380
    goto :goto_6

    .line 383
    .end local v12    # "msg":Landroid/os/Message;
    :cond_15
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->wakeupByPM(J)V

    .line 384
    const/16 v17, 0x1

    goto :goto_6

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x1d -> :sswitch_3
        0x1f -> :sswitch_3
        0x21 -> :sswitch_3
        0x22 -> :sswitch_3
        0x29 -> :sswitch_2
        0x2b -> :sswitch_3
        0x33 -> :sswitch_3
        0xe0 -> :sswitch_1
        0x12e -> :sswitch_3
        0x12f -> :sswitch_0
    .end sparse-switch
.end method

.method private isMusicActive()Z
    .locals 3

    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 673
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 675
    const-string v1, "smartwake isMusicActive: couldn\'t get AudioManager reference"

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 676
    const/4 v1, 0x0

    .line 678
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method private isRunningForeground(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 951
    const/4 v1, 0x0

    .line 952
    .local v1, "foreground":Z
    sparse-switch p1, :sswitch_data_0

    .line 983
    :goto_0
    return v1

    .line 955
    :sswitch_0
    const-string v2, "com.android.dialer"

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->isRunningForeground(Ljava/lang/String;)Z

    move-result v1

    .line 956
    goto :goto_0

    .line 958
    :sswitch_1
    const-string v2, "com.vivo.browser"

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->isRunningForeground(Ljava/lang/String;)Z

    move-result v1

    .line 959
    goto :goto_0

    .line 961
    :sswitch_2
    const-string v2, "com.tencent.mobileqq"

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->isRunningForeground(Ljava/lang/String;)Z

    move-result v1

    .line 962
    goto :goto_0

    .line 964
    :sswitch_3
    const-string v2, "persist.sys.vivo.product.cust"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "country":Ljava/lang/String;
    const-string v2, "IN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 967
    const-string v2, "com.whatsapp"

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->isRunningForeground(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 971
    :cond_0
    const-string v2, "com.tencent.mm"

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->isRunningForeground(Ljava/lang/String;)Z

    move-result v1

    .line 973
    goto :goto_0

    .line 975
    .end local v0    # "country":Ljava/lang/String;
    :sswitch_4
    sget-object v2, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->PKG_EMAIL:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->isRunningForeground(Ljava/lang/String;)Z

    move-result v1

    .line 976
    goto :goto_0

    .line 978
    :sswitch_5
    const-string v2, "com.facebook.katana"

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->isRunningForeground(Ljava/lang/String;)Z

    move-result v1

    .line 979
    goto :goto_0

    .line 952
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_4
        0x1f -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_5
        0x2b -> :sswitch_2
        0x33 -> :sswitch_3
    .end sparse-switch
.end method

.method private isRunningForeground(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1063
    const/4 v1, 0x0

    .line 1064
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1068
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1079
    .local v2, "currentPackageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 1085
    .end local v2    # "currentPackageName":Ljava/lang/String;
    :goto_0
    return v4

    .line 1070
    :catch_0
    move-exception v3

    .line 1072
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smartwake "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is running foreground exception..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v6

    .line 1074
    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    move v4, v6

    .line 1085
    goto :goto_0
.end method

.method private launchApp(IZZ)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "isSecure"    # Z
    .param p3, "isLocked"    # Z

    .prologue
    const v6, 0x1001c000

    const/4 v5, 0x0

    .line 797
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;

    .line 798
    iget-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mUserPresentRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 800
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x30214000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 807
    const/4 v2, 0x0

    .line 808
    .local v2, "isSetLss":Z
    sparse-switch p1, :sswitch_data_0

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 811
    :sswitch_0
    const-string v3, "smartwake an unknown key..."

    invoke-direct {p0, v3}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    goto :goto_0

    .line 814
    :sswitch_1
    const-string v3, "start-mode"

    const-string v4, "smartwake"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->isRunningForeground(I)Z

    move-result v2

    .line 821
    invoke-direct {p0, p1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->getComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 822
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 824
    if-nez p2, :cond_1

    .line 826
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->dismissKeyguard()V

    goto :goto_0

    .line 828
    :cond_1
    if-eqz p3, :cond_0

    .line 830
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->broadcastKeyguardDismiss()V

    goto :goto_0

    .line 834
    :cond_2
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 836
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 838
    iput-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;

    .line 839
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->broadcastKeyguardDismiss()V

    goto :goto_0

    .line 842
    :cond_3
    if-eqz p3, :cond_4

    .line 844
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->dismissKeyguard()V

    .line 846
    :cond_4
    if-eqz v2, :cond_5

    .line 848
    invoke-direct {p0, v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->setLockScreenShown(Z)V

    .line 850
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->startActivity(Landroid/content/Intent;)V

    .line 851
    const/16 v3, 0x2b

    if-ne p1, v3, :cond_0

    .line 853
    iput-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;

    .line 854
    iget-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPendingIntent:Landroid/content/Intent;

    const-string v4, "user_present_delay"

    const/16 v5, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 858
    .end local v0    # "cn":Landroid/content/ComponentName;
    :sswitch_3
    if-nez p2, :cond_6

    .line 860
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->dismissKeyguard()V

    goto :goto_0

    .line 862
    :cond_6
    if-eqz p3, :cond_0

    .line 864
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->broadcastKeyguardDismiss()V

    goto :goto_0

    .line 868
    :sswitch_4
    const/4 v2, 0x1

    .line 869
    const-string v3, "com.android.camera"

    invoke-direct {p0, v3}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->isRunningForeground(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 871
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 873
    const/4 v2, 0x0

    .line 874
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 891
    :goto_1
    const-string v3, "SlideToCamera"

    const-string v4, "wakeup"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    .line 894
    const-string v3, "android.media.action.VIVO_STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    const-string v3, "wave_open_application"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    :goto_2
    if-eqz p3, :cond_7

    if-nez p2, :cond_7

    .line 906
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->dismissKeyguard()V

    .line 908
    :cond_7
    if-eqz p3, :cond_8

    if-eqz v2, :cond_8

    .line 910
    invoke-direct {p0, v5}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->setLockScreenShown(Z)V

    .line 912
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 881
    :cond_9
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 886
    :cond_a
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 900
    :cond_b
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    const-string v3, "com.android.camera"

    const-string v4, "com.android.camera.CameraActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    const-string v3, "wave_open_application"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 808
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x13 -> :sswitch_3
        0x1d -> :sswitch_2
        0x1f -> :sswitch_2
        0x21 -> :sswitch_1
        0x22 -> :sswitch_2
        0x2b -> :sswitch_2
        0x33 -> :sswitch_2
        0x12e -> :sswitch_4
    .end sparse-switch
.end method

.method private logoutAntiMisoperation()V
    .locals 4

    .prologue
    .line 757
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "SmartWakeLogoutAntiMisoperation"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 760
    .local v0, "pmWakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 761
    return-void
.end method

.method private performHapticFeedback(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x1

    .line 655
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->performHapticFeedback(IZZ)Z

    .line 656
    return-void
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1178
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1179
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1180
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1181
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1182
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1183
    const/16 v1, -0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1184
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1185
    return-void
.end method

.method private sendSimulatedMediaButtonEvent(I)V
    .locals 9
    .param p1, "keyCode"    # I

    .prologue
    .line 682
    if-nez p1, :cond_0

    .line 704
    :goto_0
    return-void

    .line 686
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smartwake simulated music "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 689
    .local v2, "time":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 690
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-interface {v4, v1}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->sendMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 692
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 693
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    invoke-interface {v4, v1}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->sendMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 695
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 697
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 698
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 699
    const-string v4, "smartwake media wakelock removed."

    invoke-direct {p0, v4}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 701
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 702
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 703
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private sendViewDisable()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 541
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 543
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 544
    return-void
.end method

.method private setLockScreenShown(Z)V
    .locals 3
    .param p1, "val"    # Z

    .prologue
    .line 787
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartwake set lss "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 923
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :goto_0
    return-void

    .line 925
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartwake startActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startCustomGestureService()V
    .locals 3

    .prologue
    .line 1284
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.custom.gesture"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vivo.smartwakecustomgesture"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1285
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1286
    return-void
.end method

.method private viewDisable()V
    .locals 3

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 639
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 640
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartwake disable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 643
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private viewEnable(IZZ)V
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "visible"    # Z
    .param p3, "wakeup"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 549
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    if-nez v4, :cond_2

    .line 551
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->logoutAntiMisoperation()V

    .line 553
    new-instance v4, Lcom/android/server/policy/key/VivoSmartwakeView;

    iget-object v5, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/policy/key/VivoSmartwakeView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    .line 554
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    invoke-virtual {v4, p1}, Lcom/android/server/policy/key/VivoSmartwakeView;->setmKeyCode(I)V

    .line 555
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    new-instance v5, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$2;

    invoke-direct {v5, p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler$2;-><init>(Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;)V

    invoke-virtual {v4, v5}, Lcom/android/server/policy/key/VivoSmartwakeView;->setAnimEndlistener(Lcom/android/server/policy/key/VivoSmartwakeCharContainer$SmartWakeCallback;)V

    .line 565
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 569
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7df

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 571
    const v4, 0x280518

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 578
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 581
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 584
    :cond_0
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 586
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 588
    const-string v4, "VivoSmartwakeView"

    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 591
    .local v1, "wm":Landroid/view/WindowManager;
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 592
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    invoke-interface {v1, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    invoke-interface {v1, v4, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/server/policy/key/VivoSmartwakeView;->setVisibility(I)V

    .line 595
    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    invoke-virtual {v2}, Lcom/android/server/policy/key/VivoSmartwakeView;->invalidate()V

    .line 620
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :goto_1
    return-void

    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "wm":Landroid/view/WindowManager;
    :cond_1
    move v2, v3

    .line 594
    goto :goto_0

    .line 599
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    invoke-virtual {v4, p1}, Lcom/android/server/policy/key/VivoSmartwakeView;->setmKeyCode(I)V

    .line 600
    iget-object v4, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/server/policy/key/VivoSmartwakeView;->setVisibility(I)V

    .line 601
    if-eqz p3, :cond_5

    .line 603
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->wakeupByPM()V

    .line 604
    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 606
    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    const-string v2, "smartwake enabled wakeup... removed..."

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 600
    goto :goto_2

    .line 612
    :cond_4
    const-string v2, "smartwake enabled wakeup..."

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    goto :goto_1

    .line 617
    :cond_5
    const-string v2, "smartwake enabled not wakeup..."

    invoke-direct {p0, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private viewStart(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/key/VivoSmartwakeView;->startTrackAnimation(Z)V

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_0
    const-string v0, "smartwake disabled..."

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private viewUpdateDisappearTime(IZ)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "isSecure"    # Z

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/key/VivoSmartwakeView;->updateDisappearTime(IZ)V

    .line 651
    :cond_0
    return-void
.end method

.method private wakeupByPM()V
    .locals 4

    .prologue
    .line 749
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x1000000a

    const-string v3, "SmartWake"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 752
    .local v0, "pmWakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 753
    return-void
.end method

.method private wakeupByPM(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 745
    return-void
.end method


# virtual methods
.method public getWindowToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "windowToken":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mSmartWakeView:Lcom/android/server/policy/key/VivoSmartwakeView;

    invoke-virtual {v1}, Lcom/android/server/policy/key/VivoSmartwakeView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 511
    if-nez v0, :cond_0

    .line 513
    const-string v1, "smartwake window failed..."

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 521
    :cond_0
    return-object v0
.end method

.method public onCheckForward(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "isDrop":Z
    iget v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :goto_0
    return v0

    .line 95
    :pswitch_0
    iget v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mPolicyFlags:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->checkForwardDeforeQueueing(II)Z

    move-result v0

    .line 96
    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onFinishScreenTurningOn()V
    .locals 4

    .prologue
    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartwake onFinishScreenTurningOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    .line 527
    iget v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mKeyCode:I

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 531
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 537
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->sendViewDisable()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)I
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 137
    const/16 v0, -0x64

    .line 138
    .local v0, "result":I
    iget v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    :pswitch_0
    return v0

    .line 141
    :pswitch_1
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mIsScreenOn:Z

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->interceptKeyBeforeQueueing(ZILandroid/view/KeyEvent;Z)I

    move-result v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartwake onKeyDown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 177
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)I
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 156
    const/16 v0, -0x64

    .line 157
    .local v0, "result":I
    iget v1, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 170
    :goto_0
    :pswitch_0
    return v0

    .line 160
    :pswitch_1
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->mIsScreenOn:Z

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->interceptKeyBeforeQueueing(ZILandroid/view/KeyEvent;Z)I

    move-result v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartwake onKeyUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoSmartwakeKeyHandler;->printf(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
