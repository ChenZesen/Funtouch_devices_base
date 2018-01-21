.class public final Lcom/android/server/policy/key/VivoBackKeyHandler;
.super Lcom/android/server/policy/AVivoInterceptKeyCallback;
.source "VivoBackKeyHandler.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static ENABLE_DISPATCH_BACK_DELAY:Z = false

.field private static final TAG:Ljava/lang/String; = "VivoBackKeyHandler"

.field private static mLock:[B


# instance fields
.field private mBackKeyLongPressConsumed:Z

.field private mBackKeyTriggered:Z

.field private mContext:Landroid/content/Context;

.field private mIsExport:Z

.field private mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

.field private sRom2_5:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    new-array v0, v1, [B

    sput-object v0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mLock:[B

    .line 35
    sput-boolean v1, Lcom/android/server/policy/key/VivoBackKeyHandler;->ENABLE_DISPATCH_BACK_DELAY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vivoPolicy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/policy/AVivoInterceptKeyCallback;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .line 48
    const-string v0, "rom_2.6"

    const-string v1, "ro.vivo.rom.version"

    const-string v2, "rom_3.0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->sRom2_5:Z

    .line 49
    const-string v0, "yes"

    const-string v1, "ro.vivo.product.overseas"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mIsExport:Z

    .line 50
    return-void
.end method

.method private interceptDismissPinningChord()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    iget-boolean v4, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mIsExport:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->sRom2_5:Z

    if-eqz v4, :cond_0

    .line 155
    const-string v3, "VivoBackKeyHandler"

    const-string v4, "interceptDismissPinningChord return."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return v2

    .line 159
    :cond_0
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 161
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-nez v0, :cond_1

    .line 162
    const-string v3, "VivoBackKeyHandler"

    const-string v4, "ActivityManager is null ,return."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 169
    iget-object v4, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->performHapticFeedback(IZZ)Z

    move v2, v3

    .line 170
    goto :goto_0

    .line 172
    :cond_2
    const-string v3, "VivoBackKeyHandler"

    const-string v4, "Not in LockTaskMode!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "VivoBackKeyHandler"

    const-string v4, "RemoteException when stopLockTaskModeOnCurrent"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isBackKeyLongPressEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget-object v3, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "floating_window_allow_back_key"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, "result":I
    if-ne v0, v1, :cond_1

    sget-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoBackKeyHandler;->isSplitMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private isSplitMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v2, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "floatmode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 201
    .local v0, "result":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 202
    const/4 v1, 0x1

    .line 204
    :cond_0
    return v1
.end method

.method private performBackKeyLongPress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    const-string v1, "performBackKeyLongPress"

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoBackKeyHandler;->printf(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoBackKeyHandler;->interceptDismissPinningChord()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/key/VivoBackKeyHandler;->isBackKeyLongPressEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "VivoBackKeyHandler"

    const-string v2, "start floatingwindow."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, v3, v3, v2}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->performHapticFeedback(IZZ)Z

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.floatingwindow.state.flip"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 196
    return-void
.end method


# virtual methods
.method public onCheckForward(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "isDrop":Z
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)I
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    const/16 v0, -0x64

    .line 77
    .local v0, "result":I
    sget-object v2, Lcom/android/server/policy/key/VivoBackKeyHandler;->mLock:[B

    monitor-enter v2

    .line 79
    :try_start_0
    iget v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    monitor-exit v2

    .line 105
    return v0

    .line 82
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mBackKeyTriggered:Z

    if-nez v1, :cond_0

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mBackKeyTriggered:Z

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mBackKeyLongPressConsumed:Z

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 89
    :pswitch_1
    :try_start_1
    sget-boolean v1, Lcom/android/server/policy/key/VivoBackKeyHandler;->ENABLE_DISPATCH_BACK_DELAY:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mBackKeyTriggered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mBackKeyLongPressConsumed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 91
    const/16 v0, 0x32

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 141
    sget-object v1, Lcom/android/server/policy/key/VivoBackKeyHandler;->mLock:[B

    monitor-enter v1

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mBackKeyTriggered:Z

    if-nez v0, :cond_0

    .line 145
    monitor-exit v1

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mBackKeyLongPressConsumed:Z

    .line 148
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoBackKeyHandler;->performBackKeyLongPress()V

    .line 149
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)I
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 111
    const/16 v0, -0x64

    .line 112
    .local v0, "result":I
    sget-object v2, Lcom/android/server/policy/key/VivoBackKeyHandler;->mLock:[B

    monitor-enter v2

    .line 114
    :try_start_0
    iget v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    monitor-exit v2

    .line 135
    return v0

    .line 117
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mBackKeyTriggered:Z

    .line 118
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mBackKeyLongPressConsumed:Z

    if-eqz v1, :cond_0

    .line 120
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 124
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mBackKeyLongPressConsumed:Z

    if-eqz v1, :cond_0

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoBackKeyHandler;->mBackKeyLongPressConsumed:Z

    .line 127
    const/4 v0, -0x1

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
