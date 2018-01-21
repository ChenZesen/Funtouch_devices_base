.class public Lcom/android/server/am/firewall/VivoBringupController;
.super Ljava/lang/Object;
.source "VivoBringupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;,
        Lcom/android/server/am/firewall/VivoBringupController$AppBringControllerHandler;
    }
.end annotation


# static fields
.field private static final ACCTYPE:Ljava/lang/String; = "accountservice"

.field private static final COUNTER_MAX:I = 0x8

.field private static final JOBTYPE:Ljava/lang/String; = "jobservice"

.field private static final MSG_NOTIFY_CLIENT:I = 0x1

.field private static final NOTTYPE:Ljava/lang/String; = "notificationservice"

.field private static final PROTYPE:Ljava/lang/String; = "provider"

.field private static final SYNCTYPE:Ljava/lang/String; = "syncservice"

.field private static final TIME_INTERVAL:I = 0x3e8


# instance fields
.field private TAG:Ljava/lang/String;

.field mAms:Lcom/android/server/am/ActivityManagerService;

.field private mAppBringControllerHandler:Landroid/os/Handler;

.field mCallerPackageName:Ljava/lang/String;

.field private mCtsPattern:Ljava/util/regex/Pattern;

.field private mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

.field mLastCallerPackageName:Ljava/lang/String;

.field mLastPackageName:Ljava/lang/String;

.field mLastTime:J

.field private mRecentRecords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialCtsPkgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/firewall/VivoFirewall;Landroid/os/Looper;Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firewall"    # Lcom/android/server/am/firewall/VivoFirewall;
    .param p3, "lopper"    # Landroid/os/Looper;
    .param p4, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "VivoFirewall"

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mSpecialCtsPkgs:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mRecentRecords:Ljava/util/LinkedList;

    .line 36
    const-string v0, ".*android.*cts.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mCtsPattern:Ljava/util/regex/Pattern;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mLastTime:J

    .line 52
    iput-object v2, p0, Lcom/android/server/am/firewall/VivoBringupController;->mCallerPackageName:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/android/server/am/firewall/VivoBringupController;->mLastPackageName:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/android/server/am/firewall/VivoBringupController;->mLastCallerPackageName:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/android/server/am/firewall/VivoBringupController;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 77
    new-instance v0, Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-direct {v0, p1, p3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    .line 78
    new-instance v0, Lcom/android/server/am/firewall/VivoBringupController$AppBringControllerHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/am/firewall/VivoBringupController$AppBringControllerHandler;-><init>(Lcom/android/server/am/firewall/VivoBringupController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mAppBringControllerHandler:Landroid/os/Handler;

    .line 79
    invoke-direct {p0}, Lcom/android/server/am/firewall/VivoBringupController;->loadSpecialCtsPackages()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/firewall/VivoBringupController;)Lcom/android/server/am/firewall/VivoIqooSecureConnector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/firewall/VivoBringupController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    return-object v0
.end method

.method private getNonSystemPackageName(I)Ljava/lang/String;
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 304
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 305
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 308
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 309
    .local v0, "apinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-nez v5, :cond_0

    .line 310
    iget-object v5, p0, Lcom/android/server/am/firewall/VivoBringupController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNonSystemPackageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v5, 0x0

    aget-object v4, v2, v5

    .line 318
    .end local v0    # "apinfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageNames":[Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return-object v4

    .line 314
    .restart local v2    # "packageNames":[Ljava/lang/String;
    .restart local v3    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/firewall/VivoBringupController;->TAG:Ljava/lang/String;

    const-string v6, "getNonSystemPackageName null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    .end local v2    # "packageNames":[Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/am/firewall/VivoBringupController;->TAG:Ljava/lang/String;

    const-string v6, "fail to get package"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCtsPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mCtsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mSpecialCtsPkgs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSettingsRunningTop()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 323
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoBringupController;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5}, Lcom/android/server/am/ActivityManagerService;->getTasks(II)Ljava/util/List;

    move-result-object v1

    .line 324
    .local v1, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v4, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 325
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 327
    .local v2, "topcomp":Landroid/content/ComponentName;
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "top component:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    .line 329
    const-string v3, "com.android.settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 334
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "topcomp":Landroid/content/ComponentName;
    :goto_0
    return v3

    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v2    # "topcomp":Landroid/content/ComponentName;
    :cond_0
    move v3, v5

    .line 332
    goto :goto_0

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "topcomp":Landroid/content/ComponentName;
    :cond_1
    move v3, v5

    .line 334
    goto :goto_0
