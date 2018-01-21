.class public Lcom/android/internal/app/ActivityTrigger;
.super Ljava/lang/Object;
.source "ActivityTrigger.java"


# static fields
.field private static final FLAG_HARDWARE_ACCELERATED:I = 0x200

.field private static final FLAG_OVERRIDE_RESOLUTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTrigger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private native native_at_deinit()V
.end method

.method private native native_at_pauseActivity(Ljava/lang/String;)V
.end method

.method private native native_at_resumeActivity(Ljava/lang/String;)V
.end method

.method private native native_at_startActivity(Ljava/lang/String;I)I
.end method

.method private native native_at_startProcessActivity(Ljava/lang/String;I)V
.end method

.method private native native_at_stopActivity(Ljava/lang/String;)V
.end method


# virtual methods
.method public activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 101
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 102
    .local v0, "activity":Ljava/lang/String;
    const-string v2, "ActivityTrigger"

    const-string v3, "ActivityTrigger activityPauseTrigger "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActivityTrigger;->native_at_pauseActivity(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 92
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 94
    .local v0, "activity":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActivityTrigger;->native_at_resumeActivity(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public activityStartProcessTrigger(Ljava/lang/String;I)V
    .locals 0
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ActivityTrigger;->native_at_startProcessActivity(Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public activityStartTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 65
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 66
    .local v2, "overrideFlags":I
    const/4 v0, 0x0

    .line 68
    .local v0, "activity":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/android/internal/app/ActivityTrigger;->native_at_startActivity(Ljava/lang/String;I)I

    move-result v2

    .line 73
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_1

    .line 74
    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 77
    :cond_1
    iget v3, p3, Landroid/content/pm/ApplicationInfo;->densityVer:I

    sget v4, Lcom/android/internal/os/VivoStats;->densityVer:I

    if-ge v3, v4, :cond_2

    .line 78
    invoke-static {p3, p2}, Lcom/android/internal/os/VivoStats;->onChangeCfg(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)V

    .line 87
    :cond_2
    return-void
.end method

.method public activityStopTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "acInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 110
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 111
    .local v0, "activity":Ljava/lang/String;
    const-string v2, "ActivityTrigger"

    const-string v3, "ActivityTrigger activityStopTrigger "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActivityTrigger;->native_at_stopActivity(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/ActivityTrigger;->native_at_deinit()V

    .line 55
    return-void
.end method
