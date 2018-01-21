.class public Lcom/vivo/services/security/client/VivoPermissionManager;
.super Ljava/lang/Object;
.source "VivoPermissionManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final ACTION_KEY_PACKAGE:Ljava/lang/String; = "package"

.field public static final ACTION_PACKAGE_PERMISSION_ADDED:Ljava/lang/String; = "com.vivo.services.security.client.PACKAGE_PERMISSION_ADDED"
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final ACTION_PACKAGE_PERMISSION_REMOVED:Ljava/lang/String; = "com.vivo.services.security.client.PACKAGE_PERMISSION_REMOVED"
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final ACTION_PACKAGE_PERMISSION_REPLACED:Ljava/lang/String; = "com.vivo.services.security.client.PACKAGE_PERMISSION_REPLACED"
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final CLASS_PERMISSION_MANAGER:Ljava/lang/String; = "com.vivo.services.security.client.VivoPermissionManager"

.field public static final CLASS_PERMISSION_SERVICE:Ljava/lang/String; = "com.vivo.services.security.server.VivoPermissionService"

.field public static final DATABASE_STATE_CREAT:I = 0x2
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final DATABASE_STATE_NORMAL:I = 0x1
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final DATABASE_STATE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final DATABASE_STATE_UPGRADE:I = 0x3
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static final DEBUG_NEED_VPM:Z

.field private static final DEBUG_PACKAGES:Z

.field private static final DEBUG_PERFORMANCE:Z

.field private static final DEBUG_STACK:Z

.field private static final DEBUG_VPM:Z

.field public static final ENG:Z

.field public static final INTENT_KEY_ACTIVITY:Ljava/lang/String; = "ResolvedActivityName"

.field public static final INTENT_KEY_FLAG:Ljava/lang/String; = "ResolvedIntentFlag"

.field public static final INTENT_KEY_PACKAGE:Ljava/lang/String; = "ResolvedPackageName"

.field public static final IS_LOG_CTRL_OPEN:Z

.field public static final KEY_VIVO_LOG_CTRL:Ljava/lang/String; = "persist.sys.log.ctrl"

.field public static final PROP_BUILD_TYPE:Ljava/lang/String;

.field public static final PROP_MONITOR_BUILD_IN_APPS:Ljava/lang/String; = "persist.sys.monitor.apps"

.field public static final PROP_MONITOR_SYSTEM_APP:Ljava/lang/String; = "persist.sys.monitor.system_app"

.field public static final PROP_MONITOR_SYSTEM_UID:Ljava/lang/String; = "persist.sys.monitor.system_uid"

.field public static final PROP_OS_VERSION:Ljava/lang/String;

.field private static final PROP_OS_VERSION_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "VPM"

.field public static final VIVO_PERMISSION_SERVICE:Ljava/lang/String; = "vivo_permission_service"

.field private static mCMCCTest:Ljava/lang/String;

.field private static mMonitorBuildInApps:Ljava/lang/String;

.field private static mMonitorSystemApp:Ljava/lang/String;

.field private static mMonitorSystemUid:Ljava/lang/String;

.field private static mNeedVPM:Ljava/lang/String;

.field private static mNetEntry:Ljava/lang/String;

.field private static mOSVer:Ljava/lang/Float;

.field private static mOverSeas:Ljava/lang/String;

.field private static mProjectName:Ljava/lang/String;

.field private static mVPM:Lcom/vivo/services/security/client/VivoPermissionManager;