.end method

.method private isSystemInternalWhiteList(Landroid/content/pm/ComponentInfo;IILjava/lang/String;)Z
    .locals 3
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I
    .param p4, "callerPackage"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2710

    const/4 v0, 0x1

    .line 278
    if-ge p3, v2, :cond_0

    const/16 v1, 0x3e8

    if-ne p3, v1, :cond_1

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ge v1, v2, :cond_2

    .line 294
    :cond_1
    :goto_0
    return v0

    .line 283
    :cond_2
    if-nez p4, :cond_3

    .line 284
    invoke-direct {p0, p3}, Lcom/android/server/am/firewall/VivoBringupController;->getNonSystemPackageName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/firewall/VivoBringupController;->mCallerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 290
    :goto_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/firewall/VivoBringupController;->isCtsPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :cond_3
    iput-object p4, p0, Lcom/android/server/am/firewall/VivoBringupController;->mCallerPackageName:Ljava/lang/String;

    goto :goto_1
.end method

.method private isUidRunning(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 338
    iget-object v3, p0, Lcom/android/server/am/firewall/VivoBringupController;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 339
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 340
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v3, p1, :cond_0

    .line 341
    const/4 v3, 0x1

    .line 343
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadSpecialCtsPackages()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mSpecialCtsPkgs:Ljava/util/Set;

    const-string v1, "android.tests.devicesetup"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mSpecialCtsPkgs:Ljava/util/Set;

    const-string v1, "android.voicesettings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mSpecialCtsPkgs:Ljava/util/Set;

    const-string v1, "android.voiceinteraction"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 385
    sget-boolean v0, Lcom/android/server/am/firewall/VivoFirewall;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    return-void
.end method

.method private sendInterceptInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZ)V
    .locals 6
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "resule"    # Z
    .param p5, "callerPid"    # I
    .param p6, "callerUid"    # I
    .param p7, "overshoot"    # Z

    .prologue
    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "PACKAGE_NAME"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v2, "COMPONENT_TYPE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v2, "RESULT"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    const-string v2, "OVERSHOOT"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    const-string v2, "TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 361
    const-string v2, "CALLER_PID"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    const-string v2, "CALLER_UID"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    const-string v2, "CALLER_PACKAGE_NAME"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firewall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(callerPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,callerUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") bring up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is allowed? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoBringupController;->mAppBringControllerHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 368
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 369
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoBringupController;->mAppBringControllerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    return-void
.end method

.method private shouldBringupApp(Ljava/lang/String;Landroid/content/pm/ComponentInfo;Ljava/lang/String;II)Z
    .locals 22
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "bringupSide"    # Landroid/content/pm/ComponentInfo;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "callerPid"    # I
    .param p5, "callerUid"    # I

    .prologue
    .line 155
    const/4 v8, 0x0

    .line 156
    .local v8, "allowed":Z
    const/16 v18, 0x0

    .line 157
    .local v18, "notifyClient":Z
    const/4 v11, 0x0

    .line 158
    .local v11, "overshoot":Z
    const/4 v14, 0x0

    .line 159
    .local v14, "counter":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callerPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", item package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callerPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callerUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->getWhiteStartupData()Ljava/util/HashMap;

    move-result-object v17

    .line 162
    .local v17, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/firewall/VivoAppRuleItem;>;"
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/firewall/VivoAppRuleItem;

    .line 164
    .local v16, "item":Lcom/android/server/am/firewall/VivoAppRuleItem;
    const-string v4, "jobservice"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "syncservice"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "accountservice"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "notificationservice"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 165
    :cond_0
    const-string v4, "accountservice"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/firewall/VivoBringupController;->isSettingsRunningTop()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/firewall/VivoBringupController;->TAG:Ljava/lang/String;

    const-string v5, "SettingsRunningTop allow to bringup"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v4, 0x1

    .line 256
    :goto_0
    return v4

    .line 172
    :cond_1
    if-eqz v16, :cond_2

    .line 173
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowToBeBringedupBySystem()Z

    move-result v8

    .line 174
    :cond_2
    const/16 v18, 0x1

    .line 175
    if-eqz v16, :cond_6

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",item.hasType6="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",item.hasType7="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x7

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",item.isAllowBringup="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowBringup()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    .line 231
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/firewall/VivoBringupController;->mRecentRecords:Ljava/util/LinkedList;

    if-nez v4, :cond_4

    .line 232
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/am/firewall/VivoBringupController;->mRecentRecords:Ljava/util/LinkedList;

    .line 233
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/firewall/VivoBringupController;->mRecentRecords:Ljava/util/LinkedList;

    new-instance v5, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-direct {v5, v6, v0, v1, v2}, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 234
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/firewall/VivoBringupController;->mRecentRecords:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v15, v4, :cond_1a

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/firewall/VivoBringupController;->mRecentRecords:Ljava/util/LinkedList;

    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;

    .line 236
    .local v12, "bitem":Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;
    if-eqz v12, :cond_5

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # getter for: Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mTime:J
    invoke-static {v12}, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->access$100(Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v6}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->getMaxComboDuration()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_19

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/firewall/VivoBringupController;->mRecentRecords:Ljava/util/LinkedList;

    invoke-virtual {v4, v12}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 234
    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 178
    .end local v12    # "bitem":Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;
    .end local v15    # "i":I
    :cond_6
    const-string v4, "item null,not allowed"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/firewall/VivoAppRuleItem;

    .line 182
    .local v13, "callerItem":Lcom/android/server/am/firewall/VivoAppRuleItem;
    if-nez v16, :cond_8

    if-nez v13, :cond_8

    .line 183
    const/4 v8, 0x0

    .line 184
    const/16 v18, 0x1

    .line 185
    const-string v4, "no record exist,not allowed!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_8
    if-nez v16, :cond_c

    if-eqz v13, :cond_c

    .line 187
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowToBringup(Ljava/lang/String;)Z

    move-result v8

    .line 189
    const/4 v4, 0x3

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 190
    :cond_9
    const/16 v18, 0x0

    .line 194
    :goto_4
    if-nez v8, :cond_a

    const/4 v4, 0x3

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 195
    const/16 v18, 0x1

    .line 197
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item null, allowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notifyClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 192
    :cond_b
    const/16 v18, 0x1

    goto :goto_4

    .line 198
    :cond_c
    if-eqz v16, :cond_f

    if-nez v13, :cond_f

    .line 199
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowToBeBringedup(Ljava/lang/String;)Z

    move-result v8

    .line 200
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 201
    :cond_d
    const/16 v18, 0x0

    .line 204
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callerItem null, allowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notifyClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 203
    :cond_e
    const/16 v18, 0x1

    goto :goto_5

    .line 206
    :cond_f
    const/4 v4, 0x3

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_10
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 207
    :cond_11
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowToBringup(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowToBeBringedup(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v8, 0x1

    .line 208
    :goto_6
    const/16 v18, 0x0

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller A and B are in list. allowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notifyClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 207
    :cond_12
    const/4 v8, 0x0

    goto :goto_6

    .line 210
    :cond_13
    const/4 v4, 0x3

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_14
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_16

    .line 211
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowToBringup(Ljava/lang/String;)Z

    move-result v8

    .line 212
    const/16 v18, 0x0

    .line 213
    if-nez v8, :cond_15

    const/4 v4, 0x3

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 214
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowBringup()Z

    move-result v8

    .line 215
    const/16 v18, 0x1

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller A is in whitelist, B is not in list, B is A\'s Blacklist. allowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "notifyClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    .line 218
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller A is in list, B not. allowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "notifyClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    :cond_16
    const/4 v4, 0x3

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 220
    :cond_17
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowToBeBringedup(Ljava/lang/String;)Z

    move-result v8

    .line 221
    const/16 v18, 0x0

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "B is in list, caller A not. allowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notifyClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 223
    :cond_18
    const/4 v4, 0x3

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/am/firewall/VivoAppRuleItem;->hasType(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 224
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/firewall/VivoAppRuleItem;->isAllowToBeBringedup(Ljava/lang/String;)Z

    move-result v8

    .line 225
    const/16 v18, 0x1

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller A and B are not in list. allowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notifyClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 239
    .end local v13    # "callerItem":Lcom/android/server/am/firewall/VivoAppRuleItem;
    .restart local v12    # "bitem":Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;
    .restart local v15    # "i":I
    :cond_19
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # getter for: Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->access$200(Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    # getter for: Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mCallerPackageName:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->access$300(Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 241
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 246
    .end local v12    # "bitem":Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->getMaxComboTimes()I

    move-result v4

    if-le v14, v4, :cond_1b

    .line 247
    const/4 v8, 0x1

    .line 248
    const/16 v18, 0x1

    .line 249
    const/4 v11, 0x1

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/firewall/VivoBringupController;->TAG:Ljava/lang/String;

    const-string v5, "too many times,allow to bring up"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1b
    if-eqz v18, :cond_1c

    .line 254
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/firewall/VivoBringupController;->sendInterceptInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZ)V

    :cond_1c
    move v4, v8

    .line 256
    goto/16 :goto_0
.end method


# virtual methods
.method public dumpCachedInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I

    .prologue
    .line 374
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->dumpCachedInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 375
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoBringupController;->mRecentRecords:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;

    .line 376
    .local v1, "item":Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mTime:J
    invoke-static {v1}, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->access$100(Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",callee:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->access$200(Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->mCallerPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;->access$300(Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    .end local v1    # "item":Lcom/android/server/am/firewall/VivoBringupController$BringupItemRecord;
    :cond_0
    const-string v2, "Special List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v2}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->getSpecialStartupData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 380
    .local v1, "item":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 382
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public shouldPreventStartProcess(Ljava/lang/String;Landroid/content/pm/ComponentInfo;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "bringupSide"    # Landroid/content/pm/ComponentInfo;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "callerPid"    # I
    .param p5, "callerUid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v0}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v6

    .line 148
    :goto_0
    return v0

    .line 102
    :cond_1
    const-string v0, "jobservice"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "syncservice"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "accountservice"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "notificationservice"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v0, p3}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->isSysTypeOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sys type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not enable,allow to bringup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 105
    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v0}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->isInRightScreenState()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v6

    .line 109
    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p5, v0, :cond_7

    .line 113
    if-nez p1, :cond_5

    .line 114
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v0}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->getSpecialStartupData()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Special List:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is forbidden to self start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    move v0, v7

    .line 116
    goto/16 :goto_0

    .line 119
    :cond_5
    const-string v0, "jobservice"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    invoke-direct {p0, p5}, Lcom/android/server/am/firewall/VivoBringupController;->isUidRunning(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " running,allow to start self job"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    move v0, v6

    .line 122
    goto/16 :goto_0

    .line 125
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allow self start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    move v0, v6

    .line 126
    goto/16 :goto_0

    .line 130
    :cond_7
    const-string v0, "jobservice"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callerUid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'s job"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    .line 132
    const/16 p5, 0x3e8

    .line 135
    :cond_8
    if-nez p1, :cond_9

    const-string v0, "provider"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v0}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->isAllProviderTypeOn()Z

    move-result v0

    if-nez v0, :cond_9

    .line 136
    const-string v0, "allow bringup provider not all type on"

    invoke-direct {p0, v0}, Lcom/android/server/am/firewall/VivoBringupController;->log(Ljava/lang/String;)V

    move v0, v6

    .line 137
    goto/16 :goto_0

    .line 140
    :cond_9
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/android/server/am/firewall/VivoBringupController;->isSystemInternalWhiteList(Landroid/content/pm/ComponentInfo;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v6

    .line 141
    goto/16 :goto_0

    .line 144
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoBringupController;->mCallerPackageName:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/firewall/VivoBringupController;->shouldBringupApp(Ljava/lang/String;Landroid/content/pm/ComponentInfo;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v6

    .line 145
    goto/16 :goto_0

    :cond_b
    move v0, v7

    .line 148
    goto/16 :goto_0
.end method

.method public shouldValidateSyncType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "syncType"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->isForbiddenSyncType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoBringupController;->mIqooSecureConnector:Lcom/android/server/am/firewall/VivoIqooSecureConnector;

    invoke-virtual {v0}, Lcom/android/server/am/firewall/VivoIqooSecureConnector;->registerBroadcast()V

    .line 85
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoBringupController;->mAppBringControllerHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 90
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/firewall/VivoBringupController;->mAppBringControllerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method
