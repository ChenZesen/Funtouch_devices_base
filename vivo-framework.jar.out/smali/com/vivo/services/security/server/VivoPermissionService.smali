.class public Lcom/vivo/services/security/server/VivoPermissionService;
.super Lcom/vivo/services/security/client/IVivoPermissionService$Stub;
.source "VivoPermissionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/security/server/VivoPermissionService$PermissionController;
    }
.end annotation


# static fields
.field private static final DEBUG_CTS_TEST:I

.field private static final DEBUG_CTS_TEST_23:I

.field private static final DEBUG_VPS:Z

.field private static final PROP_SUPER_SAVER:Ljava/lang/String; = "sys.super_power_save"

.field private static final TAG:Ljava/lang/String; = "VPS"

.field private static final VERSION_1:I = 0x1

.field private static final VERSION_2:I = 0x2

.field private static mContext:Landroid/content/Context;

.field private static mVPSLock:[B


# instance fields
.field private final MAX_LOCATION_BINDER_CHECK_TIME:I

.field private mCheckLocationBinderTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;

.field private mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

.field private mVPDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vivo/services/security/server/VivoPermissionDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mVPDMap1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;",
            ">;"
        }
    .end annotation
.end field

.field private mVPDMap2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;",
            ">;"
        }
    .end annotation
.end field

.field private mVPDMap3:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;",
            ">;"
        }
    .end annotation
.end field

