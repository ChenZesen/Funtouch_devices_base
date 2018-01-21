.class public Lcom/android/server/power/FaceWakeHandler;
.super Landroid/os/Handler;
.source "FaceWakeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/FaceWakeHandler$SettingsObserver;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final FACE_WAKE_ADVANCED_TIME:I = 0x2328

.field static final FACE_WAKE_CONTINUED_TIME:I = 0x1b58

.field static final FACE_WAKE_LOCK_SCREEN_DELAY:I = 0x1f40

.field static final MSG_FACE_WAKE_BLOCK_CHANGED:I = 0x4

.field static final MSG_FACE_WAKE_ENABLE_CHANGED:I = 0x3

.field static final MSG_START_FACE_WAKE:I = 0x1

.field static final MSG_STOP_FACE_WAKE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FaceWake"


# instance fields
.field private mBlock:Z

.field private mBlockCount:I

.field private mContext:Landroid/content/Context;

.field private mFaceWakeEnabled:Z

.field private mScreenOffTimeout:I

.field private mSettingsObserver:Lcom/android/server/power/FaceWakeHandler$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "cb"    # Landroid/os/Handler$Callback;

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 32
    iput-boolean v0, p0, Lcom/android/server/power/FaceWakeHandler;->mFaceWakeEnabled:Z

    .line 36
    iput v0, p0, Lcom/android/server/power/FaceWakeHandler;->mBlockCount:I

    .line 37
    iput-boolean v0, p0, Lcom/android/server/power/FaceWakeHandler;->mBlock:Z

    .line 105
    iput-object p1, p0, Lcom/android/server/power/FaceWakeHandler;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/android/server/power/FaceWakeHandler$SettingsObserver;

    invoke-direct {v0, p0, p0}, Lcom/android/server/power/FaceWakeHandler$SettingsObserver;-><init>(Lcom/android/server/power/FaceWakeHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/FaceWakeHandler;->mSettingsObserver:Lcom/android/server/power/FaceWakeHandler$SettingsObserver;

    .line 107
    iget-object v0, p0, Lcom/android/server/power/FaceWakeHandler;->mSettingsObserver:Lcom/android/server/power/FaceWakeHandler$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/power/FaceWakeHandler$SettingsObserver;->observe()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/FaceWakeHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/FaceWakeHandler;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/power/FaceWakeHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/FaceWakeHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/FaceWakeHandler;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeHandler;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/FaceWakeHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/FaceWakeHandler;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeHandler;->notifyChanged()V

    return-void
.end method

.method private blockChanged()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeHandler;->tellThreadBlock()V

    .line 170
    iget-boolean v0, p0, Lcom/android/server/power/FaceWakeHandler;->mBlock:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/server/power/FaceWakeHandler;->stopFaceWake()V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/FaceWakeHandler;->handleFaceWake()V

    goto :goto_0
.end method

.method private blockFaceWake(Z)V
    .locals 3
    .param p1, "block"    # Z

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockFaceWake block: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    .line 149
    if-eqz p1, :cond_1

    .line 151
    iget v1, p0, Lcom/android/server/power/FaceWakeHandler;->mBlockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/FaceWakeHandler;->mBlockCount:I

    .line 158
    :goto_0
    iget v1, p0, Lcom/android/server/power/FaceWakeHandler;->mBlockCount:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 160
    .local v0, "tempBlock":Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/power/FaceWakeHandler;->mBlock:Z

    if-eq v1, v0, :cond_0

    .line 162
    iput-boolean v0, p0, Lcom/android/server/power/FaceWakeHandler;->mBlock:Z

    .line 163
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeHandler;->blockChanged()V

    .line 165
    :cond_0
    return-void

    .line 155
    .end local v0    # "tempBlock":Z
    :cond_1
    iget v1, p0, Lcom/android/server/power/FaceWakeHandler;->mBlockCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/power/FaceWakeHandler;->mBlockCount:I

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method

.method private notifyChanged()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeHandler;->updateSettings()V

    .line 75
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeHandler;->settingsChanged()V

    .line 76
    return-void
.end method

.method private settingsChanged()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/power/FaceWakeHandler;->mFaceWakeEnabled:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/server/power/FaceWakeHandler;->handleFaceWake()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/FaceWakeHandler;->stopFaceWake()V

    goto :goto_0
.end method

.method private tellThreadBlock()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v2}, Lcom/android/server/power/FaceWakeHandler;->removeMessages(I)V

    .line 99
    iget-boolean v0, p0, Lcom/android/server/power/FaceWakeHandler;->mBlock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/FaceWakeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/FaceWakeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    return-void

    :cond_0
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method private tellThreadSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 92
    invoke-virtual {p0, v2}, Lcom/android/server/power/FaceWakeHandler;->removeMessages(I)V

    .line 93
    iget-boolean v0, p0, Lcom/android/server/power/FaceWakeHandler;->mFaceWakeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/server/power/FaceWakeHandler;->mScreenOffTimeout:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/power/FaceWakeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/FaceWakeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    const-string v3, "updateSettings...."

    invoke-static {v3}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/android/server/power/FaceWakeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "bbk_keep_screen_enable_setting"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/FaceWakeHandler;->mFaceWakeEnabled:Z

    .line 115
    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/FaceWakeHandler;->mScreenOffTimeout:I

    .line 118
    invoke-direct {p0}, Lcom/android/server/power/FaceWakeHandler;->tellThreadSettings()V

    .line 119
    return-void

    :cond_0
    move v1, v2

    .line 114
    goto :goto_0
.end method


# virtual methods
.method public handleFaceWake()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/power/FaceWakeHandler;->mFaceWakeEnabled:Z

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "handleFaceWake...."

    invoke-static {v0}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/power/FaceWakeHandler;->stopFaceWake()V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/power/FaceWakeHandler;->startFaceWake()V

    goto :goto_0
.end method

.method public handleWakeLock(ZI)V
    .locals 1
    .param p1, "Acquire"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 135
    and-int/lit8 v0, p2, 0xa

    if-nez v0, :cond_0

    and-int/lit8 v0, p2, 0x1a

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/FaceWakeHandler;->blockFaceWake(Z)V

    .line 140
    :cond_1
    return-void
.end method

.method public startFaceWake()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 194
    iget-boolean v1, p0, Lcom/android/server/power/FaceWakeHandler;->mFaceWakeEnabled:Z

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/FaceWakeHandler;->mBlock:Z

    if-nez v1, :cond_0

    .line 198
    iget v1, p0, Lcom/android/server/power/FaceWakeHandler;->mScreenOffTimeout:I

    add-int/lit16 v0, v1, -0x2328

    .line 200
    .local v0, "delay":I
    const-string v1, "PD1401V"

    const-string v2, "ro.product.model.bbk"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    add-int/lit16 v0, v0, -0x7d0

    .line 204
    :cond_2
    const-string v1, "PD1304CL"

    const-string v2, "ro.product.model.bbk"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    add-int/lit16 v0, v0, -0x7d0

    .line 208
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFaceWake start delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, v4}, Lcom/android/server/power/FaceWakeHandler;->removeMessages(I)V

    .line 211
    invoke-virtual {p0, v4}, Lcom/android/server/power/FaceWakeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/FaceWakeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public stopFaceWake()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/FaceWakeHandler;->removeMessages(I)V

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/server/power/FaceWakeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/power/FaceWakeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/FaceWakeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