.field private static final sDefaultVPS:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lcom/vivo/services/security/client/IVivoPermissionService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    const-string v0, "persist.sys.debug.vpm"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->DEBUG_VPM:Z

    .line 34
    const-string v0, "persist.sys.debug.vpm_s"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->DEBUG_STACK:Z

    .line 35
    const-string v0, "persist.sys.debug.vpm_pe"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->DEBUG_PERFORMANCE:Z

    .line 36
    const-string v0, "persist.sys.debug.vpm_pa"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->DEBUG_PACKAGES:Z

    .line 37
    const-string v0, "persist.sys.debug.vpm_need"

    const-string v1, "yes"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->DEBUG_NEED_VPM:Z

    .line 39
    const-string v0, "ro.build.type"

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->PROP_BUILD_TYPE:Ljava/lang/String;

    .line 40
    const-string v0, "eng"

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionManager;->PROP_BUILD_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "branddebug"

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionManager;->PROP_BUILD_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->ENG:Z

    .line 42
    const-string v0, "ro.vivo.os.version"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->PROP_OS_VERSION:Ljava/lang/String;

    .line 43
    const-string v0, "1"

    const-string v1, "persist.sys.debug.vpmos"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->PROP_OS_VERSION_DEBUG:Z

    .line 45
    const-string v0, "persist.sys.log.ctrl"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->IS_LOG_CTRL_OPEN:Z

    .line 65
    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mVPM:Lcom/vivo/services/security/client/VivoPermissionManager;

    .line 66
    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    .line 67
    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mNetEntry:Ljava/lang/String;

    .line 68
    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mCMCCTest:Ljava/lang/String;

    .line 69
    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOverSeas:Ljava/lang/String;

    .line 70
    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemApp:Ljava/lang/String;

    .line 71
    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemUid:Ljava/lang/String;

    .line 72
    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorBuildInApps:Ljava/lang/String;

    .line 73
    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mNeedVPM:Ljava/lang/String;

    .line 74
    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOSVer:Ljava/lang/Float;

    .line 76
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionManager$1;

    invoke-direct {v0}, Lcom/vivo/services/security/client/VivoPermissionManager$1;-><init>()V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->sDefaultVPS:Landroid/util/Singleton;

    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionManager;->mContext:Landroid/content/Context;

    .line 87
    iput-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionManager;->mUiHandler:Landroid/os/Handler;

    .line 88
    iput-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 712
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionManager;->mContext:Landroid/content/Context;

    .line 87
    iput-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionManager;->mUiHandler:Landroid/os/Handler;

    .line 88
    iput-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 716
    iput-object p1, p0, Lcom/vivo/services/security/client/VivoPermissionManager;->mContext:Landroid/content/Context;

    .line 717
    iput-object p2, p0, Lcom/vivo/services/security/client/VivoPermissionManager;->mUiHandler:Landroid/os/Handler;

    .line 718
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 719
    return-void
.end method

