.class public Lcom/vivo/common/utils/ChildrenModeHelper;
.super Landroid/content/BroadcastReceiver;
.source "ChildrenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;,
        Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;,
        Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;
    }
.end annotation


# static fields
.field private static final ACTION_CHILDREN_MODE_FULL_SCREEN_ASSERT:Ljava/lang/String; = "com.vivo.childrenmode_action_full_screen_assert"

.field private static final ACTION_CHILDREN_MODE_START:Ljava/lang/String; = "com.vivo.childrenmode_action_app_start"

.field private static final AP_INDICATE_ADDED:I = 0x2

.field private static final AP_INDICATE_SYSTEM_APP_WHITE:I = 0x1

.field private static final AP_INDICATE_THIRD_APP_BLACK:I = 0x0

.field private static final CHILDRENMODE_AP_INDICATE:Ljava/lang/String; = "ap_indicate"

.field private static final CHILDRENMODE_CLASS_NAME:Ljava/lang/String; = "main_class"

.field private static final CHILDRENMODE_PACKAGE_NAME:Ljava/lang/String; = "pack_name"

.field private static final CHILDRENMODE_TITLE_NAME:Ljava/lang/String; = "ap_name"

.field private static final CHILDREN_MODE_URI:Landroid/net/Uri;

.field private static final EXTRA_IS_BAD_POSTURE:Ljava/lang/String; = "com.vivo.childrenmode_bad_posture"

.field private static final EXTRA_IS_START:Ljava/lang/String; = "com.vivo.childrenmode_start"

.field private static final EXTRA_IS_TIME_OUT:Ljava/lang/String; = "com.vivo.childrenmode_time_out"

.field private static final FLAG_ALL_CLASS:Ljava/lang/String; = ".*"

.field private static final FLAG_CHILDREN_MODE_ENABLE:Ljava/lang/String; = "vivo_children_mode_enable"

.field private static final PATH_CHILDREN_MODE_WHITE_LIST_TEMP:Ljava/lang/String; = "/data/bbkcore/com.vivo.childrenmode_children_mode_white_list_temp.xml"

.field private static final PATH_DEFAULT_CONFIG:Ljava/lang/String; = "/data/bbkcore/com.vivo.childrenmode_default_config_list.xml"

.field private static final TAG:Ljava/lang/String; = "ChildrenModeHelper"

.field private static final TAG_BLACK_ITEM:Ljava/lang/String; = "black_item"

.field private static final TAG_CHILDREN_MODE_WHITE_LIST_ITEM:Ljava/lang/String; = "children_mode_white_item"

.field private static final TAG_WHITE_ITEM:Ljava/lang/String; = "white_item"

.field public static final TYPE_NEED_INFO:I = 0x0

.field public static final TYPE_NOT_NEED_INFO:I = 0x1

.field private static sInstance:Lcom/vivo/common/utils/ChildrenModeHelper;

.field private static sLogEnable:Z

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mChildrenModeBadPosture:Z

.field private mChildrenModeEnable:Z

.field private mChildrenModeObserver:Landroid/database/ContentObserver;

.field private mChildrenModeStart:Z

.field private mChildrenModeTimeout:Z

