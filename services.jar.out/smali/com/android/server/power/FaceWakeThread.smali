.class public Lcom/android/server/power/FaceWakeThread;
.super Landroid/os/HandlerThread;
.source "FaceWakeThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private mBlocked:Z

.field private mContext:Landroid/content/Context;

.field private mFaceWakeEnabled:Z

.field private mHandler:Lcom/android/server/power/FaceWakeHandler;

.field private mScreenOffTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    iput-boolean v0, p0, Lcom/android/server/power/FaceWakeThread;->mFaceWakeEnabled:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/server/power/FaceWakeThread;->mBlocked:Z

    .line 30
    iput-object p2, p0, Lcom/android/server/power/FaceWakeThread;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 2

    .prologue
    .line 75
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 76
    .local v0, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 78
    const-string v1, "Unable to find ITelephony interface."

    invoke-static {v1}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-object v0
.end method

.method private isInCall()Z
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/android/server/power/FaceWakeThread;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 56
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v0, 0x0

    .line 57
    .local v0, "result":Z
    if-eqz v1, :cond_0

    .line 70
    :cond_0
    return v0
.end method

.method private isInSuperPowerSave()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    const-string v1, "sys.super_power_save"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sys.drive_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isScreenLocked()Z
    .locals 3

    .prologue
    .line 35
    iget-object v1, p0, Lcom/android/server/power/FaceWakeThread;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 36
    .local v0, "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 40
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/server/power/FaceWakeThread;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 46
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 50
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resolveBlock(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 142
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 145
    .local v0, "block":I
    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/power/FaceWakeThread;->mBlocked:Z

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveBlock.... mBlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/FaceWakeThread;->mBlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private resolveEnableSettings(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 122
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 124
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 125
    .local v1, "enable":I
    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/power/FaceWakeThread;->mFaceWakeEnabled:Z

    .line 126
    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, p0, Lcom/android/server/power/FaceWakeThread;->mScreenOffTimeout:I

    .line 130
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/FaceWakeHandler;

    iput-object v2, p0, Lcom/android/server/power/FaceWakeThread;->mHandler:Lcom/android/server/power/FaceWakeHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveEnableSettings.... enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/FaceWakeThread;->mFaceWakeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/FaceWakeThread;->mScreenOffTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private startFaceWakeInternal()V
    .locals 5

    .prologue
    .line 152
    const-string v2, "startFaceWakeInternal...."

    invoke-static {v2}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    .line 154
    iget-boolean v2, p0, Lcom/android/server/power/FaceWakeThread;->mFaceWakeEnabled:Z

    if-nez v2, :cond_1

    .line 156
    const-string v2, "face wake disabled, return...."

    invoke-static {v2}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/power/FaceWakeThread;->mBlocked:Z

    if-eqz v2, :cond_2

    .line 162
    const-string v2, "face wake blocked, return...."

    invoke-static {v2}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeThread;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    const-string v2, "is in call, return...."

    invoke-static {v2}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeThread;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_4

    .line 174
    const-string v2, "screen is off, return...."

    invoke-static {v2}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_4
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeThread;->isScreenLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    const-string v2, "screen is locked, return"

    invoke-static {v2}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeThread;->isInSuperPowerSave()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 186
    const-string v2, "in super power save mode, return"

    invoke-static {v2}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.bbk.facewake"

    const-string v4, "com.bbk.facewake.FaceWakeService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 192
    iget-object v2, p0, Lcom/android/server/power/FaceWakeThread;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    .line 193
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 201
    const-string v2, "start face wake service faild."

    invoke-static {v2}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopFaceWakeInternal()V
    .locals 4

    .prologue
    .line 207
    const-string v1, "stopFaceWakeInternal...."

    invoke-static {v1}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.bbk.facewake"

    const-string v3, "com.bbk.facewake.FaceWakeService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/android/server/power/FaceWakeThread;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 212
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 91
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 95
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeThread;->startFaceWakeInternal()V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeThread;->stopFaceWakeInternal()V

    goto :goto_0

    .line 107
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/power/FaceWakeThread;->resolveEnableSettings(Landroid/os/Message;)V

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/power/FaceWakeThread;->resolveBlock(Landroid/os/Message;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