.method public static checkCallingVivoPermission(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/vivo/services/security/client/VivoPermissionManager;->checkVivoPermission(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionManager;->checkCallingVivoPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkPermissionExt(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 469
    invoke-static {p0}, Lcom/vivo/services/security/client/VivoPermissionManager;->checkCallingVivoPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkVivoPermission(Ljava/lang/String;II)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x1

    .line 479
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/vivo/services/security/client/VivoPermissionManager;->checkVivoPermissionWithCB(Ljava/lang/String;IILcom/vivo/services/security/client/IVivoPermissionCallback;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkVivoPermissionWithCB(Ljava/lang/String;IILcom/vivo/services/security/client/IVivoPermissionCallback;)I
    .locals 5
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "cb"    # Lcom/vivo/services/security/client/IVivoPermissionCallback;

    .prologue
    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVivoPermissionWithCB:permission="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->debugStack(Ljava/lang/String;)V

    .line 485
    const-string v3, "debugPerformance Begin:checkVivoPermissionWithCB"

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->debugPerformance(Ljava/lang/String;)V

    .line 486
    invoke-static {p0}, Lcom/vivo/services/security/client/VivoPermissionManager;->enforcePermissionName(Ljava/lang/String;)V

    .line 487
    const/4 v1, -0x1

    .line 490
    .local v1, "result":I
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v2

    .line 491
    .local v2, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v2, :cond_0

    .line 493
    const-string v3, "VivoPermissionService is null!"

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 494
    const/4 v3, 0x1

    .line 503
    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_0
    return v3

    .line 496
    .restart local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v2, p0, p1, p2, p3}, Lcom/vivo/services/security/client/IVivoPermissionService;->checkPermission(Ljava/lang/String;IILcom/vivo/services/security/client/IVivoPermissionCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 502
    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_1
    const-string v3, "debugPerformance End:checkVivoPermissionWithCB"

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->debugPerformance(Ljava/lang/String;)V

    move v3, v1

    .line 503
    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static configInSA()Z
    .locals 2

    .prologue
    .line 404
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getProjectName()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "project":Ljava/lang/String;
    const-string v1, "PD1304B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const/4 v1, 0x1

    .line 410
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static debugPackages([Ljava/lang/String;)V
    .locals 3
    .param p0, "packages"    # [Ljava/lang/String;

    .prologue
    .line 121
    sget-boolean v1, Lcom/vivo/services/security/client/VivoPermissionManager;->DEBUG_PACKAGES:Z

    if-eqz v1, :cond_0

    .line 123
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 125
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfDebug(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public static debugPerformance(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->DEBUG_PERFORMANCE:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfDebug(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public static debugStack(Ljava/lang/String;)V
    .locals 8
    .param p0, "divider"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-boolean v6, Lcom/vivo/services/security/client/VivoPermissionManager;->DEBUG_STACK:Z

    if-eqz v6, :cond_1

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===============Begin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==============="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfDebug(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    .line 139
    .local v5, "ts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 140
    .local v4, "ste":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 142
    .local v3, "s":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfDebug(Ljava/lang/String;)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v3    # "s":Ljava/lang/StackTraceElement;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===============End:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==============="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfDebug(Ljava/lang/String;)V

    .line 146
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "ste":[Ljava/lang/StackTraceElement;
    .end local v5    # "ts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :cond_1
    return-void
.end method

.method private static enforcePackageName(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 723
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_1
    return-void
.end method

.method private static enforcePermissionName(Ljava/lang/String;)V
    .locals 2
    .param p0, "permName"    # Ljava/lang/String;

    .prologue
    .line 731
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 733
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid PermissionName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_1
    return-void
.end method

.method private static enforcePermissionResult(I)V
    .locals 2
    .param p0, "premResult"    # I

    .prologue
    .line 747
    invoke-static {p0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isValidPermissionResult(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid vpTypeId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_0
    return-void
.end method

.method private static enforceValidTypeId(I)V
    .locals 2
    .param p0, "vpTypeId"    # I

    .prologue
    .line 739
    invoke-static {p0}, Lcom/vivo/services/security/client/VivoPermissionType;->isValidTypeId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid vpTypeId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    return-void
.end method

.method public static getCallingAppInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 566
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/vivo/services/security/client/VivoPermissionManager;->getCallingPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 567
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 569
    const/4 v1, 0x0

    .line 572
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static getCallingAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 577
    invoke-static {p0}, Lcom/vivo/services/security/client/VivoPermissionManager;->getCallingAppInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 578
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 580
    const/4 v1, 0x0

    .line 582
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCallingAppPermisson(Landroid/content/Context;Lcom/vivo/services/security/client/VivoPermissionType;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vpType"    # Lcom/vivo/services/security/client/VivoPermissionType;

    .prologue
    const/4 v4, 0x1

    .line 627
    invoke-static {p0}, Lcom/vivo/services/security/client/VivoPermissionManager;->getCallingAppInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 628
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    :cond_0
    move v1, v4

    .line 652
    :cond_1
    :goto_0
    return v1

    .line 633
    :cond_2
    invoke-static {p0}, Lcom/vivo/services/security/client/VivoPermissionManager;->getVPM(Landroid/content/Context;)Lcom/vivo/services/security/client/VivoPermissionManager;

    move-result-object v3

    .line 634
    .local v3, "vpm":Lcom/vivo/services/security/client/VivoPermissionManager;
    if-nez v3, :cond_3

    move v1, v4

    .line 636
    goto :goto_0

    .line 639
    :cond_3
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/vivo/services/security/client/VivoPermissionManager;->getAppPermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v2

    .line 640
    .local v2, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    if-nez v2, :cond_4

    move v1, v4

    .line 642
    goto :goto_0

    .line 644
    :cond_4
    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPTypeId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v1

    .line 645
    .local v1, "result":I
    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallingAppPermisson-->error result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 650
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getCallingPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I

    .prologue
    .line 528
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 529
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-nez v6, :cond_2

    .line 532
    :cond_0
    const-string v6, "Can\'t get calling app package name!"

    invoke-static {v6}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x0

    .line 561
    :cond_1
    :goto_0
    return-object v0

    .line 536
    :cond_2
    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->debugPackages([Ljava/lang/String;)V

    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    array-length v5, v3

    .line 539
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 543
    :try_start_0
    aget-object v6, v3, v2

    const/16 v7, 0x40

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_4

    .line 546
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success:getPackageInfo()-->packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_3
    if-nez v0, :cond_1

    .line 558
    const-string v6, "Can\'t get calling app package info!"

    invoke-static {v6}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :catch_0
    move-exception v1

    .line 552
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 539
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->sDefaultVPS:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/security/client/IVivoPermissionService;

    return-object v0
.end method

.method public static getOSVersion()F
    .locals 5

    .prologue
    .line 167
    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOSVer:Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 169
    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOSVer:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 207
    .local v1, "osVer":Ljava/lang/String;
    .local v2, "osVerSplit":[Ljava/lang/String;
    :goto_0
    return v3

    .line 172
    .end local v1    # "osVer":Ljava/lang/String;
    .end local v2    # "osVerSplit":[Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionManager;->PROP_OS_VERSION:Ljava/lang/String;

    .line 173
    .restart local v1    # "osVer":Ljava/lang/String;
    const/4 v2, 0x0

    .line 174
    .restart local v2    # "osVerSplit":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 176
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 180
    if-eqz v2, :cond_4

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 182
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOSVer:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_1
    :goto_1
    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOSVer:Ljava/lang/Float;

    if-nez v3, :cond_2

    .line 197
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOSVer:Ljava/lang/Float;

    .line 200
    :cond_2
    sget-boolean v3, Lcom/vivo/services/security/client/VivoPermissionManager;->PROP_OS_VERSION_DEBUG:Z

    if-eqz v3, :cond_3

    .line 202
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOSVer:Ljava/lang/Float;

    .line 205
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOSVersion mOSVer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionManager;->mOSVer:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 207
    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOSVer:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_0

    .line 186
    :cond_4
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOSVer:Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getProjectName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    .line 227
    :goto_0
    return-object v0

    .line 217
    :cond_0
    const-string v0, "ro.vivo.product.model"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProjectName ro.vivo.product.model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    goto :goto_0

    .line 224
    :cond_1
    const-string v0, "ro.product.model.bbk"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProjectName ro.product.model.bbk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mProjectName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVPM(Landroid/content/Context;)Lcom/vivo/services/security/client/VivoPermissionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mVPM:Lcom/vivo/services/security/client/VivoPermissionManager;

    if-nez v0, :cond_0

    .line 158
    const-string v0, "vivo_permission_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/security/client/VivoPermissionManager;

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mVPM:Lcom/vivo/services/security/client/VivoPermissionManager;

    .line 161
    :cond_0
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionManager;->mVPM:Lcom/vivo/services/security/client/VivoPermissionManager;

    return-object v0
.end method

.method public static isCMCCTest()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 272
    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mCMCCTest:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mCMCCTest:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 274
    const-string v2, "cmcc"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mCMCCTest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mCMCCTest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 301
    :cond_1
    :goto_0
    return v0

    .line 285
    :cond_2
    const-string v2, "ro.vivo.op.entry"

    const-string v3, "null"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mCMCCTest:Ljava/lang/String;

    .line 286
    const-string v2, "cmcc"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mCMCCTest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCMCCTest yes ro.vivo.op.entry="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mCMCCTest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    move v0, v1

    .line 289
    goto :goto_0

    .line 293
    :cond_3
    const-string v2, "ro.cmcc.test"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mCMCCTest:Ljava/lang/String;

    .line 294
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mCMCCTest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCMCCTest yes ro.cmcc.test="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mCMCCTest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    move v0, v1

    .line 297
    goto :goto_0

    .line 300
    :cond_4
    const-string v1, "isCMCCTest no"

    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCheckingPermission(I)Z
    .locals 5
    .param p0, "pid"    # I

    .prologue
    const/4 v2, 0x0

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCheckingPermission:pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->debugStack(Ljava/lang/String;)V

    .line 511
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v1

    .line 512
    .local v1, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v1, :cond_0

    .line 514
    const-string v3, "VivoPermissionService is null!"

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 523
    .end local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_0
    return v2

    .line 517
    .restart local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v1, p0}, Lcom/vivo/services/security/client/IVivoPermissionService;->isCheckingPermission(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 519
    .end local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isNetEntry()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 238
    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mNetEntry:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mNetEntry:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 240
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mNetEntry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 246
    goto :goto_0

    .line 251
    :cond_1
    const-string v2, "ro.vivo.net.entry"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mNetEntry:Ljava/lang/String;

    .line 252
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mNetEntry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetEntry yes ro.vivo.net.entry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mNetEntry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    const-string v2, "ro.product.net.entry.bbk"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mNetEntry:Ljava/lang/String;

    .line 260
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mNetEntry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetEntry yes ro.product.net.entry.bbk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mNetEntry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_3
    const-string v0, "isNetEntry no"

    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    move v0, v1

    .line 267
    goto :goto_0
.end method

.method public static isOverSeas()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mOverSeas:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mOverSeas:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 308
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOverSeas:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 314
    goto :goto_0

    .line 318
    :cond_1
    const-string v2, "ro.vivo.product.overseas"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mOverSeas:Ljava/lang/String;

    .line 319
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mOverSeas:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOverSeas yes ro.vivo.product.overseas="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mOverSeas:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    const-string v0, "isOverSeas no"

    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    move v0, v1

    .line 326
    goto :goto_0
.end method

.method public static isSecurityLevelOne()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 604
    if-nez p0, :cond_0

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ApplicationInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_0
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    .line 611
    const/4 v0, 0x0

    .line 615
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSystemAppCalling(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 588
    .local v1, "callingUid":I
    if-eqz v1, :cond_0

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v2

    .line 593
    :cond_1
    invoke-static {p0}, Lcom/vivo/services/security/client/VivoPermissionManager;->getCallingAppInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 594
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 599
    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    goto :goto_0
.end method

.method public static needMonitorBuildInApps()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 331
    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorBuildInApps:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorBuildInApps:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 333
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorBuildInApps:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 339
    goto :goto_0

    .line 343
    :cond_2
    const-string v2, "persist.sys.monitor.apps"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorBuildInApps:Ljava/lang/String;

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needMonitorBuildInAppspersist.sys.monitor.apps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorBuildInApps:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 345
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorBuildInApps:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 350
    goto :goto_0
.end method

.method public static needMonitorSystemApp()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemApp:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemApp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 357
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemApp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 363
    goto :goto_0

    .line 367
    :cond_2
    const-string v2, "persist.sys.monitor.system_app"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemApp:Ljava/lang/String;

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needMonitorSystemApppersist.sys.monitor.system_app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemApp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 369
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemApp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 374
    goto :goto_0
.end method

.method public static needMonitorSystemUid()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 379
    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemUid:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 381
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 387
    goto :goto_0

    .line 391
    :cond_2
    const-string v2, "persist.sys.monitor.system_uid"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemUid:Ljava/lang/String;

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needMonitorSystemUidpersist.sys.monitor.system_uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 393
    const-string v2, "yes"

    sget-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mMonitorSystemUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 398
    goto :goto_0
.end method

.method public static needVPM()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 415
    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionManager;->mNeedVPM:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/vivo/services/security/client/VivoPermissionManager;->mNeedVPM:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 417
    const-string v4, "yes"

    sget-object v5, Lcom/vivo/services/security/client/VivoPermissionManager;->mNeedVPM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    .local v1, "project":Ljava/lang/String;
    :goto_0
    return v2

    .end local v1    # "project":Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 423
    goto :goto_0

    .line 427
    :cond_1
    sget-boolean v4, Lcom/vivo/services/security/client/VivoPermissionManager;->ENG:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/vivo/services/security/client/VivoPermissionManager;->DEBUG_NEED_VPM:Z

    if-nez v4, :cond_2

    .line 429
    const-string v2, "needVPM debug mode---------------------------------"

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 430
    const-string v2, "no"

    sput-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mNeedVPM:Ljava/lang/String;

    move v2, v3

    .line 431
    goto :goto_0

    .line 434
    :cond_2
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getProjectName()Ljava/lang/String;

    move-result-object v1

    .line 435
    .restart local v1    # "project":Ljava/lang/String;
    const-string v4, "PD1224CT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "PD1224CW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "PD1224CW_EX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "PD1304T"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "PD1304W"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "PD1311TG3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 439
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needVPM no project="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 440
    const-string v2, "no"

    sput-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mNeedVPM:Ljava/lang/String;

    move v2, v3

    .line 441
    goto :goto_0

    .line 444
    :cond_4
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getOSVersion()F

    move-result v0

    .line 445
    .local v0, "osVer":F
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->isOverSeas()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 447
    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_5

    .line 449
    const-string v2, "needVPM no isOverSeas and under 3.0"

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 450
    const-string v2, "no"

    sput-object v2, Lcom/vivo/services/security/client/VivoPermissionManager;->mNeedVPM:Ljava/lang/String;

    move v2, v3

    .line 451
    goto :goto_0

    .line 455
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needVPM yes project="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " osVer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 456
    const-string v3, "yes"

    sput-object v3, Lcom/vivo/services/security/client/VivoPermissionManager;->mNeedVPM:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static noteStartActivityProcess(Ljava/lang/String;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 934
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v1

    .line 935
    .local v1, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v1, :cond_0

    .line 937
    const-string v2, "VivoPermissionService is null!"

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 946
    .end local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_0
    return-void

    .line 940
    .restart local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v1, p0}, Lcom/vivo/services/security/client/IVivoPermissionService;->noteStartActivityProcess(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 942
    .end local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static printfDebug(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-boolean v0, Lcom/vivo/services/security/client/VivoPermissionManager;->DEBUG_VPM:Z

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "VPM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method

.method public static printfError(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->needVPM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "VPM"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method

.method public static printfInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "VPM"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public static resolveActivityForVivoPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 657
    return-object p2
.end method


# virtual methods
.method public getAppPermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 821
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionManager;->enforcePackageName(Ljava/lang/String;)V

    .line 823
    const/4 v1, 0x0

    .line 826
    .local v1, "result":Lcom/vivo/services/security/client/VivoPermissionInfo;
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v2

    .line 827
    .local v2, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v2, :cond_0

    .line 829
    const-string v3, "VivoPermissionService is null!"

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 830
    const/4 v3, 0x0

    .line 838
    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_0
    return-object v3

    .line 832
    .restart local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v2, p1}, Lcom/vivo/services/security/client/IVivoPermissionService;->getAppPermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_1
    move-object v3, v1

    .line 838
    goto :goto_0

    .line 834
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getMonitorAppList()Ljava/util/List;
    .locals 4
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

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
    .line 800
    const/4 v1, 0x0

    .line 803
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v2

    .line 804
    .local v2, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v2, :cond_0

    .line 806
    const-string v3, "VivoPermissionService is null!"

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 807
    const/4 v3, 0x0

    .line 815
    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_0
    return-object v3

    .line 809
    .restart local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v2}, Lcom/vivo/services/security/client/IVivoPermissionService;->getMonitorAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_1
    move-object v3, v1

    .line 815
    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getSpecifiedPermAppList(I)Ljava/util/List;
    .locals 4
    .param p1, "vpTypeId"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

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
    .line 756
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionManager;->enforceValidTypeId(I)V

    .line 758
    const/4 v1, 0x0

    .line 761
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v2

    .line 762
    .local v2, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v2, :cond_0

    .line 764
    const-string v3, "VivoPermissionService is null!"

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 765
    const/4 v3, 0x0

    .line 773
    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_0
    return-object v3

    .line 767
    .restart local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v2, p1}, Lcom/vivo/services/security/client/IVivoPermissionService;->getSpecifiedPermAppList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_1
    move-object v3, v1

    .line 773
    goto :goto_0

    .line 769
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getTrustedAppList()Ljava/util/List;
    .locals 4
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

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
    .line 779
    const/4 v1, 0x0

    .line 782
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v2

    .line 783
    .local v2, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v2, :cond_0

    .line 785
    const-string v3, "VivoPermissionService is null!"

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 786
    const/4 v3, 0x0

    .line 794
    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_0
    return-object v3

    .line 788
    .restart local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v2}, Lcom/vivo/services/security/client/IVivoPermissionService;->getTrustedAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_1
    move-object v3, v1

    .line 794
    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 792
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getVPMDataBaseState()I
    .locals 5
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 1006
    const/4 v1, 0x0

    .line 1009
    .local v1, "state":I
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v3

    .line 1010
    .local v3, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v3, :cond_0

    .line 1012
    const-string v4, "VivoPermissionService is null!"

    invoke-static {v4}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    move v2, v1

    .line 1021
    .end local v1    # "state":I
    .end local v3    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    .local v2, "state":I
    :goto_0
    return v2

    .line 1015
    .end local v2    # "state":I
    .restart local v1    # "state":I
    .restart local v3    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v3}, Lcom/vivo/services/security/client/IVivoPermissionService;->getVPMDataBaseState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v3    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_1
    move v2, v1

    .line 1021
    .end local v1    # "state":I
    .restart local v2    # "state":I
    goto :goto_0

    .line 1017
    .end local v2    # "state":I
    .restart local v1    # "state":I
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getVPMVersion()I
    .locals 5
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 975
    const/4 v1, 0x1

    .line 978
    .local v1, "version":I
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v3

    .line 979
    .local v3, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v3, :cond_0

    .line 981
    const-string v4, "VivoPermissionService is null!"

    invoke-static {v4}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    move v2, v1

    .line 991
    .end local v1    # "version":I
    .end local v3    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    .local v2, "version":I
    :goto_0
    return v2

    .line 984
    .end local v2    # "version":I
    .restart local v1    # "version":I
    .restart local v3    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v3}, Lcom/vivo/services/security/client/IVivoPermissionService;->getVPMVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v3    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_1
    move v2, v1

    .line 991
    .end local v1    # "version":I
    .restart local v2    # "version":I
    goto :goto_0

    .line 986
    .end local v2    # "version":I
    .restart local v1    # "version":I
    :catch_0
    move-exception v0

    .line 988
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public isBuildInThirdPartApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 951
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionManager;->enforcePackageName(Ljava/lang/String;)V

    .line 953
    const/4 v1, 0x0

    .line 956
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v2

    .line 957
    .local v2, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v2, :cond_0

    .line 959
    const-string v3, "VivoPermissionService is null!"

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 960
    const/4 v3, 0x0

    .line 968
    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_0
    return v3

    .line 962
    .restart local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v2, p1}, Lcom/vivo/services/security/client/IVivoPermissionService;->isBuildInThirdPartApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_1
    move v3, v1

    .line 968
    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setAppPermission(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vpTypeId"    # I
    .param p3, "result"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 868
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionManager;->enforcePackageName(Ljava/lang/String;)V

    .line 869
    invoke-static {p2}, Lcom/vivo/services/security/client/VivoPermissionManager;->enforceValidTypeId(I)V

    .line 870
    invoke-static {p3}, Lcom/vivo/services/security/client/VivoPermissionManager;->enforcePermissionResult(I)V

    .line 874
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v1

    .line 875
    .local v1, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v1, :cond_0

    .line 877
    const-string v2, "VivoPermissionService is null!"

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 886
    .end local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_0
    return-void

    .line 880
    .restart local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/vivo/services/security/client/IVivoPermissionService;->setAppPermission(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    .end local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppPermissionExt(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 3
    .param p1, "vpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 844
    if-nez p1, :cond_0

    .line 863
    :goto_0
    return-void

    .line 851
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v1

    .line 852
    .local v1, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v1, :cond_1

    .line 854
    const-string v2, "VivoPermissionService is null!"

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 859
    .end local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 857
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_1
    :try_start_1
    invoke-interface {v1, p1}, Lcom/vivo/services/security/client/IVivoPermissionService;->setAppPermissionExt(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setBlackListApp(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 912
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionManager;->enforcePackageName(Ljava/lang/String;)V

    .line 916
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v1

    .line 917
    .local v1, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v1, :cond_0

    .line 919
    const-string v2, "VivoPermissionService is null!"

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 928
    .end local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_0
    return-void

    .line 922
    .restart local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/vivo/services/security/client/IVivoPermissionService;->setBlackListApp(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 924
    .end local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setWhiteListApp(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 891
    invoke-static {p1}, Lcom/vivo/services/security/client/VivoPermissionManager;->enforcePackageName(Ljava/lang/String;)V

    .line 895
    :try_start_0
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getDefaultVPS()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v1

    .line 896
    .local v1, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    if-nez v1, :cond_0

    .line 898
    const-string v2, "VivoPermissionService is null!"

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 907
    .end local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :goto_0
    return-void

    .line 901
    .restart local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/vivo/services/security/client/IVivoPermissionService;->setWhiteListApp(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    .end local v1    # "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