.field private mChildrenModeWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDefaultBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultBlackListConfig:[Ljava/lang/String;

.field private mDefaultConfigObserver:Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;

.field private mDefaultWhiteListConfig:[Ljava/lang/String;

.field private mDefaultWhiteMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "children-mode-loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sWorkerThread:Landroid/os/HandlerThread;

    .line 73
    sget-object v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/vivo/common/utils/ChildrenModeHelper;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sWorker:Landroid/os/Handler;

    .line 85
    const-string v0, "persist.sys.log.ctrl"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sLogEnable:Z

    .line 133
    const-string v0, "content://com.vivo.mod.child/app"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/utils/ChildrenModeHelper;->CHILDREN_MODE_URI:Landroid/net/Uri;

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sInstance:Lcom/vivo/common/utils/ChildrenModeHelper;

    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 149
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    iput v5, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mType:I

    .line 77
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    .line 80
    iput-boolean v5, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeEnable:Z

    .line 81
    iput-boolean v5, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeStart:Z

    .line 82
    iput-boolean v5, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeTimeout:Z

    .line 83
    iput-boolean v5, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeBadPosture:Z

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultBlackList:Ljava/util/ArrayList;

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    .line 92
    const/16 v2, 0x1c

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.bbk.calendar/.alerts.AlertActivity"

    aput-object v3, v2, v5

    const-string v3, "com.android.BBKClock/.AlertClock.AlarmAlertFullScreen"

    aput-object v3, v2, v6

    const-string v3, "com.android.BBKClock/.Timers.TimerAlert"

    aput-object v3, v2, v7

    const-string v3, "com.android.BBKClock/.Timers.FullScreenAlert"

    aput-object v3, v2, v8

    const-string v3, "com.android.bluetoothsettings/.bluetooth.BluetoothPairingDialog"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "com.android.bluetooth/.opp.BluetoothOppIncomingFileConfirmActivity"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "com.android.incallui/.BaseCallActivity"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "com.android.incallui/.InCallActivity"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "com.android.incallui/.HolsterCallActivity"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "com.android.incallui/.ToCallScreenActivity"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "android/com.android.internal.app.ChooserActivity"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "android/com.android.internal.app.ShutdownActivity"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "android/com.android.internal.app.ResolverActivity"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "com.vivo.gallery/.*"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "com.android.packageinstaller/com.android.packageinstaller.permission.ui.GrantPermissionsActivity"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "com.android.settings/com.android.settings.Settings$AppWriteSettingsActivity"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "com.android.settings/.ChooseLockGeneric"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "com.android.settings/.ChooseLockPassword"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "com.android.settings/.ConfirmTipProblem"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "com.android.BBKCrontab/com.android.BBKCrontab.schpwronoff.AlarmAlert"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "com.vivo.numbermark/com.vivo.numbermark.NumberTagOnlineActivity"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "com.android.stk/com.android.stk.StkDialogActivity"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "com.android.systemui/com.android.systemui.vivo.common.keyguard.security.VivoConfirmActivity"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "com.vivo.securedaemonservice/com.iqoo.secure.safeguard.PasswordActivity"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "com.android.settings/com.vivo.settings.secret.PasswordActivity"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "com.vivo.sdkplugin/.*"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "com.vivo.childrenmode/.*"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "com.android.incallui/.EmergencyDialer"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteListConfig:[Ljava/lang/String;

    .line 122
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.alipay.sdk.app.H5PayActivity"

    aput-object v3, v2, v5

    const-string v3, "com.alipay.android.app.flybird.ui.window.FlyBirdWindowActivity"

    aput-object v3, v2, v6

    const-string v3, "com.alipay.android.app.ui.quickpay.window.MiniPayActivity"

    aput-object v3, v2, v7

    const-string v3, "com.tencent.mm.plugin.wallet.pay.ui.WalletPayUI"

    aput-object v3, v2, v8

    const-string v3, "cooperation.qwallet.plugin.QWalletPluginProxyActivity"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "com.bbk.payment.PaymentActivity"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "com.bbk.payment.PaymentRechargeActivity"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "com.bbkmobile.iqoo.payment.PaymentActivity"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultBlackListConfig:[Ljava/lang/String;

    .line 137
    new-instance v2, Lcom/vivo/common/utils/ChildrenModeHelper$1;

    sget-object v3, Lcom/vivo/common/utils/ChildrenModeHelper;->sWorker:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/vivo/common/utils/ChildrenModeHelper$1;-><init>(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeObserver:Landroid/database/ContentObserver;

    .line 146
    new-instance v2, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;

    const-string v3, "/data/bbkcore/com.vivo.childrenmode_default_config_list.xml"

    invoke-direct {v2, p0, v3}, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;-><init>(Lcom/vivo/common/utils/ChildrenModeHelper;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultConfigObserver:Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;

    .line 147
    new-instance v2, Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;

    sget-object v3, Lcom/vivo/common/utils/ChildrenModeHelper;->sWorker:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;-><init>(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mContentObserver:Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;

    .line 150
    sget-boolean v2, Lcom/vivo/common/utils/ChildrenModeHelper;->sLogEnable:Z

    if-eqz v2, :cond_0

    .line 151
    const-string v2, "ChildrenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mContext:Landroid/content/Context;

    .line 154
    iput p2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mType:I

    .line 155
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->checkChildrenMode(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "vivo_children_mode_enable"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 159
    if-nez p2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultConfigObserver:Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;

    invoke-virtual {v2}, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;->startWatching()V

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/vivo/common/utils/ChildrenModeHelper;->CHILDREN_MODE_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mContentObserver:Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.vivo.childrenmode_action_app_start"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "com.vivo.childrenmode_action_full_screen_assert"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    if-nez p2, :cond_2

    .line 168
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadData(Landroid/content/Context;)V

    .line 170
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/utils/ChildrenModeHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/utils/ChildrenModeHelper;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/utils/ChildrenModeHelper;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->checkChildrenMode(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/utils/ChildrenModeHelper;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadDefaultConfigList(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/utils/ChildrenModeHelper;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadChildrenModeWhiteListFromFile(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sLogEnable:Z

    return v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sWorker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/utils/ChildrenModeHelper;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadChildrenModeWhiteList(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vivo/common/utils/ChildrenModeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/utils/ChildrenModeHelper;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeStart:Z

    return v0
.end method

.method static synthetic access$702(Lcom/vivo/common/utils/ChildrenModeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/utils/ChildrenModeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeStart:Z

    return p1
.end method

.method static synthetic access$800(Lcom/vivo/common/utils/ChildrenModeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/utils/ChildrenModeHelper;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeTimeout:Z

    return v0
.end method

.method static synthetic access$802(Lcom/vivo/common/utils/ChildrenModeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/utils/ChildrenModeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeTimeout:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vivo/common/utils/ChildrenModeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/utils/ChildrenModeHelper;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeBadPosture:Z

    return v0
.end method

.method static synthetic access$902(Lcom/vivo/common/utils/ChildrenModeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/utils/ChildrenModeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeBadPosture:Z

    return p1
.end method

.method private checkChildrenMode(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_children_mode_enable"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "enable":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeEnable:Z

    .line 175
    iget-boolean v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeEnable:Z

    if-nez v1, :cond_0

    .line 176
    iput-boolean v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeStart:Z

    .line 177
    iput-boolean v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeTimeout:Z

    .line 178
    iput-boolean v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeBadPosture:Z

    .line 180
    :cond_0
    const-string v1, "ChildrenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "childrenModeEnable (checkChildrenMode) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method private checkDefalutConfig()V
    .locals 8

    .prologue
    .line 436
    iget-object v6, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 438
    :try_start_0
    iget-object v5, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 439
    .local v3, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 441
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 442
    .local v4, "pkg":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 443
    .local v0, "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 444
    new-instance v5, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;

    const-string v7, "exist illegal config item"

    invoke-direct {v5, p0, v7}, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;-><init>(Lcom/vivo/common/utils/ChildrenModeHelper;Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .end local v0    # "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 451
    .local v2, "ex":Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;
    :try_start_1
    const-string v5, "ChildrenModeHelper"

    const-string v7, "load Config error when check default config : "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadFactoryDefaultConifg()V

    .line 454
    .end local v2    # "ex":Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    return-void

    .line 446
    .restart local v0    # "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    .restart local v3    # "iter":Ljava/util/Iterator;
    .restart local v4    # "pkg":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".*"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 447
    new-instance v5, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;

    const-string v7, "exist illegal config item"

    invoke-direct {v5, p0, v7}, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;-><init>(Lcom/vivo/common/utils/ChildrenModeHelper;Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    .end local v0    # "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method private dumpChildrenModeList()V
    .locals 6

    .prologue
    .line 592
    sget-boolean v2, Lcom/vivo/common/utils/ChildrenModeHelper;->sLogEnable:Z

    if-eqz v2, :cond_2

    .line 593
    iget-object v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 594
    :try_start_0
    iget-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 595
    const-string v2, "ChildrenModeHelper"

    const-string v4, "dump children mode list start ---------- "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 597
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "ChildrenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 599
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v2, "ChildrenModeHelper"

    const-string v4, "dump children mode list end ---------- "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :cond_2
    return-void
.end method

.method private dumpDefaultConfig()V
    .locals 11

    .prologue
    .line 412
    sget-boolean v7, Lcom/vivo/common/utils/ChildrenModeHelper;->sLogEnable:Z

    if-eqz v7, :cond_3

    .line 413
    iget-object v8, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 414
    :try_start_0
    const-string v7, "ChildrenModeHelper"

    const-string v9, "dump default white list start ---------- "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v7, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 416
    .local v4, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 417
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 418
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 419
    .local v5, "pkg":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 420
    .local v1, "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "ChildrenModeHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 422
    .local v6, "s":Ljava/lang/String;
    const-string v7, "ChildrenModeHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    className : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    .end local v1    # "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "iter":Ljava/util/Iterator;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 425
    .restart local v4    # "iter":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v7, "ChildrenModeHelper"

    const-string v9, "dump default white list end ---------- "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v7, "ChildrenModeHelper"

    const-string v9, "dump default black list start ---------- "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v7, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 428
    .local v0, "blackItem":Ljava/lang/String;
    const-string v7, "ChildrenModeHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "black item : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 430
    .end local v0    # "blackItem":Ljava/lang/String;
    :cond_2
    const-string v7, "ChildrenModeHelper"

    const-string v9, "dump default black list end ---------- "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "iter":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/vivo/common/utils/ChildrenModeHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 185
    sget-object v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sInstance:Lcom/vivo/common/utils/ChildrenModeHelper;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/vivo/common/utils/ChildrenModeHelper;

    invoke-direct {v0, p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sInstance:Lcom/vivo/common/utils/ChildrenModeHelper;

    .line 188
    :cond_0
    sget-object v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sInstance:Lcom/vivo/common/utils/ChildrenModeHelper;

    return-object v0
.end method

.method private loadChildrenModeWhiteList(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 558
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v6, "childrenModeWhiteListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 561
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/vivo/common/utils/ChildrenModeHelper;->CHILDREN_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pack_name"

    aput-object v4, v2, v3

    const-string v3, "ap_indicate=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 563
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 564
    .local v10, "packageNameIndex":I
    if-eqz v7, :cond_3

    .line 565
    const-string v1, "pack_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 569
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 570
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 571
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 573
    :cond_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 574
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 578
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v10    # "packageNameIndex":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 584
    :try_start_1
    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 585
    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 586
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    invoke-direct {p0, v6}, Lcom/vivo/common/utils/ChildrenModeHelper;->writeChildrenModeWhiteListToFile(Ljava/util/ArrayList;)V

    .line 588
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->dumpChildrenModeList()V

    .line 589
    :cond_3
    return-void

    .line 580
    :catch_0
    move-exception v8

    .line 581
    .local v8, "ex":Ljava/lang/Exception;
    const-string v1, "ChildrenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query children mode list error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private loadChildrenModeWhiteListFromFile(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    const/4 v5, 0x0

    .line 460
    .local v5, "input":Ljava/io/InputStream;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v0, "childrenModeWhiteListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/bbkcore/com.vivo.childrenmode_children_mode_white_list_temp.xml"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 464
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5    # "input":Ljava/io/InputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "input":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-eqz v5, :cond_8

    .line 471
    const/4 v7, 0x0

    .line 473
    .local v7, "parserError":Z
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 474
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 475
    .local v8, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "utf-8"

    invoke-interface {v8, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 476
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 477
    .local v2, "eventType":I
    :goto_1
    const/4 v10, 0x1

    if-eq v2, v10, :cond_2

    .line 478
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 479
    .local v6, "name":Ljava/lang/String;
    const-string v10, "children_mode_white_item"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 480
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 481
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 482
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result v2

    .line 486
    goto :goto_1

    .line 466
    .end local v2    # "eventType":I
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "parserError":Z
    .end local v8    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    .line 467
    .local v3, "ex":Ljava/lang/Exception;
    const-string v10, "ChildrenModeHelper"

    const-string v11, "can not get com.vivo.childrenmode_children_mode_white_list_temp.xml file from system!!"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    const/4 v5, 0x0

    .restart local v5    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 498
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v2    # "eventType":I
    .restart local v7    # "parserError":Z
    .restart local v8    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 499
    const/4 v5, 0x0

    .line 503
    :goto_2
    if-nez v7, :cond_3

    .line 504
    iget-object v11, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 505
    :try_start_3
    iget-object v10, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 506
    iget-object v10, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 508
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->dumpChildrenModeList()V

    .line 516
    .end local v2    # "eventType":I
    .end local v7    # "parserError":Z
    .end local v8    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_3
    return-void

    .line 500
    .restart local v2    # "eventType":I
    .restart local v7    # "parserError":Z
    .restart local v8    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 501
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "ChildrenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 510
    :cond_3
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadChildrenModeWhiteList(Landroid/content/Context;)V

    goto :goto_3

    .line 487
    .end local v2    # "eventType":I
    .end local v8    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v3

    .line 488
    .local v3, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v10, "ChildrenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "XmlPullParserException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 489
    const/4 v7, 0x1

    .line 498
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 499
    const/4 v5, 0x0

    .line 503
    :goto_4
    if-nez v7, :cond_4

    .line 504
    iget-object v11, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 505
    :try_start_7
    iget-object v10, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 506
    iget-object v10, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 508
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->dumpChildrenModeList()V

    goto :goto_3

    .line 500
    :catch_3
    move-exception v1

    .line 501
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "ChildrenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v10

    .line 510
    :cond_4
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadChildrenModeWhiteList(Landroid/content/Context;)V

    goto :goto_3

    .line 490
    .end local v3    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v1

    .line 491
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v10, "ChildrenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 492
    const/4 v7, 0x1

    .line 498
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 499
    const/4 v5, 0x0

    .line 503
    :goto_5
    if-nez v7, :cond_5

    .line 504
    iget-object v11, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 505
    :try_start_b
    iget-object v10, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 506
    iget-object v10, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 508
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->dumpChildrenModeList()V

    goto/16 :goto_3

    .line 500
    :catch_5
    move-exception v1

    .line 501
    const-string v10, "ChildrenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 507
    :catchall_2
    move-exception v10

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v10

    .line 510
    :cond_5
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadChildrenModeWhiteList(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 493
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 494
    .local v3, "ex":Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;
    :try_start_d
    const-string v10, "ChildrenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IllegalConfigException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 495
    const/4 v7, 0x1

    .line 498
    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 499
    const/4 v5, 0x0

    .line 503
    :goto_6
    if-nez v7, :cond_6

    .line 504
    iget-object v11, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 505
    :try_start_f
    iget-object v10, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 506
    iget-object v10, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 508
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->dumpChildrenModeList()V

    goto/16 :goto_3

    .line 500
    :catch_7
    move-exception v1

    .line 501
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "ChildrenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v10

    :try_start_10
    monitor-exit v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v10

    .line 510
    :cond_6
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadChildrenModeWhiteList(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 497
    .end local v3    # "ex":Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;
    :catchall_4
    move-exception v10

    .line 498
    :try_start_11
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 499
    const/4 v5, 0x0

    .line 503
    :goto_7
    if-nez v7, :cond_7

    .line 504
    iget-object v11, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 505
    :try_start_12
    iget-object v12, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 506
    iget-object v12, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    monitor-exit v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 508
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->dumpChildrenModeList()V

    .line 510
    :goto_8
    throw v10

    .line 500
    :catch_8
    move-exception v1

    .line 501
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v11, "ChildrenModeHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_5
    move-exception v10

    :try_start_13
    monitor-exit v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    throw v10

    .line 510
    :cond_7
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadChildrenModeWhiteList(Landroid/content/Context;)V

    goto :goto_8

    .line 514
    .end local v7    # "parserError":Z
    :cond_8
    invoke-direct {p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadChildrenModeWhiteList(Landroid/content/Context;)V

    goto/16 :goto_3
.end method

.method private loadData(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    sget-object v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/common/utils/ChildrenModeHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/vivo/common/utils/ChildrenModeHelper$2;-><init>(Lcom/vivo/common/utils/ChildrenModeHelper;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method private loadDefaultConfigList(Landroid/content/Context;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    iget-object v11, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 300
    const/4 v4, 0x0

    .line 303
    .local v4, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v10, "/data/bbkcore/com.vivo.childrenmode_default_config_list.xml"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 305
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "input":Ljava/io/InputStream;
    .local v5, "input":Ljava/io/InputStream;
    move-object v4, v5

    .line 311
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 312
    .local v7, "parserError":Z
    if-nez v4, :cond_2

    .line 313
    :try_start_1
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadFactoryDefaultConifg()V

    .line 357
    :cond_1
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->dumpDefaultConfig()V

    .line 359
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->checkDefalutConfig()V

    .line 360
    return-void

    .line 307
    .end local v7    # "parserError":Z
    :catch_0
    move-exception v2

    .line 308
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "ChildrenModeHelper"

    const-string v12, "can not get default_white_list file from system!!"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    const/4 v4, 0x0

    goto :goto_0

    .line 316
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v7    # "parserError":Z
    :cond_2
    :try_start_3
    iget-object v10, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 317
    iget-object v10, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 318
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 319
    .local v8, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "utf-8"

    invoke-interface {v8, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 320
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 321
    .local v1, "eventType":I
    :goto_2
    const/4 v10, 0x1

    if-eq v1, v10, :cond_5

    .line 322
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "name":Ljava/lang/String;
    const-string v10, "white_item"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 324
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 326
    invoke-direct {p0, v9}, Lcom/vivo/common/utils/ChildrenModeHelper;->parserWhiteStr(Ljava/lang/String;)V

    .line 334
    .end local v9    # "value":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 335
    goto :goto_2

    .line 328
    :cond_4
    const-string v10, "black_item"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 329
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 330
    .restart local v9    # "value":Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 331
    invoke-direct {p0, v9}, Lcom/vivo/common/utils/ChildrenModeHelper;->parserBlackStr(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 336
    .end local v1    # "eventType":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 337
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v10, "ChildrenModeHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "XmlPullParserException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 338
    const/4 v7, 0x1

    .line 347
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 348
    const/4 v4, 0x0

    .line 352
    :goto_4
    if-eqz v7, :cond_1

    .line 353
    :try_start_6
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadFactoryDefaultConifg()V

    goto/16 :goto_1

    .line 357
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7    # "parserError":Z
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v10

    .line 347
    .restart local v1    # "eventType":I
    .restart local v7    # "parserError":Z
    .restart local v8    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 348
    const/4 v4, 0x0

    .line 352
    :goto_5
    if-eqz v7, :cond_1

    .line 353
    :try_start_8
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadFactoryDefaultConifg()V

    goto/16 :goto_1

    .line 349
    :catch_2
    move-exception v0

    .line 350
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "ChildrenModeHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 349
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eventType":I
    .end local v8    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 350
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "ChildrenModeHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 339
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v10, "ChildrenModeHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 341
    const/4 v7, 0x1

    .line 347
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 348
    const/4 v4, 0x0

    .line 352
    :goto_6
    if-eqz v7, :cond_1

    .line 353
    :try_start_b
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadFactoryDefaultConifg()V

    goto/16 :goto_1

    .line 349
    :catch_5
    move-exception v0

    .line 350
    const-string v10, "ChildrenModeHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 342
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 343
    .local v2, "ex":Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;
    :try_start_c
    const-string v10, "ChildrenModeHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IllegalConfigException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 344
    const/4 v7, 0x1

    .line 347
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 348
    const/4 v4, 0x0

    .line 352
    :goto_7
    if-eqz v7, :cond_1

    .line 353
    :try_start_e
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadFactoryDefaultConifg()V

    goto/16 :goto_1

    .line 349
    :catch_7
    move-exception v0

    .line 350
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "ChildrenModeHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_7

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;
    :catchall_1
    move-exception v10

    .line 347
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 348
    const/4 v4, 0x0

    .line 352
    :goto_8
    if-eqz v7, :cond_6

    .line 353
    :try_start_10
    invoke-direct {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->loadFactoryDefaultConifg()V

    :cond_6
    throw v10

    .line 349
    :catch_8
    move-exception v0

    .line 350
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v12, "ChildrenModeHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_8
.end method

.method private loadFactoryDefaultConifg()V
    .locals 6

    .prologue
    .line 363
    iget-object v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 364
    iget-object v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 365
    iget-object v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteListConfig:[Ljava/lang/String;

    array-length v2, v3

    .line 366
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteListConfig:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/vivo/common/utils/ChildrenModeHelper;->parserWhiteStr(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "ex":Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;
    const-string v3, "ChildrenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFactoryDefaultConifg Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 373
    .end local v0    # "ex":Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;
    :cond_0
    iget-object v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultBlackListConfig:[Ljava/lang/String;

    array-length v2, v3

    .line 374
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_1

    .line 375
    iget-object v3, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultBlackListConfig:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/vivo/common/utils/ChildrenModeHelper;->parserBlackStr(Ljava/lang/String;)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 377
    :cond_1
    return-void
.end method

.method private parserBlackStr(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method private parserWhiteStr(Ljava/lang/String;)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 380
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 381
    .local v3, "sep":I
    if-ltz v3, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 382
    :cond_0
    new-instance v4, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config item is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;-><init>(Lcom/vivo/common/utils/ChildrenModeHelper;Ljava/lang/String;)V

    throw v4

    .line 384
    :cond_1
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "pkg":Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "cls":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_2

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    :cond_2
    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    .line 390
    :cond_3
    new-instance v4, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config item is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/vivo/common/utils/ChildrenModeHelper$IllegalConfigException;-><init>(Lcom/vivo/common/utils/ChildrenModeHelper;Ljava/lang/String;)V

    throw v4

    .line 392
    :cond_4
    const/4 v1, 0x0

    .line 393
    .local v1, "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 394
    iget-object v4, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 395
    .restart local v1    # "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_5

    .line 396
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .restart local v1    # "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    :goto_0
    return-void

    .line 401
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .restart local v1    # "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v4, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private writeChildrenModeWhiteListToFile(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .local v0, "contant":Ljava/lang/StringBuilder;
    const-string v7, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 522
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 523
    .local v6, "item":Ljava/lang/String;
    const-string v7, "<"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v7, "children_mode_white_item"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v7, ">"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v7, "</"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v7, "children_mode_white_item"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v7, ">\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 532
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/bbkcore/com.vivo.childrenmode_children_mode_white_list_temp.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 535
    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_0
    sget-boolean v7, Lcom/vivo/common/utils/ChildrenModeHelper;->sLogEnable:Z

    if-eqz v7, :cond_1

    .line 536
    const-string v7, "ChildrenModeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "write children mode white list to file : \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 539
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 541
    :cond_3
    new-instance v4, Ljava/io/FileWriter;

    const/4 v7, 0x0

    invoke-direct {v4, v2, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v4, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 550
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 555
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 551
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v7

    move-object v3, v4

    .line 554
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .line 543
    :catch_1
    move-exception v1

    .line 544
    .local v1, "ex":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v7, "ChildrenModeHelper"

    const-string v8, "write children mode white item fail!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 546
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 551
    :catch_2
    move-exception v7

    goto :goto_1

    .line 549
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 550
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 553
    :goto_4
    throw v7

    .line 551
    :catch_3
    move-exception v8

    goto :goto_4

    .line 549
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 543
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public destory()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultConfigObserver:Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultConfigObserver:Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;

    invoke-virtual {v0}, Lcom/vivo/common/utils/ChildrenModeHelper$DefaultConfigObserver;->stopWatching()V

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mContentObserver:Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mContentObserver:Lcom/vivo/common/utils/ChildrenModeHelper$ChildrenModeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 643
    :cond_2
    iget-object v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 645
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 646
    iget-object v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 647
    monitor-exit v1

    .line 648
    return-void

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public filter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 245
    .local v2, "startTime":J
    invoke-virtual {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->isChildrenModeEnable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 294
    :goto_0
    return v1

    .line 248
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 249
    :cond_1
    const-string v4, "ChildrenModeHelper"

    const-string v5, "packageName or className is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_2
    sget-boolean v4, Lcom/vivo/common/utils/ChildrenModeHelper;->sLogEnable:Z

    if-eqz v4, :cond_3

    .line 253
    const-string v4, "ChildrenModeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filter : pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; clsName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; callPkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_3
    iget-object v5, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 257
    const/4 v1, 0x1

    .line 258
    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 259
    const/4 v1, 0x0

    .line 285
    :goto_1
    if-nez v1, :cond_5

    .line 286
    sget-boolean v4, Lcom/vivo/common/utils/ChildrenModeHelper;->sLogEnable:Z

    if-eqz v4, :cond_4

    .line 287
    const-string v4, "ChildrenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fun : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is disabled under children mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_4
    invoke-virtual {p0}, Lcom/vivo/common/utils/ChildrenModeHelper;->makeToast()V

    .line 291
    :cond_5
    sget-boolean v4, Lcom/vivo/common/utils/ChildrenModeHelper;->sLogEnable:Z

    if-eqz v4, :cond_6

    .line 292
    const-string v4, "ChildrenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChildrenMode : filter cost time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_6
    monitor-exit v5

    goto/16 :goto_0

    .line 295
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 260
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 261
    iget-boolean v4, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeTimeout:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeBadPosture:Z

    if-eqz v4, :cond_a

    .line 262
    :cond_8
    sget-boolean v4, Lcom/vivo/common/utils/ChildrenModeHelper;->sLogEnable:Z

    if-eqz v4, :cond_9

    .line 263
    const-string v4, "ChildrenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mChildrenModeTimeout = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeTimeout:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v4, "ChildrenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mChildrenModeBadPosture = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeBadPosture:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 268
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 270
    :cond_b
    iget-object v4, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 271
    iget-object v4, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mDefaultWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 272
    .local v0, "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_c

    .line 273
    const/4 v1, 0x1

    .line 275
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 276
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 277
    :cond_d
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_e

    .line 278
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 280
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 283
    .end local v0    # "clsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public isChildrenModeEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 208
    iget v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mType:I

    if-ne v1, v0, :cond_1

    .line 209
    iget-boolean v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeEnable:Z

    .line 211
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeEnable:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeStart:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeToast()V
    .locals 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/vivo/common/utils/ChildrenModeHelper;->mChildrenModeTimeout:Z

    if-nez v0, :cond_0

    .line 219
    sget-object v0, Lcom/vivo/common/utils/ChildrenModeHelper;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/common/utils/ChildrenModeHelper$3;

    invoke-direct {v1, p0}, Lcom/vivo/common/utils/ChildrenModeHelper$3;-><init>(Lcom/vivo/common/utils/ChildrenModeHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 718
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/vivo/common/utils/ChildrenModeHelper;->sWorker:Landroid/os/Handler;

    new-instance v2, Lcom/vivo/common/utils/ChildrenModeHelper$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/vivo/common/utils/ChildrenModeHelper$4;-><init>(Lcom/vivo/common/utils/ChildrenModeHelper;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    return-void
.end method
