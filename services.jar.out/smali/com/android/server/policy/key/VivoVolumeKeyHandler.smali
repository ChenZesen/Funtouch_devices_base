.class public final Lcom/android/server/policy/key/VivoVolumeKeyHandler;
.super Lcom/android/server/policy/AVivoInterceptKeyCallback;
.source "VivoVolumeKeyHandler.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static mLock:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

.field private mVolumeDownKeyLongPressConsumed:Z

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyLongPressConsumed:Z

.field private mVolumeUpKeyTriggered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mLock:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vivoPolicy"    # Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/server/policy/AVivoInterceptKeyCallback;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    .line 36
    return-void
.end method

.method private isMusicActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 220
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_1

    .line 222
    const-string v2, "VivoWMPHook"

    const-string v3, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isMusicActiveExt()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 231
    new-instance v0, Landroid/media/AudioFeatures;

    const-string v4, "IMUS"

    invoke-direct {v0, v5, v4, v5}, Landroid/media/AudioFeatures;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    .local v0, "f":Landroid/media/AudioFeatures;
    const-string v4, "IMUS:state=false"

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioFeatures;->getAudioFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "rt":Ljava/lang/String;
    new-instance v3, Landroid/media/AudioFeatures$TagParameters;

    invoke-direct {v3, v2}, Landroid/media/AudioFeatures$TagParameters;-><init>(Ljava/lang/String;)V

    .line 234
    .local v3, "tp":Landroid/media/AudioFeatures$TagParameters;
    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioFeatures$TagParameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 236
    .local v1, "playing":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMusicActiveExt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->printf(Ljava/lang/String;)V

    .line 237
    return v1
.end method

.method private performHapticFeedback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v2, v2, v1}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->performHapticFeedback(IZZ)Z

    .line 209
    return-void
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private simulateMediaKeyEvent(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->sendMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVivoPolicy:Lcom/android/server/policy/IVivoAdjustmentPolicy;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/android/server/policy/IVivoAdjustmentPolicy;->sendMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 215
    return-void
.end method


# virtual methods
.method public onCheckForward(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onCheckNeedWakeLockWhenScreenOff(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)I
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x18

    .line 58
    const/16 v0, -0x64

    .line 59
    .local v0, "result":I
    sget-object v2, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mLock:[B

    monitor-enter v2

    .line 61
    :try_start_0
    iget v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VivoVolumeKeyHandler::onKeyDown will return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->printf(Ljava/lang/String;)V

    .line 114
    return v0

    .line 64
    :pswitch_0
    if-ne p1, v4, :cond_1

    .line 66
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyTriggered:Z

    if-nez v1, :cond_0

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyTriggered:Z

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyLongPressConsumed:Z

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 72
    :cond_1
    if-ne p1, v3, :cond_0

    .line 74
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyTriggered:Z

    if-nez v1, :cond_0

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyTriggered:Z

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyLongPressConsumed:Z

    goto :goto_0

    .line 82
    :pswitch_1
    if-ne p1, v4, :cond_3

    .line 84
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyTriggered:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyLongPressConsumed:Z

    if-nez v1, :cond_2

    .line 86
    const/16 v0, 0x32

    .line 89
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyLongPressConsumed:Z

    if-eqz v1, :cond_0

    .line 91
    const/4 v0, -0x1

    goto :goto_0

    .line 94
    :cond_3
    if-ne p1, v3, :cond_0

    .line 96
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyTriggered:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyLongPressConsumed:Z

    if-nez v1, :cond_4

    .line 98
    const/16 v0, 0x32

    .line 101
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyLongPressConsumed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 103
    const/4 v0, -0x1

    goto :goto_0

    .line 61
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
    .line 174
    sget-object v1, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mLock:[B

    monitor-enter v1

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 203
    :cond_0
    :goto_0
    :try_start_0
    monitor-exit v1

    .line 204
    return-void

    .line 180
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "KeyEvent.KEYCODE_MEDIA_NEXT will be simulated sent."

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->printf(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyLongPressConsumed:Z

    .line 187
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->simulateMediaKeyEvent(I)V

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 192
    :pswitch_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "KeyEvent.KEYCODE_MEDIA_PREVIOUS will be simulated sent."

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->printf(Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyLongPressConsumed:Z

    .line 199
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->simulateMediaKeyEvent(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)I
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x18

    .line 120
    const/16 v0, -0x64

    .line 121
    .local v0, "result":I
    sget-object v2, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mLock:[B

    monitor-enter v2

    .line 123
    :try_start_0
    iget v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VivoVolumeKeyHandler::onKeyUp will return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->printf(Ljava/lang/String;)V

    .line 168
    return v0

    .line 126
    :pswitch_0
    if-ne p1, v4, :cond_1

    .line 128
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyTriggered:Z

    .line 129
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyLongPressConsumed:Z

    if-eqz v1, :cond_0

    .line 131
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 134
    :cond_1
    if-ne p1, v3, :cond_0

    .line 136
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyTriggered:Z

    .line 137
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyLongPressConsumed:Z

    if-eqz v1, :cond_0

    .line 139
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 144
    :pswitch_1
    if-ne p1, v4, :cond_2

    .line 146
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyLongPressConsumed:Z

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyLongPressConsumed:Z

    .line 149
    const/4 v0, -0x1

    goto :goto_0

    .line 152
    :cond_2
    if-ne p1, v3, :cond_0

    .line 154
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyLongPressConsumed:Z

    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyLongPressConsumed:Z

    .line 157
    const/4 v0, -0x1

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeDownKeyTriggered:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoVolumeKeyHandler;->mVolumeUpKeyTriggered:Z

    .line 41
    return-void
.end method