.field private mVPR:Lcom/vivo/services/security/server/VivoPermissionReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    const-string v0, "persist.sys.debug.vps"

    const-string v1, "yes"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/security/server/VivoPermissionService;->DEBUG_VPS:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    .line 65
    new-array v0, v2, [B

    sput-object v0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPSLock:[B

    .line 67
    const-string v0, "persist.debug.ctstest"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/services/security/server/VivoPermissionService;->DEBUG_CTS_TEST:I

    .line 69
    const-string v0, "ro.build.g_test"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/services/security/server/VivoPermissionService;->DEBUG_CTS_TEST_23:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/vivo/services/security/client/IVivoPermissionService$Stub;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mUiHandler:Landroid/os/Handler;

    .line 51
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    .line 52
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPR:Lcom/vivo/services/security/server/VivoPermissionReceiver;

    .line 53
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    .line 54
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap1:Ljava/util/HashMap;

    .line 55
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap2:Ljava/util/HashMap;

    .line 56
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap3:Ljava/util/HashMap;

    .line 57
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->MAX_LOCATION_BINDER_CHECK_TIME:I

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/vivo/services/security/client/IVivoPermissionService$Stub;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mUiHandler:Landroid/os/Handler;

    .line 51
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    .line 52
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPR:Lcom/vivo/services/security/server/VivoPermissionReceiver;

    .line 53
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    .line 54
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap1:Ljava/util/HashMap;

    .line 55
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap2:Ljava/util/HashMap;

    .line 56
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap3:Ljava/util/HashMap;

    .line 57
    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->MAX_LOCATION_BINDER_CHECK_TIME:I

    .line 79
    const-string v0, "Start:VivoPermissionService"

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 81
    sput-object p1, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mUiHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-direct {v0, p0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;-><init>(Lcom/vivo/services/security/server/VivoPermissionService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap1:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap2:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap3:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    .line 91
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionService;->registerBroadcastReceiver()V

    .line 93
    const-string v0, "vivo_permission"

    new-instance v1, Lcom/vivo/services/security/server/VivoPermissionService$PermissionController;

    invoke-direct {v1, p0}, Lcom/vivo/services/security/server/VivoPermissionService$PermissionController;-><init>(Lcom/vivo/services/security/server/VivoPermissionService;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 94
    const-string v0, "Finish:VivoPermissionService"

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enforcePermission()V
    .locals 5

    .prologue
    .line 292
    sget-object v0, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 294
    return-void
.end method

.method private getVPDMapKey(Ljava/lang/String;Lcom/vivo/services/security/client/VivoPermissionType;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vpType"    # Lcom/vivo/services/security/client/VivoPermissionType;

    .prologue
    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "key":Ljava/lang/String;
    return-object v0
.end method

.method private getVPDMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "key":Ljava/lang/String;
    return-object v0
.end method

.method public static isKeyguardLocked(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 345
    .local v1, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 346
    .local v0, "isKeyguardLocked":Z
    return v0
.end method

.method private isRunningForeground(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 358
    .local v4, "origId":J
    sget-object v6, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 359
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .line 362
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "currentPackageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 381
    .end local v2    # "currentPackageName":Ljava/lang/String;
    :goto_0
    return v6

    .line 364
    :catch_0
    move-exception v3

    .line 366
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " requires android.permission.GET_TASKS fail,so consider isRunningForeground"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    goto :goto_0

    .end local v3    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .restart local v2    # "currentPackageName":Ljava/lang/String;
    :cond_0
    move v6, v8

    .line 381
    goto :goto_0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 338
    .local v1, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 339
    .local v0, "isScreenOn":Z
    return v0
.end method

.method public static isSuperPowerSaveOn()Z
    .locals 2

    .prologue
    .line 351
    const-string v0, "sys.super_power_save"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static printfDebug(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 845
    sget-boolean v0, Lcom/vivo/services/security/server/VivoPermissionService;->DEBUG_VPS:Z

    if-eqz v0, :cond_1

    .line 847
    sget-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->ENG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->IS_LOG_CTRL_OPEN:Z

    if-eqz v0, :cond_1

    .line 849
    :cond_0
    const-string v0, "VPS"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_1
    return-void
.end method

.method public static printfError(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 864
    sget-boolean v0, Lcom/vivo/services/security/server/VivoPermissionService;->DEBUG_VPS:Z

    if-eqz v0, :cond_0

    .line 866
    const-string v0, "VPS"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    return-void
.end method

.method public static printfInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 856
    sget-boolean v0, Lcom/vivo/services/security/server/VivoPermissionService;->DEBUG_VPS:Z

    if-eqz v0, :cond_0

    .line 858
    const-string v0, "VPS"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 775
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPR:Lcom/vivo/services/security/server/VivoPermissionReceiver;

    if-nez v1, :cond_0

    .line 777
    new-instance v1, Lcom/vivo/services/security/server/VivoPermissionReceiver;

    invoke-direct {v1, p0}, Lcom/vivo/services/security/server/VivoPermissionReceiver;-><init>(Lcom/vivo/services/security/server/VivoPermissionService;)V

    iput-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPR:Lcom/vivo/services/security/server/VivoPermissionReceiver;

    .line 780
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 781
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 786
    sget-object v1, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPR:Lcom/vivo/services/security/server/VivoPermissionReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 787
    return-void
.end method

.method private showDeniedDialogToChoose(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "currVPDMapKey"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-static {p2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v10

    .line 651
    .local v10, "vpType":Lcom/vivo/services/security/client/VivoPermissionType;
    const/4 v1, 0x0

    .line 653
    .local v1, "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    iget-object v12, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap2:Ljava/util/HashMap;

    monitor-enter v12

    .line 655
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap2:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    .end local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    .local v11, "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    if-nez v11, :cond_0

    .line 658
    :try_start_1
    new-instance v1, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    sget-object v3, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mUiHandler:Landroid/os/Handler;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;-><init>(Lcom/vivo/services/security/server/VivoPermissionService;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 659
    .end local v11    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    .restart local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    :try_start_2
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap2:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    move-object v9, v1

    .line 662
    .local v9, "finalVPD":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/vivo/services/security/server/VivoPermissionService$3;

    invoke-direct {v3, p0, p1, p2, v9}, Lcom/vivo/services/security/server/VivoPermissionService$3;-><init>(Lcom/vivo/services/security/server/VivoPermissionService;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 672
    .end local v9    # "finalVPD":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    :goto_0
    monitor-exit v12

    .line 673
    return-void

    .line 672
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    .restart local v11    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    :catchall_1
    move-exception v2

    move-object v1, v11

    .end local v11    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    .restart local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    goto :goto_1

    .end local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    .restart local v11    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    :cond_0
    move-object v1, v11

    .end local v11    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    .restart local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
    goto :goto_0
.end method

.method private showDeniedDialogToChooseAndCountDown(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vivo/services/security/client/IVivoPermissionCallback;)I
    .locals 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "currVPDMapKey"    # Ljava/lang/String;
    .param p5, "cb"    # Lcom/vivo/services/security/client/IVivoPermissionCallback;

    .prologue
    .line 678
    invoke-static/range {p2 .. p2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v18

    .line 680
    .local v18, "vpType":Lcom/vivo/services/security/client/VivoPermissionType;
    const/4 v4, 0x0

    .line 682
    .local v4, "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap3:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 684
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap3:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    .end local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .local v19, "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    if-nez v19, :cond_2

    .line 687
    :try_start_1
    sget-object v5, Lcom/vivo/services/security/client/VivoPermissionType;->ACCESS_LOCATION:Lcom/vivo/services/security/client/VivoPermissionType;

    move-object/from16 v0, v18

    if-ne v0, v5, :cond_1

    .line 689
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_1
    new-instance v4, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    sget-object v6, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;-><init>(Lcom/vivo/services/security/server/VivoPermissionService;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 696
    .end local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .restart local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap3:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    move-object/from16 v16, v4

    .line 699
    .local v16, "finalVPD":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/vivo/services/security/server/VivoPermissionService$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/vivo/services/security/server/VivoPermissionService$4;-><init>(Lcom/vivo/services/security/server/VivoPermissionService;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 733
    .end local v16    # "finalVPD":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    :goto_0
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 735
    const/16 v17, 0x2

    .line 736
    .local v17, "result":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v14

    .line 737
    .local v14, "curThreadInfo":Ljava/lang/String;
    monitor-enter v4

    .line 739
    :try_start_3
    invoke-virtual {v4}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->isPermissionConfirmed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 741
    if-eqz p5, :cond_6

    .line 743
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->registerCallback(Lcom/vivo/services/security/client/IVivoPermissionCallback;)V

    .line 745
    const-string v5, "3 AsyncModeConfirm: return WARNING to Client!"

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 746
    const/4 v5, 0x3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v17, v5

    .line 770
    .end local v14    # "curThreadInfo":Ljava/lang/String;
    .end local v17    # "result":I
    :goto_1
    return v17

    .line 711
    .end local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .restart local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    :cond_2
    :try_start_4
    sget-object v5, Lcom/vivo/services/security/client/VivoPermissionType;->ACCESS_LOCATION:Lcom/vivo/services/security/client/VivoPermissionType;

    move-object/from16 v0, v18

    if-ne v0, v5, :cond_5

    .line 713
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 715
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 716
    .local v12, "binderCheckTimes":I
    const/4 v5, 0x3

    if-lt v12, v5, :cond_3

    .line 718
    const/16 v17, 0x2

    monitor-exit v20

    move-object/from16 v4, v19

    .end local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .restart local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    goto :goto_1

    .line 722
    .end local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .restart local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    add-int/lit8 v13, v12, 0x1

    .line 724
    .local v13, "binderCheckTimesAdd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v19

    .line 726
    .end local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .restart local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    goto :goto_0

    .line 729
    .end local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .end local v12    # "binderCheckTimes":I
    .end local v13    # "binderCheckTimesAdd":I
    .restart local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3 check package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " location perm,but not have record"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfError(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    move-object/from16 v4, v19

    .end local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .restart local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    goto/16 :goto_0

    .line 733
    :catchall_0
    move-exception v5

    :goto_2
    :try_start_5
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 751
    .restart local v14    # "curThreadInfo":Ljava/lang/String;
    .restart local v17    # "result":I
    :cond_6
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3 Waiting ThreadInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 752
    const-wide/16 v6, 0x61a8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 760
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->isPermissionConfirmed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 762
    const-string v5, "3 wait 25s timeout"

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v4}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->handleWaitTimeOut()V

    .line 766
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getPermissionResult(Ljava/lang/String;)I

    move-result v17

    .line 767
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3 Finishing ThreadInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 754
    :catch_0
    move-exception v15

    .line 756
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 767
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v5

    .line 733
    .end local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .end local v14    # "curThreadInfo":Ljava/lang/String;
    .end local v17    # "result":I
    .restart local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    :catchall_2
    move-exception v5

    move-object/from16 v4, v19

    .end local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    .restart local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    goto/16 :goto_2
.end method

.method private showDeniedDialogToSetting(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "currVPDMapKey"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {p2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v10

    .line 622
    .local v10, "vpType":Lcom/vivo/services/security/client/VivoPermissionType;
    const/4 v1, 0x0

    .line 624
    .local v1, "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    iget-object v12, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap1:Ljava/util/HashMap;

    monitor-enter v12

    .line 626
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap1:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    .end local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    .local v11, "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    if-nez v11, :cond_0

    .line 629
    :try_start_1
    new-instance v1, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    sget-object v3, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mUiHandler:Landroid/os/Handler;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;-><init>(Lcom/vivo/services/security/server/VivoPermissionService;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 630
    .end local v11    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    .restart local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    :try_start_2
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap1:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    move-object v9, v1

    .line 633
    .local v9, "finalVPD":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/vivo/services/security/server/VivoPermissionService$2;

    invoke-direct {v3, p0, p1, p2, v9}, Lcom/vivo/services/security/server/VivoPermissionService$2;-><init>(Lcom/vivo/services/security/server/VivoPermissionService;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 643
    .end local v9    # "finalVPD":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    :goto_0
    monitor-exit v12

    .line 644
    return-void

    .line 643
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    .restart local v11    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    :catchall_1
    move-exception v2

    move-object v1, v11

    .end local v11    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    .restart local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    goto :goto_1

    .end local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    .restart local v11    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    :cond_0
    move-object v1, v11

    .end local v11    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    .restart local v1    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
    goto :goto_0
.end method

.method private showWarningDialogToChoose(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vivo/services/security/client/IVivoPermissionCallback;)I
    .locals 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "currVPDMapKey"    # Ljava/lang/String;
    .param p5, "cb"    # Lcom/vivo/services/security/client/IVivoPermissionCallback;

    .prologue
    .line 523
    invoke-static/range {p2 .. p2}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v18

    .line 525
    .local v18, "vpType":Lcom/vivo/services/security/client/VivoPermissionType;
    const/4 v4, 0x0

    .line 527
    .local v4, "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 529
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vivo/services/security/server/VivoPermissionDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    .end local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    .local v19, "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    if-nez v19, :cond_2

    .line 532
    :try_start_1
    sget-object v5, Lcom/vivo/services/security/client/VivoPermissionType;->ACCESS_LOCATION:Lcom/vivo/services/security/client/VivoPermissionType;

    move-object/from16 v0, v18

    if-ne v0, v5, :cond_1

    .line 534
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 536
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_1
    new-instance v4, Lcom/vivo/services/security/server/VivoPermissionDialog;

    sget-object v6, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lcom/vivo/services/security/server/VivoPermissionDialog;-><init>(Lcom/vivo/services/security/server/VivoPermissionService;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 541
    .end local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    .restart local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    move-object/from16 v16, v4

    .line 544
    .local v16, "finalVPD":Lcom/vivo/services/security/server/VivoPermissionDialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mUiHandler:Landroid/os/Handler;

    new-instance v6, Lcom/vivo/services/security/server/VivoPermissionService$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/vivo/services/security/server/VivoPermissionService$1;-><init>(Lcom/vivo/services/security/server/VivoPermissionService;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDialog;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    .end local v16    # "finalVPD":Lcom/vivo/services/security/server/VivoPermissionDialog;
    :goto_0
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    const/16 v17, 0x2

    .line 581
    .local v17, "result":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v14

    .line 582
    .local v14, "curThreadInfo":Ljava/lang/String;
    monitor-enter v4

    .line 584
    :try_start_3
    invoke-virtual {v4}, Lcom/vivo/services/security/server/VivoPermissionDialog;->isPermissionConfirmed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 586
    if-eqz p5, :cond_6

    .line 588
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/vivo/services/security/server/VivoPermissionDialog;->registerCallback(Lcom/vivo/services/security/client/IVivoPermissionCallback;)V

    .line 590
    const-string v5, "0 AsyncModeConfirm: return WARNING to Client!"

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 591
    const/4 v5, 0x3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v17, v5

    .line 615
    .end local v14    # "curThreadInfo":Ljava/lang/String;
    .end local v17    # "result":I
    :goto_1
    return v17

    .line 556
    .end local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    .restart local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    :cond_2
    :try_start_4
    sget-object v5, Lcom/vivo/services/security/client/VivoPermissionType;->ACCESS_LOCATION:Lcom/vivo/services/security/client/VivoPermissionType;

    move-object/from16 v0, v18

    if-ne v0, v5, :cond_5

    .line 558
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 560
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 561
    .local v12, "binderCheckTimes":I
    const/4 v5, 0x3

    if-lt v12, v5, :cond_3

    .line 563
    const/16 v17, 0x2

    monitor-exit v20

    move-object/from16 v4, v19

    .end local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    .restart local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    goto :goto_1

    .line 567
    .end local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    .restart local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    add-int/lit8 v13, v12, 0x1

    .line 569
    .local v13, "binderCheckTimesAdd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/services/security/server/VivoPermissionService;->mCheckLocationBinderTimes:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v19

    .line 571
    .end local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    .restart local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    goto :goto_0

    .line 574
    .end local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    .end local v12    # "binderCheckTimes":I
    .end local v13    # "binderCheckTimesAdd":I
    .restart local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0 check package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " location perm,but not have record"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfError(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    move-object/from16 v4, v19

    .end local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    .restart local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    goto/16 :goto_0

    .line 578
    :catchall_0
    move-exception v5

    :goto_2
    :try_start_5
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 596
    .restart local v14    # "curThreadInfo":Ljava/lang/String;
    .restart local v17    # "result":I
    :cond_6
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0 Waiting ThreadInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 597
    const-wide/16 v6, 0x61a8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 605
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Lcom/vivo/services/security/server/VivoPermissionDialog;->isPermissionConfirmed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 607
    const-string v5, "0 wait 25s timeout"

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v4}, Lcom/vivo/services/security/server/VivoPermissionDialog;->handleWaitTimeOut()V

    .line 611
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/vivo/services/security/server/VivoPermissionDialog;->getPermissionResult(Ljava/lang/String;)I

    move-result v17

    .line 612
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0 Finishing ThreadInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 599
    :catch_0
    move-exception v15

    .line 601
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 612
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v5

    .line 578
    .end local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    .end local v14    # "curThreadInfo":Ljava/lang/String;
    .end local v17    # "result":I
    .restart local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    :catchall_2
    move-exception v5

    move-object/from16 v4, v19

    .end local v19    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    .restart local v4    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    goto/16 :goto_2
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPR:Lcom/vivo/services/security/server/VivoPermissionReceiver;

    if-eqz v0, :cond_0

    .line 793
    sget-object v0, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPR:Lcom/vivo/services/security/server/VivoPermissionReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPR:Lcom/vivo/services/security/server/VivoPermissionReceiver;

    .line 796
    :cond_0
    return-void
.end method

.method private waitConfirmPermission(ILjava/lang/String;Ljava/lang/String;Lcom/vivo/services/security/client/IVivoPermissionCallback;)I
    .locals 10
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permName"    # Ljava/lang/String;
    .param p4, "cb"    # Lcom/vivo/services/security/client/IVivoPermissionCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 400
    invoke-direct {p0, p2, p3}, Lcom/vivo/services/security/server/VivoPermissionService;->getVPDMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "currVPDMapKey":Ljava/lang/String;
    const/4 v9, 0x0

    .line 403
    .local v9, "isConfigResultDenied":Z
    sget-object v2, Lcom/vivo/services/security/server/VivoPermissionService;->mVPSLock:[B

    monitor-enter v2

    .line 405
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v3, p2, p3}, Lcom/vivo/services/security/server/VivoPermissionConfig;->checkConfigPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 406
    .local v6, "configResult":I
    if-ne v6, v1, :cond_1

    .line 408
    const/4 v9, 0x1

    .line 421
    :cond_0
    sget-object v0, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is requesting "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", but KeyguardLocked11, so DENIED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 424
    monitor-exit v2

    move v0, v1

    .line 473
    :goto_0
    return v0

    .line 410
    :cond_1
    if-ne v6, v0, :cond_2

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " was set GRANTED"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    .line 413
    monitor-exit v2

    goto :goto_0

    .line 432
    .end local v6    # "configResult":I
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 415
    .restart local v6    # "configResult":I
    :cond_2
    if-nez v6, :cond_0

    .line 417
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has UNKNOWN PERMISSION:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", but GRANTED"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 418
    monitor-exit v2

    goto :goto_0

    .line 427
    :cond_3
    invoke-static {}, Lcom/vivo/services/security/server/VivoPermissionService;->isSuperPowerSaveOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is requesting "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", but SuperPowerSaveOn, so DENIED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 430
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 432
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    if-eqz v9, :cond_b

    .line 436
    invoke-direct {p0, p2}, Lcom/vivo/services/security/server/VivoPermissionService;->isRunningForeground(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is requesting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", but is not RunningForeground, just return DENIED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    move v0, v1

    .line 439
    goto/16 :goto_0

    .line 442
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " was set DENIED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p2, p3}, Lcom/vivo/services/security/server/VivoPermissionConfig;->checkConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 445
    .local v8, "deniedMode":I
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p2, p3}, Lcom/vivo/services/security/server/VivoPermissionConfig;->checkConfigDeniedDialogMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 447
    .local v7, "deniedDialogMode":I
    const/16 v0, 0x30

    if-eq v8, v0, :cond_6

    const/16 v0, 0x40

    if-ne v8, v0, :cond_a

    .line 450
    :cond_6
    const/16 v0, 0x100

    if-ne v7, v0, :cond_8

    .line 452
    invoke-direct {p0, p2, p3, p1, v4}, Lcom/vivo/services/security/server/VivoPermissionService;->showDeniedDialogToSetting(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    :goto_1
    move v0, v1

    .line 463
    goto/16 :goto_0

    .line 454
    :cond_8
    const/16 v0, 0x200

    if-ne v7, v0, :cond_9

    .line 456
    invoke-direct {p0, p2, p3, p1, v4}, Lcom/vivo/services/security/server/VivoPermissionService;->showDeniedDialogToChoose(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 458
    :cond_9
    const/16 v0, 0x300

    if-ne v7, v0, :cond_7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p1

    move-object v5, p4

    .line 460
    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/security/server/VivoPermissionService;->showDeniedDialogToChooseAndCountDown(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vivo/services/security/client/IVivoPermissionCallback;)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 467
    goto/16 :goto_0

    .end local v7    # "deniedDialogMode":I
    .end local v8    # "deniedMode":I
    :cond_b
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p1

    move-object v5, p4

    .line 473
    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/security/server/VivoPermissionService;->showWarningDialogToChoose(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vivo/services/security/client/IVivoPermissionCallback;)I

    move-result v0

    goto/16 :goto_0
.end method


# virtual methods
.method public checkConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->checkConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;IILcom/vivo/services/security/client/IVivoPermissionCallback;)I
    .locals 10
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "cb"    # Lcom/vivo/services/security/client/IVivoPermissionCallback;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 148
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->needMonitorSystemApp()Z

    move-result v2

    .line 149
    .local v2, "isMonitorSystemApp":Z
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->needMonitorSystemUid()Z

    move-result v3

    .line 151
    .local v3, "isMonitorSystemUid":Z
    sget v8, Lcom/vivo/services/security/server/VivoPermissionService;->DEBUG_CTS_TEST:I

    if-eq v6, v8, :cond_0

    sget v8, Lcom/vivo/services/security/server/VivoPermissionService;->DEBUG_CTS_TEST_23:I

    if-ne v6, v8, :cond_2

    .line 153
    :cond_0
    const-string v7, "debug mode,then PERMISSION_GRANTED"

    invoke-static {v7}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    .line 222
    :cond_1
    :goto_0
    return v6

    .line 157
    :cond_2
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-eqz v8, :cond_3

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not owner user,then PERMISSION_GRANTED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_3
    if-nez p3, :cond_4

    .line 166
    const-string v7, "root then PERMISSION_GRANTED!"

    invoke-static {v7}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_4
    const/16 v8, 0x3e8

    if-ne p3, v8, :cond_5

    .line 172
    if-nez v3, :cond_5

    .line 174
    const-string v7, "SYSTEM_UID then PERMISSION_GRANTED!"

    invoke-static {v7}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_5
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v5

    .line 180
    .local v5, "vpType":Lcom/vivo/services/security/client/VivoPermissionType;
    sget-object v8, Lcom/vivo/services/security/client/VivoPermissionType;->LAST:Lcom/vivo/services/security/client/VivoPermissionType;

    if-ne v5, v8, :cond_6

    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "permission="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; It\'s VivoPermissionType.LAST, then PERMISSION_GRANTED!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_6
    invoke-virtual {v5}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPCategory()Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    move-result-object v8

    sget-object v9, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    if-ne v8, v9, :cond_7

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "permission="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; It\'s VivoPermissionCategory.OTHERS, then PERMISSION_GRANTED!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_7
    sget-object v8, Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;

    invoke-static {v8, p3}, Lcom/vivo/services/security/client/VivoPermissionManager;->getCallingPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 193
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_8

    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCallingPackageInfo == null, then PERMISSION_GRANTED! uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :cond_8
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v8}, Lcom/vivo/services/security/client/VivoPermissionManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 201
    if-nez v2, :cond_9

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SystemApp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") then PERMISSION_GRANTED!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :cond_9
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 209
    .local v4, "packageName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start checkPermission packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") ;pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p2, v4, p1, p4}, Lcom/vivo/services/security/server/VivoPermissionService;->waitConfirmPermission(ILjava/lang/String;Ljava/lang/String;Lcom/vivo/services/security/client/IVivoPermissionCallback;)I

    move-result v1

    .line 212
    .local v1, "configResult":I
    if-eq v1, v6, :cond_1

    .line 216
    if-ne v1, v7, :cond_a

    move v6, v7

    .line 218
    goto/16 :goto_0

    .line 222
    :cond_a
    const/4 v6, 0x2

    goto/16 :goto_0
.end method

.method public dismissAllDialog()V
    .locals 6

    .prologue
    .line 800
    iget-object v5, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 801
    .local v2, "size":I
    if-gtz v2, :cond_0

    .line 816
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v5, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 808
    .local v4, "vpdMapBackUp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDialog;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 809
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDialog;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 811
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 812
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDialog;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/services/security/server/VivoPermissionDialog;

    .line 813
    .local v3, "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    invoke-virtual {v3}, Lcom/vivo/services/security/server/VivoPermissionDialog;->dismiss()V

    goto :goto_1

    .line 815
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDialog;>;"
    .end local v3    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public getAppPermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->getAppPermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMonitorAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->getMonitorAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpecifiedPermAppList(I)Ljava/util/List;
    .locals 1
    .param p1, "vpTypeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->getSpecifiedPermAppList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->getTrustedAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVPMDataBaseState()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0}, Lcom/vivo/services/security/server/VivoPermissionConfig;->getDataBaseState()I

    move-result v0

    return v0
.end method

.method public getVPMVersion()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x2

    return v0
.end method

.method public isBuildInThirdPartApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->isBuildInThirdPartApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCheckingPermission(I)Z
    .locals 11
    .param p1, "pid"    # I

    .prologue
    const/4 v8, 0x1

    .line 298
    iget-object v9, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 299
    .local v4, "size":I
    if-lez v4, :cond_1

    .line 301
    iget-object v9, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 302
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDialog;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 304
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDialog;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vivo/services/security/server/VivoPermissionDialog;

    .line 306
    .local v6, "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCheckingPermission pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vpd.getCallingPid()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/vivo/services/security/server/VivoPermissionDialog;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v6}, Lcom/vivo/services/security/server/VivoPermissionDialog;->getCallingPid()I

    move-result v9

    if-ne v9, p1, :cond_0

    .line 309
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCheckingPermission=true; pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 332
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDialog;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDialog;>;>;"
    .end local v6    # "vpd":Lcom/vivo/services/security/server/VivoPermissionDialog;
    :goto_0
    return v8

    .line 315
    :cond_1
    iget-object v9, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap3:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 316
    .local v5, "sizeThree":I
    if-lez v5, :cond_3

    .line 318
    iget-object v9, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap3:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 319
    .local v3, "iterThree":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;>;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 321
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 322
    .local v1, "entryThree":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    .line 323
    .local v7, "vpdThree":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3isCheckingPermission pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vpdThree.getCallingPid()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v7}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getCallingPid()I

    move-result v9

    if-ne v9, p1, :cond_2

    .line 326
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3isCheckingPermission=true; pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    .end local v1    # "entryThree":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;>;"
    .end local v3    # "iterThree":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;>;>;"
    .end local v7    # "vpdThree":Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public noteStartActivityProcess(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 273
    return-void
.end method

.method public removeVPD(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 478
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_0
    monitor-exit v1

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeVPD1(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 489
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap1:Ljava/util/HashMap;

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap1:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap1:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_0
    monitor-exit v1

    .line 496
    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeVPD2(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 500
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap2:Ljava/util/HashMap;

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap2:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap2:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_0
    monitor-exit v1

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeVPD3(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap3:Ljava/util/HashMap;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap3:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPDMap3:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_0
    monitor-exit v1

    .line 518
    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppPermission(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vpTypeId"    # I
    .param p3, "result"    # I

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionService;->enforcePermission()V

    .line 255
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/services/security/server/VivoPermissionConfig;->saveAppPermission(Ljava/lang/String;II)V

    .line 256
    return-void
.end method

.method public setAppPermissionExt(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 1
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionService;->enforcePermission()V

    .line 249
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->saveAppPermission(Lcom/vivo/services/security/client/VivoPermissionInfo;)V

    .line 250
    return-void
.end method

.method public setBlackListApp(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionService;->enforcePermission()V

    .line 267
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->setBlackListApp(Ljava/lang/String;Z)V

    .line 268
    return-void
.end method

.method public setConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "deniedMode"    # I

    .prologue
    .line 825
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/services/security/server/VivoPermissionConfig;->setConfigDeniedMode(Ljava/lang/String;Ljava/lang/String;I)V

    .line 826
    return-void
.end method

.method public setWhiteListApp(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionService;->enforcePermission()V

    .line 261
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/services/security/server/VivoPermissionConfig;->setWhiteListApp(Ljava/lang/String;Z)V

    .line 262
    return-void
.end method

.method public updateForPackageAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->updateForPackageAdded(Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method public updateForPackageRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->updateForPackageRemoved(Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public updateForPackageReplaced(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService;->mVPC:Lcom/vivo/services/security/server/VivoPermissionConfig;

    invoke-virtual {v0, p1}, Lcom/vivo/services/security/server/VivoPermissionConfig;->updateForPackageReplaced(Ljava/lang/String;)V

    .line 831
    return-void
.end method
