.class public Lcom/android/server/pm/VivoBackgroundDexOptThread;
.super Ljava/lang/Thread;
.source "VivoBackgroundDexOptThread.java"


# static fields
.field static final BOOT_DEXOPT_DELAY:I = 0x493e0

.field static final CPU_USAGE_TEMPERATURE:F = 50.0f

.field static final LOW_STORAGE_RETRY_DELAY:J = 0xdbba00L

.field static final NEXT_DELAY:I = 0x9c40

.field static final TAG:Ljava/lang/String; = "VivoBackgroundDexOptThread"

.field static final TEMPERATURE_THRESHOLD:I = 0x27

.field static final ZONE_8937:Ljava/lang/String; = "/sys/class/thermal/thermal_zone3/temp"

.field static final ZONE_8953:Ljava/lang/String; = "/sys/class/thermal/thermal_zone4/temp"


# instance fields
.field SYS_CLASS_THERMAL_ZONE:Ljava/lang/String;

.field mAm:Landroid/app/ActivityManager;

.field mContext:Landroid/content/Context;

.field mPm:Lcom/android/server/pm/PackageManagerService;

.field mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field mTelephony:Lcom/android/internal/telephony/ITelephony;

.field mVivoDmSrvProxy:Lcom/vivo/services/daemon/VivoDmServiceProxy;

.field mWhiteListApp:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    const-string v1, "/sys/class/thermal/thermal_zone4/temp"

    iput-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->SYS_CLASS_THERMAL_ZONE:Ljava/lang/String;

    .line 33
    const-string v1, "vivo_daemon.service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/daemon/VivoDmServiceProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mVivoDmSrvProxy:Lcom/vivo/services/daemon/VivoDmServiceProxy;

    .line 41
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.tencent.WeFire"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "com.tencent.tmgp.sgame"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mWhiteListApp:[Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mContext:Landroid/content/Context;

    .line 47
    iget-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mAm:Landroid/app/ActivityManager;

    .line 48
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 49
    new-instance v1, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 50
    iget-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 51
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "platform":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "msm8953"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "/sys/class/thermal/thermal_zone4/temp"

    iput-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->SYS_CLASS_THERMAL_ZONE:Ljava/lang/String;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v1, "/sys/class/thermal/thermal_zone3/temp"

    iput-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->SYS_CLASS_THERMAL_ZONE:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkHighTemperature()Z
    .locals 5

    .prologue
    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mVivoDmSrvProxy:Lcom/vivo/services/daemon/VivoDmServiceProxy;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mVivoDmSrvProxy:Lcom/vivo/services/daemon/VivoDmServiceProxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->SYS_CLASS_THERMAL_ZONE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/services/daemon/VivoDmServiceProxy;->runShellWithResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 120
    .local v1, "temperature":I
    if-eqz v0, :cond_0

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 122
    const-string v2, "VivoBackgroundDexOptThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before dexopt -> current temperature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    if-lez v1, :cond_0

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 124
    const/16 v2, 0x27

    if-lt v1, v2, :cond_0

    .line 125
    const/4 v2, 0x1

    .line 133
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "temperature":I
    :goto_0
    return v2

    .line 130
    :catch_0
    move-exception v2

    .line 133
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hasPendingInstall()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->hasPendingInsatll()Z

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHighCpuUsage()Z
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 146
    iget-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getTotalCpuPercent()F

    move-result v0

    .line 147
    .local v0, "percent":F
    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 148
    const/4 v1, 0x1

    .line 152
    .end local v0    # "percent":F
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNeedPauseDexopt()Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/pm/VivoBackgroundDexOptThread;->checkHighTemperature()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/VivoBackgroundDexOptThread;->isPhoneIdle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/VivoBackgroundDexOptThread;->isSpecialAppInFroeground()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/VivoBackgroundDexOptThread;->isHighCpuUsage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/VivoBackgroundDexOptThread;->hasPendingInstall()Z

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

.method private isPhoneIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_0

    .line 158
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const-string v2, "android"

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 166
    :cond_1
    :goto_0
    return v0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isSpecialAppInFroeground()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 170
    iget-object v8, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mAm:Landroid/app/ActivityManager;

    if-nez v8, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v7

    .line 174
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 175
    .local v4, "lr":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_0

    .line 179
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 180
    .local v6, "ra":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_3

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_2

    .line 182
    :cond_3
    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mWhiteListApp:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 184
    .local v5, "pkg":Ljava/lang/String;
    iget-object v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 185
    const-string v7, "VivoBackgroundDexOptThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is running in froeground"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v7, 0x1

    goto :goto_0

    .line 183
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 60
    const/4 v4, 0x0

    .line 62
    .local v4, "total":I
    :try_start_0
    const-string v5, "VivoBackgroundDexOptThread"

    const-string v6, "VivoBackgroundDexOptThread start"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v5, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-nez v5, :cond_0

    .line 64
    const-string v5, "VivoBackgroundDexOptThread"

    const-string v6, "get pms failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 68
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    const-string v5, "VivoBackgroundDexOptThread"

    const-string v6, "no storage left, retry!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-wide/32 v6, 0xdbba00

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "VivoBackgroundDexOptThread"

    const-string v6, "background dexopt job failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iput-object v8, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mVivoDmSrvProxy:Lcom/vivo/services/daemon/VivoDmServiceProxy;

    .line 103
    iput-object v8, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mContext:Landroid/content/Context;

    .line 104
    iput-object v8, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mAm:Landroid/app/ActivityManager;

    .line 105
    iput-object v8, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 106
    iput-object v8, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    goto :goto_0

    .line 74
    :cond_1
    const-wide/32 v6, 0x493e0

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 76
    iget-object v5, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->getDexoptPackagesSort()Ljava/util/List;

    move-result-object v3

    .line 77
    .local v3, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 78
    :cond_2
    const-string v5, "VivoBackgroundDexOptThread"

    const-string v6, "no pkgs need to dexopt"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "pkg":Ljava/lang/String;
    const-string v5, "VivoBackgroundDexOptThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz v2, :cond_4

    .line 88
    :goto_4
    invoke-direct {p0}, Lcom/android/server/pm/VivoBackgroundDexOptThread;->isNeedPauseDexopt()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    const-string v5, "VivoBackgroundDexOptThread"

    const-string v6, "pause next dexopt"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-wide/32 v6, 0x9c40

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_4

    .line 93
    :cond_5
    iget-object v5, p0, Lcom/android/server/pm/VivoBackgroundDexOptThread;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v6, "Immediately"

    invoke-virtual {v5, v2, v6}, Lcom/android/server/pm/PackageManagerService;->performDexOptIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 95
    const-wide/32 v6, 0x9c40

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 97
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_6
    const-string v5, "VivoBackgroundDexOptThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "background dexopt  job completion total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
